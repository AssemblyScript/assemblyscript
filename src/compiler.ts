import { compileCall as compileBuiltinCall, initialize } from "./builtins";
import { PATH_DELIMITER } from "./constants";
import { DiagnosticCode, DiagnosticEmitter } from "./diagnostics";
import {

  Module,
  MemorySegment,
  ExpressionRef,
  UnaryOp,
  BinaryOp,
  NativeType,
  FunctionTypeRef,
  FunctionRef,
  ExpressionId,

  getExpressionId,
  getExpressionType,
  getFunctionBody,
  getConstValueI32,
  getConstValueI64Low,
  getConstValueI64High,
  getConstValueF32,
  getConstValueF64,
  getGetLocalIndex,
  getGetGlobalName,
  isLoadAtomic,
  isLoadSigned,
  getLoadBytes,
  getLoadOffset,
  getLoadPtr,
  getUnaryOp,
  getUnaryValue,
  getBinaryOp,
  getBinaryLeft,
  getBinaryRight

} from "./module";
import {

  Program,
  ClassPrototype,
  Class, Element,
  ElementKind,
  Enum,
  FunctionPrototype,
  Function,
  Global,
  Local,
  Namespace,
  Parameter,
  EnumValue

} from "./program";
import { I64, U64, sb } from "./util";
import { Token } from "./tokenizer";
import {

  Node,
  NodeKind,
  TypeNode,
  TypeParameter,
  Source,

  // statements
  BlockStatement,
  BreakStatement,
  ClassDeclaration,
  ContinueStatement,
  DeclarationStatement,
  DoStatement,
  EmptyStatement,
  EnumDeclaration,
  EnumValueDeclaration,
  ExportMember,
  ExportStatement,
  ExpressionStatement,
  FieldDeclaration,
  FunctionDeclaration,
  ForStatement,
  IfStatement,
  ImportStatement,
  MethodDeclaration,
  ModifierKind,
  NamespaceDeclaration,
  ReturnStatement,
  Statement,
  SwitchCase,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  VariableLikeDeclarationStatement,
  VariableDeclaration,
  VariableStatement,
  WhileStatement,

  // expressions
  ArrayLiteralExpression,
  AssertionExpression,
  BinaryExpression,
  CallExpression,
  ElementAccessExpression,
  Expression,
  FloatLiteralExpression,
  IdentifierExpression,
  IntegerLiteralExpression,
  LiteralExpression,
  LiteralKind,
  NewExpression,
  ParenthesizedExpression,
  PropertyAccessExpression,
  TernaryExpression,
  StringLiteralExpression,
  UnaryPostfixExpression,
  UnaryPrefixExpression,

  // utility
  hasModifier

} from "./ast";
import {

  Type,
  TypeKind,

} from "./types";

export enum Target {
  /** WebAssembly with 32-bit pointers. */
  WASM32,
  /** WebAssembly with 64-bit pointers. Experimental and not supported by any runtime yet. */
  WASM64
}

export class Options {
  /** WebAssembly target. Defaults to {@link Target.WASM32}. */
  target: Target = Target.WASM32;
  /** If true, performs compilation as usual but doesn't produce any output (all calls to module become nops). */
  noEmit: bool = false;
  /** If true, compiles everything instead of just reachable code. */
  noTreeShaking: bool = false;
  /** If true, replaces assertions with nops. */
  noDebug: bool = false;
}

const enum ConversionKind {
  /** No conversion. */
  NONE,
  /** Implicit conversion. */
  IMPLICIT,
  /** Explicit conversion. */
  EXPLICIT
}

export class Compiler extends DiagnosticEmitter {

  /** Program reference. */
  program: Program;
  /** Provided options. */
  options: Options;
  /** Module instance being compiled. */
  module: Module;

  /** Start function being compiled. */
  startFunction: Function;
  /** Start function expressions. */
  startFunctionBody: ExpressionRef[] = new Array();

  /** Current type in compilation. */
  currentType: Type = Type.void;
  /** Current function in compilation. */
  currentFunction: Function;
  /** Marker indicating whether continue statements are allowed in the current break context. */
  disallowContinue: bool = true;
  /** Marker indicating that a new variable, if present, is always a local. Used to distinguish locals from globals in the start function. */
  variableIsLocal: bool = false;

  /** Counting memory offset. */
  memoryOffset: U64 = new U64(8, 0); // leave space for (any size of) NULL
  /** Memory segments being compiled. */
  memorySegments: MemorySegment[] = new Array();

  /** Already processed file names. */
  files: Set<string> = new Set();

  /** Compiles a {@link Program} to a {@link Module} using the specified options. */
  static compile(program: Program, options: Options | null = null): Module {
    const compiler: Compiler = new Compiler(program, options);
    return compiler.compile();
  }

  /** Constructs a new compiler for a {@link Program} using the specified options. */
  constructor(program: Program, options: Options | null = null) {
    super(program.diagnostics);
    this.program = program;
    this.options = options ? options : new Options();
    this.module = this.options.noEmit ? Module.createStub() : Module.create();
    const startFunctionTemplate: FunctionPrototype = new FunctionPrototype(program, "start", null);
    const startFunctionInstance: Function = new Function(startFunctionTemplate, startFunctionTemplate.internalName, [], [], Type.void, null);
    this.currentFunction = this.startFunction = startFunctionInstance;
    this.memoryOffset = new U64(this.options.target == Target.WASM64 ? 8 : 4, 0); // leave space for `null`
  }

  /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
  compile(): Module {
    const program: Program = this.program;

    // initialize lookup maps, built-ins, imports, exports, etc.
    program.initialize(this.options.target);

    // compile entry file (exactly one, usually)
    const sources: Source[] = program.sources;
    let i: i32, k: i32 = sources.length;
    for (i = 0; i < k; ++i) {
      const source: Source = sources[i];
      if (source.isEntry)
        this.compileSource(source);
    }

    // make start function if not empty
    if (this.startFunctionBody.length) {
      let typeRef: FunctionTypeRef = this.module.getFunctionTypeBySignature(NativeType.None, []);
      if (!typeRef)
        typeRef = this.module.addFunctionType("v", NativeType.None, []);
      this.module.setStart(
        this.module.addFunction(this.startFunction.template.internalName, typeRef, typesToNativeTypes(this.startFunction.additionalLocals), this.module.createBlock(null, this.startFunctionBody))
      );
    }

    // set up memory
    const initial: U64 = this.memoryOffset.clone();
    if (this.options.target == Target.WASM64)
      this.module.addGlobal("HEAP_START", NativeType.I64, false, this.module.createI64(initial.lo, initial.hi));
    else
      this.module.addGlobal("HEAP_START", NativeType.I32, false, this.module.createI32(initial.lo));

    // determine initial page size
    const initialOverlaps: U64 = initial.clone();
    initialOverlaps.and32(0xffff);
    if (!initialOverlaps.isZero) {
      initial.or32(0xffff);
      initial.add32(1);
    }
    initial.shru32(16); // initial size in 64k pages
    this.module.setMemory(initial.toI32(), Module.MAX_MEMORY_WASM32 /* TODO: not WASM64 compatible yet */, this.memorySegments, this.options.target, "memory");

    return this.module;
  }

  // sources

  compileSourceByPath(normalizedPath: string, reportNode: Node): void {
    for (let i: i32 = 0, k: i32 = this.program.sources.length; i < k; ++i) {
      const importedSource: Source = this.program.sources[i];
      if (importedSource.normalizedPath == normalizedPath) {
        this.compileSource(importedSource);
        return;
      }
    }
    this.error(DiagnosticCode.File_0_not_found, reportNode.range, normalizedPath);
  }

  compileSource(source: Source): void {
    if (this.files.has(source.normalizedPath))
      return;
    this.files.add(source.normalizedPath);

    const isEntry: bool = source.isEntry;
    const noTreeShaking: bool = this.options.noTreeShaking;
    for (let i: i32 = 0, k: i32 = source.statements.length; i < k; ++i) {
      const statement: Statement = source.statements[i];
      switch (statement.kind) {

        case NodeKind.CLASS:
          if ((noTreeShaking || isEntry && hasModifier(ModifierKind.EXPORT, (<ClassDeclaration>statement).modifiers)) && !(<ClassDeclaration>statement).typeParameters.length)
            this.compileClassDeclaration(<ClassDeclaration>statement, []);
          break;

        case NodeKind.ENUM:
          if (noTreeShaking || isEntry && hasModifier(ModifierKind.EXPORT, (<EnumDeclaration>statement).modifiers))
            this.compileEnumDeclaration(<EnumDeclaration>statement);
          break;

        case NodeKind.FUNCTION:
          if ((noTreeShaking || isEntry && hasModifier(ModifierKind.EXPORT, (<FunctionDeclaration>statement).modifiers)) && !(<FunctionDeclaration>statement).typeParameters.length)
            this.compileFunctionDeclaration(<FunctionDeclaration>statement, []);
          break;

        case NodeKind.IMPORT:
          this.compileSourceByPath((<ImportStatement>statement).normalizedPath, (<ImportStatement>statement).path);
          break;

        case NodeKind.NAMESPACE:
          if (noTreeShaking || isEntry && hasModifier(ModifierKind.EXPORT, (<NamespaceDeclaration>statement).modifiers))
            this.compileNamespaceDeclaration(<NamespaceDeclaration>statement);
          break;

        case NodeKind.VARIABLE:
          if (noTreeShaking || isEntry && hasModifier(ModifierKind.EXPORT, (<VariableStatement>statement).modifiers))
            this.compileVariableStatement(<VariableStatement>statement);
          break;

        case NodeKind.EXPORT:
          if ((<ExportStatement>statement).normalizedPath != null)
            this.compileSourceByPath(<string>(<ExportStatement>statement).normalizedPath, <StringLiteralExpression>(<ExportStatement>statement).path);
          if (noTreeShaking || isEntry)
            this.compileExportStatement(<ExportStatement>statement);
          break;

        // otherwise a top-level statement that is part of the start function's body
        default: {
          const previousFunction: Function = this.currentFunction;
          this.currentFunction = this.startFunction;
          this.startFunctionBody.push(this.compileStatement(statement));
          this.currentFunction = previousFunction;
          break;
        }
      }
    }
  }

  // globals

  compileGlobalDeclaration(declaration: VariableDeclaration, isConst: bool): Global | null {
    const element: Element | null = <Element | null>this.program.elements.get(declaration.internalName);
    if (!element || element.kind != ElementKind.GLOBAL)
      throw new Error("unexpected missing global");
    if (!this.compileGlobal(<Global>element))
      return null;
    if (declaration.range.source.isEntry && (<VariableStatement>declaration.parent).parent == declaration.range.source && hasModifier(ModifierKind.EXPORT, declaration.modifiers)) {
      if ((<Global>element).hasConstantValue)
        this.module.addGlobalExport(element.internalName, declaration.identifier.name);
      else
        this.warning(DiagnosticCode.Cannot_export_a_mutable_global, declaration.range);
    }
    return <Global>element;
  }

  compileGlobal(element: Global): bool {
    if (element.isCompiled)
      return true;
    const declaration: VariableLikeDeclarationStatement | null = element.declaration;
    let type: Type | null = element.type;
    if (!type) {
      if (!declaration)
        throw new Error("unexpected missing declaration");
      if (!declaration.type)
        return false; // TODO: infer type? currently reported by parser
      type = this.program.resolveType(declaration.type); // reports
      if (!type)
        return false;
      element.type = type;
    }
    if (this.module.noEmit)
      return true;
    const nativeType: NativeType = typeToNativeType(<Type>type);
    let initializer: ExpressionRef;
    let initializeInStart: bool = false;
    if (element.hasConstantValue) {
      if (type.isLongInteger)
        initializer = element.constantIntegerValue ? this.module.createI64(element.constantIntegerValue.lo, element.constantIntegerValue.hi) : this.module.createI64(0, 0);
      else if (type.kind == TypeKind.F32)
        initializer = this.module.createF32(element.constantFloatValue);
      else if (type.kind == TypeKind.F64)
        initializer = this.module.createF64(element.constantFloatValue);
      else if (type.isSmallInteger) {
        if (type.isSignedInteger) {
          const shift: i32 = type.smallIntegerShift;
          initializer = this.module.createI32(element.constantIntegerValue ? element.constantIntegerValue.toI32() << shift >> shift : 0);
        } else
          initializer = this.module.createI32(element.constantIntegerValue ? element.constantIntegerValue.toI32() & type.smallIntegerMask: 0);
      } else
        initializer = this.module.createI32(element.constantIntegerValue ? element.constantIntegerValue.toI32() : 0);
    } else if (declaration) {
      if (declaration.initializer) {
        initializer = this.compileExpression(declaration.initializer, type);
        if (getExpressionId(initializer) != ExpressionId.Const) {
          if (!element.isMutable) {
            initializer = this.precomputeExpressionRef(initializer);
            if (getExpressionId(initializer) != ExpressionId.Const) {
              this.warning(DiagnosticCode.Compiling_constant_global_with_non_constant_initializer_as_mutable, declaration.range);
              initializeInStart = true;
            }
          } else
            initializeInStart = true;
        }
      } else
        initializer = typeToNativeZero(this.module, type);
    } else
      throw new Error("unexpected missing declaration or constant value");
    const internalName: string = element.internalName;
    if (initializeInStart) {
      this.module.addGlobal(internalName, nativeType, true, typeToNativeZero(this.module, type));
      this.startFunctionBody.push(this.module.createSetGlobal(internalName, initializer));
    } else {
      this.module.addGlobal(internalName, nativeType, element.isMutable, initializer);
      if (!element.isMutable) {
        element.hasConstantValue = true;
        const exprType: NativeType = getExpressionType(initializer);
        switch (exprType) {
          case NativeType.I32:
            element.constantIntegerValue = new I64(getConstValueI32(initializer), 0);
            break;
          case NativeType.I64:
            element.constantIntegerValue = new I64(getConstValueI64Low(initializer), getConstValueI64High(initializer));
            break;
          case NativeType.F32:
            element.constantFloatValue = getConstValueF32(initializer);
            break;
          case NativeType.F64:
            element.constantFloatValue = getConstValueF64(initializer);
            break;
          default:
            throw new Error("unexpected initializer type");
        }
      }
    }
    return element.isCompiled = true;
  }

  // enums

  compileEnumDeclaration(declaration: EnumDeclaration): void {
    const element: Element | null = <Element | null>this.program.elements.get(declaration.internalName);
    if (!element || element.kind != ElementKind.ENUM)
      throw new Error("unexpected missing enum");
    this.compileEnum(<Enum>element);
  }

  compileEnum(element: Enum): void {
    if (element.isCompiled)
      return;
    let previousValue: EnumValue | null = null;
    for (let [key, val] of element.members) {
      if (val.hasConstantValue) {
        this.module.addGlobal(val.internalName, NativeType.I32, false, this.module.createI32(val.constantValue));
      } else if (val.declaration) {
        const declaration: EnumValueDeclaration = val.declaration;
        let initializer: ExpressionRef;
        let initializeInStart: bool = false;
        if (declaration.value) {
          initializer = this.compileExpression(<Expression>declaration.value, Type.i32);
          if (getExpressionId(initializer) != ExpressionId.Const) {
            initializer = this.precomputeExpressionRef(initializer);
            if (getExpressionId(initializer) != ExpressionId.Const) {
              if (element.isConstant)
                this.warning(DiagnosticCode.Compiling_constant_global_with_non_constant_initializer_as_mutable, declaration.range);
              initializeInStart = true;
            }
          }
        } else if (previousValue == null) {
          initializer = this.module.createI32(0);
        } else if (previousValue.hasConstantValue) {
          initializer = this.module.createI32(previousValue.constantValue + 1);
        } else {
          // in TypeScript this errors with TS1061, but actually we can do:
          initializer = this.module.createBinary(BinaryOp.AddI32,
            this.module.createGetGlobal(previousValue.internalName, NativeType.I32),
            this.module.createI32(1)
          );
          if (element.isConstant)
            this.warning(DiagnosticCode.Compiling_constant_global_with_non_constant_initializer_as_mutable, val.declaration.range);
          initializeInStart = true;
        }
        if (initializeInStart) {
          this.module.addGlobal(val.internalName, NativeType.I32, true, this.module.createI32(0));
          this.startFunctionBody.push(this.module.createSetGlobal(val.internalName, initializer));
        } else {
          this.module.addGlobal(val.internalName, NativeType.I32, false, initializer);
          if (getExpressionType(initializer) == NativeType.I32) {
            val.hasConstantValue = true;
            val.constantValue = getConstValueI32(initializer);
          } else
            throw new Error("unexpected initializer type");
        }
      } else
        throw new Error("unexpected missing declaration or constant value");
      previousValue = val;
    }
    element.isCompiled = true;
  }

  // functions

  compileFunctionDeclaration(declaration: FunctionDeclaration, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): void {
    const internalName: string = declaration.internalName;
    const element: Element | null = <Element | null>this.program.elements.get(internalName);
    if (!element || element.kind != ElementKind.FUNCTION_PROTOTYPE)
      throw new Error("unexpected missing function");
    const instance: Function | null = this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, typeArguments, contextualTypeArguments, alternativeReportNode);
    if (!instance)
      return;
    if (declaration.range.source.isEntry && declaration.parent == declaration.range.source && hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.module.addFunctionExport(instance.internalName, declaration.identifier.name);
  }

  compileFunctionUsingTypeArguments(prototype: FunctionPrototype, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): Function | null {
    const instance: Function | null = prototype.resolveInclTypeArguments(typeArguments, contextualTypeArguments, alternativeReportNode); // reports
    if (!instance)
      return null;
    return this.compileFunction(instance) ? instance : null;
  }

  compileFunction(instance: Function): bool {
    if (instance.isCompiled)
      return true;

    const declaration: FunctionDeclaration | null = instance.template.declaration;
    if (!declaration)
      throw new Error("unexpected missing declaration");

    if (instance.isDeclare) {
      if (declaration.statements) {
        this.error(DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts, declaration.identifier.range);
        return false;
      }
    } else {
      if (!declaration.statements) {
        this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, declaration.identifier.range);
        return false;
      }
    }
    instance.isCompiled = true;

    // compile statements
    let stmts: ExpressionRef[] | null = null;
    if (!instance.isDeclare) {
      const previousFunction: Function = this.currentFunction;
      this.currentFunction = instance;
      stmts = this.compileStatements(<Statement[]>declaration.statements);
      this.currentFunction = previousFunction;
    }

    // create the function type
    let k: i32 = instance.parameters.length;
    const binaryenResultType: NativeType = typeToNativeType(instance.returnType);
    const binaryenParamTypes: NativeType[] = new Array(k);
    const signatureNameParts: string[] = new Array(k + 1);
    for (let i: i32 = 0; i < k; ++i) {
      binaryenParamTypes[i] = typeToNativeType(instance.parameters[i].type);
      signatureNameParts[i] = typeToSignatureNamePart(instance.parameters[i].type);
    }
    signatureNameParts[k] = typeToSignatureNamePart(instance.returnType);
    let typeRef: FunctionTypeRef = this.module.getFunctionTypeBySignature(binaryenResultType, binaryenParamTypes);
    if (!typeRef)
      typeRef = this.module.addFunctionType(signatureNameParts.join(""), binaryenResultType, binaryenParamTypes);

    // create the function
    const internalName: string = instance.internalName;
    if (instance.isDeclare) {
      this.module.addFunctionImport(internalName, "env", declaration.identifier.name, typeRef);
    } else {
      this.module.addFunction(internalName, typeRef, typesToNativeTypes(instance.additionalLocals), this.module.createBlock(null, <ExpressionRef[]>stmts, NativeType.None));
    }
    return true;
  }

  // namespaces

  compileNamespaceDeclaration(declaration: NamespaceDeclaration): void {
    const members: Statement[] = declaration.members;
    const noTreeShaking: bool = this.options.noTreeShaking;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i) {
      const member: Statement = members[i];
      switch (member.kind) {

        case NodeKind.CLASS:
          if ((noTreeShaking || hasModifier(ModifierKind.EXPORT, (<ClassDeclaration>member).modifiers)) && !(<ClassDeclaration>member).typeParameters.length)
            this.compileClassDeclaration(<ClassDeclaration>member, []);
          break;

        case NodeKind.ENUM:
          if (noTreeShaking || hasModifier(ModifierKind.EXPORT, (<EnumDeclaration>member).modifiers))
            this.compileEnumDeclaration(<EnumDeclaration>member);
          break;

        case NodeKind.FUNCTION:
          if ((noTreeShaking || hasModifier(ModifierKind.EXPORT, (<FunctionDeclaration>member).modifiers)) && !(<FunctionDeclaration>member).typeParameters.length)
            this.compileFunctionDeclaration(<FunctionDeclaration>member, []);
          break;

        case NodeKind.NAMESPACE:
          if (noTreeShaking || hasModifier(ModifierKind.EXPORT, (<NamespaceDeclaration>member).modifiers))
            this.compileNamespaceDeclaration(<NamespaceDeclaration>member);
          break;

        case NodeKind.VARIABLE:
          if (noTreeShaking || hasModifier(ModifierKind.EXPORT, (<VariableStatement>member).modifiers))
            this.compileVariableStatement(<VariableStatement>member);
          break;

        default:
          throw new Error("unexpected namespace member");
      }
    }
    throw new Error("not implemented");
  }

  compileNamespace(ns: Namespace): void {
    const noTreeShaking: bool = this.options.noTreeShaking;
    for (let [name, element] of ns.members) {
      switch (element.kind) {

        case ElementKind.CLASS_PROTOTYPE:
          if ((noTreeShaking || (<ClassPrototype>element).isExport) && !(<ClassPrototype>element).isGeneric)
            this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
          break;

        case ElementKind.ENUM:
          this.compileEnum(<Enum>element);
          break;

        case ElementKind.FUNCTION_PROTOTYPE:
          if ((noTreeShaking || (<FunctionPrototype>element).isExport) && !(<FunctionPrototype>element).isGeneric)
            this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, []);
          break;

        case ElementKind.GLOBAL:
          this.compileGlobal(<Global>element);
          break;

        case ElementKind.NAMESPACE:
          this.compileNamespace(<Namespace>element);
          break;
      }
    }
  }

  // exports

  compileExportStatement(statement: ExportStatement): void {
    const members: ExportMember[] = statement.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i) {
      const member: ExportMember = members[i];
      const internalExportName: string = statement.range.source.internalPath + PATH_DELIMITER + member.externalIdentifier.name;
      const element: Element | null = <Element | null>this.program.exports.get(internalExportName);
      if (!element) // reported in Program#initialize
        continue;
      switch (element.kind) {

        case ElementKind.CLASS_PROTOTYPE:
          if (!(<ClassPrototype>element).isGeneric)
            this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
          break;

        case ElementKind.ENUM:
          this.compileEnum(<Enum>element);
          break;

        case ElementKind.FUNCTION_PROTOTYPE:
          if (!(<FunctionPrototype>element).isGeneric) {
            const functionInstance: Function | null = this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, []);
            if (functionInstance && statement.range.source.isEntry)
              this.module.addFunctionExport(functionInstance.internalName, member.externalIdentifier.name);
          }
          break;

        case ElementKind.GLOBAL:
          if (this.compileGlobal(<Global>element) && statement.range.source.isEntry) {
            if ((<Global>element).hasConstantValue)
              this.module.addGlobalExport(element.internalName, member.externalIdentifier.name);
            else
              this.warning(DiagnosticCode.Cannot_export_a_mutable_global, member.range);
          }
          break;

        case ElementKind.NAMESPACE:
          this.compileNamespace(<Namespace>element);
          break;
      }
    }
  }

  // classes

  compileClassDeclaration(declaration: ClassDeclaration, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): void {
    const internalName: string = declaration.internalName;
    const element: Element | null = <Element | null>this.program.elements.get(internalName);
    if (!element || element.kind != ElementKind.CLASS_PROTOTYPE)
      throw new Error("unexpected missing class");
    this.compileClassUsingTypeArguments(<ClassPrototype>element, typeArguments, contextualTypeArguments, alternativeReportNode);
  }

  compileClassUsingTypeArguments(prototype: ClassPrototype, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): void {
    const instance: Class | null = prototype.resolveInclTypeArguments(typeArguments, contextualTypeArguments, alternativeReportNode);
    if (!instance)
      return;
    this.compileClass(instance);
  }

  compileClass(cls: Class) {
    throw new Error("not implemented");
  }

  // memory

  addMemorySegment(buffer: Uint8Array): MemorySegment {
    if (this.memoryOffset.lo & 7) { // align to 8 bytes so any native data type is aligned here
      this.memoryOffset.or32(7);
      this.memoryOffset.add32(1);
    }
    const segment: MemorySegment = MemorySegment.create(buffer, this.memoryOffset.clone());
    this.memorySegments.push(segment);
    this.memoryOffset.add32(buffer.length);
    return segment;
  }

  // types

  determineExpressionType(expression: Expression, contextualType: Type): Type {
    const previousType: Type = this.currentType;
    const previousNoEmit: bool = this.module.noEmit;
    this.module.noEmit = true;
    this.compileExpression(expression, contextualType, ConversionKind.NONE); // now performs a dry run
    const type: Type = this.currentType;
    this.currentType = previousType;
    this.module.noEmit = previousNoEmit;
    return type;
  }

  // statements

  compileStatement(statement: Statement): ExpressionRef {
    switch (statement.kind) {

      case NodeKind.BLOCK:
        return this.compileBlockStatement(<BlockStatement>statement);

      case NodeKind.BREAK:
        return this.compileBreakStatement(<BreakStatement>statement);

      case NodeKind.CONTINUE:
        return this.compileContinueStatement(<ContinueStatement>statement);

      case NodeKind.DO:
        return this.compileDoStatement(<DoStatement>statement);

      case NodeKind.EMPTY:
        return this.compileEmptyStatement(<EmptyStatement>statement);

      case NodeKind.EXPRESSION:
        return this.compileExpressionStatement(<ExpressionStatement>statement);

      case NodeKind.FOR:
        return this.compileForStatement(<ForStatement>statement);

      case NodeKind.IF:
        return this.compileIfStatement(<IfStatement>statement);

      case NodeKind.RETURN:
        return this.compileReturnStatement(<ReturnStatement>statement);

      case NodeKind.SWITCH:
        return this.compileSwitchStatement(<SwitchStatement>statement);

      case NodeKind.THROW:
        return this.compileThrowStatement(<ThrowStatement>statement);

      case NodeKind.TRY:
        return this.compileTryStatement(<TryStatement>statement);

      case NodeKind.VARIABLE:
        return this.compileVariableStatement(<VariableStatement>statement);

      case NodeKind.WHILE:
        return this.compileWhileStatement(<WhileStatement>statement);
    }
    throw new Error("unexpected statement kind");
  }

  compileStatements(statements: Statement[]): ExpressionRef[] {
    const k: i32 = statements.length;
    const stmts: ExpressionRef[] = new Array(k);
    for (let i: i32 = 0; i < k; ++i)
      stmts[i] = this.compileStatement(statements[i]);
    return stmts;
  }

  compileBlockStatement(statement: BlockStatement): ExpressionRef {
    const statements: Statement[] = statement.statements;
    if (statements.length == 0)
      return this.module.createNop();
    if (statements.length == 1)
      return this.compileStatement(statements[0]);
    return this.module.createBlock(null, this.compileStatements(statements), NativeType.None);
  }

  compileBreakStatement(statement: BreakStatement): ExpressionRef {
    if (statement.label)
      throw new Error("not implemented");
    const context: string | null = this.currentFunction.breakContext;
    if (context != null)
      return this.module.createBreak("break|" + (<string>context));
    this.error(DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement, statement.range);
    return this.module.createUnreachable();
  }

  compileContinueStatement(statement: ContinueStatement): ExpressionRef {
    if (statement.label)
      throw new Error("not implemented");
    const context: string | null = this.currentFunction.breakContext;
    if (context != null && !this.disallowContinue)
      return this.module.createBreak("continue|" + (<string>context));
    this.error(DiagnosticCode.A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement, statement.range);
    return this.module.createUnreachable();
  }

  compileDoStatement(statement: DoStatement): ExpressionRef {
    const label: string = this.currentFunction.enterBreakContext();
    const condition: ExpressionRef = this.compileExpression(statement.condition, Type.i32);
    const body: ExpressionRef = this.compileStatement(statement.statement);
    this.currentFunction.leaveBreakContext();
    const breakLabel: string = "break|" + label;
    const continueLabel: string = "continue|" + label;
    return this.module.createBlock(breakLabel, [
      this.module.createLoop(continueLabel,
        this.module.createBlock(null, [
          body,
          this.module.createBreak(continueLabel, condition)
        ], NativeType.None))
    ], NativeType.None);
  }

  compileEmptyStatement(statement: EmptyStatement): ExpressionRef {
    return this.module.createNop();
  }

  compileExpressionStatement(statement: ExpressionStatement): ExpressionRef {
    let expr: ExpressionRef = this.compileExpression(statement.expression, Type.void, ConversionKind.NONE);
    if (this.currentType != Type.void) {
      expr = this.module.createDrop(expr);
      this.currentType = Type.void;
    }
    return expr;
  }

  compileForStatement(statement: ForStatement): ExpressionRef {
    const context: string = this.currentFunction.enterBreakContext();
    const variableWasLocal: bool = this.variableIsLocal;
    if (this.currentFunction == this.startFunction)
      this.variableIsLocal = true;
    const initializer: ExpressionRef = statement.initializer ? this.compileStatement(<Statement>statement.initializer) : this.module.createNop();
    this.variableIsLocal = variableWasLocal;
    const condition: ExpressionRef = statement.condition ? this.compileExpression(<Expression>statement.condition, Type.i32) : this.module.createI32(1);
    const incrementor: ExpressionRef = statement.incrementor ? this.compileExpression(<Expression>statement.incrementor, Type.void) : this.module.createNop();
    const body: ExpressionRef = this.compileStatement(statement.statement);
    this.currentFunction.leaveBreakContext();
    const continueLabel: string = "continue|" + context;
    const breakLabel: string = "break|" + context;
    return this.module.createBlock(breakLabel, [
      initializer,
      this.module.createLoop(continueLabel, this.module.createBlock(null, [
        this.module.createIf(condition, this.module.createBlock(null, [
          body,
          incrementor,
          this.module.createBreak(continueLabel)
        ], NativeType.None))
      ], NativeType.None))
    ], NativeType.None);
  }

  compileIfStatement(statement: IfStatement): ExpressionRef {
    const condition: ExpressionRef = this.compileExpression(statement.condition, Type.i32);
    const ifTrue: ExpressionRef = this.compileStatement(statement.statement);
    const ifFalse: ExpressionRef = statement.elseStatement ? this.compileStatement(<Statement>statement.elseStatement) : 0;
    return this.module.createIf(condition, ifTrue, ifFalse);
  }

  compileReturnStatement(statement: ReturnStatement): ExpressionRef {
    if (this.currentFunction) {
      const expression: ExpressionRef = statement.expression ? this.compileExpression(<Expression>statement.expression, this.currentFunction.returnType) : 0;
      return this.module.createReturn(expression);
    }
    return this.module.createUnreachable();
  }

  compileSwitchStatement(statement: SwitchStatement): ExpressionRef {
    const context: string = this.currentFunction.enterBreakContext();
    const previousDisallowContinue: bool = this.disallowContinue;
    this.disallowContinue = true;

    // introduce a local for evaluating the condition (exactly once)
    const local: Local = this.currentFunction.addLocal(Type.i32);
    let i: i32, k: i32 = statement.cases.length;

    // prepend initializer to inner block
    const breaks: ExpressionRef[] = new Array(1 + k);
    breaks[0] = this.module.createSetLocal(local.index, this.compileExpression(statement.expression, Type.i32)); // initializer

    // make one br_if per (possibly dynamic) labeled case (binaryen optimizes to br_table where possible)
    let breakIndex: i32 = 1;
    let defaultIndex: i32 = -1;
    for (i = 0; i < k; ++i) {
      const case_: SwitchCase = statement.cases[i];
      if (case_.label) {
        breaks[breakIndex++] = this.module.createBreak("case" + i.toString(10) + "|" + context,
          this.module.createBinary(BinaryOp.EqI32,
            this.module.createGetLocal(local.index, NativeType.I32),
            this.compileExpression(case_.label, Type.i32)
          )
        );
      } else
        defaultIndex = i;
    }

    // otherwise br to default respectively out of the switch if there is no default case
    breaks[breakIndex] = this.module.createBreak((defaultIndex >= 0
        ? "case" + defaultIndex.toString(10)
        : "break"
      ) + "|" + context);

    // nest blocks in order
    let currentBlock: ExpressionRef = this.module.createBlock("case0|" + context, breaks, NativeType.None);
    for (i = 0; i < k; ++i) {
      const case_: SwitchCase = statement.cases[i];
      const nextLabel: string = i == k - 1
        ? "break|" + context
        : "case" + (i + 1).toString(10) + "|" + context;
      const l: i32 = case_.statements.length;
      const body: ExpressionRef[] = new Array(1 + l);
      body[0] = currentBlock;
      for (let j: i32 = 0; j < l; ++j)
        body[j + 1] = this.compileStatement(case_.statements[j]);
      currentBlock = this.module.createBlock(nextLabel, body, NativeType.None);
    }
    this.currentFunction.leaveBreakContext();
    this.disallowContinue = previousDisallowContinue;

    return currentBlock;
  }

  compileThrowStatement(statement: ThrowStatement): ExpressionRef {
    return this.module.createUnreachable(); // TODO: waiting for exception-handling spec
  }

  compileTryStatement(statement: TryStatement): ExpressionRef {
    throw new Error("not implemented");
    // can't yet support something like: try { return ... } finally { ... }
    // worthwhile to investigate lowering returns to block results (here)?
  }

  compileVariableStatement(statement: VariableStatement): ExpressionRef {
    const declarations: VariableDeclaration[] = statement.declarations;

    // top-level variables become globals
    if (this.currentFunction == this.startFunction && !this.variableIsLocal) {
      const isConst: bool = hasModifier(ModifierKind.CONST, statement.modifiers);
      for (let i: i32 = 0, k: i32 = declarations.length; i < k; ++i)
        this.compileGlobalDeclaration(declarations[i], isConst);
      return this.module.createNop();
    }
    // other variables become locals
    const initializers: ExpressionRef[] = new Array();
    for (let i: i32 = 0, k = declarations.length; i < k; ++i) {
      const declaration: VariableDeclaration = declarations[i];
      if (declaration.type) {
        const name: string = declaration.identifier.name;
        const type: Type | null = this.program.resolveType(<TypeNode>declaration.type, this.currentFunction.contextualTypeArguments, true); // reports
        if (type) {
          if (this.currentFunction.locals.has(name))
            this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, name); // recoverable
          else
            this.currentFunction.addLocal(<Type>type, name);
          if (declaration.initializer)
            initializers.push(this.compileAssignment(declaration.identifier, <Expression>declaration.initializer, Type.void));
        }
      }
    }
    return initializers.length ? this.module.createBlock(null, initializers, NativeType.None) : this.module.createNop();
  }

  compileWhileStatement(statement: WhileStatement): ExpressionRef {
    const label: string = this.currentFunction.enterBreakContext();
    const condition: ExpressionRef = this.compileExpression(statement.condition, Type.i32);
    const breakLabel: string = "break|" + label;
    const continueLabel: string = "continue|" + label;
    const body: ExpressionRef = this.compileStatement(statement.statement);
    this.currentFunction.leaveBreakContext();
    return this.module.createBlock(breakLabel, [
      this.module.createLoop(continueLabel,
        this.module.createIf(condition, this.module.createBlock(null, [
          body,
          this.module.createBreak(continueLabel)
        ], NativeType.None))
      )
    ], NativeType.None);
  }

  // expressions

  compileExpression(expression: Expression, contextualType: Type, conversionKind: ConversionKind = ConversionKind.IMPLICIT): ExpressionRef {
    this.currentType = contextualType;

    let expr: ExpressionRef;
    switch (expression.kind) {

      case NodeKind.ASSERTION:
        expr = this.compileAssertionExpression(<AssertionExpression>expression, contextualType);
        break;

      case NodeKind.BINARY:
        expr = this.compileBinaryExpression(<BinaryExpression>expression, contextualType);
        break;

      case NodeKind.CALL:
        expr = this.compileCallExpression(<CallExpression>expression, contextualType);
        break;

      case NodeKind.ELEMENTACCESS:
        expr = this.compileElementAccessExpression(<ElementAccessExpression>expression, contextualType);
        break;

      case NodeKind.IDENTIFIER:
      case NodeKind.FALSE:
      case NodeKind.NULL:
      case NodeKind.THIS:
      case NodeKind.TRUE:
        expr = this.compileIdentifierExpression(<IdentifierExpression>expression, contextualType);
        break;

      case NodeKind.LITERAL:
        expr = this.compileLiteralExpression(<LiteralExpression>expression, contextualType);
        break;

      case NodeKind.NEW:
        expr = this.compileNewExpression(<NewExpression>expression, contextualType);
        break;

      case NodeKind.PARENTHESIZED:
        expr = this.compileParenthesizedExpression(<ParenthesizedExpression>expression, contextualType);
        break;

      case NodeKind.PROPERTYACCESS:
        expr = this.compilePropertyAccessExpression(<PropertyAccessExpression>expression, contextualType);
        break;

      case NodeKind.TERNARY:
        expr = this.compileTernaryExpression(<TernaryExpression>expression, contextualType);
        break;

      case NodeKind.UNARYPOSTFIX:
        expr = this.compileUnaryPostfixExpression(<UnaryPostfixExpression>expression, contextualType);
        break;

      case NodeKind.UNARYPREFIX:
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, contextualType);
        break;

      default:
        throw new Error("unexpected expression kind");
    }

    if (conversionKind != ConversionKind.NONE && this.currentType != contextualType) {
      expr = this.convertExpression(expr, this.currentType, contextualType, conversionKind, expression);
      this.currentType = contextualType;
    }
    return expr;
  }

  precomputeExpression(expression: Expression, contextualType: Type, conversionKind: ConversionKind = ConversionKind.IMPLICIT): ExpressionRef {
    const expr: ExpressionRef = this.compileExpression(expression, contextualType, conversionKind);
    return this.precomputeExpressionRef(expr);
  }

  precomputeExpressionRef(expr: ExpressionRef): ExpressionRef {
    const nativeType: NativeType = typeToNativeType(this.currentType);
    let typeRef: FunctionTypeRef = this.module.getFunctionTypeBySignature(nativeType, []);
    if (!typeRef)
      typeRef = this.module.addFunctionType(typeToSignatureNamePart(this.currentType), nativeType, []);
    const funcRef: FunctionRef = this.module.addFunction("__precompute", typeRef, [], expr);
    this.module.runPasses([ "precompute" ], funcRef);
    const ret: ExpressionRef = getFunctionBody(funcRef);
    this.module.removeFunction("__precompute");
    // TODO: also remove the function type somehow if no longer used or make the C-API accept
    // a `null` typeRef, using an implicit type.
    return ret;
  }

  convertExpression(expr: ExpressionRef, fromType: Type, toType: Type, conversionKind: ConversionKind, reportNode: Node): ExpressionRef {
    if (conversionKind == ConversionKind.NONE)
      return expr;

    if (!fromType) {
      _BinaryenExpressionPrint(expr);
      throw new Error("WHAT");
    }

    // void to any
    if (fromType.kind == TypeKind.VOID) {
      this.error(DiagnosticCode.Operation_not_supported, reportNode.range);
      throw new Error("unexpected conversion from void");
    }

    // any to void
    if (toType.kind == TypeKind.VOID)
      return this.module.createDrop(expr);

    const fromFloat: bool = fromType.isAnyFloat;
    const toFloat: bool = toType.isAnyFloat;

    const mod: Module = this.module;
    let losesInformation: bool = false;

    if (fromFloat) {

      // float to float
      if (toFloat) {
        if (fromType.kind == TypeKind.F32) {

          // f32 to f64
          if (toType.kind == TypeKind.F64)
            expr = mod.createUnary(UnaryOp.PromoteF32, expr);

        // f64 to f32
        } else if (toType.kind == TypeKind.F32) {
          losesInformation = true;
          expr = mod.createUnary(UnaryOp.DemoteF64, expr);
        }

      // float to int
      } else {
        losesInformation = true;

        // f32 to int
        if (fromType.kind == TypeKind.F32) {
          if (toType.isSignedInteger) {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF32_I64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32_I32, expr);
              if (toType.isSmallInteger) {
                expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
                expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
              }
            }
          } else {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF32_U64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32_U32, expr);
              if (toType.isSmallInteger)
                expr = mod.createBinary(BinaryOp.AndI32, expr, mod.createI32(toType.smallIntegerMask));
            }
          }

        // f64 to int
        } else {
          if (toType.isSignedInteger) {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF64_I64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64_I32, expr);
              if (toType.isSmallInteger) {
                expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
                expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
              }
            }
          } else {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF64_U64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64_U32, expr);
              if (toType.isSmallInteger)
                expr = mod.createBinary(BinaryOp.AndI32, expr, mod.createI32(toType.smallIntegerMask));
            }
          }
        }

      }

    // int to float
    } else if (toFloat) {

      // int to f32
      if (toType.kind == TypeKind.F32) {
        if (fromType.isLongInteger) {
          losesInformation = true;
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI64_F32, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU64_F32, expr);
        } else
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI32_F32, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU32_F32, expr);

      // int to f64
      } else {
        if (fromType.isLongInteger) {
          losesInformation = true;
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI64_F64, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU64_F64, expr);
        } else
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI32_F64, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU32_F64, expr);
      }

    // int to int
    } else {
      if (fromType.isLongInteger) {

        // i64 to i32
        if (!toType.isLongInteger) {
          losesInformation = true;
          expr = mod.createUnary(UnaryOp.WrapI64, expr);
          if (toType.isSmallInteger) {
            if (toType.isSignedInteger) {
              expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
              expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
            } else
              expr = mod.createBinary(BinaryOp.AndI32, expr, mod.createI32(toType.smallIntegerMask));
          }
        }

      // i32 to i64
      } else if (toType.isLongInteger) {
        if (toType.isSignedInteger)
          expr = mod.createUnary(UnaryOp.ExtendI32, expr);
        else
          expr = mod.createUnary(UnaryOp.ExtendU32, expr);

      // i32 to smaller/change of signage i32
      } else if (toType.isSmallInteger && (fromType.size > toType.size || (fromType.size == toType.size && fromType.kind != toType.kind))) {
        losesInformation = true;
        if (toType.isSignedInteger) {
          expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
          expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
        } else
          expr = mod.createBinary(BinaryOp.AndI32, expr, mod.createI32(toType.smallIntegerMask));
      }
    }

    if (losesInformation && conversionKind == ConversionKind.IMPLICIT)
      this.error(DiagnosticCode.Conversion_from_type_0_to_1_requires_an_explicit_cast, reportNode.range, fromType.toString(), toType.toString());

    return expr;
  }

  cloneExpressionRef(expr: ExpressionRef, noSideEffects: bool = false, maxDepth: i32 = 0x7fffffff): ExpressionRef {
    // currently supports side effect free expressions only
    if (maxDepth < 0)
      return 0;
    let nested1: ExpressionRef,
        nested2: ExpressionRef;
    switch (getExpressionId(expr)) {
      case ExpressionId.Const:
        switch (getExpressionType(expr)) {
          case NativeType.I32: return this.module.createI32(getConstValueI32(expr));
          case NativeType.I64: return this.module.createI64(getConstValueI64Low(expr), getConstValueI64High(expr));
          case NativeType.F32: return this.module.createF32(getConstValueF32(expr));
          case NativeType.F64: return this.module.createF64(getConstValueF64(expr));
          default: throw new Error("unexpected expression type");
        }
      case ExpressionId.GetLocal:
        return this.module.createGetLocal(getGetLocalIndex(expr), getExpressionType(expr));
      case ExpressionId.GetGlobal:
        return this.module.createGetGlobal(getGetGlobalName(expr), getExpressionType(expr));
      case ExpressionId.Load:
        if (!(nested1 = this.cloneExpressionRef(getLoadPtr(expr), noSideEffects, maxDepth - 1))) break;
        return isLoadAtomic(expr)
          ? this.module.createAtomicLoad(getLoadBytes(expr), nested1, getExpressionType(expr), getLoadOffset(expr))
          : this.module.createLoad(getLoadBytes(expr), isLoadSigned(expr), nested1, getExpressionType(expr), getLoadOffset(expr));
      case ExpressionId.Unary:
        if (!(nested1 = this.cloneExpressionRef(getUnaryValue(expr), noSideEffects, maxDepth - 1))) break;
        return this.module.createUnary(getUnaryOp(expr), nested1);
      case ExpressionId.Binary:
        if (!(nested1 = this.cloneExpressionRef(getBinaryLeft(expr), noSideEffects, maxDepth - 1))) break;
        if (!(nested2 = this.cloneExpressionRef(getBinaryLeft(expr), noSideEffects, maxDepth - 1))) break;
        return this.module.createBinary(getBinaryOp(expr), nested1, nested2);
    }
    return 0;
  }

  compileAssertionExpression(expression: AssertionExpression, contextualType: Type): ExpressionRef {
    const toType: Type | null = this.program.resolveType(expression.toType, this.currentFunction.contextualTypeArguments); // reports
    if (!toType)
      return this.module.createUnreachable();
    return this.compileExpression(expression.expression, toType, ConversionKind.EXPLICIT);
  }

  compileBinaryExpression(expression: BinaryExpression, contextualType: Type): ExpressionRef {
    let op: BinaryOp;
    let left: ExpressionRef;
    let right: ExpressionRef;
    let compound: Token = 0;

    let condition: ExpressionRef;
    let tempLocal: Local;

    switch (expression.operator) {

      case Token.LESSTHAN:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.LtF32
           : this.currentType == Type.f64
           ? BinaryOp.LtF64
           : this.currentType.isSignedInteger
           ? this.currentType.isLongInteger
             ? BinaryOp.LtI64
             : BinaryOp.LtI32
           : this.currentType.isLongInteger
             ? BinaryOp.LtU64
             : BinaryOp.LtU32;
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.GtF32
           : this.currentType == Type.f64
           ? BinaryOp.GtF64
           : this.currentType.isSignedInteger
           ? this.currentType.isLongInteger
             ? BinaryOp.GtI64
             : BinaryOp.GtI32
           : this.currentType.isLongInteger
             ? BinaryOp.GtU64
             : BinaryOp.GtU32;
        this.currentType = Type.bool;
        break;

      case Token.LESSTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.LeF32
           : this.currentType == Type.f64
           ? BinaryOp.LeF64
           : this.currentType.isSignedInteger
           ? this.currentType.isLongInteger
             ? BinaryOp.LeI64
             : BinaryOp.LeI32
           : this.currentType.isLongInteger
             ? BinaryOp.LeU64
             : BinaryOp.LeU32;
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.GeF32
           : this.currentType == Type.f64
           ? BinaryOp.GeF64
           : this.currentType.isSignedInteger
           ? this.currentType.isLongInteger
             ? BinaryOp.GeI64
             : BinaryOp.GeI32
           : this.currentType.isLongInteger
             ? BinaryOp.GeU64
             : BinaryOp.GeU32;
        this.currentType = Type.bool;
        break;

      case Token.EQUALS_EQUALS:
      case Token.EQUALS_EQUALS_EQUALS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.EqF32
           : this.currentType == Type.f64
           ? BinaryOp.EqF64
           : this.currentType.isLongInteger
           ? BinaryOp.EqI64
           : BinaryOp.EqI32;
        this.currentType = Type.bool;
        break;

      case Token.EXCLAMATION_EQUALS:
      case Token.EXCLAMATION_EQUALS_EQUALS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
          ? BinaryOp.NeF32
          : this.currentType == Type.f64
          ? BinaryOp.NeF64
          : this.currentType.isLongInteger
          ? BinaryOp.NeI64
          : BinaryOp.NeI32;
        this.currentType = Type.bool;
        break;

      case Token.EQUALS:
        return this.compileAssignment(expression.left, expression.right, contextualType);

      case Token.PLUS_EQUALS:
        compound = Token.EQUALS;
      case Token.PLUS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.AddF32
           : this.currentType == Type.f64
           ? BinaryOp.AddF64
           : this.currentType.isLongInteger
           ? BinaryOp.AddI64
           : BinaryOp.AddI32;
        break;

      case Token.MINUS_EQUALS:
        compound = Token.EQUALS;
      case Token.MINUS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.SubF32
           : this.currentType == Type.f64
           ? BinaryOp.SubF64
           : this.currentType.isLongInteger
           ? BinaryOp.SubI64
           : BinaryOp.SubI32;
        break;

      case Token.ASTERISK_EQUALS:
        compound = Token.EQUALS;
      case Token.ASTERISK:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.MulF32
           : this.currentType == Type.f64
           ? BinaryOp.MulF64
           : this.currentType.isLongInteger
           ? BinaryOp.MulI64
           : BinaryOp.MulI32;
        break;

      case Token.SLASH_EQUALS:
        compound = Token.EQUALS;
      case Token.SLASH:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.DivF32
           : this.currentType == Type.f64
           ? BinaryOp.DivF64
           : this.currentType.isSignedInteger
           ? this.currentType.isLongInteger
             ? BinaryOp.DivI64
             : BinaryOp.DivI32
           : this.currentType.isLongInteger
             ? BinaryOp.DivU64
             : BinaryOp.DivU32;
        break;

      case Token.PERCENT_EQUALS:
        compound = Token.EQUALS;
      case Token.PERCENT:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        if (this.currentType.isAnyFloat)
          throw new Error("not implemented"); // TODO: internal fmod, possibly simply imported from JS
        op = this.currentType.isSignedInteger
           ? this.currentType.isLongInteger
             ? BinaryOp.RemI64
             : BinaryOp.RemI32
           : this.currentType.isLongInteger
             ? BinaryOp.RemU64
             : BinaryOp.RemU32;
        break;

      case Token.LESSTHAN_LESSTHAN_EQUALS:
        compound = Token.EQUALS;
      case Token.LESSTHAN_LESSTHAN:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.ShlI64
           : BinaryOp.ShlI32;
        break;

      case Token.GREATERTHAN_GREATERTHAN_EQUALS:
        compound = Token.EQUALS;
      case Token.GREATERTHAN_GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isSignedInteger
           ? this.currentType.isLongInteger
             ? BinaryOp.ShrI64
             : BinaryOp.ShrI32
           : this.currentType.isLongInteger
             ? BinaryOp.ShrU64
             : BinaryOp.ShrU32;
        break;

      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS:
        compound = Token.EQUALS;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.u64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.ShrU64
           : BinaryOp.ShrU32;
        break;

      case Token.AMPERSAND_EQUALS:
        compound = Token.EQUALS;
      case Token.AMPERSAND:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.AndI64
           : BinaryOp.AndI32;
        break;

      case Token.BAR_EQUALS:
        compound = Token.EQUALS;
      case Token.BAR:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.OrI64
           : BinaryOp.OrI32;
        break;

      case Token.CARET_EQUALS:
        compound = Token.EQUALS;
      case Token.CARET:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.XorI64
           : BinaryOp.XorI32;
        break;

      case Token.AMPERSAND_AMPERSAND: // left && right
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        // simplify if left is free of side effects while tolerating two levels of nesting, e.g., i32.load(i32.load(i32.const))
        // if (condition = this.cloneExpressionRef(left, true, 2))
        //   return this.module.createIf(
        //     this.currentType.isLongInteger
        //       ? this.module.createBinary(BinaryOp.NeI64, condition, this.module.createI64(0, 0))
        //       : this.currentType == Type.f64
        //       ? this.module.createBinary(BinaryOp.NeF64, condition, this.module.createF64(0))
        //       : this.currentType == Type.f32
        //       ? this.module.createBinary(BinaryOp.NeF32, condition, this.module.createF32(0))
        //       : condition, // usual case: saves one EQZ when not using EQZ above
        //      right,
        //      left
        //   );

        // otherwise use a temporary local for the intermediate value
        tempLocal = this.currentFunction.addLocal(this.currentType);
        condition = this.module.createTeeLocal(tempLocal.index, left);
        return this.module.createIf(
          this.currentType.isLongInteger
            ? this.module.createBinary(BinaryOp.NeI64, condition, this.module.createI64(0, 0))
            : this.currentType == Type.f64
            ? this.module.createBinary(BinaryOp.NeF64, condition, this.module.createF64(0))
            : this.currentType == Type.f32
            ? this.module.createBinary(BinaryOp.NeF32, condition, this.module.createF32(0))
            : this.module.createTeeLocal(tempLocal.index, left),
          right,
          this.module.createGetLocal(tempLocal.index, typeToNativeType(tempLocal.type))
        );

      case Token.BAR_BAR: // left || right
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        // simplify if left is free of side effects while tolerating two levels of nesting
        // if (condition = this.cloneExpressionRef(left, true, 2))
        //   return this.module.createIf(
        //     this.currentType.isLongInteger
        //       ? this.module.createBinary(BinaryOp.NeI64, condition, this.module.createI64(0, 0))
        //       : this.currentType == Type.f64
        //       ? this.module.createBinary(BinaryOp.NeF64, condition, this.module.createF64(0))
        //       : this.currentType == Type.f32
        //       ? this.module.createBinary(BinaryOp.NeF32, condition, this.module.createF32(0))
        //       : condition, // usual case: saves one EQZ when not using EQZ above
        //     left,
        //     right
        //   );

        // otherwise use a temporary local for the intermediate value
        tempLocal = this.currentFunction.addLocal(this.currentType);
        condition = this.module.createTeeLocal(tempLocal.index, left);
        return this.module.createIf(
          this.currentType.isLongInteger
            ? this.module.createBinary(BinaryOp.NeI64, condition, this.module.createI64(0, 0))
            : this.currentType == Type.f64
            ? this.module.createBinary(BinaryOp.NeF64, condition, this.module.createF64(0))
            : this.currentType == Type.f32
            ? this.module.createBinary(BinaryOp.NeF32, condition, this.module.createF32(0))
            : this.module.createTeeLocal(tempLocal.index, left),
          this.module.createGetLocal(tempLocal.index, typeToNativeType(tempLocal.type)),
          right
        );

      default:
        throw new Error("not implemented");
    }
    if (compound) {
      right = this.module.createBinary(op, left, right);
      return this.compileAssignmentWithValue(expression.left, right, contextualType != Type.void);
    }
    return this.module.createBinary(op, left, right);
  }

  compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): ExpressionRef {
    this.currentType = this.determineExpressionType(expression, contextualType);
    return this.compileAssignmentWithValue(expression, this.compileExpression(valueExpression, this.currentType, ConversionKind.IMPLICIT), contextualType != Type.void);
  }

  compileAssignmentWithValue(expression: Expression, valueWithCorrectType: ExpressionRef, tee: bool = false): ExpressionRef {
    const element: Element | null = this.program.resolveElement(expression, this.currentFunction);
    if (!element)
      return this.module.createUnreachable();

    if (element.kind == ElementKind.LOCAL) {
      if (tee) {
        this.currentType = (<Local>element).type;
        return this.module.createTeeLocal((<Local>element).index, valueWithCorrectType);
      }
      this.currentType = Type.void;
      return this.module.createSetLocal((<Local>element).index, valueWithCorrectType);
    }

    if (element.kind == ElementKind.GLOBAL) {
      this.compileGlobal(<Global>element);
      if (!(<Global>element).isMutable)
        this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, element.internalName);
      if (tee) {
        if (!(<Global>element).type)
          return this.module.createUnreachable();
        const globalNativeType: NativeType = typeToNativeType(<Type>(<Global>element).type);
        this.currentType = <Type>(<Global>element).type;
        return this.module.createBlock(null, [ // teeGlobal
          this.module.createSetGlobal((<Global>element).internalName, valueWithCorrectType),
          this.module.createGetGlobal((<Global>element).internalName, globalNativeType)
        ], globalNativeType);
      }
      this.currentType = Type.void;
      return this.module.createSetGlobal((<Global>element).internalName, valueWithCorrectType);
    }

    // TODO: fields, setters

    throw new Error("not implemented");
  }

  compileCallExpression(expression: CallExpression, contextualType: Type): ExpressionRef {
    const element: Element | null = this.program.resolveElement(expression.expression, this.currentFunction); // reports
    if (!element)
      return this.module.createUnreachable();

    if (element.kind == ElementKind.FUNCTION_PROTOTYPE) {
      const functionPrototype: FunctionPrototype = <FunctionPrototype>element;
      let functionInstance: Function | null = null;
      if (functionPrototype.isBuiltIn) {
        const k: i32 = expression.typeArguments.length;
        const resolvedTypeArguments: Type[] = new Array(k);
        sb.length = 0;
        for (let i: i32 = 0; i < k; ++i) {
          let resolvedType: Type | null = this.program.resolveType(expression.typeArguments[i], this.currentFunction.contextualTypeArguments, true); // reports
          if (!resolvedType)
            return this.module.createUnreachable();
          resolvedTypeArguments[i] = resolvedType;
          sb.push(resolvedType.toString());
        }

        functionInstance = <Function | null>functionPrototype.instances.get(sb.join(","));
        if (!functionInstance) {
          this.currentType = contextualType;
          let expr: ExpressionRef = compileBuiltinCall(this, functionPrototype.internalName, resolvedTypeArguments, expression.arguments, expression);
          if (!expr) {
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            return this.module.createUnreachable();
          }
          return expr;
        }
      } else {
        // TODO: infer type arguments from parameter types if omitted
        functionInstance = (<FunctionPrototype>element).resolveInclTypeArguments(expression.typeArguments, this.currentFunction.contextualTypeArguments, expression); // reports
      }
      if (!functionInstance)
        return this.module.createUnreachable();
      return this.compileCall(functionInstance, expression.arguments, expression);
    }
    this.error(DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures, expression.range, element.internalName);
    return this.module.createUnreachable();
  }

  /** Compiles a call to a function. If an instance method, `this` is the first element in `argumentExpressions`. */
  compileCall(functionInstance: Function, argumentExpressions: Expression[], reportNode: Node): ExpressionRef {
    const previousType: Type = this.currentType;

    // validate and compile arguments
    const parameters: Parameter[] = functionInstance.parameters;
    const parameterCount: i32 = parameters.length;
    const argumentCount: i32 = argumentExpressions.length;
    if (argumentExpressions.length > parameterCount) { // too many arguments
      this.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range,
        (functionInstance.isInstance ? parameterCount - 1 : parameterCount).toString(10),
        (functionInstance.isInstance ? argumentCount - 1 : argumentCount).toString(10)
      );
      return this.module.createUnreachable();
    }
    const operands: ExpressionRef[] = new Array(parameterCount);
    for (let i: i32 = 0; i < parameterCount; ++i) {
      if (argumentExpressions.length > i) {
        operands[i] = this.compileExpression(argumentExpressions[i], parameters[i].type);
      } else {
        const initializer: Expression | null = parameters[i].initializer;
        if (initializer) { // omitted, uses initializer
          // FIXME: here, the initializer is compiled in the caller's scope.
          // a solution could be to use a stub for each possible overload, calling the
          // full function with optional arguments being part of the stub's body.
          operands[i] = this.compileExpression(initializer, parameters[i].type);
        } else { // too few arguments
          this.error(DiagnosticCode.Expected_at_least_0_arguments_but_got_1, reportNode.range,
            (functionInstance.isInstance ? i : i + 1).toString(10),
            (functionInstance.isInstance ? argumentCount - 1 : argumentCount).toString(10)
          );
          return this.module.createUnreachable();
        }
      }
    }

    this.currentType = functionInstance.returnType;

    if (!functionInstance.isCompiled)
      this.compileFunction(functionInstance);

    // imported function
    if (functionInstance.isDeclare)
      return this.module.createCallImport(functionInstance.internalName, operands, typeToNativeType(functionInstance.returnType));

    // internal function
    return this.module.createCall(functionInstance.internalName, operands, typeToNativeType(functionInstance.returnType));
  }

  compileElementAccessExpression(expression: ElementAccessExpression, contextualType: Type): ExpressionRef {
    const element: Element | null = this.program.resolveElement(expression.expression, this.currentFunction); // reports
    if (!element)
      return this.module.createUnreachable();
    throw new Error("not implemented");
  }

  compileIdentifierExpression(expression: IdentifierExpression, contextualType: Type): ExpressionRef {
    switch (expression.kind) {

      case NodeKind.NULL:
        if (this.options.target == Target.WASM64) {
          if (!contextualType.classType) {
            assert(contextualType.kind == TypeKind.USIZE);
            this.currentType = Type.usize64;
          }
          return this.module.createI64(0, 0);
        }
        if (!contextualType.classType) {
          assert(contextualType.kind == TypeKind.USIZE);
          this.currentType = Type.usize32;
        }
        return this.module.createI32(0);

      case NodeKind.TRUE:
        this.currentType = Type.bool;
        return this.module.createI32(1);

      case NodeKind.FALSE:
        this.currentType = Type.bool;
        return this.module.createI32(0);

      case NodeKind.THIS:
        if (this.currentFunction.instanceMethodOf) {
          this.currentType = this.currentFunction.instanceMethodOf.type;
          return this.module.createGetLocal(0, this.options.target == Target.WASM64 ? NativeType.I64 : NativeType.I32);
        }
        this.error(DiagnosticCode._this_cannot_be_referenced_in_current_location, expression.range);
        this.currentType = this.options.target == Target.WASM64 ? Type.u64 : Type.u32;
        return this.module.createUnreachable();

      case NodeKind.IDENTIFIER:
        // TODO: some sort of resolveIdentifier maybe
        if ((<IdentifierExpression>expression).name == "NaN") {
          if (this.currentType == Type.f32)
            return this.module.createF32(NaN);
          this.currentType = Type.f64;
          return this.module.createF64(NaN);
        }
        if ((<IdentifierExpression>expression).name == "Infinity") {
          if (this.currentType == Type.f32)
            return this.module.createF32(Infinity);
          this.currentType = Type.f64;
          return this.module.createF64(Infinity);
        }
        break;
    }

    const element: Element | null = this.program.resolveElement(expression, this.currentFunction); // reports
    if (!element)
      return this.module.createUnreachable();

    // local
    if (element.kind == ElementKind.LOCAL) {
      this.currentType = (<Local>element).type;
      return this.module.createGetLocal((<Local>element).index, typeToNativeType(this.currentType));
    }

    // global
    if (element.kind == ElementKind.GLOBAL) {
      const global: Global = <Global>element;
      if (!this.compileGlobal(global)) // reports
        return this.module.createUnreachable();
      this.currentType = <Type>global.type;
      if (global.hasConstantValue) {
        if (global.type == Type.f32)
          return this.module.createF32((<Global>element).constantFloatValue);
        else if (global.type == Type.f64)
          return this.module.createF64((<Global>element).constantFloatValue);
        else if ((<Type>global.type).isLongInteger)
          return this.module.createI64((<I64>global.constantIntegerValue).lo, (<I64>global.constantIntegerValue).hi);
        else if ((<Type>global.type).isAnyInteger)
          return this.module.createI32((<I64>global.constantIntegerValue).lo);
        else
          throw new Error("unexpected global type");
      } else
        return this.module.createGetGlobal((<Global>element).internalName, typeToNativeType(this.currentType));
    }

    // field
    // if (element.kind == ElementKind.FIELD)
    //  throw new Error("not implemented");

    // getter
    if (element.kind == ElementKind.FUNCTION_PROTOTYPE && (<FunctionPrototype>element).isGetter)
      throw new Error("not implemented");

    this.error(DiagnosticCode.Operation_not_supported, expression.range);
    return this.module.createUnreachable();
  }

  compileLiteralExpression(expression: LiteralExpression, contextualType: Type): ExpressionRef {
    switch (expression.literalKind) {
      // case LiteralKind.ARRAY:

      case LiteralKind.FLOAT: {
        const floatValue: f64 = (<FloatLiteralExpression>expression).value;
        if (contextualType == Type.f32)
          return this.module.createF32(<f32>floatValue);
        this.currentType = Type.f64;
        return this.module.createF64(floatValue);
      }

      case LiteralKind.INTEGER: {
        const intValue: I64 = (<IntegerLiteralExpression>expression).value;
        if (contextualType == Type.bool && (intValue.isZero || intValue.isOne))
          return this.module.createI32(intValue.isZero ? 0 : 1);
        if (contextualType == Type.f64)
          return this.module.createF64((<f64>intValue.lo) + (<f64>intValue.hi) * 0xffffffff);
        if (contextualType == Type.f32)
          return this.module.createF32((<f32>intValue.lo) + (<f32>intValue.hi) * 0xffffffff);
        if (contextualType.isLongInteger)
          return this.module.createI64(intValue.lo, intValue.hi);
        if (contextualType.isSmallInteger)
          return this.module.createI32(intValue.toI32());
        this.currentType = Type.i32;
        return this.module.createI32(intValue.toI32());
      }

      // case LiteralKind.OBJECT:
      // case LiteralKind.REGEXP:
      // case LiteralKind.STRING:
    }
    throw new Error("not implemented");
  }

  compileNewExpression(expression: NewExpression, contextualType: Type): ExpressionRef {
    throw new Error("not implemented");
  }

  compileParenthesizedExpression(expression: ParenthesizedExpression, contextualType: Type): ExpressionRef {
    // does not change types, just order
    return this.compileExpression(expression.expression, contextualType, ConversionKind.NONE);
  }

  compilePropertyAccessExpression(expression: PropertyAccessExpression, contextualType: Type): ExpressionRef {
    throw new Error("not implemented");
  }

  compileTernaryExpression(expression: TernaryExpression, contextualType: Type): ExpressionRef {
    const condition: ExpressionRef = this.compileExpression(expression.condition, Type.i32);
    const ifThen: ExpressionRef = this.compileExpression(expression.ifThen, contextualType);
    const ifElse: ExpressionRef = this.compileExpression(expression.ifElse, contextualType);
    return this.module.createIf(condition, ifThen, ifElse);
  }

  compileUnaryPostfixExpression(expression: UnaryPostfixExpression, contextualType: Type): ExpressionRef {
    const operator: Token = expression.operator;

    // make a getter for the expression (also obtains the type)
    const getValue: ExpressionRef = this.compileExpression(expression.expression, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);

    // use a temp local for the intermediate value
    const tempLocal: Local = this.currentFunction.addLocal(this.currentType);

    let op: BinaryOp;
    let nativeType: NativeType;
    let nativeOne: ExpressionRef;

    if (tempLocal.type == Type.f32) {
      op = operator == Token.PLUS_PLUS ? BinaryOp.AddF32 : BinaryOp.SubF32;
      nativeType = NativeType.F32;
      nativeOne = this.module.createF32(1);

    } else if (tempLocal.type == Type.f64) {
      op = operator == Token.PLUS_PLUS ? BinaryOp.AddF64 : BinaryOp.SubF64;
      nativeType = NativeType.F64;
      nativeOne = this.module.createF64(1);

    } else if (tempLocal.type.isLongInteger) {
      op = operator == Token.PLUS_PLUS ? BinaryOp.AddI64 : BinaryOp.SubI64;
      nativeType = NativeType.I64;
      nativeOne = this.module.createI64(1, 0);

    } else {
      op = operator == Token.PLUS_PLUS ? BinaryOp.AddI32 : BinaryOp.SubI32;
      nativeType = NativeType.I32;
      nativeOne = this.module.createI32(1);
    }

    // make a setter that sets the new value (temp value +/- 1)
    const setValue: ExpressionRef = this.compileAssignmentWithValue(expression.expression,
      this.module.createBinary(op,
        this.module.createGetLocal(tempLocal.index, nativeType),
        nativeOne
      ), false
    );

    // NOTE: can't preemptively tee_local the return value on the stack because binaryen expects
    // this to be well-formed. becomes a tee_local when optimizing, though.
    this.currentType = tempLocal.type;
    return this.module.createBlock(null, [
      this.module.createSetLocal(tempLocal.index, getValue),  // +++ this.module.createTeeLocal(tempLocal.index, getValue),
      setValue,
      this.module.createGetLocal(tempLocal.index, nativeType) // ---
    ], nativeType);
  }

  compileUnaryPrefixExpression(expression: UnaryPrefixExpression, contextualType: Type): ExpressionRef {
    const operandExpression: Expression = expression.expression;

    let operand: ExpressionRef;
    let op: UnaryOp;

    switch (expression.operator) {

      case Token.PLUS:
        return this.compileExpression(operandExpression, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);

      case Token.MINUS:
        operand = this.compileExpression(operandExpression, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);
        if (this.currentType == Type.f32)
          op = UnaryOp.NegF32;
        else if (this.currentType == Type.f64)
          op = UnaryOp.NegF64;
        else
          return this.currentType.isLongInteger
               ? this.module.createBinary(BinaryOp.SubI64, this.module.createI64(0, 0), operand)
               : this.module.createBinary(BinaryOp.SubI32, this.module.createI32(0), operand);
        break;

      case Token.PLUS_PLUS:
        operand = this.compileExpression(operandExpression, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);
        return this.currentType == Type.f32
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.AddF32, operand, this.module.createF32(1)), contextualType != Type.void)
             : this.currentType == Type.f64
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.AddF64, operand, this.module.createF64(1)), contextualType != Type.void)
             : this.currentType.isLongInteger
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.AddI64, operand, this.module.createI64(1, 0)), contextualType != Type.void)
             : this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.AddI32, operand, this.module.createI32(1)), contextualType != Type.void);

      case Token.MINUS_MINUS:
        operand = this.compileExpression(operandExpression, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);
        return this.currentType == Type.f32
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.SubF32, operand, this.module.createF32(1)), contextualType != Type.void)
             : this.currentType == Type.f64
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.SubF64, operand, this.module.createF64(1)), contextualType != Type.void)
             : this.currentType.isLongInteger
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.SubI64, operand, this.module.createI64(1, 0)), contextualType != Type.void)
             : this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.SubI32, operand, this.module.createI32(1)), contextualType != Type.void);

      case Token.EXCLAMATION:
        operand = this.compileExpression(operandExpression, Type.bool, ConversionKind.NONE);
        if (this.currentType == Type.f32) {
          this.currentType = Type.bool;
          return this.module.createBinary(BinaryOp.EqF32, operand, this.module.createF32(0));
        }
        if (this.currentType == Type.f64) {
          this.currentType = Type.bool;
          return this.module.createBinary(BinaryOp.EqF64, operand, this.module.createF64(0));
        }
        op = this.currentType.isLongInteger
           ? UnaryOp.EqzI64 // TODO: does this yield i64 0/1?
           : UnaryOp.EqzI32;
        this.currentType = Type.bool;
        break;

      case Token.TILDE:
        operand = this.compileExpression(operandExpression, contextualType.isAnyFloat ? Type.i64 : contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);
        return this.currentType.isLongInteger
             ? this.module.createBinary(BinaryOp.XorI64, operand, this.module.createI64(-1, -1))
             : this.module.createBinary(BinaryOp.XorI32, operand, this.module.createI32(-1));

      default:
        throw new Error("not implemented");
    }
    return this.module.createUnary(op, operand);
  }
}

// helpers

export function typeToNativeType(type: Type): NativeType {
  return type.kind == TypeKind.F32
       ? NativeType.F32
       : type.kind == TypeKind.F64
       ? NativeType.F64
       : type.isLongInteger
       ? NativeType.I64
       : type.isAnyInteger || type.kind == TypeKind.BOOL
       ? NativeType.I32
       : NativeType.None;
}

export function typesToNativeTypes(types: Type[]): NativeType[] {
  const k: i32 = types.length;
  const ret: NativeType[] = new Array(k);
  for (let i: i32 = 0; i < k; ++i)
    ret[i] = typeToNativeType(types[i]);
  return ret;
}

export function typeToNativeZero(module: Module, type: Type): ExpressionRef {
  return type.kind == TypeKind.F32
       ? module.createF32(0)
       : type.kind == TypeKind.F64
       ? module.createF64(0)
       : type.isLongInteger
       ? module.createI64(0, 0)
       : module.createI32(0);
}

export function typeToNativeOne(module: Module, type: Type): ExpressionRef {
  return type.kind == TypeKind.F32
       ? module.createF32(1)
       : type.kind == TypeKind.F64
       ? module.createF64(1)
       : type.isLongInteger
       ? module.createI64(1, 0)
       : module.createI32(1);
}

function typeToSignatureNamePart(type: Type): string {
  return type.kind == TypeKind.VOID
       ? "v"
       : type.kind == TypeKind.F32
       ? "f"
       : type.kind == TypeKind.F64
       ? "F"
       : type.isLongInteger
       ? "I"
       : "i";
}

function typesToSignatureName(paramTypes: Type[], returnType: Type): string {
  sb.length = 0;
  for (let i: i32 = 0, k: i32 = paramTypes.length; i < k; ++i)
    sb.push(typeToSignatureNamePart(paramTypes[i]));
  sb.push(typeToSignatureNamePart(returnType));
  return sb.join("");
}
