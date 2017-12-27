import {
  compileCall as compileBuiltinCall,
  compileGetConstant as compileBuiltinGetConstant
} from "./builtins";

import {
  PATH_DELIMITER
} from "./constants";

import {
  DiagnosticCode,
  DiagnosticEmitter
} from "./diagnostics";

import {
  Module,
  MemorySegment,
  ExpressionRef,
  UnaryOp,
  BinaryOp,
  NativeType,
  FunctionTypeRef,
  FunctionRef,
  ExpressionId
} from "./module";

import {
  Program,
  ClassPrototype,
  Class,
  Element,
  ElementKind,
  Enum,
  FunctionPrototype,
  Function,
  Global,
  Local,
  Namespace,
  Parameter,
  EnumValue,
  Property
} from "./program";

import {
  Token
} from "./tokenizer";

import {
  Node,
  NodeKind,
  TypeNode,
  Source,

  Statement,
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
  FunctionDeclaration,
  ForStatement,
  IfStatement,
  ImportStatement,
  InterfaceDeclaration,
  ModifierKind,
  NamespaceDeclaration,
  ReturnStatement,
  SwitchCase,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  VariableLikeDeclarationStatement,
  VariableDeclaration,
  VariableStatement,
  WhileStatement,

  Expression,
  AssertionExpression,
  BinaryExpression,
  CallExpression,
  ElementAccessExpression,
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

  hasModifier
} from "./ast";

import {
  Type,
  TypeKind,
  typesToNativeTypes
} from "./types";

import {
  I64,
  U64
} from "./util/i64";

import {
  sb
} from "./util/sb";

/** Compilation target. */
export enum Target {
  /** WebAssembly with 32-bit pointers. */
  WASM32,
  /** WebAssembly with 64-bit pointers. Experimental and not supported by any runtime yet. */
  WASM64
}

/** Compiler options. */
export class Options {
  /** WebAssembly target. Defaults to {@link Target.WASM32}. */
  target: Target = Target.WASM32;
  /** If true, performs compilation as usual but doesn't produce any output (all calls to module become nops). */
  noEmit: bool = false;
  /** If true, compiles everything instead of just reachable code. */
  noTreeShaking: bool = false;
  /** If true, replaces assertions with nops. */
  noAssert: bool = false;
  /** If true, does not set up a memory. */
  noMemory: bool = false;
}

/** Indicates the desired kind of a conversion. */
export const enum ConversionKind {
  /** No conversion. */
  NONE,
  /** Implicit conversion. */
  IMPLICIT,
  /** Explicit conversion. */
  EXPLICIT
}

/** Compiler interface. */
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
    this.memoryOffset = new U64(this.options.target == Target.WASM64 ? 8 : 4, 0); // leave space for `null`
    this.module = this.options.noEmit ? Module.createStub() : Module.create();

    // set up start function
    const startFunctionTemplate: FunctionPrototype = new FunctionPrototype(program, "start", "start", null);
    const startFunctionInstance: Function = new Function(startFunctionTemplate, startFunctionTemplate.internalName, [], [], Type.void, null);
    this.currentFunction = this.startFunction = startFunctionInstance;
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
        this.module.addFunction(this.startFunction.prototype.internalName, typeRef, typesToNativeTypes(this.startFunction.additionalLocals),
          this.module.createBlock(null, this.startFunctionBody)
        )
      );
    }

    // set up memory
    if (!this.options.noMemory) {
      const initial: U64 = this.memoryOffset.clone();
      if (this.options.target == Target.WASM64)
        this.module.addGlobal("HEAP_BASE", NativeType.I64, false, this.module.createI64(initial.lo, initial.hi));
      else
        this.module.addGlobal("HEAP_BASE", NativeType.I32, false, this.module.createI32(initial.lo));

      // determine initial page size
      const initialOverlaps: U64 = initial.clone();
      initialOverlaps.and32(0xffff);
      if (!initialOverlaps.isZero) {
        initial.or32(0xffff);
        initial.add32(1);
      }
      initial.shru32(16); // now is initial size in 64k pages
        this.module.setMemory(initial.toI32(), Module.MAX_MEMORY_WASM32 /* TODO: not WASM64 compatible yet */, this.memorySegments, this.options.target, "memory");
    }
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
          const expr: ExpressionRef = this.compileStatement(statement);
          if (!this.module.noEmit) this.startFunctionBody.push(expr);
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
      throw new Error("global expected");
    if (!this.compileGlobal(<Global>element)) // reports
      return null;
    if (isModuleExport(element, declaration)) {
      if ((<Global>element).hasConstantValue)
        this.module.addGlobalExport(element.internalName, declaration.name.name);
      else
        this.warning(DiagnosticCode.Cannot_export_a_mutable_global, declaration.range);
    }
    return <Global>element;
  }

  compileGlobal(global: Global): bool {
    if (global.isCompiled || (global.isBuiltIn && compileBuiltinGetConstant(this, global)))
      return true;

    const declaration: VariableLikeDeclarationStatement | null = global.declaration;
    let initExpr: ExpressionRef = 0;

    if (!global.type) { // infer type
      if (declaration) {
        if (declaration.type) {
          global.type = this.program.resolveType(declaration.type); // reports
          if (!global.type)
            return false;
        } else if (declaration.initializer) {
          initExpr = this.compileExpression(declaration.initializer, Type.void, ConversionKind.NONE); // reports and returns unreachable
          if (this.currentType == Type.void)
            return false;
          global.type = this.currentType;
        } else {
          this.error(DiagnosticCode.Type_expected, declaration.name.range.atEnd);
          return false;
        }
      } else
        throw new Error("declaration expected");
    }

    const nativeType: NativeType = global.type.toNativeType();
    let initializeInStart: bool = false;

    if (global.hasConstantValue) {
      if (global.type.isLongInteger)
        initExpr = global.constantIntegerValue ? this.module.createI64(global.constantIntegerValue.lo, global.constantIntegerValue.hi) : this.module.createI64(0, 0);
      else if (global.type.kind == TypeKind.F32)
        initExpr = this.module.createF32(global.constantFloatValue);
      else if (global.type.kind == TypeKind.F64)
        initExpr = this.module.createF64(global.constantFloatValue);
      else if (global.type.isSmallInteger) {
        if (global.type.isSignedInteger) {
          const shift: i32 = global.type.smallIntegerShift;
          initExpr = this.module.createI32(global.constantIntegerValue ? global.constantIntegerValue.toI32() << shift >> shift : 0);
        } else
          initExpr = this.module.createI32(global.constantIntegerValue ? global.constantIntegerValue.toI32() & global.type.smallIntegerMask: 0);
      } else
        initExpr = this.module.createI32(global.constantIntegerValue ? global.constantIntegerValue.toI32() : 0);
    } else if (declaration) {
      if (declaration.initializer) {
        if (!initExpr)
          initExpr = this.compileExpression(declaration.initializer, global.type);
        if (!this.module.noEmit && _BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
          if (!global.isMutable) {
            initExpr = this.precomputeExpressionRef(initExpr);
            if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
              this.warning(DiagnosticCode.Compiling_constant_global_with_non_constant_initializer_as_mutable, declaration.range);
              initializeInStart = true;
            }
          } else
            initializeInStart = true;
        }
      } else
        initExpr = global.type.toNativeZero(this.module);
    } else
      throw new Error("declaration expected");

    const internalName: string = global.internalName;
    if (initializeInStart) {
      this.module.addGlobal(internalName, nativeType, true, global.type.toNativeZero(this.module));
      const setExpr: ExpressionRef = this.module.createSetGlobal(internalName, initExpr);
      if (!this.module.noEmit)
        this.startFunctionBody.push(setExpr);
    } else {
      this.module.addGlobal(internalName, nativeType, global.isMutable, initExpr);
      if (!global.isMutable && !this.module.noEmit) {
        const exprType: NativeType = _BinaryenExpressionGetType(initExpr);
        switch (exprType) {
          case NativeType.I32:
            global.constantIntegerValue = new I64(_BinaryenConstGetValueI32(initExpr), 0);
            break;
          case NativeType.I64:
            global.constantIntegerValue = new I64(_BinaryenConstGetValueI64Low(initExpr), _BinaryenConstGetValueI64High(initExpr));
            break;
          case NativeType.F32:
            global.constantFloatValue = _BinaryenConstGetValueF32(initExpr);
            break;
          case NativeType.F64:
            global.constantFloatValue = _BinaryenConstGetValueF64(initExpr);
            break;
          default:
            throw new Error("concrete type expected");
        }
        global.hasConstantValue = true;
      }
    }
    global.isCompiled = true;
    return true;
  }

  // enums

  compileEnumDeclaration(declaration: EnumDeclaration): void {
    const element: Element | null = <Element | null>this.program.elements.get(declaration.internalName);
    if (!element || element.kind != ElementKind.ENUM)
      throw new Error("enum expected");
    this.compileEnum(<Enum>element);
  }

  compileEnum(element: Enum): void {
    if (element.isCompiled)
      return;

    let previousValue: EnumValue | null = null;
    if (element.members)
      for (let [key, member] of element.members) {
        if (member.kind != ElementKind.ENUMVALUE)
          continue;
        const val: EnumValue = <EnumValue>member;
        if (val.hasConstantValue) {
          this.module.addGlobal(val.internalName, NativeType.I32, false, this.module.createI32(val.constantValue));
        } else if (val.declaration) {
          const declaration: EnumValueDeclaration = val.declaration;
          let initExpr: ExpressionRef;
          let initInStart: bool = false;
          if (declaration.value) {
            initExpr = this.compileExpression(<Expression>declaration.value, Type.i32);
            if (!this.module.noEmit && _BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
              initExpr = this.precomputeExpressionRef(initExpr);
              if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
                if (element.isConstant)
                  this.warning(DiagnosticCode.Compiling_constant_global_with_non_constant_initializer_as_mutable, declaration.range);
                initInStart = true;
              }
            }
          } else if (previousValue == null) {
            initExpr = this.module.createI32(0);
          } else if (previousValue.hasConstantValue) {
            initExpr = this.module.createI32(previousValue.constantValue + 1);
          } else {
            // in TypeScript this errors with TS1061, but actually we can do:
            initExpr = this.module.createBinary(BinaryOp.AddI32,
              this.module.createGetGlobal(previousValue.internalName, NativeType.I32),
              this.module.createI32(1)
            );
            if (element.isConstant)
              this.warning(DiagnosticCode.Compiling_constant_global_with_non_constant_initializer_as_mutable, declaration.range);
            initInStart = true;
          }
          if (initInStart) {
            this.module.addGlobal(val.internalName, NativeType.I32, true, this.module.createI32(0));
            const setExpr: ExpressionRef = this.module.createSetGlobal(val.internalName, initExpr);
            if (!this.module.noEmit)
              this.startFunctionBody.push(setExpr);
          } else {
            this.module.addGlobal(val.internalName, NativeType.I32, false, initExpr);
            if (!this.module.noEmit) {
              if (_BinaryenExpressionGetType(initExpr) == NativeType.I32) {
                val.constantValue = _BinaryenConstGetValueI32(initExpr);
                val.hasConstantValue = true;
              } else
                throw new Error("i32 expected");
            }
          }
        } else
          throw new Error("declaration expected");
        previousValue = <EnumValue>val;
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
    if (isModuleExport(instance, declaration))
      this.module.addFunctionExport(instance.internalName, declaration.name.name);
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

    const declaration: FunctionDeclaration | null = instance.prototype.declaration;
    if (!declaration)
      throw new Error("declaration expected"); // built-ins are not compiled here

    if (instance.isDeclared) {
      if (declaration.statements) {
        this.error(DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts, declaration.name.range);
        return false;
      }
    } else {
      if (!declaration.statements) {
        this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, declaration.name.range);
        return false;
      }
    }
    instance.isCompiled = true;

    // compile statements
    let stmts: ExpressionRef[] | null = null;
    if (!instance.isDeclared) {
      const previousFunction: Function = this.currentFunction;
      this.currentFunction = instance;
      stmts = this.compileStatements(<Statement[]>declaration.statements);
      this.currentFunction = previousFunction;
    }

    // create the function type
    let k: i32 = instance.parameters.length;
    const nativeResultType: NativeType = instance.returnType.toNativeType();
    const nativeParamTypes: NativeType[] = new Array(k);
    const signatureNameParts: string[] = new Array(k + 1);
    for (let i: i32 = 0; i < k; ++i) {
      nativeParamTypes[i] = instance.parameters[i].type.toNativeType();
      signatureNameParts[i] = instance.parameters[i].type.toSignatureName();
    }
    signatureNameParts[k] = instance.returnType.toSignatureName();
    let typeRef: FunctionTypeRef = this.module.getFunctionTypeBySignature(nativeResultType, nativeParamTypes);
    if (!typeRef)
      typeRef = this.module.addFunctionType(signatureNameParts.join(""), nativeResultType, nativeParamTypes);

    // create the function
    const internalName: string = instance.internalName;
    if (instance.isDeclared) { // TODO: use parent namespace as externalModuleName, if applicable
      this.module.addFunctionImport(internalName, "env", declaration.name.name, typeRef);
    } else {
      this.module.addFunction(internalName, typeRef, typesToNativeTypes(instance.additionalLocals), this.module.createBlock(null, <ExpressionRef[]>stmts, NativeType.None));
    }
    instance.finalize();
    return true;
  }

  // compilePropertyUsingTypeArguments(prototype: PropertyPrototype, contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): Function | null {
  //   let getter: Function | null = null;
  //   let setter: Function | null = null;
  //   if (prototype.getterPrototype) {
  //     getter = prototype.getterPrototype.resolve([], contextualTypeArguments); // reports
  //     if (prototype.setterPrototype)
  //       setter = prototype.setterPrototype.resolve([], contextualTypeArguments); // reports
  //   }

  // }

  // compileProperty(instance: Property): bool {

  // }

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

        case NodeKind.INTERFACE:
          if ((noTreeShaking || hasModifier(ModifierKind.EXPORT, (<InterfaceDeclaration>member).modifiers)) && !(<InterfaceDeclaration>member).typeParameters.length)
            this.compileInterfaceDeclaration(<InterfaceDeclaration>member, []);
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
  }

  compileNamespace(ns: Namespace): void {
    if (!ns.members)
      return;

    const noTreeShaking: bool = this.options.noTreeShaking;
    for (let [name, element] of ns.members) {
      switch (element.kind) {

        case ElementKind.CLASS_PROTOTYPE:
          if ((noTreeShaking || (<ClassPrototype>element).isExported) && !(<ClassPrototype>element).isGeneric)
            this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
          break;

        case ElementKind.ENUM:
          this.compileEnum(<Enum>element);
          break;

        case ElementKind.FUNCTION_PROTOTYPE:
          if ((noTreeShaking || (<FunctionPrototype>element).isExported) && !(<FunctionPrototype>element).isGeneric)
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

  compileInterfaceDeclaration(declaration: InterfaceDeclaration, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): void {
    throw new Error("not implemented");
  }

  // memory

  /** Adds a static memory segment with the specified data.  */
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

      case NodeKind.TYPEDECLARATION:
        if (this.currentFunction == this.startFunction)
          return this.module.createNop();
        break; // must be top-level; function bodies are not initialized

      case NodeKind.VARIABLE:
        return this.compileVariableStatement(<VariableStatement>statement);

      case NodeKind.WHILE:
        return this.compileWhileStatement(<WhileStatement>statement);
    }
    this.error(DiagnosticCode.Operation_not_supported, statement.range);
    throw new Error("unexpected statement kind");
  }

  compileStatements(statements: Statement[]): ExpressionRef[] {
    let i: i32 = 0, k: i32 = statements.length;
    const stmts: ExpressionRef[] = new Array(k);
    for (; i < k; ++i)
      stmts[i] = this.compileStatement(statements[i]);
    return stmts; // array of 0-es in noEmit-mode
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
    if (statement.label) {
      this.error(DiagnosticCode.Operation_not_supported, statement.label.range);
      return this.module.createUnreachable();
    }
    const context: string | null = this.currentFunction.breakContext;
    if (context != null)
      return this.module.createBreak("break|" + (<string>context));
    this.error(DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement, statement.range);
    return this.module.createUnreachable();
  }

  compileContinueStatement(statement: ContinueStatement): ExpressionRef {
    if (statement.label) {
      this.error(DiagnosticCode.Operation_not_supported, statement.label.range);
      return this.module.createUnreachable();
    }
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
    const ifTrue: ExpressionRef = this.compileStatement(statement.ifTrue);
    const ifFalse: ExpressionRef = statement.ifFalse ? this.compileStatement(<Statement>statement.ifFalse) : 0;
    return this.module.createIf(condition, ifTrue, ifFalse);
  }

  compileReturnStatement(statement: ReturnStatement): ExpressionRef {
    if (this.currentFunction) {
      const expression: ExpressionRef = statement.value ? this.compileExpression(<Expression>statement.value, this.currentFunction.returnType) : 0;
      return this.module.createReturn(expression);
    }
    return this.module.createUnreachable();
  }

  compileSwitchStatement(statement: SwitchStatement): ExpressionRef {
    const context: string = this.currentFunction.enterBreakContext();
    const previousDisallowContinue: bool = this.disallowContinue;
    this.disallowContinue = true;

    // introduce a local for evaluating the condition (exactly once)
    const tempLocal: Local = this.currentFunction.getTempLocal(Type.i32);
    let i: i32, k: i32 = statement.cases.length;

    // prepend initializer to inner block
    const breaks: ExpressionRef[] = new Array(1 + k);
    breaks[0] = this.module.createSetLocal(tempLocal.index, this.compileExpression(statement.condition, Type.i32)); // initializer

    // make one br_if per (possibly dynamic) labeled case (binaryen optimizes to br_table where possible)
    let breakIndex: i32 = 1;
    let defaultIndex: i32 = -1;
    for (i = 0; i < k; ++i) {
      const case_: SwitchCase = statement.cases[i];
      if (case_.label) {
        breaks[breakIndex++] = this.module.createBreak("case" + i.toString(10) + "|" + context,
          this.module.createBinary(BinaryOp.EqI32,
            this.module.createGetLocal(tempLocal.index, NativeType.I32),
            this.compileExpression(case_.label, Type.i32)
          )
        );
      } else
        defaultIndex = i;
    }

    this.currentFunction.freeTempLocal(tempLocal);

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
      const name: string = declaration.name.name;
      let type: Type | null = null;
      let init: ExpressionRef = 0;
      if (declaration.type) {
        type = this.program.resolveType(<TypeNode>declaration.type, this.currentFunction.contextualTypeArguments, true); // reports
        if (!type)
          continue;
        if (declaration.initializer)
          init = this.compileExpression(declaration.initializer, type); // reports and returns unreachable
      } else if (declaration.initializer) { // infer type
        init = this.compileExpression(declaration.initializer, Type.void, ConversionKind.NONE); // reports and returns unreachable
        if ((type = this.currentType) == Type.void)
          continue;
      } else {
        this.error(DiagnosticCode.Type_expected, declaration.name.range.atEnd);
        continue;
      }
      if (this.currentFunction.locals.has(name))
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, name); // recoverable
      else {
        this.currentFunction.addLocal(type, name);
        if (init)
          initializers.push(this.compileAssignmentWithValue(declaration.name, init));
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
    const nativeType: NativeType = this.currentType.toNativeType();
    let typeRef: FunctionTypeRef = this.module.getFunctionTypeBySignature(nativeType, []);
    if (!typeRef)
      typeRef = this.module.addFunctionType(this.currentType.toSignatureName(), nativeType, []);
    const funcRef: FunctionRef = this.module.addFunction("__precompute", typeRef, [], expr);
    this.module.runPasses([ "precompute" ], funcRef);
    const ret: ExpressionRef = _BinaryenFunctionGetBody(funcRef);
    this.module.removeFunction("__precompute");
    // TODO: also remove the function type somehow if no longer used or make the C-API accept
    // a `null` typeRef, using an implicit type.
    return ret;
  }

  convertExpression(expr: ExpressionRef, fromType: Type, toType: Type, conversionKind: ConversionKind, reportNode: Node): ExpressionRef {
    if (conversionKind == ConversionKind.NONE)
      return expr;

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
              expr = mod.createUnary(UnaryOp.TruncF32ToI64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32ToI32, expr);
              if (toType.isSmallInteger) {
                expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
                expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
              }
            }
          } else {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF32ToU64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32ToU32, expr);
              if (toType.isSmallInteger)
                expr = mod.createBinary(BinaryOp.AndI32, expr, mod.createI32(toType.smallIntegerMask));
            }
          }

        // f64 to int
        } else {
          if (toType.isSignedInteger) {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF64ToI64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64ToI32, expr);
              if (toType.isSmallInteger) {
                expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
                expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
              }
            }
          } else {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF64ToU64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64ToU32, expr);
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
            expr = mod.createUnary(UnaryOp.ConvertI64ToF32, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU64ToF32, expr);
        } else {
          if (!fromType.isSmallInteger)
            losesInformation = true;
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI32ToF32, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU32ToF32, expr);
        }

      // int to f64
      } else {
        if (fromType.isLongInteger) {
          losesInformation = true;
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI64ToF64, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU64ToF64, expr);
        } else
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI32ToF64, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU32ToF64, expr);
      }

    // int to int
    } else {
      if (fromType.isLongInteger) {

        // i64 to i32
        if (!toType.isLongInteger) {
          losesInformation = true;
          expr = mod.createUnary(UnaryOp.WrapI64, expr); // discards upper bits
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

      // i32 or smaller to even smaller int
      } else if (toType.isSmallInteger && fromType.size > toType.size) {
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
        // if (condition = this.module.cloneExpression(left, true, 2))
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
        tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
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
          this.module.createGetLocal(tempLocal.index, tempLocal.type.toNativeType())
        );

      case Token.BAR_BAR: // left || right
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        // simplify if left is free of side effects while tolerating two levels of nesting
        // if (condition = this.module.cloneExpression(left, true, 2))
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
        tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
        condition = this.module.createTeeLocal(tempLocal.index, left);
        return this.module.createIf(
          this.currentType.isLongInteger
            ? this.module.createBinary(BinaryOp.NeI64, condition, this.module.createI64(0, 0))
            : this.currentType == Type.f64
            ? this.module.createBinary(BinaryOp.NeF64, condition, this.module.createF64(0))
            : this.currentType == Type.f32
            ? this.module.createBinary(BinaryOp.NeF32, condition, this.module.createF32(0))
            : this.module.createTeeLocal(tempLocal.index, left),
          this.module.createGetLocal(tempLocal.index, tempLocal.type.toNativeType()),
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
    let element: Element | null = null;
    switch (expression.kind) {

      case NodeKind.IDENTIFIER:
        element = this.program.resolveIdentifier(<IdentifierExpression>expression, this.currentFunction); // reports
        break;

      case NodeKind.PROPERTYACCESS:
        element = this.program.resolvePropertyAccess(<PropertyAccessExpression>expression, this.currentFunction); // reports
        break;

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
    }
    if (!element)
      return this.module.createUnreachable();

    let type: Type | null = null;
    switch (element.kind) {

      case ElementKind.LOCAL:
        type = (<Local>element).type;
        break;

      case ElementKind.GLOBAL:
        if (this.compileGlobal(<Global>element))
          type = (<Global>element).type;
        break;

      case ElementKind.PROPERTY:
        const setterPrototype: FunctionPrototype | null = (<Property>element).setterPrototype;
        if (setterPrototype) {
          const setterInstance: Function | null = setterPrototype.resolve(); // reports
          if (setterInstance) {
            if (contextualType == Type.void) { // just set if dropped anyway
              return this.compileCall(setterInstance, [ valueExpression ], expression);
            } else { // otherwise do a set followed by a get
              const getterPrototype: FunctionPrototype | null = (<Property>element).getterPrototype;
              if (getterPrototype) {
                const getterInstance: Function | null = getterPrototype.resolve(); // reports
                if (getterInstance) {
                  return this.module.createBlock(null, [
                    this.compileCall(setterInstance, [ valueExpression ], expression),
                    this.compileCall(getterInstance, [], expression)
                  ], getterInstance.returnType.toNativeType());
                }
              } else
                this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, expression.range, (<Property>element).simpleName, (<Property>element).parent.internalName);
            }
          }
        } else
          this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, expression.range, (<Property>element).simpleName, (<Property>element).parent.internalName);
        return this.module.createUnreachable();

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
    }
    if (!type)
      return this.module.createUnreachable();

    this.currentType = type;
    return this.compileAssignmentWithValue(expression, this.compileExpression(valueExpression, type, ConversionKind.IMPLICIT), contextualType != Type.void);
  }

  compileAssignmentWithValue(expression: Expression, valueWithCorrectType: ExpressionRef, tee: bool = false): ExpressionRef {
    let element: Element | null = null;
    switch (expression.kind) {

      case NodeKind.IDENTIFIER:
        element = this.program.resolveIdentifier(<IdentifierExpression>expression, this.currentFunction);
        break;

      case NodeKind.PROPERTYACCESS:
        element = this.program.resolvePropertyAccess(<PropertyAccessExpression>expression, this.currentFunction);
        break;

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
    }
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
      if (!this.compileGlobal(<Global>element))
        return this.module.createUnreachable();
      this.currentType = <Type>(<Global>element).type;
      if (!(<Global>element).isMutable) {
        this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, element.internalName);
        return this.module.createUnreachable();
      }
      if (tee) {
        const globalNativeType: NativeType = (<Type>(<Global>element).type).toNativeType();
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
    let element: Element | null = null;
    switch (expression.expression.kind) {
      // case NodeKind.SUPER:

      case NodeKind.IDENTIFIER:
        element = this.program.resolveIdentifier(<IdentifierExpression>expression.expression, this.currentFunction);
        break;

      case NodeKind.PROPERTYACCESS:
        element = this.program.resolvePropertyAccess(<PropertyAccessExpression>expression.expression, this.currentFunction);
        break;

      default:
        throw new Error("not implemented");
    }
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
          let expr: ExpressionRef = compileBuiltinCall(this, functionPrototype, resolvedTypeArguments, expression.arguments, expression);
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
    if (functionInstance.isDeclared)
      return this.module.createCallImport(functionInstance.internalName, operands, functionInstance.returnType.toNativeType());

    // internal function
    return this.module.createCall(functionInstance.internalName, operands, functionInstance.returnType.toNativeType());
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
    }

    const element: Element | null = this.program.resolveElement(expression, this.currentFunction); // reports
    if (!element)
      return this.module.createUnreachable();

    // local
    if (element.kind == ElementKind.LOCAL) {
      this.currentType = (<Local>element).type;
      return this.module.createGetLocal((<Local>element).index, this.currentType.toNativeType());
    }

    // global
    if (element.kind == ElementKind.GLOBAL) {
      if (element.isBuiltIn)
        return compileBuiltinGetConstant(this, <Global>element);

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
        return this.module.createGetGlobal((<Global>element).internalName, this.currentType.toNativeType());
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
        if (contextualType == Type.void && !intValue.fitsInI32) {
          this.currentType = Type.i64;
          return this.module.createI64(intValue.lo, intValue.hi);
        }
        this.currentType = contextualType.isSignedInteger ? Type.i32 : Type.u32;
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

  compilePropertyAccessExpression(propertyAccess: PropertyAccessExpression, contextualType: Type): ExpressionRef {
    const expression: Expression = propertyAccess.expression;
    const propertyName: string = propertyAccess.property.name;

    // the lhs expression is either 'this', 'super', an identifier or another property access
    let target: Element | null;
    switch (expression.kind) {

      case NodeKind.THIS:
        if (!this.currentFunction.instanceMethodOf) {
          this.error(DiagnosticCode._this_cannot_be_referenced_in_current_location, expression.range);
          return this.module.createUnreachable();
        }
        target = this.currentFunction.instanceMethodOf;
        break;

      case NodeKind.SUPER:
        if (!(this.currentFunction.instanceMethodOf && this.currentFunction.instanceMethodOf.base)) {
          this.error(DiagnosticCode._super_can_only_be_referenced_in_a_derived_class, expression.range);
          return this.module.createUnreachable();
        }
        target = this.currentFunction.instanceMethodOf.base;
        break;

      case NodeKind.IDENTIFIER:
        target = this.program.resolveIdentifier(<IdentifierExpression>expression, this.currentFunction); // reports
        break;

      case NodeKind.PROPERTYACCESS:
        target = this.program.resolvePropertyAccess(<PropertyAccessExpression>expression, this.currentFunction); // reports
        break;

      default:
        throw new Error("unexpected expression kind");
    }
    if (!target)
      return this.module.createUnreachable();

    // look up the property within the target to obtain the actual element
    let element: Element | null;
    switch (target.kind) {

      case ElementKind.LOCAL:
        element = (<Local>target).type.classType;
        if (!element) {
          this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, propertyAccess.property.range, propertyName, (<Local>target).type.toString());
          return this.module.createUnreachable();
        }
        target = element;
        break;

      case ElementKind.GLOBAL:
        if (!this.compileGlobal(<Global>target))
          return this.module.createUnreachable();
        element = (<Type>(<Global>target).type).classType;
        if (!element) {
          this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, propertyAccess.property.range, propertyName, (<Local>target).type.toString());
          return this.module.createUnreachable();
        }
        target = element;
        break;

      default:
        if (target.members) {
          element = target.members.get(propertyName);
          if (!element) {
            this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, propertyAccess.property.range, propertyName, target.internalName);
            return this.module.createUnreachable();
          }

          // handle enum values right away
          if (element.kind == ElementKind.ENUMVALUE) {
            this.currentType = Type.i32;
            if ((<EnumValue>element).hasConstantValue)
              return this.module.createI32((<EnumValue>element).constantValue)
            this.compileEnum((<EnumValue>element).enum);
            return this.module.createGetGlobal((<EnumValue>element).internalName, NativeType.I32);
          }
        } else {
          this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, propertyAccess.property.range, propertyName, target.internalName);
          return this.module.createUnreachable();
        }
        break;
    }

    // handle the element
    switch (element.kind) {

      case ElementKind.LOCAL:
        return this.module.createGetLocal((<Local>element).index, (this.currentType = (<Local>element).type).toNativeType());

      case ElementKind.GLOBAL:
        if (!this.compileGlobal(<Global>element))
          return this.module.createUnreachable();
        this.currentType = <Type>(<Global>element).type;
        if ((<Global>element).hasConstantValue)
          return this.currentType== Type.f32 ? this.module.createF32((<Global>element).constantFloatValue)
               : this.currentType == Type.f64 ? this.module.createF64((<Global>element).constantFloatValue)
               : this.currentType.isLongInteger
                 ? this.module.createI64((<I64>(<Global>element).constantIntegerValue).lo, (<I64>(<Global>element).constantIntegerValue).hi)
                 : this.module.createI32((<I64>(<Global>element).constantIntegerValue).lo);
        return this.module.createGetGlobal((<Global>element).internalName, this.currentType.toNativeType());

      case ElementKind.PROPERTY: // getter
        const getterPrototype: FunctionPrototype | null = (<Property>element).getterPrototype;
        if (getterPrototype) {
          const getterInstance: Function | null = getterPrototype.resolve([], this.currentFunction.contextualTypeArguments);
          if (getterInstance) {
            return this.compileCall(getterInstance, [], propertyAccess);
          } else {
            return this.module.createUnreachable();
          }
        } else {
          this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, propertyAccess.property.range, propertyName, target.internalName);
          return this.module.createUnreachable();
        }
    }
    this.error(DiagnosticCode.Operation_not_supported, propertyAccess.range);
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
    const getValue: ExpressionRef = this.compileExpression(expression.operand, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);

    // use a temp local for the intermediate value
    const tempLocal: Local = this.currentFunction.getTempLocal(this.currentType);

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
    const setValue: ExpressionRef = this.compileAssignmentWithValue(expression.operand,
      this.module.createBinary(op,
        this.module.createGetLocal(tempLocal.index, nativeType),
        nativeOne
      ), false
    );

    // NOTE: can't preemptively tee_local the return value on the stack because binaryen expects
    // this to be well-formed. becomes a tee_local when optimizing, though.
    this.currentType = tempLocal.type;
    this.currentFunction.freeTempLocal(tempLocal);
    return this.module.createBlock(null, [
      this.module.createSetLocal(tempLocal.index, getValue),  // +++ this.module.createTeeLocal(tempLocal.index, getValue),
      setValue,
      this.module.createGetLocal(tempLocal.index, nativeType) // ---
    ], nativeType);
  }

  compileUnaryPrefixExpression(expression: UnaryPrefixExpression, contextualType: Type): ExpressionRef {
    const operandExpression: Expression = expression.operand;

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
           ? UnaryOp.EqzI64
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

function isModuleExport(element: Element, declaration: DeclarationStatement): bool {
  if (!element.isExported)
    return false;
  if (declaration.range.source.isEntry)
    return true;
  let parentNode: Node | null = declaration.parent;
  if (!parentNode)
    return false;
  if (parentNode.kind == NodeKind.VARIABLE)
    if (!(parentNode = parentNode.parent))
      return false;
  if (parentNode.kind != NodeKind.NAMESPACE && parentNode.kind != NodeKind.CLASS)
    return false;
  let parent: Element | null = element.program.elements.get((<DeclarationStatement>parentNode).internalName);
  if (!parent)
    return false;
  return isModuleExport(parent, <DeclarationStatement>parentNode);
}
