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
  FieldPrototype,
  Field,
  FunctionPrototype,
  Function,
  Global,
  Local,
  Namespace,
  Parameter,
  EnumValue,
  Property,
  VariableLikeElement
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
    return new Compiler(program, options).compile();
  }

  /** Constructs a new compiler for a {@link Program} using the specified options. */
  constructor(program: Program, options: Options | null = null) {
    super(program.diagnostics);
    this.program = program;
    this.options = options ? options : new Options();
    this.memoryOffset = new U64(this.options.target == Target.WASM64 ? 8 : 4, 0); // leave space for `null`
    this.module = this.options.noEmit ? Module.createStub() : Module.create();

    // set up start function
    var startFunctionTemplate = new FunctionPrototype(program, "start", "start", null);
    var startFunctionInstance = new Function(startFunctionTemplate, startFunctionTemplate.internalName, [], [], Type.void, null);
    this.currentFunction = this.startFunction = startFunctionInstance;
  }

  /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
  compile(): Module {

    // initialize lookup maps, built-ins, imports, exports, etc.
    this.program.initialize(this.options.target);

    // compile entry file (exactly one, usually)
    var sources = this.program.sources;
    for (var i = 0, k = sources.length; i < k; ++i)
      if (sources[i].isEntry)
        this.compileSource(sources[i]);

    // make start function if not empty
    if (this.startFunctionBody.length) {
      var typeRef = this.module.getFunctionTypeBySignature(NativeType.None, []);
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
      var initial = this.memoryOffset.clone();
      if (this.options.target == Target.WASM64)
        this.module.addGlobal("HEAP_BASE", NativeType.I64, false, this.module.createI64(initial.lo, initial.hi));
      else
        this.module.addGlobal("HEAP_BASE", NativeType.I32, false, this.module.createI32(initial.lo));

      // determine initial page size
      var initialOverlaps = initial.clone();
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
    for (var i = 0, k = this.program.sources.length; i < k; ++i) {
      var importedSource = this.program.sources[i];
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

    var noTreeShaking = this.options.noTreeShaking;
    for (var i = 0, k = source.statements.length; i < k; ++i) {
      var statement = source.statements[i];
      switch (statement.kind) {

        case NodeKind.CLASS:
          if ((noTreeShaking || source.isEntry && hasModifier(ModifierKind.EXPORT, (<ClassDeclaration>statement).modifiers)) && !(<ClassDeclaration>statement).typeParameters.length)
            this.compileClassDeclaration(<ClassDeclaration>statement, []);
          break;

        case NodeKind.ENUM:
          if (noTreeShaking || source.isEntry && hasModifier(ModifierKind.EXPORT, (<EnumDeclaration>statement).modifiers))
            this.compileEnumDeclaration(<EnumDeclaration>statement);
          break;

        case NodeKind.FUNCTION:
          if ((noTreeShaking || source.isEntry && hasModifier(ModifierKind.EXPORT, (<FunctionDeclaration>statement).modifiers)) && !(<FunctionDeclaration>statement).typeParameters.length)
            this.compileFunctionDeclaration(<FunctionDeclaration>statement, []);
          break;

        case NodeKind.IMPORT:
          this.compileSourceByPath((<ImportStatement>statement).normalizedPath, (<ImportStatement>statement).path);
          break;

        case NodeKind.NAMESPACE:
          if (noTreeShaking || source.isEntry && hasModifier(ModifierKind.EXPORT, (<NamespaceDeclaration>statement).modifiers))
            this.compileNamespaceDeclaration(<NamespaceDeclaration>statement);
          break;

        case NodeKind.VARIABLE:
          if (noTreeShaking || source.isEntry && hasModifier(ModifierKind.EXPORT, (<VariableStatement>statement).modifiers))
            this.compileVariableStatement(<VariableStatement>statement);
          break;

        case NodeKind.EXPORT:
          if ((<ExportStatement>statement).normalizedPath != null)
            this.compileSourceByPath(<string>(<ExportStatement>statement).normalizedPath, <StringLiteralExpression>(<ExportStatement>statement).path);
          if (noTreeShaking || source.isEntry)
            this.compileExportStatement(<ExportStatement>statement);
          break;

        // otherwise a top-level statement that is part of the start function's body
        default:
          var previousFunction = this.currentFunction;
          this.currentFunction = this.startFunction;
          var expr = this.compileStatement(statement);
          if (!this.module.noEmit)
            this.startFunctionBody.push(expr);
          this.currentFunction = previousFunction;
          break;
      }
    }
  }

  // globals

  compileGlobalDeclaration(declaration: VariableDeclaration, isConst: bool): Global | null {
    var element = this.program.elements.get(declaration.internalName);
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

    var declaration = global.declaration;
    var initExpr: ExpressionRef = 0;

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

    var nativeType = global.type.toNativeType();

    if (global.isDeclared) {
      if (global.isConstant) {
        this.module.addGlobalImport(global.internalName, global.namespace ? global.namespace.simpleName : "env", global.simpleName, nativeType);
        global.isCompiled = true;
        return true;
      } else if (declaration) {
        this.error(DiagnosticCode.Operation_not_supported, declaration.range);
      }
      return false;
    }

    var initializeInStart = false;

    if (global.hasConstantValue) {
      initExpr = makeInlineConstant(global, this.module);
    } else if (declaration) {
      if (declaration.initializer) {
        if (!initExpr)
          initExpr = this.compileExpression(declaration.initializer, global.type);
        if (!this.module.noEmit && _BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
          if (!global.isMutable) {
            initExpr = this.precomputeExpressionRef(initExpr);
            if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
              this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, declaration.range);
              initializeInStart = true;
            }
          } else
            initializeInStart = true;
        }
      } else
        initExpr = global.type.toNativeZero(this.module);
    } else
      throw new Error("declaration expected");

    var internalName = global.internalName;
    if (initializeInStart) {
      this.module.addGlobal(internalName, nativeType, true, global.type.toNativeZero(this.module));
      var setExpr = this.module.createSetGlobal(internalName, initExpr);
      if (!this.module.noEmit)
        this.startFunctionBody.push(setExpr);
    } else {
      this.module.addGlobal(internalName, nativeType, global.isMutable, initExpr);
      if (!global.isMutable && !this.module.noEmit) {
        var exprType = _BinaryenExpressionGetType(initExpr);
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
    var element = this.program.elements.get(declaration.internalName);
    if (!element || element.kind != ElementKind.ENUM)
      throw new Error("enum expected");
    this.compileEnum(<Enum>element);
  }

  compileEnum(element: Enum): void {
    if (element.isCompiled)
      return;

    var previousValue: EnumValue | null = null;
    if (element.members)
      for (var member of element.members.values()) {
        if (member.kind != ElementKind.ENUMVALUE)
          continue;
        var val = <EnumValue>member;
        if (val.hasConstantValue) {
          this.module.addGlobal(val.internalName, NativeType.I32, false, this.module.createI32(val.constantValue));
        } else if (val.declaration) {
          var declaration = val.declaration;
          var initExpr: ExpressionRef;
          var initInStart = false;
          if (declaration.value) {
            initExpr = this.compileExpression(<Expression>declaration.value, Type.i32);
            if (!this.module.noEmit && _BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
              initExpr = this.precomputeExpressionRef(initExpr);
              if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
                if (element.isConstant)
                  this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, declaration.range);
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
              this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, declaration.range);
            initInStart = true;
          }
          if (initInStart) {
            this.module.addGlobal(val.internalName, NativeType.I32, true, this.module.createI32(0));
            var setExpr = this.module.createSetGlobal(val.internalName, initExpr);
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
    var internalName = declaration.internalName;
    var element = this.program.elements.get(internalName);
    if (!element || element.kind != ElementKind.FUNCTION_PROTOTYPE)
      throw new Error("function expected");
    var instance = this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, typeArguments, contextualTypeArguments, alternativeReportNode); // reports
    if (!instance)
      return;
    if (isModuleExport(instance, declaration))
      this.module.addFunctionExport(instance.internalName, declaration.name.name);
  }

  compileFunctionUsingTypeArguments(prototype: FunctionPrototype, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): Function | null {
    var instance = prototype.resolveInclTypeArguments(typeArguments, contextualTypeArguments, alternativeReportNode); // reports
    if (!instance)
      return null;
    return this.compileFunction(instance) ? instance : null;
  }

  compileFunction(instance: Function): bool {
    if (instance.isCompiled)
      return true;

    var declaration = instance.prototype.declaration;
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
    var stmts: ExpressionRef[] | null = null;
    if (!instance.isDeclared) {
      var previousFunction = this.currentFunction;
      this.currentFunction = instance;
      stmts = this.compileStatements(<Statement[]>declaration.statements);
      this.currentFunction = previousFunction;
    }

    // create the function type
    var numParameters = instance.parameters.length;
    var numParametersInclThis = instance.instanceMethodOf ? numParameters + 1 : numParameters;
    var paramIndex = 0;

    var nativeResultType = instance.returnType.toNativeType();
    var nativeParamTypes = new Array<NativeType>(numParametersInclThis);
    var signatureNameParts = new Array<string>(numParametersInclThis + 1);

    if (instance.instanceMethodOf) {
      nativeParamTypes[paramIndex] = select<NativeType>(NativeType.I64, NativeType.I32, this.options.target == Target.WASM64);
      signatureNameParts[paramIndex++] = instance.instanceMethodOf.type.toSignatureString();
    }
    for (var i = 0; i < numParameters; ++i) {
      nativeParamTypes[paramIndex] = instance.parameters[i].type.toNativeType();
      signatureNameParts[paramIndex++] = instance.parameters[i].type.toSignatureString();
    }
    signatureNameParts[paramIndex] = instance.returnType.toSignatureString();
    var typeRef = this.module.getFunctionTypeBySignature(nativeResultType, nativeParamTypes);
    if (!typeRef)
      typeRef = this.module.addFunctionType(signatureNameParts.join(""), nativeResultType, nativeParamTypes);

    // create the function
    if (instance.isDeclared) {
      this.module.addFunctionImport(instance.internalName, instance.prototype.namespace ? instance.prototype.namespace.simpleName : "env", declaration.name.name, typeRef);
    } else {
      this.module.addFunction(instance.internalName, typeRef, typesToNativeTypes(instance.additionalLocals), this.module.createBlock(null, <ExpressionRef[]>stmts, NativeType.None));
    }
    instance.finalize();
    return true;
  }

  // namespaces

  compileNamespaceDeclaration(declaration: NamespaceDeclaration): void {
    var members = declaration.members;
    var noTreeShaking = this.options.noTreeShaking;
    for (var i = 0, k = members.length; i < k; ++i) {
      var member = members[i];
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
          throw new Error("namespace member expected");
      }
    }
  }

  compileNamespace(ns: Namespace): void {
    if (!ns.members)
      return;

    var noTreeShaking = this.options.noTreeShaking;
    for (var element of ns.members.values()) {
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
    var members = statement.members;
    for (var i = 0, k = members.length; i < k; ++i) {
      var member = members[i];
      var internalExportName = statement.range.source.internalPath + PATH_DELIMITER + member.externalIdentifier.name;
      var element = this.program.exports.get(internalExportName);
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
            var functionInstance = this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, []);
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
    var internalName = declaration.internalName;
    var element = this.program.elements.get(internalName);
    if (!element || element.kind != ElementKind.CLASS_PROTOTYPE)
      throw new Error("class expected");
    this.compileClassUsingTypeArguments(<ClassPrototype>element, typeArguments, contextualTypeArguments, alternativeReportNode);
  }

  compileClassUsingTypeArguments(prototype: ClassPrototype, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): void {
    var instance = prototype.resolveInclTypeArguments(typeArguments, contextualTypeArguments, alternativeReportNode);
    if (!instance)
      return;
    this.compileClass(instance);
  }

  compileClass(instance: Class): bool {
    if (instance.isCompiled)
      return true;

    return instance.isCompiled = true;
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
    var segment = MemorySegment.create(buffer, this.memoryOffset.clone());
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

      case NodeKind.VARIABLE:
        return this.compileVariableStatement(<VariableStatement>statement);

      case NodeKind.WHILE:
        return this.compileWhileStatement(<WhileStatement>statement);

      case NodeKind.TYPEDECLARATION:
        if (this.currentFunction == this.startFunction)
          return this.module.createNop();
        // fall-through: must be top-level; function bodies are not guaranteed to be evaluated

      default:
        throw new Error("statement expected");
    }
  }

  compileStatements(statements: Statement[]): ExpressionRef[] {
    var k = statements.length;
    var stmts = new Array<ExpressionRef>(k);
    for (var i = 0; i < k; ++i)
      stmts[i] = this.compileStatement(statements[i]);
    return stmts; // array of 0-es in noEmit-mode
  }

  compileBlockStatement(statement: BlockStatement): ExpressionRef {
    var statements = statement.statements;
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
    var context = this.currentFunction.breakContext;
    if (context != null)
      return this.module.createBreak("break|" + context);

    this.error(DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement, statement.range);
    return this.module.createUnreachable();
  }

  compileContinueStatement(statement: ContinueStatement): ExpressionRef {
    if (statement.label) {
      this.error(DiagnosticCode.Operation_not_supported, statement.label.range);
      return this.module.createUnreachable();
    }
    var context = this.currentFunction.breakContext;
    if (context && !this.disallowContinue)
      return this.module.createBreak("continue|" + context);

    this.error(DiagnosticCode.A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement, statement.range);
    return this.module.createUnreachable();
  }

  compileDoStatement(statement: DoStatement): ExpressionRef {
    var label = this.currentFunction.enterBreakContext();
    var body = this.compileStatement(statement.statement);
    var condition = this.compileExpression(statement.condition, Type.i32);
    this.currentFunction.leaveBreakContext();
    var breakLabel = "break|" + label;
    var continueLabel = "continue|" + label;
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
    var expr = this.compileExpression(statement.expression, Type.void, ConversionKind.NONE);
    if (this.currentType != Type.void) {
      expr = this.module.createDrop(expr);
      this.currentType = Type.void;
    }
    return expr;
  }

  compileForStatement(statement: ForStatement): ExpressionRef {
    var context = this.currentFunction.enterBreakContext();
    var variableWasLocal = this.variableIsLocal;
    if (this.currentFunction == this.startFunction)
      this.variableIsLocal = true;
    var initializer = statement.initializer ? this.compileStatement(<Statement>statement.initializer) : this.module.createNop();
    this.variableIsLocal = variableWasLocal;
    var condition = statement.condition ? this.compileExpression(<Expression>statement.condition, Type.i32) : this.module.createI32(1);
    var incrementor = statement.incrementor ? this.compileExpression(<Expression>statement.incrementor, Type.void) : this.module.createNop();
    var body = this.compileStatement(statement.statement);
    this.currentFunction.leaveBreakContext();
    var continueLabel = "continue|" + context;
    var breakLabel = "break|" + context;
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
    var condition = this.compileExpression(statement.condition, Type.i32);
    var ifTrue = this.compileStatement(statement.ifTrue);
    var ifFalse = statement.ifFalse ? this.compileStatement(<Statement>statement.ifFalse) : <ExpressionRef>0;
    return this.module.createIf(condition, ifTrue, ifFalse);
  }

  compileReturnStatement(statement: ReturnStatement): ExpressionRef {
    if (this.currentFunction) {
      var expression = statement.value ? this.compileExpression(<Expression>statement.value, this.currentFunction.returnType) : <ExpressionRef>0;
      return this.module.createReturn(expression);
    }
    return this.module.createUnreachable();
  }

  compileSwitchStatement(statement: SwitchStatement): ExpressionRef {
    var context = this.currentFunction.enterBreakContext();
    var previousDisallowContinue = this.disallowContinue;
    this.disallowContinue = true;

    // introduce a local for evaluating the condition (exactly once)
    var tempLocal = this.currentFunction.getTempLocal(Type.i32);
    var k = statement.cases.length;

    // prepend initializer to inner block
    var breaks = new Array<ExpressionRef>(1 + k);
    breaks[0] = this.module.createSetLocal(tempLocal.index, this.compileExpression(statement.condition, Type.i32)); // initializer

    // make one br_if per (possibly dynamic) labeled case (binaryen optimizes to br_table where possible)
    var breakIndex = 1;
    var defaultIndex = -1;
    for (var i = 0; i < k; ++i) {
      var case_ = statement.cases[i];
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
    var currentBlock = this.module.createBlock("case0|" + context, breaks, NativeType.None);
    for (i = 0; i < k; ++i) {
      case_ = statement.cases[i];
      var nextLabel = i == k - 1 ? "break|" + context : "case" + (i + 1).toString(10) + "|" + context;
      var l = case_.statements.length;
      var body = new Array<ExpressionRef>(1 + l);
      body[0] = currentBlock;
      for (var j = 0; j < l; ++j)
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
    var declarations = statement.declarations;

    // top-level variables become globals
    if (this.currentFunction == this.startFunction && !this.variableIsLocal) {
      var isConst = hasModifier(ModifierKind.CONST, statement.modifiers);
      for (var i = 0, k = declarations.length; i < k; ++i)
        this.compileGlobalDeclaration(declarations[i], isConst);
      return this.module.createNop();
    }
    // other variables become locals
    var initializers = new Array<ExpressionRef>();
    for (i = 0, k = declarations.length; i < k; ++i) {
      var declaration = declarations[i];
      var name = declaration.name.name;
      var type: Type | null = null;
      var init: ExpressionRef = 0;
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
        if (hasModifier(ModifierKind.CONST, declaration.modifiers)) {
          if (init) {
            init = this.precomputeExpressionRef(init);
            if (_BinaryenExpressionGetId(init) == ExpressionId.Const) {
              var local = new Local(this.program, name, -1, type);
              switch (_BinaryenExpressionGetType(init)) {
                case NativeType.I32:
                  local = local.withConstantIntegerValue(_BinaryenConstGetValueI32(init), 0);
                  break;
                case NativeType.I64:
                  local = local.withConstantIntegerValue(_BinaryenConstGetValueI64Low(init), _BinaryenConstGetValueI64High(init));
                  break;
                case NativeType.F32:
                  local = local.withConstantFloatValue(<f64>_BinaryenConstGetValueF32(init));
                  break;
                case NativeType.F64:
                  local = local.withConstantFloatValue(_BinaryenConstGetValueF64(init));
                  break;
                default:
                  throw new Error("concrete type expected");
              }
              this.currentFunction.locals.set(name, local);
              continue;
            } else
              this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, declaration.range);
          } else {
            this.error(DiagnosticCode._const_declarations_must_be_initialized, declaration.range);
          }
        }
        this.currentFunction.addLocal(type, name);
        if (init)
          initializers.push(this.compileAssignmentWithValue(declaration.name, init));
      }
    }
    return initializers.length ? this.module.createBlock(null, initializers, NativeType.None) : this.module.createNop();
  }

  compileWhileStatement(statement: WhileStatement): ExpressionRef {
    var label = this.currentFunction.enterBreakContext();
    var condition = this.compileExpression(statement.condition, Type.i32);
    var breakLabel = "break|" + label;
    var continueLabel = "continue|" + label;
    var body = this.compileStatement(statement.statement);
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

    var expr: ExpressionRef;
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
        throw new Error("expression expected");
    }

    if (conversionKind != ConversionKind.NONE && this.currentType != contextualType) {
      expr = this.convertExpression(expr, this.currentType, contextualType, conversionKind, expression);
      this.currentType = contextualType;
    }
    return expr;
  }

  precomputeExpression(expression: Expression, contextualType: Type, conversionKind: ConversionKind = ConversionKind.IMPLICIT): ExpressionRef {
    return this.precomputeExpressionRef(this.compileExpression(expression, contextualType, conversionKind));
  }

  precomputeExpressionRef(expr: ExpressionRef): ExpressionRef {
    var nativeType = this.currentType.toNativeType();
    var typeRef = this.module.getFunctionTypeBySignature(nativeType, []);
    if (!typeRef)
      typeRef = this.module.addFunctionType(this.currentType.toSignatureString(), nativeType, []);
    var funcRef = this.module.addFunction("__precompute", typeRef, [], expr);
    this.module.runPasses([ "precompute" ], funcRef);
    var ret = _BinaryenFunctionGetBody(funcRef);
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

    var fromFloat = fromType.isAnyFloat;
    var toFloat = toType.isAnyFloat;

    var mod = this.module;
    var losesInformation = false;

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
      this.error(DiagnosticCode.Conversion_from_type_0_to_1_possibly_loses_information_and_thus_requires_an_explicit_cast, reportNode.range, fromType.toString(), toType.toString());

    return expr;
  }

  compileAssertionExpression(expression: AssertionExpression, contextualType: Type): ExpressionRef {
    var toType = this.program.resolveType(expression.toType, this.currentFunction.contextualTypeArguments); // reports
    if (!toType)
      return this.module.createUnreachable();
    return this.compileExpression(expression.expression, toType, ConversionKind.EXPLICIT);
  }

  compileBinaryExpression(expression: BinaryExpression, contextualType: Type): ExpressionRef {
    var op: BinaryOp;
    var left: ExpressionRef;
    var right: ExpressionRef;
    var compound: Token = 0;

    var condition: ExpressionRef;
    var tempLocal: Local;

    switch (expression.operator) {

      case Token.LESSTHAN:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            op = BinaryOp.LtI32;
            break;

          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.LtI64, BinaryOp.LtI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
            op = BinaryOp.LtI64;
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.LtU32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            op = select<BinaryOp>(BinaryOp.LtU64, BinaryOp.LtU32, this.options.target == Target.WASM64);
            break;

          case TypeKind.U64:
            op = BinaryOp.LtU64;
            break;

          case TypeKind.F32:
            op = BinaryOp.LtF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.LtF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            op = BinaryOp.GtI32;
            break;

          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.GtI64, BinaryOp.GtI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
            op = BinaryOp.GtI64;
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.GtU32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            op = select<BinaryOp>(BinaryOp.GtU64, BinaryOp.GtU32, this.options.target == Target.WASM64);
            break;

          case TypeKind.U64:
            op = BinaryOp.GtU64;
            break;

          case TypeKind.F32:
            op = BinaryOp.GtF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.GtF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.LESSTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            op = BinaryOp.LeI32;
            break;

          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.LeI64, BinaryOp.LeI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
            op = BinaryOp.LeI64;
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.LeU32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            op = select<BinaryOp>(BinaryOp.LeU64, BinaryOp.LeU32, this.options.target == Target.WASM64);
            break;

          case TypeKind.U64:
            op = BinaryOp.LeU64;
            break;

          case TypeKind.F32:
            op = BinaryOp.LeF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.LeF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            op = BinaryOp.GeI32;
            break;

          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.GeI64, BinaryOp.GeI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
            op = BinaryOp.GeI64;
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.GeU32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            op = select<BinaryOp>(BinaryOp.GeU64, BinaryOp.GeU32, this.options.target == Target.WASM64);
            break;

          case TypeKind.U64:
            op = BinaryOp.GeU64;
            break;

          case TypeKind.F32:
            op = BinaryOp.GeF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.GeF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.EQUALS_EQUALS:
      case Token.EQUALS_EQUALS_EQUALS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.EqI32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.EqI64, BinaryOp.EqI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.EqI64;
            break;

          case TypeKind.F32:
            op = BinaryOp.EqF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.EqF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.EXCLAMATION_EQUALS:
      case Token.EXCLAMATION_EQUALS_EQUALS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.NeI32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.NeI64, BinaryOp.NeI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.NeI64;
            break;

          case TypeKind.F32:
            op = BinaryOp.NeF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.NeF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.EQUALS:
        return this.compileAssignment(expression.left, expression.right, contextualType);

      case Token.PLUS_EQUALS:
        compound = Token.EQUALS;
      case Token.PLUS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.AddI32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.AddI64, BinaryOp.AddI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.AddI64;
            break;

          case TypeKind.F32:
            op = BinaryOp.AddF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.AddF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        break;

      case Token.MINUS_EQUALS:
        compound = Token.EQUALS;
      case Token.MINUS:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.SubI32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.SubI64, BinaryOp.SubI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.SubI64;
            break;

          case TypeKind.F32:
            op = BinaryOp.SubF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.SubF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        break;

      case Token.ASTERISK_EQUALS:
        compound = Token.EQUALS;
      case Token.ASTERISK:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.MulI32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.MulI64, BinaryOp.MulI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.MulI64;
            break;

          case TypeKind.F32:
            op = BinaryOp.MulF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.MulF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        break;

      case Token.SLASH_EQUALS:
        compound = Token.EQUALS;
      case Token.SLASH:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            op = BinaryOp.DivI32;
            break;

          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.DivI64, BinaryOp.DivI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
            op = BinaryOp.DivI64;
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.DivU32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            op = select<BinaryOp>(BinaryOp.DivU64, BinaryOp.DivU32, this.options.target == Target.WASM64);
            break;

          case TypeKind.U64:
            op = BinaryOp.DivU64;
            break;

          case TypeKind.F32:
            op = BinaryOp.DivF32;
            break;

          case TypeKind.F64:
            op = BinaryOp.DivF64;
            break;

          default:
            throw new Error("concrete type expected");
        }
        break;

      case Token.PERCENT_EQUALS:
        compound = Token.EQUALS;
      case Token.PERCENT:
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            op = BinaryOp.RemI32;
            break;

          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.RemI64, BinaryOp.RemI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
            op = BinaryOp.RemI64;
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.RemU32;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            op = select<BinaryOp>(BinaryOp.RemU64, BinaryOp.RemU32, this.options.target == Target.WASM64);
            break;

          case TypeKind.U64:
            op = BinaryOp.RemU64;
            break;

          case TypeKind.F32:
          case TypeKind.F64:
            // TODO: internal fmod, possibly simply imported from JS
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            return this.module.createUnreachable();

          default:
            throw new Error("concrete type expected");
        }
        break;

      case Token.LESSTHAN_LESSTHAN_EQUALS:
        compound = Token.EQUALS;
      case Token.LESSTHAN_LESSTHAN:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          default:
            op = BinaryOp.ShlI32;
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.ShlI64;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.ShlI64, BinaryOp.ShlI32, this.options.target == Target.WASM64);
            break;
        }
        break;

      case Token.GREATERTHAN_GREATERTHAN_EQUALS:
        compound = Token.EQUALS;
      case Token.GREATERTHAN_GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          default:
            op = BinaryOp.ShrI32;
            break;

          case TypeKind.I64:
            op = BinaryOp.ShrI64;
            break;

          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.ShrI64, BinaryOp.ShrI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            op = BinaryOp.ShrU32;
            break;

          case TypeKind.U64:
            op = BinaryOp.ShrU64;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            op = select<BinaryOp>(BinaryOp.ShrU64, BinaryOp.ShrU32, this.options.target == Target.WASM64);
            break;
        }
        break;

      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS:
        compound = Token.EQUALS;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.u64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          default:
            op = BinaryOp.ShrU32;
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.ShrU64;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.ShrU64, BinaryOp.ShrU32, this.options.target == Target.WASM64);
            break;
        }
        break;

      case Token.AMPERSAND_EQUALS:
        compound = Token.EQUALS;
      case Token.AMPERSAND:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          default:
            op = BinaryOp.AndI32;
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.AndI64;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.AndI64, BinaryOp.AndI32, this.options.target == Target.WASM64);
            break;
        }
        break;

      case Token.BAR_EQUALS:
        compound = Token.EQUALS;
      case Token.BAR:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          default:
            op = BinaryOp.OrI32;
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.OrI64;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.OrI64, BinaryOp.OrI32, this.options.target == Target.WASM64);
            break;
        }
        break;

      case Token.CARET_EQUALS:
        compound = Token.EQUALS;
      case Token.CARET:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          default:
            op = BinaryOp.XorI32;
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.XorI64;
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = select<BinaryOp>(BinaryOp.XorI64, BinaryOp.XorI32, this.options.target == Target.WASM64);
            break;
        }
        break;

      // logical (no overloading)

      case Token.AMPERSAND_AMPERSAND: // left && right
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        // simplify if left is free of side effects while tolerating one level of nesting, e.g., i32.load(i32.const)
        if (condition = this.module.cloneExpression(left, true, 1))
          return this.module.createIf(
            this.currentType.isLongInteger
              ? this.module.createBinary(BinaryOp.NeI64, condition, this.module.createI64(0, 0))
              : this.currentType == Type.f64
              ? this.module.createBinary(BinaryOp.NeF64, condition, this.module.createF64(0))
              : this.currentType == Type.f32
              ? this.module.createBinary(BinaryOp.NeF32, condition, this.module.createF32(0))
              : condition, // usual case: saves one EQZ when not using EQZ above
             right,
             left
          );

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
          this.module.createGetLocal(tempLocal.index, this.currentType.toNativeType())
        );

      case Token.BAR_BAR: // left || right
        left = this.compileExpression(expression.left, contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        // simplify if left is free of side effects while tolerating one level of nesting
        if (condition = this.module.cloneExpression(left, true, 1))
          return this.module.createIf(
            this.currentType.isLongInteger
              ? this.module.createBinary(BinaryOp.NeI64, condition, this.module.createI64(0, 0))
              : this.currentType == Type.f64
              ? this.module.createBinary(BinaryOp.NeF64, condition, this.module.createF64(0))
              : this.currentType == Type.f32
              ? this.module.createBinary(BinaryOp.NeF32, condition, this.module.createF32(0))
              : condition, // usual case: saves one EQZ when not using EQZ above
            left,
            right
          );

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
          this.module.createGetLocal(tempLocal.index, this.currentType.toNativeType()),
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
    var element: Element | null = null;
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

    var type: Type | null = null;
    switch (element.kind) {

      case ElementKind.LOCAL:
        type = (<Local>element).type;
        break;

      case ElementKind.GLOBAL:
        if (this.compileGlobal(<Global>element))
          type = (<Global>element).type;
        break;

      case ElementKind.PROPERTY:
        var setterPrototype = (<Property>element).setterPrototype;
        if (setterPrototype) {
          var setterInstance = setterPrototype.resolve(); // reports
          if (setterInstance) {
            if (contextualType == Type.void) { // just set if dropped anyway
              return this.compileCall(setterInstance, [ valueExpression ], expression);
            } else { // otherwise do a set followed by a get
              var getterPrototype = (<Property>element).getterPrototype;
              if (getterPrototype) {
                var getterInstance = getterPrototype.resolve(); // reports
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
    var element: Element | null = null;
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
      assert((<Local>element).type != null);
      if (tee) {
        this.currentType = <Type>(<Local>element).type;
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
        var globalNativeType = (<Type>(<Global>element).type).toNativeType();
        return this.module.createBlock(null, [ // teeGlobal
          this.module.createSetGlobal((<Global>element).internalName, valueWithCorrectType),
          this.module.createGetGlobal((<Global>element).internalName, globalNativeType)
        ], globalNativeType);
      }
      this.currentType = Type.void;
      return this.module.createSetGlobal((<Global>element).internalName, valueWithCorrectType);
    }

    // TODO: fields, (setters)

    throw new Error("not implemented");
  }

  compileCallExpression(expression: CallExpression, contextualType: Type): ExpressionRef {
    var element: Element | null = null;
    var thisExpression: Expression;
    switch (expression.expression.kind) {
      // case NodeKind.THIS:
      // case NodeKind.SUPER:

      case NodeKind.IDENTIFIER:
        element = this.program.resolveIdentifier(thisExpression = <IdentifierExpression>expression.expression, this.currentFunction);
        break;

      case NodeKind.PROPERTYACCESS:
        element = this.program.resolvePropertyAccess(<PropertyAccessExpression>expression.expression, this.currentFunction);
        thisExpression = (<PropertyAccessExpression>expression.expression).expression;
        break;

      default:
        throw new Error("not implemented");
    }
    if (!element)
      return this.module.createUnreachable();

    if (element.kind == ElementKind.FUNCTION_PROTOTYPE) {
      var functionPrototype = <FunctionPrototype>element;
      var functionInstance: Function | null = null;
      if (functionPrototype.isBuiltIn) {
        var resolvedTypeArguments: Type[] | null = null;
        if (expression.typeArguments) {
          var k = expression.typeArguments.length;
          resolvedTypeArguments = new Array<Type>(k);
          var sb = new Array<string>(k);
          for (var i = 0; i < k; ++i) {
            var resolvedType = this.program.resolveType(expression.typeArguments[i], this.currentFunction.contextualTypeArguments, true); // reports
            if (!resolvedType)
              return this.module.createUnreachable();
            resolvedTypeArguments[i] = resolvedType;
            sb[i] = resolvedType.toString();
          }
          functionInstance = functionPrototype.instances.get(sb.join(","));
        } else
          functionInstance = functionPrototype.instances.get("");

        if (!functionInstance) {
          this.currentType = contextualType;
          var expr = compileBuiltinCall(this, functionPrototype, resolvedTypeArguments, expression.arguments, expression);
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

      var numArguments = expression.arguments.length;
      var numArgumentsInclThis = select<i32>(numArguments + 1, numArguments, functionInstance.instanceMethodOf != null);
      var argumentIndex = 0;

      var args = new Array<Expression>(numArgumentsInclThis);
      if (functionInstance.instanceMethodOf)
        args[argumentIndex++] = thisExpression;
      for (i = 0; i < numArguments; ++i)
        args[argumentIndex++] = expression.arguments[i];
      return this.compileCall(functionInstance, args, expression);
    }
    this.error(DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures, expression.range, element.internalName);
    return this.module.createUnreachable();
  }

  /** Compiles a call to a function. If an instance method, `this` is the first element in `argumentExpressions`. */
  compileCall(functionInstance: Function, argumentExpressions: Expression[], reportNode: Node): ExpressionRef {

    // validate and compile arguments
    var parameters = functionInstance.parameters;

    var numParameters = parameters.length;
    var numParametersInclThis = select<i32>(numParameters + 1, numParameters, functionInstance.instanceMethodOf != null);
    var numArgumentsInclThis = argumentExpressions.length;
    var numArguments = select<i32>(numArgumentsInclThis - 1, numArgumentsInclThis, functionInstance.instanceMethodOf != null);

    if (numArgumentsInclThis > numParametersInclThis) { // too many arguments
      this.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range,
        numParameters.toString(10),
        numArguments.toString(10)
      );
      return this.module.createUnreachable();
    }
    var operands = new Array<ExpressionRef>(numParametersInclThis);
    var operandIndex = 0;
    if (functionInstance.instanceMethodOf)
      operands[operandIndex++] = this.compileExpression(argumentExpressions[0], functionInstance.instanceMethodOf.type);
    for (; operandIndex < numParametersInclThis; ++operandIndex) {

      // argument has been provided
      if (numArgumentsInclThis > operandIndex) {
        operands[operandIndex] = this.compileExpression(argumentExpressions[operandIndex], parameters[operandIndex + numParameters - numParametersInclThis].type);

      // argument has been omitted
      } else {
        var initializer = parameters[operandIndex + numParameters - numParametersInclThis].initializer;
        if (initializer) { // fall back to provided initializer
          operands[operandIndex] = this.compileExpression(initializer, parameters[operandIndex + numParameters - numParametersInclThis].type);
          // FIXME: here, the initializer is compiled in the caller's scope.
          // a solution could be to use a stub for each possible overload, calling the
          // full function with optional arguments being part of the stub's body.

        } else { // too few arguments
          this.error(DiagnosticCode.Expected_at_least_0_arguments_but_got_1, reportNode.range,
            (operandIndex + numParametersInclThis - numParameters).toString(10),
            numArguments.toString(10)
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
    var targetExpression = expression.expression;
    var target: Element | null = null;
    switch (targetExpression.kind) {

      // case NodeKind.THIS:

      case NodeKind.IDENTIFIER:
        target = this.program.resolveIdentifier(<IdentifierExpression>targetExpression, this.currentFunction);
        break;

      case NodeKind.PROPERTYACCESS:
        target = this.program.resolvePropertyAccess(<PropertyAccessExpression>targetExpression, this.currentFunction);
        break;

      // case NodeKind.ELEMENTACCESS:

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
    }
    if (!target)
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

    var element = this.program.resolveElement(expression, this.currentFunction); // reports
    if (!element)
      return this.module.createUnreachable();

    switch (element.kind) {

      case ElementKind.LOCAL:
        assert((<Local>element).type != null);
        this.currentType = <Type>(<Local>element).type;
        if ((<Local>element).hasConstantValue)
          return makeInlineConstant(<Local>element, this.module);
        assert((<Local>element).index >= 0);
        return this.module.createGetLocal((<Local>element).index, this.currentType.toNativeType());

      case ElementKind.GLOBAL:
        if (element.isBuiltIn)
          return compileBuiltinGetConstant(this, <Global>element);

        var global = <Global>element;
        if (!this.compileGlobal(global)) // reports
          return this.module.createUnreachable();
        assert(global.type != null); // has been resolved when compileGlobal succeeds
        this.currentType = <Type>global.type;
        if (global.hasConstantValue)
          return makeInlineConstant(global, this.module);
        else
          return this.module.createGetGlobal((<Global>element).internalName, this.currentType.toNativeType());

      // case ElementKind.FIELD

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        return this.module.createUnreachable();
    }
  }

  compileLiteralExpression(expression: LiteralExpression, contextualType: Type): ExpressionRef {
    switch (expression.literalKind) {
      // case LiteralKind.ARRAY:

      case LiteralKind.FLOAT: {
        var floatValue = (<FloatLiteralExpression>expression).value;
        if (contextualType == Type.f32)
          return this.module.createF32(<f32>floatValue);
        this.currentType = Type.f64;
        return this.module.createF64(floatValue);
      }

      case LiteralKind.INTEGER: {
        var intValue = (<IntegerLiteralExpression>expression).value;
        if (contextualType == Type.bool && (intValue.isZero || intValue.isOne))
          return this.module.createI32(intValue.isZero ? 0 : 1);
        if (contextualType == Type.f64)
          return this.module.createF64(intValue.toF64());
        if (contextualType == Type.f32)
          return this.module.createF32(<f32>intValue.toF64());
        if (contextualType.isLongInteger)
          return this.module.createI64(intValue.lo, intValue.hi);
        if (contextualType.isSmallInteger) {
          var smallIntValue: i32 = contextualType.isSignedInteger
            ? intValue.lo << contextualType.smallIntegerShift >> contextualType.smallIntegerShift
            : intValue.lo & contextualType.smallIntegerMask;
          return this.module.createI32(smallIntValue);
        }
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
    var expression = propertyAccess.expression;
    var propertyName = propertyAccess.property.name;

    // the lhs expression is either 'this', 'super', an identifier or another property access
    var target: Element | null;
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
        throw new Error("lhs expression expected");
    }
    if (!target)
      return this.module.createUnreachable();

    // look up the property within the target to obtain the actual element
    var element: Element | null;
    switch (target.kind) {

      case ElementKind.LOCAL:
        assert((<Local>target).type != null);
        element = (<Type>(<Local>target).type).classType;
        if (!element) {
          this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, propertyAccess.property.range, propertyName, (<Type>(<Local>target).type).toString());
          return this.module.createUnreachable();
        }
        target = element;
        break;

      case ElementKind.GLOBAL:
        if (!this.compileGlobal(<Global>target))
          return this.module.createUnreachable();
        element = (<Type>(<Global>target).type).classType;
        if (!element) {
          this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, propertyAccess.property.range, propertyName, (<Type>(<Local>target).type).toString());
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
              return this.module.createI32((<EnumValue>element).constantValue);
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
        assert((<Local>element).type != null);
        return this.module.createGetLocal((<Local>element).index, (this.currentType = <Type>(<Local>element).type).toNativeType());

      case ElementKind.GLOBAL:
        if (!this.compileGlobal(<Global>element))
          return this.module.createUnreachable();
        assert((<Global>element).type != null);
        this.currentType = <Type>(<Global>element).type;
        if ((<Global>element).hasConstantValue)
          return makeInlineConstant(<Global>element, this.module);
        else
          return this.module.createGetGlobal((<Global>element).internalName, this.currentType.toNativeType());

      case ElementKind.PROPERTY: // getter
        var getterPrototype = (<Property>element).getterPrototype;
        if (getterPrototype) {
          var getterInstance = getterPrototype.resolve([], this.currentFunction.contextualTypeArguments);
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
    var condition = this.compileExpression(expression.condition, Type.i32);
    var ifThen = this.compileExpression(expression.ifThen, contextualType);
    var ifElse = this.compileExpression(expression.ifElse, contextualType);
    return this.module.createIf(condition, ifThen, ifElse);
  }

  compileUnaryPostfixExpression(expression: UnaryPostfixExpression, contextualType: Type): ExpressionRef {
    var operator = expression.operator;

    // make a getter for the expression (also obtains the type)
    var getValue = this.compileExpression(expression.operand, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);

    // use a temp local for the intermediate value
    var tempLocal = this.currentFunction.getTempLocal(this.currentType);
    assert(tempLocal.type != null);

    var op: BinaryOp;
    var nativeType: NativeType;
    var nativeOne: ExpressionRef;

    switch ((<Type>tempLocal.type).kind) {

      default:
        op = select<BinaryOp>(BinaryOp.AddI32, BinaryOp.SubI32, operator == Token.PLUS_PLUS);
        nativeType = NativeType.I32;
        nativeOne = this.module.createI32(1);
        break;

      case TypeKind.USIZE:
        // TODO: check operator overload
      case TypeKind.ISIZE:
        if (this.options.target != Target.WASM64) {
          op = select<BinaryOp>(BinaryOp.AddI32, BinaryOp.SubI32, operator == Token.PLUS_PLUS);
          nativeType = NativeType.I32;
          nativeOne = this.module.createI32(1);
          break;
        }
        // fall-through

      case TypeKind.I64:
      case TypeKind.U64:
        op = select<BinaryOp>(BinaryOp.AddI64, BinaryOp.SubI64, operator == Token.PLUS_PLUS);
        nativeType = NativeType.I64;
        nativeOne = this.module.createI64(1, 0);
        break;

      case TypeKind.F32:
        op = select<BinaryOp>(BinaryOp.AddF32, BinaryOp.SubF32, operator == Token.PLUS_PLUS);
        nativeType = NativeType.F32;
        nativeOne = this.module.createF32(1);
        break;

      case TypeKind.F64:
        op = select<BinaryOp>(BinaryOp.AddF64, BinaryOp.SubF64, operator == Token.PLUS_PLUS);
        nativeType = NativeType.F64;
        nativeOne = this.module.createF64(1);
        break;
    }

    // make a setter that sets the new value (temp value +/- 1)
    // note that this is not inlined below because it modifies currentType
    var setValue = this.compileAssignmentWithValue(expression.operand,
      this.module.createBinary(op,
        this.module.createGetLocal(tempLocal.index, nativeType),
        nativeOne
      ), false
    );

    // NOTE: can't preemptively tee_local the return value on the stack because binaryen expects
    // this to be well-formed. becomes a tee_local when optimizing, though.
    this.currentType = <Type>tempLocal.type;
    this.currentFunction.freeTempLocal(tempLocal);
    return this.module.createBlock(null, [
      this.module.createSetLocal(tempLocal.index, getValue),  // +++ this.module.createTeeLocal(tempLocal.index, getValue),
      setValue,
      this.module.createGetLocal(tempLocal.index, nativeType) // ---
    ], nativeType);
  }

  compileUnaryPrefixExpression(expression: UnaryPrefixExpression, contextualType: Type): ExpressionRef {
    var operandExpression = expression.operand;

    var operand: ExpressionRef;
    var op: UnaryOp;

    switch (expression.operator) {

      case Token.PLUS:
        return this.compileExpression(operandExpression, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);

      case Token.MINUS:
        operand = this.compileExpression(operandExpression, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);
        switch (this.currentType.kind) {

          default:
            return this.module.createBinary(BinaryOp.SubI32, this.module.createI32(0), operand);

          case TypeKind.ISIZE:
          case TypeKind.USIZE:
            if (this.options.target != Target.WASM64)
              return this.module.createBinary(BinaryOp.SubI32, this.module.createI32(0), operand);
            // fall-through

          case TypeKind.I64:
          case TypeKind.U64:
            return this.module.createBinary(BinaryOp.SubI64, this.module.createI64(0, 0), operand);

          case TypeKind.F32:
            op = UnaryOp.NegF32;
            break;

          case TypeKind.F64:
            op = UnaryOp.NegF64;
            break;
        }
        break;

      case Token.PLUS_PLUS:
        operand = this.compileExpression(operandExpression, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);
        switch (this.currentType.kind) {

          default:
            operand = this.module.createBinary(BinaryOp.AddI32, operand, this.module.createI32(1));
            break;

          case TypeKind.ISIZE:
          case TypeKind.USIZE:
            if (this.options.target != Target.WASM64) {
              operand = this.module.createBinary(BinaryOp.AddI32, operand, this.module.createI32(1));
              break;
            }
            // fall-through

          case TypeKind.I64:
          case TypeKind.U64:
            operand = this.module.createBinary(BinaryOp.AddI64, operand, this.module.createI64(1, 0));
            break;

          case TypeKind.F32:
            operand = this.module.createBinary(BinaryOp.AddF32, operand, this.module.createF32(1));
            break;

          case TypeKind.F64:
            operand = this.module.createBinary(BinaryOp.AddF64, operand, this.module.createF64(1));
            break;
        }
        return this.compileAssignmentWithValue(operandExpression, operand, contextualType != Type.void);

      case Token.MINUS_MINUS:
        operand = this.compileExpression(operandExpression, contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);
        switch (this.currentType.kind) {

          default:
            operand = this.module.createBinary(BinaryOp.SubI32, operand, this.module.createI32(1));
            break;

          case TypeKind.ISIZE:
          case TypeKind.USIZE:
            if (this.options.target != Target.WASM64) {
              operand = this.module.createBinary(BinaryOp.SubI32, operand, this.module.createI32(1));
              break;
            }
            // fall-through

          case TypeKind.I64:
          case TypeKind.U64:
            operand = this.module.createBinary(BinaryOp.SubI64, operand, this.module.createI64(1, 0));
            break;

          case TypeKind.F32:
            operand = this.module.createBinary(BinaryOp.SubF32, operand, this.module.createF32(1));
            break;

          case TypeKind.F64:
            operand = this.module.createBinary(BinaryOp.SubF64, operand, this.module.createF64(1));
            break;
        }
        return this.compileAssignmentWithValue(operandExpression, operand, contextualType != Type.void);

      case Token.EXCLAMATION:
        operand = this.compileExpression(operandExpression, Type.bool, ConversionKind.NONE);
        switch (this.currentType.kind) {

          default:
            op = UnaryOp.EqzI32;
            break;

          case TypeKind.ISIZE:
          case TypeKind.USIZE:
            op = select<UnaryOp>(UnaryOp.EqzI64, UnaryOp.EqzI32, this.options.target == Target.WASM64);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = UnaryOp.EqzI64;
            break;

          case TypeKind.F32:
            this.currentType = Type.bool;
            return this.module.createBinary(BinaryOp.EqF32, operand, this.module.createF32(0));

          case TypeKind.F64:
            this.currentType = Type.bool;
            return this.module.createBinary(BinaryOp.EqF64, operand, this.module.createF64(0));
        }
        this.currentType = Type.bool;
        break;

      case Token.TILDE:
        operand = this.compileExpression(operandExpression, contextualType.isAnyFloat ? Type.i64 : contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT);
        switch (this.currentType.kind) {

          default:
            return this.module.createBinary(BinaryOp.XorI32, operand, this.module.createI32(-1));

          case TypeKind.ISIZE:
          case TypeKind.USIZE:
            if (this.options.target != Target.WASM64)
              return this.module.createBinary(BinaryOp.XorI32, operand, this.module.createI32(-1));
            // fall-through

          case TypeKind.I64:
          case TypeKind.U64:
            return this.module.createBinary(BinaryOp.XorI64, operand, this.module.createI64(-1, -1));
        }

      default:
        throw new Error("unary operator expected");
    }
    return this.module.createUnary(op, operand);
  }
}

// helpers

/** Tests whether an element is a module-level export from the entry file. */
function isModuleExport(element: Element, declaration: DeclarationStatement): bool {
  if (!element.isExported)
    return false;
  if (declaration.range.source.isEntry)
    return true;
  var parentNode = declaration.parent;
  if (!parentNode)
    return false;
  if (parentNode.kind == NodeKind.VARIABLE)
    if (!(parentNode = parentNode.parent))
      return false;
  if (parentNode.kind != NodeKind.NAMESPACE && parentNode.kind != NodeKind.CLASS)
    return false;
  var parent = element.program.elements.get((<DeclarationStatement>parentNode).internalName);
  if (!parent)
    return false;
  return isModuleExport(parent, <DeclarationStatement>parentNode);
}

/** Creates an inlined expression of a constant variable-like element. */
function makeInlineConstant(element: VariableLikeElement, module: Module): ExpressionRef {
  assert(element.hasConstantValue);
  assert(element.type != null);
  switch ((<Type>element.type).kind) {

    case TypeKind.I8:
    case TypeKind.I16:
      var shift = (<Type>element.type).smallIntegerShift;
      return module.createI32(element.constantIntegerValue ? element.constantIntegerValue.toI32() << shift >> shift : 0);

    case TypeKind.U8:
    case TypeKind.U16:
    case TypeKind.BOOL:
      return module.createI32(element.constantIntegerValue ? element.constantIntegerValue.toI32() & (<Type>element.type).smallIntegerMask: 0);

    case TypeKind.I32:
    case TypeKind.U32:
      return module.createI32(element.constantIntegerValue ? element.constantIntegerValue.lo : 0)

    case TypeKind.ISIZE:
    case TypeKind.USIZE:
      if (element.program.target != Target.WASM64)
        return module.createI32(element.constantIntegerValue ? element.constantIntegerValue.lo : 0)
      // fall-through

    case TypeKind.I64:
    case TypeKind.U64:
      return element.constantIntegerValue
        ? module.createI64(element.constantIntegerValue.lo, element.constantIntegerValue.hi)
        : module.createI64(0, 0);

    case TypeKind.F32:
      return module.createF32((<VariableLikeElement>element).constantFloatValue);

    case TypeKind.F64:
      return module.createF64((<VariableLikeElement>element).constantFloatValue);
  }
  throw new Error("concrete type expected");
}
