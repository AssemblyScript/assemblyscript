import {
  compileCall as compileBuiltinCall,
  compileGetConstant as compileBuiltinGetConstant,
  compileAllocate as compileBuiltinAllocate
} from "./builtins";

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
  ExpressionId,
  readString
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
  VariableLikeElement,
  Flow,
  FlowFlags,
  ElementFlags,
  PATH_DELIMITER,
  LIBRARY_PREFIX
} from "./program";

import {
  Token
} from "./tokenizer";

import {
  Node,
  NodeKind,
  TypeNode,
  Source,
  SourceKind,
  Range,

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
  CommaExpression,
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
  ArrayLiteralExpression,
  StringLiteralExpression,
  UnaryPostfixExpression,
  UnaryPrefixExpression,

  hasModifier
} from "./ast";

import {
  Type,
  TypeKind,
  TypeFlags,

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
  /** If true, compiles everything instead of just reachable code. */
  noTreeShaking: bool = false;
  /** If true, replaces assertions with nops. */
  noAssert: bool = false;
  /** If true, does not set up a memory. */
  noMemory: bool = false;
  /** Memory allocation implementation to use. */
  allocateImpl: string = "allocate_memory";
  /** Memory freeing implementation to use. */
  freeImpl: string = "free_memory";
  /** If true, generates information necessary for source maps. */
  sourceMap: bool = false;

  /** Tests if the target is WASM64 or, otherwise, WASM32. */
  get isWasm64(): bool { return this.target == Target.WASM64; }
  /** Gets the unsigned size type matching the target. */
  get usizeType(): Type { return this.target == Target.WASM64 ? Type.usize64 : Type.usize32; }
  /** Gets the signed size type matching the target. */
  get isizeType(): Type { return this.target == Target.WASM64 ? Type.isize64 : Type.isize32; }
  /** Gets the native size type matching the target. */
  get nativeSizeType(): NativeType { return this.target == Target.WASM64 ? NativeType.I64 : NativeType.I32; }
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
  /** Start function statements. */
  startFunctionBody: ExpressionRef[] = new Array();

  /** Current function in compilation. */
  currentFunction: Function;
  /** Current enum in compilation. */
  currentEnum: Enum | null = null;
  /** Current type in compilation. */
  currentType: Type = Type.void;

  /** Counting memory offset. */
  memoryOffset: U64 = new U64(8, 0); // leave space for (any size of) NULL
  /** Memory segments being compiled. */
  memorySegments: MemorySegment[] = new Array();
  /** Map of already compiled static string segments. */
  stringSegments: Map<string,MemorySegment> = new Map();

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
    this.memoryOffset = new U64(this.options.usizeType.byteSize); // leave space for `null`
    this.module = Module.create();

    // set up the start function wrapping top-level statements, of all files.
    var startFunctionTemplate = new FunctionPrototype(program, "start", "start", null);
    var startFunctionInstance = new Function(startFunctionTemplate, startFunctionTemplate.internalName, [], [], Type.void, null);
    startFunctionInstance.set(ElementFlags.START);
    this.currentFunction = this.startFunction = startFunctionInstance;
  }

  /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
  compile(): Module {

    // initialize lookup maps, built-ins, imports, exports, etc.
    this.program.initialize(this.options);

    var sources = this.program.sources;

    // compile entry file(s) while traversing to reachable elements
    for (var i = 0, k = sources.length; i < k; ++i)
      if (sources[i].isEntry) this.compileSource(sources[i]);

    // compile the start function if not empty
    if (this.startFunctionBody.length) {
      var typeRef = this.module.getFunctionTypeBySignature(NativeType.None, []);
      if (!typeRef) typeRef = this.module.addFunctionType("v", NativeType.None, []);
      var ref: FunctionRef;
      this.module.setStart(
        ref = this.module.addFunction(this.startFunction.prototype.internalName, typeRef, typesToNativeTypes(this.startFunction.additionalLocals),
          this.module.createBlock(null, this.startFunctionBody)
        )
      );
      this.startFunction.finalize(this.module, ref);
    }

    // set up static memory segments and the heap base pointer
    if (!this.options.noMemory) {
      var initial = this.memoryOffset.clone();
      var alignMask = this.options.usizeType.byteSize - 1;
      initial.add32(alignMask); // align to 4/8 bytes
      initial.and32(~alignMask, ~0);
      if (this.options.target == Target.WASM64)
        this.module.addGlobal("HEAP_BASE", NativeType.I64, false, this.module.createI64(initial.lo, initial.hi));
      else
        this.module.addGlobal("HEAP_BASE", NativeType.I32, false, this.module.createI32(initial.lo));

      // determine initial page size
      initial.add32(0xffff); // align to page size
      initial.and32(~0xffff, ~0);
      initial.shru32(16); // ^= number of pages
      this.module.setMemory(initial.toI32(), Module.MAX_MEMORY_WASM32 /* TODO: not WASM64 compatible yet */, this.memorySegments, this.options.target, "memory");
    }
    return this.module;
  }

  // sources

  compileSourceByPath(normalizedPathWithoutExtension: string, reportNode: Node): void {
    var sources = this.program.sources;

    var expected = normalizedPathWithoutExtension + ".ts";
    for (var i = 0, k = sources.length; i < k; ++i) {
      var source = sources[i];
      var actual = source.normalizedPath;
      if (source.normalizedPath == expected) {
        this.compileSource(source);
        return;
      }
    }

    expected = normalizedPathWithoutExtension + "/index.ts";
    for (var i = 0, k = sources.length; i < k; ++i) {
      var source = sources[i];
      var actual = source.normalizedPath;
      if (source.normalizedPath == expected) {
        this.compileSource(source);
        return;
      }
    }

    expected = LIBRARY_PREFIX + normalizedPathWithoutExtension + ".ts";
    for (var i = 0, k = sources.length; i < k; ++i) {
      var source = sources[i];
      var actual = source.normalizedPath;
      if (source.normalizedPath == expected) {
        this.compileSource(source);
        return;
      }
    }

    this.error(DiagnosticCode.File_0_not_found, reportNode.range, normalizedPathWithoutExtension);
  }

  compileSource(source: Source): void {
    var files = this.files;
    if (files.has(source.normalizedPath))
      return;
    files.add(source.normalizedPath);

    var noTreeShaking = this.options.noTreeShaking;
    var isEntry = source.isEntry;
    var startFunctionBody = this.startFunctionBody;
    var statements = source.statements;
    for (var i = 0, k = statements.length; i < k; ++i) {
      var statement = statements[i];
      switch (statement.kind) {

        case NodeKind.CLASSDECLARATION:
          if ((noTreeShaking || isEntry && hasModifier(ModifierKind.EXPORT, (<ClassDeclaration>statement).modifiers)) && !(<ClassDeclaration>statement).typeParameters.length)
            this.compileClassDeclaration(<ClassDeclaration>statement, []);
          break;

        case NodeKind.ENUMDECLARATION:
          if (noTreeShaking || isEntry && hasModifier(ModifierKind.EXPORT, (<EnumDeclaration>statement).modifiers))
            this.compileEnumDeclaration(<EnumDeclaration>statement);
          break;

        case NodeKind.FUNCTIONDECLARATION:
          if ((noTreeShaking || isEntry && hasModifier(ModifierKind.EXPORT, (<FunctionDeclaration>statement).modifiers)) && !(<FunctionDeclaration>statement).typeParameters.length)
            this.compileFunctionDeclaration(<FunctionDeclaration>statement, []);
          break;

        case NodeKind.IMPORT:
          this.compileSourceByPath((<ImportStatement>statement).normalizedPath, (<ImportStatement>statement).path);
          break;

        case NodeKind.NAMESPACEDECLARATION:
          if (noTreeShaking || isEntry && hasModifier(ModifierKind.EXPORT, (<NamespaceDeclaration>statement).modifiers))
            this.compileNamespaceDeclaration(<NamespaceDeclaration>statement);
          break;

        case NodeKind.VARIABLE: // global, always compiled because initializers might have side effects
          var variableInit = this.compileVariableStatement(<VariableStatement>statement);
          if (variableInit) startFunctionBody.push(variableInit);
          break;

        case NodeKind.EXPORT:
          if ((<ExportStatement>statement).normalizedPath != null)
            this.compileSourceByPath(<string>(<ExportStatement>statement).normalizedPath, <StringLiteralExpression>(<ExportStatement>statement).path);
          if (noTreeShaking || isEntry)
            this.compileExportStatement(<ExportStatement>statement);
          break;

        // otherwise a top-level statement that is part of the start function's body
        default:
          var previousFunction = this.currentFunction;
          this.currentFunction = this.startFunction;
          var expr = this.compileStatement(statement);
          this.startFunctionBody.push(expr);
          this.currentFunction = previousFunction;
          break;
      }
    }
  }

  // globals

  compileGlobalDeclaration(declaration: VariableDeclaration): Global | null {
    var element = this.program.elements.get(declaration.fileLevelInternalName);
    if (!element || element.kind != ElementKind.GLOBAL)
      throw new Error("global expected");
    if (!this.compileGlobal(<Global>element)) // reports
      return null;
    return <Global>element;
  }

  compileGlobal(global: Global): bool {
    if (global.is(ElementFlags.COMPILED) || global.is(ElementFlags.BUILTIN))
      return true;

    var declaration = global.declaration;
    var initExpr: ExpressionRef = 0;

    if (global.type == Type.void) { // infer type
      if (declaration) {
        if (declaration.type) {
          var resolvedType = this.program.resolveType(declaration.type); // reports
          if (!resolvedType)
            return false;
          if (resolvedType == Type.void) {
            this.error(DiagnosticCode.Type_0_is_not_assignable_to_type_1, declaration.type.range, "*", resolvedType.toString());
            return false;
          }
          global.type = resolvedType;
        } else if (declaration.initializer) { // infer type using void/NONE for proper literal inference
          initExpr = this.compileExpression(declaration.initializer, Type.void, ConversionKind.NONE); // reports
          if (this.currentType == Type.void) {
            this.error(DiagnosticCode.Type_0_is_not_assignable_to_type_1, declaration.initializer.range, this.currentType.toString(), "<auto>");
            return false;
          }
          global.type = this.currentType;
        } else {
          this.error(DiagnosticCode.Type_expected, declaration.name.range.atEnd);
          return false;
        }
      } else
        throw new Error("declaration expected");
    }

    var nativeType = global.type.toNativeType();

    if (global.is(ElementFlags.DECLARED)) {
      if (global.is(ElementFlags.CONSTANT)) {
        this.module.addGlobalImport(global.internalName, global.namespace ? global.namespace.simpleName : "env", global.simpleName, nativeType);
        global.set(ElementFlags.COMPILED);
        return true;
      } else if (declaration) {
        this.error(DiagnosticCode.Operation_not_supported, declaration.range);
      }
      return false;
    }

    var initializeInStart = false;

    if (global.is(ElementFlags.INLINED)) {
      initExpr = this.compileInlineConstant(global, global.type);
    } else if (declaration) {
      if (declaration.initializer) {
        if (!initExpr)
          initExpr = this.compileExpression(declaration.initializer, global.type);
        if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
          if (global.is(ElementFlags.CONSTANT)) {
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
      this.startFunctionBody.push(setExpr);
    } else {
      if (global.is(ElementFlags.CONSTANT)) {
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
        global.set(ElementFlags.INLINED);
        if (!declaration || declaration.isTopLevel) { // might be re-exported
          this.module.addGlobal(internalName, nativeType, !global.is(ElementFlags.CONSTANT), initExpr);
        }
        if (declaration && declaration.range.source.isEntry && declaration.isTopLevelExport)
          this.module.addGlobalExport(global.internalName, declaration.programLevelInternalName);
      } else
        this.module.addGlobal(internalName, nativeType, !global.is(ElementFlags.CONSTANT), initExpr);
    }
    global.set(ElementFlags.COMPILED);
    return true;
  }

  // enums

  compileEnumDeclaration(declaration: EnumDeclaration): Enum | null {
    var element = this.program.elements.get(declaration.fileLevelInternalName);
    if (!element || element.kind != ElementKind.ENUM)
      throw new Error("enum expected");
    return this.compileEnum(<Enum>element) ? <Enum>element : null;
  }

  compileEnum(element: Enum): bool {
    if (element.is(ElementFlags.COMPILED))
      return true;

    // members might reference each other, triggering another compile
    element.set(ElementFlags.COMPILED);

    this.currentEnum = element;
    var previousValue: EnumValue | null = null;
    if (element.members)
      for (var member of element.members.values()) {
        if (member.kind != ElementKind.ENUMVALUE) // happens if an enum is also a namespace
          continue;
        var initInStart = false;
        var val = <EnumValue>member;
        var valueDeclaration = val.declaration;
        val.set(ElementFlags.COMPILED);
        if (val.is(ElementFlags.INLINED)) {
          if (!element.declaration || element.declaration.isTopLevelExport)
            this.module.addGlobal(val.internalName, NativeType.I32, false, this.module.createI32(val.constantValue));
        } else if (valueDeclaration) {
          var initExpr: ExpressionRef;
          if (valueDeclaration.value) {
            initExpr = this.compileExpression(<Expression>valueDeclaration.value, Type.i32);
            if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
              initExpr = this.precomputeExpressionRef(initExpr);
              if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
                if (element.is(ElementFlags.CONSTANT))
                  this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, valueDeclaration.range);
                initInStart = true;
              }
            }
          } else if (previousValue == null) {
            initExpr = this.module.createI32(0);
          } else if (previousValue.is(ElementFlags.INLINED)) {
            initExpr = this.module.createI32(previousValue.constantValue + 1);
          } else {
            // in TypeScript this errors with TS1061, but actually we can do:
            initExpr = this.module.createBinary(BinaryOp.AddI32,
              this.module.createGetGlobal(previousValue.internalName, NativeType.I32),
              this.module.createI32(1)
            );
            if (element.is(ElementFlags.CONSTANT))
              this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, valueDeclaration.range);
            initInStart = true;
          }
          if (initInStart) {
            this.module.addGlobal(val.internalName, NativeType.I32, true, this.module.createI32(0));
            var setExpr = this.module.createSetGlobal(val.internalName, initExpr);
            this.startFunctionBody.push(setExpr);
          } else {
            this.module.addGlobal(val.internalName, NativeType.I32, false, initExpr);
            if (_BinaryenExpressionGetType(initExpr) == NativeType.I32) {
              val.constantValue = _BinaryenConstGetValueI32(initExpr);
              val.set(ElementFlags.INLINED);
            } else
              throw new Error("i32 expected");
          }
        } else
          throw new Error("declaration expected");
        previousValue = <EnumValue>val;

        // export values if the enum is exported
        if (element.declaration && element.declaration.range.source.isEntry && element.declaration.isTopLevelExport) {
          if (member.is(ElementFlags.INLINED))
            this.module.addGlobalExport(member.internalName, member.internalName);
          else if (valueDeclaration)
            this.warning(DiagnosticCode.Cannot_export_a_mutable_global, valueDeclaration.range);
        }
      }
    this.currentEnum = null;
    return true;
  }

  // functions

  compileFunctionDeclaration(declaration: FunctionDeclaration, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): Function | null {
    var element = this.program.elements.get(declaration.fileLevelInternalName);
    if (!element || element.kind != ElementKind.FUNCTION_PROTOTYPE)
      throw new Error("function expected");
    return this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, typeArguments, contextualTypeArguments, alternativeReportNode); // reports
  }

  compileFunctionUsingTypeArguments(prototype: FunctionPrototype, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): Function | null {
    var instance = prototype.resolveInclTypeArguments(typeArguments, contextualTypeArguments, alternativeReportNode); // reports
    if (!instance)
      return null;
    return this.compileFunction(instance) ? instance : null;
  }

  compileFunction(instance: Function): bool {
    if (instance.is(ElementFlags.COMPILED))
      return true;

    var declaration = instance.prototype.declaration;

    if (instance.is(ElementFlags.DECLARED)) {
      if (declaration && declaration.statements) {
        this.error(DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts, declaration.name.range);
        return false;
      }
    } else {
      if (!declaration)
        throw new Error("declaration expected"); // built-ins are not compiled here
      if (!declaration.statements) {
        this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, declaration.name.range);
        return false;
      }
    }

    // might trigger compilation of other functions referring to this one
    instance.set(ElementFlags.COMPILED);

    // compile statements
    var stmts: ExpressionRef[] | null = null;
    if (!instance.is(ElementFlags.DECLARED)) {
      declaration = assert(declaration, "declaration expected");
      var previousFunction = this.currentFunction;
      this.currentFunction = instance;
      var statements = assert(declaration.statements, "implementation expected");
      stmts = this.compileStatements(statements);
      // make sure the top-level branch or all child branches return
      var allBranchesReturn = this.currentFunction.flow.finalize();
      if (instance.returnType != Type.void && !allBranchesReturn)
        this.error(DiagnosticCode.A_function_whose_declared_type_is_not_void_must_return_a_value, assert(declaration.returnType, "return type expected").range);
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
      nativeParamTypes[paramIndex] = this.options.target == Target.WASM64 ? NativeType.I64 : NativeType.I32;
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
    var ref: FunctionRef;
    if (instance.is(ElementFlags.DECLARED))
      ref = this.module.addFunctionImport(instance.internalName, instance.prototype.namespace ? instance.prototype.namespace.simpleName : "env", instance.simpleName, typeRef);
    else
      ref = this.module.addFunction(instance.internalName, typeRef, typesToNativeTypes(instance.additionalLocals), this.module.createBlock(null, <ExpressionRef[]>stmts, NativeType.None));

    // check module export
    if (declaration && declaration.range.source.isEntry && declaration.isTopLevelExport)
      this.module.addFunctionExport(instance.internalName, declaration.name.name);

    instance.finalize(this.module, ref);
    return true;
  }

  // namespaces

  compileNamespaceDeclaration(declaration: NamespaceDeclaration): void {
    var members = declaration.members;
    var noTreeShaking = this.options.noTreeShaking;
    for (var i = 0, k = members.length; i < k; ++i) {
      var member = members[i];
      switch (member.kind) {

        case NodeKind.CLASSDECLARATION:
          if ((noTreeShaking || hasModifier(ModifierKind.EXPORT, (<ClassDeclaration>member).modifiers)) && !(<ClassDeclaration>member).typeParameters.length)
            this.compileClassDeclaration(<ClassDeclaration>member, []);
          break;

        case NodeKind.INTERFACEDECLARATION:
          if ((noTreeShaking || hasModifier(ModifierKind.EXPORT, (<InterfaceDeclaration>member).modifiers)) && !(<InterfaceDeclaration>member).typeParameters.length)
            this.compileInterfaceDeclaration(<InterfaceDeclaration>member, []);
          break;

        case NodeKind.ENUMDECLARATION:
          if (noTreeShaking || hasModifier(ModifierKind.EXPORT, (<EnumDeclaration>member).modifiers))
            this.compileEnumDeclaration(<EnumDeclaration>member);
          break;

        case NodeKind.FUNCTIONDECLARATION:
          if ((noTreeShaking || hasModifier(ModifierKind.EXPORT, (<FunctionDeclaration>member).modifiers)) && !(<FunctionDeclaration>member).typeParameters.length)
            this.compileFunctionDeclaration(<FunctionDeclaration>member, []);
          break;

        case NodeKind.NAMESPACEDECLARATION:
          if (noTreeShaking || hasModifier(ModifierKind.EXPORT, (<NamespaceDeclaration>member).modifiers))
            this.compileNamespaceDeclaration(<NamespaceDeclaration>member);
          break;

        case NodeKind.VARIABLE:
          if (noTreeShaking || hasModifier(ModifierKind.EXPORT, (<VariableStatement>member).modifiers)) {
            var variableInit = this.compileVariableStatement(<VariableStatement>member, true);
            if (variableInit)
              this.startFunctionBody.push(variableInit);
          }
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
          if ((noTreeShaking || (<ClassPrototype>element).is(ElementFlags.EXPORTED)) && !(<ClassPrototype>element).is(ElementFlags.GENERIC))
            this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
          break;

        case ElementKind.ENUM:
          this.compileEnum(<Enum>element);
          break;

        case ElementKind.FUNCTION_PROTOTYPE:
          if ((noTreeShaking || (<FunctionPrototype>element).is(ElementFlags.EXPORTED)) && !(<FunctionPrototype>element).is(ElementFlags.GENERIC))
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
          if (!(<ClassPrototype>element).is(ElementFlags.GENERIC))
            this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
          break;

        case ElementKind.ENUM:
          this.compileEnum(<Enum>element);
          break;

        case ElementKind.FUNCTION_PROTOTYPE:
          if (!(<FunctionPrototype>element).is(ElementFlags.GENERIC) && statement.range.source.isEntry) {
            var functionInstance = this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, []);
            if (functionInstance) {
              var functionDeclaration = functionInstance.prototype.declaration;
              if (functionDeclaration && functionDeclaration.needsExplicitExport(member))
                this.module.addFunctionExport(functionInstance.internalName, member.externalIdentifier.name);
            }
          }
          break;

        case ElementKind.GLOBAL:
          if (this.compileGlobal(<Global>element) && statement.range.source.isEntry) {
            var globalDeclaration = (<Global>element).declaration;
            if (globalDeclaration && globalDeclaration.needsExplicitExport(member)) {
              if ((<Global>element).is(ElementFlags.INLINED))
                  this.module.addGlobalExport(element.internalName, member.externalIdentifier.name);
              else
                this.warning(DiagnosticCode.Cannot_export_a_mutable_global, member.range);
            }
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
    var element = this.program.elements.get(declaration.fileLevelInternalName);
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
    if (instance.is(ElementFlags.COMPILED))
      return true;
    instance.set(ElementFlags.COMPILED);
    return true;
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
    var expr: ExpressionRef;
    switch (statement.kind) {

      case NodeKind.BLOCK:
        expr = this.compileBlockStatement(<BlockStatement>statement);
        break;

      case NodeKind.BREAK:
        expr = this.compileBreakStatement(<BreakStatement>statement);
        break;

      case NodeKind.CONTINUE:
        expr = this.compileContinueStatement(<ContinueStatement>statement);
        break;

      case NodeKind.DO:
        expr = this.compileDoStatement(<DoStatement>statement);
        break;

      case NodeKind.EMPTY:
        expr = this.compileEmptyStatement(<EmptyStatement>statement);
        break;

      case NodeKind.EXPRESSION:
        expr = this.compileExpressionStatement(<ExpressionStatement>statement);
        break;

      case NodeKind.FOR:
        expr = this.compileForStatement(<ForStatement>statement);
        break;

      case NodeKind.IF:
        expr = this.compileIfStatement(<IfStatement>statement);
        break;

      case NodeKind.RETURN:
        expr = this.compileReturnStatement(<ReturnStatement>statement);
        break;

      case NodeKind.SWITCH:
        expr = this.compileSwitchStatement(<SwitchStatement>statement);
        break;

      case NodeKind.THROW:
        expr = this.compileThrowStatement(<ThrowStatement>statement);
        break;

      case NodeKind.TRY:
        expr = this.compileTryStatement(<TryStatement>statement);
        break;

      case NodeKind.VARIABLE:
        var variableInit = this.compileVariableStatement(<VariableStatement>statement);
        expr = variableInit ? variableInit : this.module.createNop();
        break;

      case NodeKind.WHILE:
        expr = this.compileWhileStatement(<WhileStatement>statement);
        break;

      case NodeKind.TYPEDECLARATION:
        if (this.currentFunction == this.startFunction)
          return this.module.createNop();
        // fall-through: must be top-level; function bodies are not guaranteed to be evaluated

      default:
        throw new Error("statement expected");
    }

    this.addDebugLocation(expr, statement.range);
    return expr;
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

    // NOTE that we could optimize this to a NOP if empty or unwrap a single
    // statement, but that's not what the source told us to do and left to the
    // optimizer.

    // Not actually a branch, but can contain its own scoped variables.
    this.currentFunction.flow = this.currentFunction.flow.enterBranchOrScope();

    var stmt = this.module.createBlock(null, this.compileStatements(statements), NativeType.None);
    var stmtReturns = this.currentFunction.flow.is(FlowFlags.RETURNS);

    // Switch back to the parent flow
    this.currentFunction.flow = this.currentFunction.flow.leaveBranchOrScope();
    if (stmtReturns)
      this.currentFunction.flow.set(FlowFlags.RETURNS);

    return stmt;
  }

  compileBreakStatement(statement: BreakStatement): ExpressionRef {
    if (statement.label) {
      this.error(DiagnosticCode.Operation_not_supported, statement.label.range);
      return this.module.createUnreachable();
    }
    var breakLabel = this.currentFunction.flow.breakLabel;
    if (breakLabel == null) {
      this.error(DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement, statement.range);
      return this.module.createUnreachable();
    }
    this.currentFunction.flow.set(FlowFlags.POSSIBLY_BREAKS);
    return this.module.createBreak(breakLabel);
  }

  compileContinueStatement(statement: ContinueStatement): ExpressionRef {
    if (statement.label) {
      this.error(DiagnosticCode.Operation_not_supported, statement.label.range);
      return this.module.createUnreachable();
    }
    // Check if 'continue' is allowed here
    var continueLabel = this.currentFunction.flow.continueLabel;
    if (continueLabel == null) {
      this.error(DiagnosticCode.A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement, statement.range);
      return this.module.createUnreachable();
    }
    this.currentFunction.flow.set(FlowFlags.POSSIBLY_CONTINUES);
    return this.module.createBreak(continueLabel);
  }

  compileDoStatement(statement: DoStatement): ExpressionRef {

    // A do statement does not initiate a new branch because it is executed at
    // least once, but has its own break and continue labels.
    var label = this.currentFunction.enterBreakContext();
    var previousBreakLabel = this.currentFunction.flow.breakLabel;
    var previousContinueLabel = this.currentFunction.flow.continueLabel;
    var breakLabel = this.currentFunction.flow.breakLabel = "break|" + label;
    var continueLabel = this.currentFunction.flow.continueLabel = "continue|" + label;

    var body = this.compileStatement(statement.statement);

    // Reset to the previous break and continue labels, if any.
    this.currentFunction.flow.breakLabel = previousBreakLabel;
    this.currentFunction.flow.continueLabel = previousContinueLabel;

    var condition = this.compileExpression(statement.condition, Type.i32);

    this.currentFunction.leaveBreakContext();

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

    // A for statement initiates a new branch with its own scoped variables
    // possibly declared in its initializer, and break context.
    var context = this.currentFunction.enterBreakContext();
    this.currentFunction.flow = this.currentFunction.flow.enterBranchOrScope();
    var breakLabel = this.currentFunction.flow.breakLabel = "break|" + context;
    var continueLabel = this.currentFunction.flow.continueLabel = "continue|" + context;

    // Compile in correct order
    var initializer = statement.initializer ? this.compileStatement(<Statement>statement.initializer) : this.module.createNop();
    var condition = statement.condition ? this.compileExpression(<Expression>statement.condition, Type.i32) : this.module.createI32(1);
    var incrementor = statement.incrementor ? this.compileExpression(<Expression>statement.incrementor, Type.void) : this.module.createNop();
    var body = this.compileStatement(statement.statement);
    var alwaysReturns = !statement.condition && this.currentFunction.flow.is(FlowFlags.RETURNS);
    // TODO: check other always-true conditions as well, not just omitted

    // Switch back to the parent flow
    this.currentFunction.flow = this.currentFunction.flow.leaveBranchOrScope();
    this.currentFunction.leaveBreakContext();

    var expr = this.module.createBlock(breakLabel, [
      initializer,
      this.module.createLoop(continueLabel, this.module.createBlock(null, [
        this.module.createIf(condition, this.module.createBlock(null, [
          body,
          incrementor,
          this.module.createBreak(continueLabel)
        ], NativeType.None))
      ], NativeType.None))
    ], NativeType.None);

    // If the loop is guaranteed to run and return, propagate that and append a hint
    if (alwaysReturns) {
      this.currentFunction.flow.set(FlowFlags.RETURNS);
      expr = this.module.createBlock(null, [
        expr,
        this.module.createUnreachable()
      ]);
    }
    return expr;
  }

  compileIfStatement(statement: IfStatement): ExpressionRef {

    // The condition doesn't initiate a branch yet
    var condition = this.compileExpression(statement.condition, Type.i32);

    // Each arm initiates a branch
    this.currentFunction.flow = this.currentFunction.flow.enterBranchOrScope();
    var ifTrue = this.compileStatement(statement.ifTrue);
    var ifTrueReturns = this.currentFunction.flow.is(FlowFlags.RETURNS);
    this.currentFunction.flow = this.currentFunction.flow.leaveBranchOrScope();

    var ifFalse: ExpressionRef = 0;
    var ifFalseReturns = false;
    if (statement.ifFalse) {
      this.currentFunction.flow = this.currentFunction.flow.enterBranchOrScope();
      ifFalse = this.compileStatement(statement.ifFalse);
      ifFalseReturns = this.currentFunction.flow.is(FlowFlags.RETURNS);
      this.currentFunction.flow = this.currentFunction.flow.leaveBranchOrScope();
    }
    if (ifTrueReturns && ifFalseReturns) // not necessary to append a hint
      this.currentFunction.flow.set(FlowFlags.RETURNS);
    return this.module.createIf(condition, ifTrue, ifFalse);
  }

  compileReturnStatement(statement: ReturnStatement): ExpressionRef {
    var expression: ExpressionRef = 0;
    if (statement.value)
      expression = this.compileExpression(<Expression>statement.value, this.currentFunction.returnType);

    // Remember that this flow returns
    this.currentFunction.flow.set(FlowFlags.RETURNS);

    return this.module.createReturn(expression);
  }

  compileSwitchStatement(statement: SwitchStatement): ExpressionRef {

    // Everything within a switch uses the same break context
    var context = this.currentFunction.enterBreakContext();

    // introduce a local for evaluating the condition (exactly once)
    var tempLocal = this.currentFunction.getTempLocal(Type.i32);
    var k = statement.cases.length;

    // Prepend initializer to inner block. Does not initiate a new branch, yet.
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
    var alwaysReturns = true;
    for (i = 0; i < k; ++i) {
      case_ = statement.cases[i];
      var l = case_.statements.length;
      var body = new Array<ExpressionRef>(1 + l);
      body[0] = currentBlock;

      // Each switch case initiates a new branch
      this.currentFunction.flow = this.currentFunction.flow.enterBranchOrScope();
      var breakLabel = this.currentFunction.flow.breakLabel = "break|" + context;

      var fallsThrough = i != k - 1;
      var nextLabel = !fallsThrough ? breakLabel : "case" + (i + 1).toString(10) + "|" + context;
      for (var j = 0; j < l; ++j) {
        body[j + 1] = this.compileStatement(case_.statements[j]);
      }
      if (!(fallsThrough || this.currentFunction.flow.is(FlowFlags.RETURNS)))
        alwaysReturns = false; // ignore fall-throughs

      // Switch back to the parent flow
      this.currentFunction.flow = this.currentFunction.flow.leaveBranchOrScope();

      currentBlock = this.module.createBlock(nextLabel, body, NativeType.None);
    }
    this.currentFunction.leaveBreakContext();

    // If the switch has a default and always returns, propagate that
    if (defaultIndex >= 0 && alwaysReturns) {
      this.currentFunction.flow.set(FlowFlags.RETURNS);
      // Binaryen understands that so we don't need a hint
    }
    return currentBlock;
  }

  compileThrowStatement(statement: ThrowStatement): ExpressionRef {

    // Remember that this branch possibly throws
    this.currentFunction.flow.set(FlowFlags.POSSIBLY_THROWS);

    // FIXME: without try-catch it is safe to assume RETURNS as well for now
    this.currentFunction.flow.set(FlowFlags.RETURNS);

    // TODO: requires exception-handling spec.
    return this.module.createUnreachable();
  }

  compileTryStatement(statement: TryStatement): ExpressionRef {
    throw new Error("not implemented");
    // can't yet support something like: try { return ... } finally { ... }
    // worthwhile to investigate lowering returns to block results (here)?
  }

  /**
   * Compiles a variable statement. Returns `0` if an initializer is not
   * necessary.
   */
  compileVariableStatement(statement: VariableStatement, isKnownGlobal: bool = false): ExpressionRef {
    var declarations = statement.declarations;

    // top-level variables and constants become globals
    if (isKnownGlobal || (
      this.currentFunction == this.startFunction &&
      statement.parent && statement.parent.kind == NodeKind.SOURCE
    )) {
      // NOTE that the above condition also covers top-level variables declared with 'let', even
      // though such variables could also become start function locals if, and only if, not used
      // within any function declared in the same source, which is unknown at this point. the only
      // efficient way to deal with this would be to keep track of all occasions it is used and
      // replace these instructions afterwards, dynamically. (TOOD: what about a Binaryen pass?)
      for (var i = 0, k = declarations.length; i < k; ++i)
        this.compileGlobalDeclaration(declarations[i]);
      return 0;
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
          init = this.compileExpression(declaration.initializer, type); // reports
      } else if (declaration.initializer) { // infer type using void/NONE for proper literal inference
        init = this.compileExpression(declaration.initializer, Type.void, ConversionKind.NONE); // reports
        if (this.currentType == Type.void) {
          this.error(DiagnosticCode.Type_0_is_not_assignable_to_type_1, declaration.range, this.currentType.toString(), "<auto>");
          continue;
        }
        type = this.currentType;
      } else {
        this.error(DiagnosticCode.Type_expected, declaration.name.range.atEnd);
        continue;
      }
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
            // Create a virtual local that doesn't actually exist in WebAssembly
            var scopedLocals = this.currentFunction.flow.scopedLocals;
            if (!scopedLocals)
              scopedLocals = this.currentFunction.flow.scopedLocals = new Map();
            else if (scopedLocals.has(name)) {
              this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, name);
              return 0;
            }
            scopedLocals.set(name, local);
            return 0;
          } else
            this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, declaration.range);
        } else
          this.error(DiagnosticCode._const_declarations_must_be_initialized, declaration.range);
      }
      if (hasModifier(ModifierKind.LET, declaration.modifiers)) // here: not top-level
        this.currentFunction.flow.addScopedLocal(name, type, declaration.name); // reports
      else
        this.currentFunction.addLocal(type, name); // reports
      if (init)
        initializers.push(this.compileAssignmentWithValue(declaration.name, init));
    }
    return initializers.length     // we can unwrap these here because the
        ? initializers.length == 1 // source didn't tell us exactly what to do
          ? initializers[0]
          : this.module.createBlock(null, initializers, NativeType.None)
        : 0;
  }

  compileWhileStatement(statement: WhileStatement): ExpressionRef {

    // The condition does not yet initialize a branch
    var condition = this.compileExpression(statement.condition, Type.i32);

    // Statements initiate a new branch with its own break context
    var label = this.currentFunction.enterBreakContext();
    this.currentFunction.flow = this.currentFunction.flow.enterBranchOrScope();
    var breakLabel = this.currentFunction.flow.breakLabel = "break|" + label;
    var continueLabel = this.currentFunction.flow.continueLabel = "continue|" + label;

    var body = this.compileStatement(statement.statement);
    var alwaysReturns = false && this.currentFunction.flow.is(FlowFlags.RETURNS);
    // TODO: evaluate possible always-true conditions

    // Switch back to the parent flow
    this.currentFunction.flow = this.currentFunction.flow.leaveBranchOrScope();
    this.currentFunction.leaveBreakContext();

    var expr = this.module.createBlock(breakLabel, [
      this.module.createLoop(continueLabel,
        this.module.createIf(condition, this.module.createBlock(null, [
          body,
          this.module.createBreak(continueLabel)
        ], NativeType.None))
      )
    ], NativeType.None);

    // If the loop is guaranteed to run and return, propagate that and append a hint
    if (alwaysReturns) {
      expr = this.module.createBlock(null, [
        expr,
        this.module.createUnreachable()
      ]);
    }
    return expr;
  }

  // expressions

  /** Compiles an inlined constant value of a variable-like element. */
  compileInlineConstant(element: VariableLikeElement, contextualType: Type): ExpressionRef {
    assert(element.is(ElementFlags.INLINED));

    switch (element.type.is(TypeFlags.INTEGER) && contextualType.is(TypeFlags.INTEGER) && element.type.size <= contextualType.size
      ? (this.currentType = contextualType).kind // essentially precomputes a (sign-)extension
      : (this.currentType = element.type).kind
    ) {

      case TypeKind.I8:
      case TypeKind.I16:
        var shift = element.type.computeSmallIntegerShift(Type.i32);
        return this.module.createI32(element.constantIntegerValue ? element.constantIntegerValue.toI32() << shift >> shift : 0);

      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL:
        var mask = element.type.computeSmallIntegerMask(Type.i32);
        return this.module.createI32(element.constantIntegerValue ? element.constantIntegerValue.toI32() & mask : 0);

      case TypeKind.I32:
      case TypeKind.U32:
        return this.module.createI32(element.constantIntegerValue ? element.constantIntegerValue.lo : 0)

      case TypeKind.ISIZE:
      case TypeKind.USIZE:
        if (!element.program.options.isWasm64)
          return this.module.createI32(element.constantIntegerValue ? element.constantIntegerValue.lo : 0)
        // fall-through

      case TypeKind.I64:
      case TypeKind.U64:
        return element.constantIntegerValue
          ? this.module.createI64(element.constantIntegerValue.lo, element.constantIntegerValue.hi)
          : this.module.createI64(0);

      case TypeKind.F32:
        return this.module.createF32((<VariableLikeElement>element).constantFloatValue);

      case TypeKind.F64:
        return this.module.createF64((<VariableLikeElement>element).constantFloatValue);

      default:
        throw new Error("concrete type expected");
    }
  }

  compileExpression(expression: Expression, contextualType: Type, conversionKind: ConversionKind = ConversionKind.IMPLICIT, wrapSmallIntegers: bool = true): ExpressionRef {
    this.currentType = contextualType;

    var expr: ExpressionRef;
    switch (expression.kind) {

      case NodeKind.ASSERTION:
        expr = this.compileAssertionExpression(<AssertionExpression>expression, contextualType);
        break;

      case NodeKind.BINARY:
        expr = this.compileBinaryExpression(<BinaryExpression>expression, contextualType, wrapSmallIntegers);
        break;

      case NodeKind.CALL:
        expr = this.compileCallExpression(<CallExpression>expression, contextualType);
        break;

      case NodeKind.COMMA:
        expr = this.compileCommaExpression(<CommaExpression>expression, contextualType);
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
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, contextualType, wrapSmallIntegers);
        break;

      default:
        throw new Error("expression expected");
    }

    if (conversionKind != ConversionKind.NONE && this.currentType != contextualType) {
      expr = this.convertExpression(expr, this.currentType, contextualType, conversionKind, expression);
      this.currentType = contextualType;
    }

    this.addDebugLocation(expr, expression.range);
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
    if (conversionKind == ConversionKind.NONE) {
      assert(false, "concrete type expected");
      return expr;
    }

    // void to any
    if (fromType.kind == TypeKind.VOID) {
      this.error(DiagnosticCode.Type_0_is_not_assignable_to_type_1, reportNode.range, fromType.toString(), toType.toString());
      return this.module.createUnreachable();
    }

    // any to void
    if (toType.kind == TypeKind.VOID)
      return this.module.createDrop(expr);

    var mod = this.module;
    var losesInformation = false;

    if (fromType.is(TypeFlags.FLOAT)) {

      // float to float
      if (toType.is(TypeFlags.FLOAT)) {
        if (fromType.kind == TypeKind.F32) {

          // f32 to f64
          if (toType.kind == TypeKind.F64)
            expr = mod.createUnary(UnaryOp.PromoteF32, expr);

          // otherwise f32 to f32

        // f64 to f32
        } else if (toType.kind == TypeKind.F32) {
          losesInformation = true;
          expr = mod.createUnary(UnaryOp.DemoteF64, expr);
        }

        // otherwise f64 to f64

      // float to int
      } else if (toType.is(TypeFlags.INTEGER)) {
        losesInformation = true;

        // f32 to int
        if (fromType.kind == TypeKind.F32) {
          if (toType.is(TypeFlags.SIGNED)) {
            if (toType.is(TypeFlags.LONG))
              expr = mod.createUnary(UnaryOp.TruncF32ToI64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32ToI32, expr);
              if (toType.is(TypeFlags.SMALL))
                expr = makeSmallIntegerWrap(expr, toType, this.module);
            }
          } else {
            if (toType.is(TypeFlags.LONG))
              expr = mod.createUnary(UnaryOp.TruncF32ToU64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32ToU32, expr);
              if (toType.is(TypeFlags.SMALL))
                expr = makeSmallIntegerWrap(expr, toType, this.module);
            }
          }

        // f64 to int
        } else {
          if (toType.is(TypeFlags.SIGNED)) {
            if (toType.is(TypeFlags.LONG))
              expr = mod.createUnary(UnaryOp.TruncF64ToI64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64ToI32, expr);
              if (toType.is(TypeFlags.SMALL))
                expr = makeSmallIntegerWrap(expr, toType, this.module);
            }
          } else {
            if (toType.is(TypeFlags.LONG))
              expr = mod.createUnary(UnaryOp.TruncF64ToU64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64ToU32, expr);
              if (toType.is(TypeFlags.SMALL))
                expr = makeSmallIntegerWrap(expr, toType, this.module);
            }
          }
        }

      // float to void
      } else {
        assert(toType.flags == TypeFlags.NONE, "void type expected");
        expr = this.module.createDrop(expr);
      }

    // int to float
    } else if (fromType.is(TypeFlags.INTEGER) && toType.is(TypeFlags.FLOAT)) {

      // int to f32
      if (toType.kind == TypeKind.F32) {
        if (fromType.is(TypeFlags.LONG)) {
          losesInformation = true;
          expr = mod.createUnary(fromType.is(TypeFlags.SIGNED) ? UnaryOp.ConvertI64ToF32 : UnaryOp.ConvertU64ToF32, expr);
        } else {
          losesInformation = !fromType.is(TypeFlags.SMALL);
          expr = mod.createUnary(fromType.is(TypeFlags.SIGNED) ? UnaryOp.ConvertI32ToF32 : UnaryOp.ConvertU32ToF32, expr);
        }

      // int to f64
      } else {
        if (fromType.is(TypeFlags.LONG)) {
          losesInformation = true;
          expr = mod.createUnary(fromType.is(TypeFlags.SIGNED) ? UnaryOp.ConvertI64ToF64 : UnaryOp.ConvertU64ToF64, expr);
        } else
          expr = mod.createUnary(fromType.is(TypeFlags.SIGNED) ? UnaryOp.ConvertI32ToF64 : UnaryOp.ConvertU32ToF64, expr);
      }

    // int to int
    } else {
      if (fromType.is(TypeFlags.LONG)) {

        // i64 to i32
        if (!toType.is(TypeFlags.LONG)) {
          losesInformation = true;
          expr = mod.createUnary(UnaryOp.WrapI64, expr); // discards upper bits
          if (toType.is(TypeFlags.SMALL))
            expr = makeSmallIntegerWrap(expr, toType, this.module);
        }

      // i32 to i64
      } else if (toType.is(TypeFlags.LONG)) {
        expr = mod.createUnary(toType.is(TypeFlags.SIGNED) ? UnaryOp.ExtendI32 : UnaryOp.ExtendU32, expr);

      // i32 or smaller to even smaller or same size int with change of sign
      } else if (toType.is(TypeFlags.SMALL) && (fromType.size > toType.size || (fromType.size == toType.size && fromType.is(TypeFlags.SIGNED) != toType.is(TypeFlags.SIGNED)))) {
        losesInformation = true;
        expr = makeSmallIntegerWrap(expr, toType, this.module);
      }

      // otherwise (smaller) i32/u32 to (same size) i32/u32
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

  compileBinaryExpression(expression: BinaryExpression, contextualType: Type, wrapSmallIntegers: bool = true): ExpressionRef {
    var left: ExpressionRef;
    var right: ExpressionRef;
    var condition: ExpressionRef;
    var expr: ExpressionRef;

    var compound = false;
    var possiblyOverflows = false;
    var tempLocal: Local | null = null

    switch (expression.operator) {

      case Token.LESSTHAN:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.LtI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.LtI64, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.LtI64 : BinaryOp.LtI32, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.LtU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.LtU64 : BinaryOp.LtU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.LtU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.LtF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.LtF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.GtI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.GtI64 : BinaryOp.GtI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.GtI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.GtU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.GtU64 : BinaryOp.GtU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.GtU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.GtF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.GtF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.LESSTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.LeI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.LeI64 : BinaryOp.LeI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.LeI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.LeU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.LeU64 : BinaryOp.LeU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.LeU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.LeF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.LeF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.GeI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.GeI64 : BinaryOp.GeI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.GeI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.GeU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.GeU64 : BinaryOp.GeU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.GeU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.GeF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.GeF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.EQUALS_EQUALS_EQUALS:
        // TODO?
      case Token.EQUALS_EQUALS:

        // NOTE that this favors correctness, in terms of emitting a binary expression, over
        // checking for a possible use of unary EQZ. while the most classic of all optimizations,
        // that's not what the source told us to do. for reference, `!left` emits unary EQZ.

        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.EqI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.EqI64 : BinaryOp.EqI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.EqI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.EqF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.EqF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.EXCLAMATION_EQUALS_EQUALS:
        // TODO?
      case Token.EXCLAMATION_EQUALS:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.NeI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.NeI64 : BinaryOp.NeI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.NeI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.NeF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.NeF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.EQUALS:
        return this.compileAssignment(expression.left, expression.right, contextualType);

      case Token.PLUS_EQUALS:
        compound = true;
      case Token.PLUS: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          case TypeKind.I32:
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.AddI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.AddI64 : BinaryOp.AddI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.AddI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.AddF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.AddF64, left, right);
            break;

          default:
            throw new Error("concrete type expected");
        }
        break;

      case Token.MINUS_EQUALS:
        compound = true;
      case Token.MINUS: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          case TypeKind.I32:
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.SubI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.SubI64 : BinaryOp.SubI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.SubI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.SubF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.SubF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.ASTERISK_EQUALS:
        compound = true;
      case Token.ASTERISK: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
            // fall-through
          case TypeKind.I32:
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.MulI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.MulI64 : BinaryOp.MulI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.MulI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.MulF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.MulF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.SLASH_EQUALS:
        compound = true;
      case Token.SLASH: // TODO: when can division remain unwrapped? does it overflow?
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
            possiblyOverflows = true;
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.DivI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.DivI64 : BinaryOp.DivI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.DivI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.DivU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.DivU64 : BinaryOp.DivU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.DivU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.DivF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.DivF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.PERCENT_EQUALS:
        compound = true;
      case Token.PERCENT: // TODO: when can remainder remain unwrapped? may it overflow?
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.RemI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.RemI64 : BinaryOp.RemI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.RemI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.RemU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.RemU64 : BinaryOp.RemU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.RemU64, left, right);
            break;

          case TypeKind.F32:
          case TypeKind.F64:
            // TODO: internal fmod, possibly simply imported from JS
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            expr = this.module.createUnreachable();
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.LESSTHAN_LESSTHAN_EQUALS:
        compound = true;
      case Token.LESSTHAN_LESSTHAN: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          default:
            expr = this.module.createBinary(BinaryOp.ShlI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.ShlI64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.ShlI64 : BinaryOp.ShlI32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.GREATERTHAN_GREATERTHAN_EQUALS:
        compound = true;
      case Token.GREATERTHAN_GREATERTHAN: // must wrap small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT);

        switch (this.currentType.kind) {

          default:
            // assumes signed shr on signed small integers does not overflow
            expr = this.module.createBinary(BinaryOp.ShrI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.ShrI64, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.ShrI64 : BinaryOp.ShrI32, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            // assumes unsigned shr on unsigned small integers does not overflow
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.ShrU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.ShrU64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.ShrU64 : BinaryOp.ShrU32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS:
        compound = true;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: // modifies low bits of small integers if unsigned
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType == Type.void ? Type.u64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
            possiblyOverflows = true;
            // fall-through
          default:
            // assumes that unsigned shr on unsigned small integers does not overflow
            expr = this.module.createBinary(BinaryOp.ShrU32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.ShrU64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.ShrU64 : BinaryOp.ShrU32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.AMPERSAND_EQUALS:
        compound = true;
      case Token.AMPERSAND: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // if left or right already did
          default:
            expr = this.module.createBinary(BinaryOp.AndI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.AndI64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.AndI64 : BinaryOp.AndI32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.BAR_EQUALS:
        compound = true;
      case Token.BAR: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // if left or right already did
          default:
            expr = this.module.createBinary(BinaryOp.OrI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.OrI64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.OrI64 : BinaryOp.OrI32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.CARET_EQUALS:
        compound = true;
      case Token.CARET: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // if left or right already did
          default:
            expr = this.module.createBinary(BinaryOp.XorI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.XorI64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.XorI64 : BinaryOp.XorI32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      // logical (no overloading)

      case Token.AMPERSAND_AMPERSAND: // left && right
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        // clone left if free of side effects
        expr = this.module.cloneExpression(left, true, 0);

        // if not possible, tee left to a temp. local
        if (!expr) {
          tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
          left = this.module.createTeeLocal(tempLocal.index, left);
        }

        possiblyOverflows = this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER);
        condition = makeIsTrueish(left, this.currentType, this.module);

        // simplify when cloning left without side effects was successful
        if (expr)
          expr = this.module.createIf(
            condition, // left
            right,     // ? right
            expr       // : cloned left
          );

        // otherwise make use of the temp. local
        else {
          expr = this.module.createIf(
            condition,
            right,
            this.module.createGetLocal(assert(tempLocal, "tempLocal must be set").index, this.currentType.toNativeType())
          );
        }
        break;

      case Token.BAR_BAR:  // left || right
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        // clone left if free of side effects
        expr = this.module.cloneExpression(left, true, 0);

        // if not possible, tee left to a temp. local
        if (!expr) {
          tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
          left = this.module.createTeeLocal(tempLocal.index, left);
        }

        possiblyOverflows = this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER); // if right already did
        condition = makeIsTrueish(left, this.currentType, this.module);

        // simplify when cloning left without side effects was successful
        if (expr)
          expr = this.module.createIf(
            condition, // left
            expr,      // ? cloned left
            right      // : right
          );

        // otherwise make use of the temp. local
        else {
          expr = this.module.createIf(
            condition,
            this.module.createGetLocal(assert(tempLocal, "tempLocal must be set").index, this.currentType.toNativeType()),
            right
          );
        }
        break;

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        throw new Error("not implemented");
    }
    if (possiblyOverflows && wrapSmallIntegers) {
      assert(this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER)), "small integer type expected";
      expr = makeSmallIntegerWrap(expr, this.currentType, this.module);
    }
    return compound
      ? this.compileAssignmentWithValue(expression.left, expr, contextualType != Type.void)
      : expr;
  }

  compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolveExpression(expression, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();

    // to compile just the value, we need to know the target's type
    var element = resolved.element;
    var elementType: Type;
    switch (element.kind) {

      case ElementKind.GLOBAL:
        if (!this.compileGlobal(<Global>element)) // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        assert((<Global>element).type != Type.void, "concrete type expected");
        // fall-through

      case ElementKind.LOCAL:
      case ElementKind.FIELD:
        elementType = (<VariableLikeElement>element).type;
        break;

      case ElementKind.PROPERTY:
        var setterPrototype = (<Property>element).setterPrototype;
        if (setterPrototype) {
          var setterInstance = setterPrototype.resolve(); // reports
          if (!setterInstance)
            return this.module.createUnreachable();
          elementType = setterInstance.parameters[0].type;
          break;
        }
        this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Property>element).internalName);
        return this.module.createUnreachable();

      case ElementKind.FUNCTION_PROTOTYPE:
        if (expression.kind == NodeKind.ELEMENTACCESS) { // @operator("[]")
          assert(resolved.target && resolved.target.kind == ElementKind.CLASS && element.simpleName == (<Class>resolved.target).prototype.fnIndexedGet)
          var resolvedIndexedSet = (<FunctionPrototype>element).resolve(null);
          if (resolvedIndexedSet) {
            elementType = resolvedIndexedSet.returnType;
            break;
          }
        }
        // fall-through
      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        return this.module.createUnreachable();
    }

    // now compile the value and do the assignment
    this.currentType = elementType;
    return this.compileAssignmentWithValue(expression, this.compileExpression(valueExpression, elementType), contextualType != Type.void);
  }

  compileAssignmentWithValue(expression: Expression, valueWithCorrectType: ExpressionRef, tee: bool = false): ExpressionRef {
    var resolved = this.program.resolveExpression(expression, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();

    var element = resolved.element;
    var tempLocal: Local;
    var targetExpr: ExpressionRef;
    switch (element.kind) {

      case ElementKind.LOCAL:
        this.currentType = tee ? (<Local>element).type : Type.void;
        if ((<Local>element).is(ElementFlags.CONSTANT)) {
          this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Local>element).internalName);
          return this.module.createUnreachable();
        }
        return tee
          ? this.module.createTeeLocal((<Local>element).index, valueWithCorrectType)
          : this.module.createSetLocal((<Local>element).index, valueWithCorrectType);

      case ElementKind.GLOBAL:
        if (!this.compileGlobal(<Global>element)) // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        assert((<Global>element).type != Type.void, "concrete type expected");
        this.currentType = tee ? (<Global>element).type : Type.void;
        if ((<Local>element).is(ElementFlags.CONSTANT)) {
          this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Local>element).internalName);
          return this.module.createUnreachable();
        }
        if (!tee)
          return this.module.createSetGlobal((<Global>element).internalName, valueWithCorrectType);
        var globalNativeType = (<Global>element).type.toNativeType();
        return this.module.createBlock(null, [ // emulated teeGlobal
          this.module.createSetGlobal((<Global>element).internalName, valueWithCorrectType),
          this.module.createGetGlobal((<Global>element).internalName, globalNativeType)
        ], globalNativeType);

      case ElementKind.FIELD:
        if ((<Field>element).prototype.isReadonly) {
          this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Field>element).internalName);
          return this.module.createUnreachable();
        }
        assert(resolved.targetExpression != null, "target expression expected");
        targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32, ConversionKind.NONE);
        assert(this.currentType.classType, "class type expected");
        this.currentType = tee ? (<Field>element).type : Type.void;
        var elementNativeType = (<Field>element).type.toNativeType();
        if (!tee)
          return this.module.createStore((<Field>element).type.size >> 3, targetExpr, valueWithCorrectType, elementNativeType, (<Field>element).memoryOffset);
        tempLocal = this.currentFunction.getAndFreeTempLocal((<Field>element).type);
        return this.module.createBlock(null, [ // TODO: simplify if valueWithCorrectType has no side effects
          this.module.createSetLocal(tempLocal.index, valueWithCorrectType),
          this.module.createStore((<Field>element).type.size >> 3, targetExpr, this.module.createGetLocal(tempLocal.index, elementNativeType), elementNativeType, (<Field>element).memoryOffset),
          this.module.createGetLocal(tempLocal.index, elementNativeType)
        ], elementNativeType);

      case ElementKind.PROPERTY:
        var setterPrototype = (<Property>element).setterPrototype;
        if (setterPrototype) {
          var setterInstance = setterPrototype.resolve(); // reports
          if (setterInstance) {
            assert(setterInstance.parameters.length == 1);
            if (!tee) {
              if (setterInstance.is(ElementFlags.INSTANCE)) {
                assert(resolved.targetExpression != null);
                targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32, ConversionKind.NONE);
                assert(this.currentType.classType);
                this.currentType = Type.void;
                return this.makeCall(setterInstance, [ targetExpr, valueWithCorrectType ]);
              } else {
                this.currentType = Type.void;
                return this.makeCall(setterInstance, [ valueWithCorrectType ]);
              }
            }
            var getterPrototype = (<Property>element).getterPrototype;
            assert(getterPrototype != null);
            var getterInstance = (<FunctionPrototype>getterPrototype).resolve(); // reports
            if (getterInstance) {
              assert(getterInstance.parameters.length == 0);
              if (setterInstance.is(ElementFlags.INSTANCE)) {
                assert(resolved.targetExpression != null);
                targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32, ConversionKind.NONE);
                assert(this.currentType.classType);
                tempLocal = this.currentFunction.getAndFreeTempLocal(getterInstance.returnType);
                return this.module.createBlock(null, [
                  this.makeCall(setterInstance, [ this.module.createTeeLocal(tempLocal.index, targetExpr), valueWithCorrectType ]),
                  this.makeCall(getterInstance, [ this.module.createGetLocal(tempLocal.index, tempLocal.type.toNativeType()) ])
                ], (this.currentType = getterInstance.returnType).toNativeType());
              } else
                return this.module.createBlock(null, [
                  this.makeCall(setterInstance, [ valueWithCorrectType ]),
                  this.makeCall(getterInstance)
                ], (this.currentType = getterInstance.returnType).toNativeType());
            }
          }
        } else
          this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Property>element).internalName);
        return this.module.createUnreachable();

      case ElementKind.FUNCTION_PROTOTYPE:
        if (expression.kind == NodeKind.ELEMENTACCESS) { // @operator("[]")
          assert(resolved.target && resolved.target.kind == ElementKind.CLASS);
          var resolvedIndexedGet = (<FunctionPrototype>element).resolve();
          if (!resolvedIndexedGet)
            return this.module.createUnreachable();
          var indexedSetName = (<Class>resolved.target).prototype.fnIndexedSet;
          var indexedSet: Element | null;
          if (indexedSetName != null && (<Class>resolved.target).members && (indexedSet = (<Map<string,Element>>(<Class>resolved.target).members).get(indexedSetName)) && indexedSet.kind == ElementKind.FUNCTION_PROTOTYPE) { // @operator("[]=")
            var resolvedIndexedSet = (<FunctionPrototype>indexedSet).resolve();
            if (!resolvedIndexedSet)
              return this.module.createUnreachable();
            targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32, ConversionKind.NONE);
            assert(this.currentType.classType);
            var elementExpr = this.compileExpression((<ElementAccessExpression>expression).elementExpression, Type.i32);
            if (!tee) {
              this.currentType = resolvedIndexedSet.returnType;
              return this.makeCall(resolvedIndexedSet, [ targetExpr, elementExpr, valueWithCorrectType ]);
            }
            this.currentType = resolvedIndexedGet.returnType;
            tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
            return this.module.createBlock(null, [
              this.makeCall(resolvedIndexedSet, [ targetExpr, elementExpr, this.module.createTeeLocal(tempLocal.index, valueWithCorrectType) ]),
              this.module.createGetLocal(tempLocal.index, tempLocal.type.toNativeType()) // TODO: could be different from an actual __get (needs 2 temp locals)
            ], this.currentType.toNativeType());
          } else {
            this.error(DiagnosticCode.Index_signature_in_type_0_only_permits_reading, expression.range, (<Class>resolved.target).internalName);
            return this.module.createUnreachable();
          }
        }
        // fall-through
    }
    this.error(DiagnosticCode.Operation_not_supported, expression.range);
    return this.module.createUnreachable();
  }

  compileCallExpression(expression: CallExpression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolveExpression(expression.expression, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();

    var element = resolved.element;
    if (element.kind == ElementKind.FUNCTION_PROTOTYPE) {
      var functionPrototype = <FunctionPrototype>element;
      var functionInstance: Function | null = null;
      if (functionPrototype.is(ElementFlags.BUILTIN)) {
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
          var expr = compileBuiltinCall(this, functionPrototype, resolvedTypeArguments, expression.arguments, contextualType, expression);
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
      var numArgumentsInclThis = functionInstance.instanceMethodOf != null ? numArguments + 1 : numArguments;
      var argumentIndex = 0;

      var args = new Array<Expression>(numArgumentsInclThis);
      if (functionInstance.instanceMethodOf) {
        assert(resolved.targetExpression != null);
        args[argumentIndex++] = <Expression>resolved.targetExpression;
      }
      for (i = 0; i < numArguments; ++i)
        args[argumentIndex++] = expression.arguments[i];
      return this.compileCall(functionInstance, args, expression);
    }
    this.error(DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures, expression.range, element.internalName);
    return this.module.createUnreachable();
  }

  /**
   * Compiles a call to a function. If an instance method, `this` is the first element in
   * `argumentExpressions` or can be specified explicitly as the last argument.
   */
  compileCall(functionInstance: Function, argumentExpressions: Expression[], reportNode: Node, thisArg: ExpressionRef = 0): ExpressionRef {

    // validate and compile arguments
    var parameters = functionInstance.parameters;

    var numParameters = parameters.length;
    var numParametersInclThis = functionInstance.instanceMethodOf != null ? numParameters + 1 : numParameters;
    var numArgumentsInclThis = argumentExpressions.length;
    var numArguments = functionInstance.instanceMethodOf != null ? numArgumentsInclThis - 1 : numArgumentsInclThis;
    if (thisArg)
      numArgumentsInclThis++;

    if (numArgumentsInclThis > numParametersInclThis) { // too many arguments
      this.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range,
        numParameters.toString(10),
        numArguments.toString(10)
      );
      return this.module.createUnreachable();
    }
    var operands = new Array<ExpressionRef>(numParametersInclThis);
    var operandIndex = 0;
    var argumentIndex = 0;
    if (functionInstance.instanceMethodOf) {
      if (thisArg)
        operands[operandIndex++] = thisArg;
      else
        operands[operandIndex++] = this.compileExpression(argumentExpressions[argumentIndex++], functionInstance.instanceMethodOf.type);
    }
    for (; operandIndex < numParametersInclThis; ++operandIndex) {

      // argument has been provided
      if (numArgumentsInclThis > operandIndex) {
        operands[operandIndex] = this.compileExpression(argumentExpressions[argumentIndex++], parameters[operandIndex + numParameters - numParametersInclThis].type);

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
            (operandIndex + numParameters - numParametersInclThis).toString(10),
            numArguments.toString(10)
          );
          return this.module.createUnreachable();
        }
      }
    }

    this.currentType = functionInstance.returnType;
    return this.makeCall(functionInstance, operands);
  }

  /** Makes a call operation as is. */
  makeCall(functionInstance: Function, operands: ExpressionRef[] | null = null): ExpressionRef {
    if (!(functionInstance.is(ElementFlags.COMPILED) || this.compileFunction(functionInstance)))
      return this.module.createUnreachable();

    // imported function
    if (functionInstance.is(ElementFlags.DECLARED))
      return this.module.createCallImport(functionInstance.internalName, operands, functionInstance.returnType.toNativeType());

    // internal function
    return this.module.createCall(functionInstance.internalName, operands, functionInstance.returnType.toNativeType());
  }

  compileCommaExpression(expression: CommaExpression, contextualType: Type): ExpressionRef {
    var expressions = expression.expressions;
    var k = expressions.length;
    var exprs = new Array<ExpressionRef>(k--);
    for (var i = 0; i < k; ++i)
      exprs[i] = this.compileExpression(expressions[i], Type.void);    // drop all
    exprs[i] = this.compileExpression(expressions[i], contextualType); // except last
    return this.module.createBlock(null, exprs, this.currentType.toNativeType());
  }

  compileElementAccessExpression(expression: ElementAccessExpression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolveElementAccess(expression, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();
    assert(resolved.element.kind == ElementKind.FUNCTION_PROTOTYPE && resolved.target && resolved.target.kind == ElementKind.CLASS);
    var instance = (<FunctionPrototype>resolved.element).resolve(null, (<Class>resolved.target).contextualTypeArguments);
    if (!instance)
      return this.module.createUnreachable();
    return this.compileCall(instance, [ expression.expression, expression.elementExpression ], expression);
  }

  compileIdentifierExpression(expression: IdentifierExpression, contextualType: Type): ExpressionRef {
    // check special keywords first
    switch (expression.kind) {

      case NodeKind.NULL:
        if (this.options.target == Target.WASM64) {
          if (!contextualType.classType) {
            assert(contextualType.kind == TypeKind.USIZE);
            this.currentType = Type.usize64;
          }
          return this.module.createI64(0);
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
          return this.module.createGetLocal(0, this.currentType.toNativeType());
        }
        this.error(DiagnosticCode._this_cannot_be_referenced_in_current_location, expression.range);
        this.currentType = this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32;
        return this.module.createUnreachable();

      case NodeKind.SUPER:
        if (this.currentFunction.instanceMethodOf && this.currentFunction.instanceMethodOf.base) {
          this.currentType = this.currentFunction.instanceMethodOf.base.type;
          return this.module.createGetLocal(0, this.currentType.toNativeType());
        }
        this.error(DiagnosticCode._super_can_only_be_referenced_in_a_derived_class, expression.range);
        this.currentType = this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32;
        return this.module.createUnreachable();
    }

    // otherwise resolve
    var resolved = this.program.resolveIdentifier(expression, this.currentFunction, this.currentEnum); // reports
    if (!resolved)
      return this.module.createUnreachable();

    var element = resolved.element;
    switch (element.kind) {

      case ElementKind.LOCAL:
        if ((<Local>element).is(ElementFlags.INLINED))
          return this.compileInlineConstant(<Local>element, contextualType);
        assert((<Local>element).index >= 0);
        this.currentType = (<Local>element).type;
        return this.module.createGetLocal((<Local>element).index, this.currentType.toNativeType());

      case ElementKind.GLOBAL:
        if (element.is(ElementFlags.BUILTIN))
          return compileBuiltinGetConstant(this, <Global>element, expression);
        if (!this.compileGlobal(<Global>element)) // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        assert((<Global>element).type != Type.void);
        if ((<Global>element).is(ElementFlags.INLINED))
          return this.compileInlineConstant(<Global>element, contextualType);
        this.currentType = (<Global>element).type;
        return this.module.createGetGlobal((<Global>element).internalName, this.currentType.toNativeType());

      case ElementKind.ENUMVALUE: // here: if referenced from within the same enum
        if (!element.is(ElementFlags.COMPILED)) {
          this.error(DiagnosticCode.A_member_initializer_in_a_enum_declaration_cannot_reference_members_declared_after_it_including_members_defined_in_other_enums, expression.range);
          this.currentType = Type.i32;
          return this.module.createUnreachable();
        }
        this.currentType = Type.i32;
        if ((<EnumValue>element).is(ElementFlags.INLINED))
          return this.module.createI32((<EnumValue>element).constantValue);
        return this.module.createGetGlobal((<EnumValue>element).internalName, NativeType.I32);
    }
    this.error(DiagnosticCode.Operation_not_supported, expression.range);
    return this.module.createUnreachable();
  }

  compileLiteralExpression(expression: LiteralExpression, contextualType: Type): ExpressionRef {
    switch (expression.literalKind) {

      case LiteralKind.ARRAY:
        var classType = contextualType.classType;
        if (classType && classType == this.program.elements.get("Array") && classType.typeArguments && classType.typeArguments.length == 1)
          return this.compileStaticArray(classType.typeArguments[0], (<ArrayLiteralExpression>expression).elementExpressions);
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        return this.module.createUnreachable();

      case LiteralKind.FLOAT: {
        var floatValue = (<FloatLiteralExpression>expression).value;
        if (contextualType == Type.f32)
          return this.module.createF32(<f32>floatValue);
        this.currentType = Type.f64;
        return this.module.createF64(floatValue);
      }

      case LiteralKind.INTEGER:
        var intValue = (<IntegerLiteralExpression>expression).value;
        if (contextualType == Type.bool && (intValue.isZero || intValue.isOne))
          return this.module.createI32(intValue.isZero ? 0 : 1);
        if (contextualType == Type.f64)
          return this.module.createF64(intValue.toF64());
        if (contextualType == Type.f32)
          return this.module.createF32(<f32>intValue.toF64());
        if (contextualType.is(TypeFlags.LONG | TypeFlags.INTEGER))
          return this.module.createI64(intValue.lo, intValue.hi);
        if (!intValue.fitsInI32) {
          this.currentType = contextualType.is(TypeFlags.SIGNED) ? Type.i64 : Type.u64;
          return this.module.createI64(intValue.lo, intValue.hi);
        }
        if (contextualType.is(TypeFlags.SMALL | TypeFlags.INTEGER)) {
          var shift = contextualType.computeSmallIntegerShift(Type.i32);
          var mask = contextualType.computeSmallIntegerMask(Type.i32);
          return this.module.createI32(contextualType.is(TypeFlags.SIGNED) ? intValue.lo << shift >> shift : intValue.lo & mask);
        }
        if (contextualType == Type.void && !intValue.fitsInI32) {
          this.currentType = Type.i64;
          return this.module.createI64(intValue.lo, intValue.hi);
        }
        this.currentType = contextualType.is(TypeFlags.SIGNED) ? Type.i32 : Type.u32;
        return this.module.createI32(intValue.toI32());

      case LiteralKind.STRING:
        return this.compileStaticString((<StringLiteralExpression>expression).value);

      // case LiteralKind.OBJECT:
      // case LiteralKind.REGEXP:
    }
    throw new Error("not implemented");
  }

  compileStaticString(stringValue: string): ExpressionRef {
    var stringSegment: MemorySegment | null = this.stringSegments.get(stringValue);
    if (!stringSegment) {
      var stringLength = stringValue.length;
      var stringBuffer = new Uint8Array(4 + stringLength * 2);
      stringBuffer[0] =  stringLength         & 0xff;
      stringBuffer[1] = (stringLength >>>  8) & 0xff;
      stringBuffer[2] = (stringLength >>> 16) & 0xff;
      stringBuffer[3] = (stringLength >>> 24) & 0xff;
      for (var i = 0; i < stringLength; ++i) {
        stringBuffer[4 + i * 2] =  stringValue.charCodeAt(i)        & 0xff;
        stringBuffer[5 + i * 2] = (stringValue.charCodeAt(i) >>> 8) & 0xff;
      }
      stringSegment = this.addMemorySegment(stringBuffer);
      this.stringSegments.set(stringValue, stringSegment);
    }
    var stringOffset = stringSegment.offset;
    this.currentType = this.options.usizeType;
    return this.options.isWasm64
      ? this.module.createI64(stringOffset.lo, stringOffset.hi)
      : this.module.createI32(stringOffset.lo);
  }

  compileStaticArray(elementType: Type, expressions: (Expression | null)[]): ExpressionRef {
    // compile as static if all element expressions are precomputable, otherwise
    // initialize in place.
    var exprs = new Array<ExpressionRef>(expressions.length);
    var isStatic = true;
    var expr: BinaryenExpressionRef;
    for (var i = 0; i < expressions.length; ++i) {
      exprs[i] = expressions[i] ? this.compileExpression(<Expression>expressions[i], elementType) : elementType.toNativeZero(this.module);
      if (isStatic && _BinaryenExpressionGetId(expr = this.precomputeExpressionRef(exprs[i])) == ExpressionId.Const) {
        // TODO: use multiple arrays of possible native types?
      } else
        isStatic = false;
    }
    throw new Error("not implemented");
  }

  compileNewExpression(expression: NewExpression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolveExpression(expression.expression, this.currentFunction); // reports
    if (resolved) {
      if (resolved.element.kind == ElementKind.CLASS_PROTOTYPE) {
        var prototype = <ClassPrototype>resolved.element;
        var instance = prototype.resolveInclTypeArguments(expression.typeArguments, null, expression); // reports
        if (instance) {
          var thisExpr = compileBuiltinAllocate(this, instance, expression);
          var initializers = new Array<ExpressionRef>();

          // use a temp local for 'this'
          var tempLocal = this.currentFunction.getTempLocal(this.options.usizeType);
          initializers.push(this.module.createSetLocal(tempLocal.index, thisExpr));

          // apply field initializers
          if (instance.members)
            for (var member of instance.members.values()) {
              if (member.kind == ElementKind.FIELD) {
                var field = <Field>member;
                var fieldDeclaration = field.prototype.declaration;
                if (field.is(ElementFlags.CONSTANT)) {
                  assert(false); // there are no built-in fields currently
                } else if (fieldDeclaration && fieldDeclaration.initializer) {
                  initializers.push(this.module.createStore(field.type.byteSize,
                    this.module.createGetLocal(tempLocal.index, this.options.nativeSizeType),
                    this.compileExpression(fieldDeclaration.initializer, field.type),
                    field.type.toNativeType(),
                    field.memoryOffset
                  ));
                }
              }
            }

          // apply constructor
          var constructorInstance = instance.constructorInstance;
          if (constructorInstance)
            initializers.push(this.compileCall(constructorInstance, expression.arguments, expression,
              this.module.createGetLocal(tempLocal.index, this.options.nativeSizeType)
            ));

          // return 'this'
          initializers.push(this.module.createGetLocal(tempLocal.index, this.options.nativeSizeType));
          this.currentFunction.freeTempLocal(tempLocal);
          thisExpr = this.module.createBlock(null, initializers, this.options.nativeSizeType);

          this.currentType = instance.type;
          return thisExpr;
        }
      } else
        this.error(DiagnosticCode.Cannot_use_new_with_an_expression_whose_type_lacks_a_construct_signature, expression.expression.range);
    }
    return this.module.createUnreachable();
  }

  compileParenthesizedExpression(expression: ParenthesizedExpression, contextualType: Type): ExpressionRef {
    // does not change types, just order
    return this.compileExpression(expression.expression, contextualType, ConversionKind.NONE);
  }

  compilePropertyAccessExpression(propertyAccess: PropertyAccessExpression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolvePropertyAccess(propertyAccess, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();

    var element = resolved.element;
    var targetExpr: ExpressionRef;
    switch (element.kind) {

      case ElementKind.GLOBAL: // static property
        if (element.is(ElementFlags.BUILTIN))
          return compileBuiltinGetConstant(this, <Global>element, propertyAccess);
        if (!this.compileGlobal(<Global>element)) // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        assert((<Global>element).type != Type.void);
        if ((<Global>element).is(ElementFlags.INLINED))
          return this.compileInlineConstant(<Global>element, contextualType);
        this.currentType = (<Global>element).type;
        return this.module.createGetGlobal((<Global>element).internalName, this.currentType.toNativeType());

      case ElementKind.ENUMVALUE: // enum value
        if (!this.compileEnum((<EnumValue>element).enum))
          return this.module.createUnreachable();
        this.currentType = Type.i32;
        if ((<EnumValue>element).is(ElementFlags.INLINED))
          return this.module.createI32((<EnumValue>element).constantValue);
        return this.module.createGetGlobal((<EnumValue>element).internalName, NativeType.I32);

      case ElementKind.FIELD: // instance field
        assert(resolved.target != null);
        assert(resolved.targetExpression != null);
        assert((<Field>element).memoryOffset >= 0);
        targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32);
        this.currentType = (<Field>element).type;
        return this.module.createLoad((<Field>element).type.size >> 3, (<Field>element).type.is(TypeFlags.SIGNED | TypeFlags.INTEGER),
          targetExpr,
          (<Field>element).type.toNativeType(),
          (<Field>element).memoryOffset
        );

      case ElementKind.PROPERTY: // instance property (here: getter)
        var getter = (<Property>element).getterPrototype;
        assert(getter != null);
        var getterInstance = (<FunctionPrototype>getter).resolve(null); // reports
        if (!getterInstance)
          return this.module.createUnreachable();
        assert(getterInstance.parameters.length == 0);
        this.currentType = getterInstance.returnType;
        if (getterInstance.is(ElementFlags.INSTANCE)) {
          var targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32)
          this.currentType = getterInstance.returnType;
          return this.makeCall(getterInstance, [ targetExpr ]);
        } else
          return this.makeCall(getterInstance);
    }
    this.error(DiagnosticCode.Operation_not_supported, propertyAccess.range);
    return this.module.createUnreachable();
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
    var getValue = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);

    var op: BinaryOp;
    var nativeType: NativeType;
    var nativeOne: ExpressionRef;
    var possiblyOverflows = false;

    switch (expression.operator) {

      case Token.PLUS_PLUS:
        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          default:
            op = BinaryOp.AddI32;
            nativeType = NativeType.I32;
            nativeOne = this.module.createI32(1);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = this.options.target == Target.WASM64 ? BinaryOp.AddI64 : BinaryOp.AddI32;
            nativeType = this.options.target == Target.WASM64 ? NativeType.I64 : NativeType.I32;
            nativeOne = this.currentType.toNativeOne(this.module);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.AddI64;
            nativeType = NativeType.I64;
            nativeOne = this.module.createI64(1);
            break;

          case TypeKind.F32:
            op = BinaryOp.AddF32;
            nativeType = NativeType.F32;
            nativeOne = this.module.createF32(1);
            break;

          case TypeKind.F64:
            op = BinaryOp.AddF64;
            nativeType = NativeType.F64;
            nativeOne = this.module.createF64(1);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.MINUS_MINUS:
        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          default:
            op = BinaryOp.SubI32;
            nativeType = NativeType.I32;
            nativeOne = this.module.createI32(1);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = this.options.target == Target.WASM64 ? BinaryOp.SubI64 : BinaryOp.SubI32;
            nativeType = this.options.target == Target.WASM64 ? NativeType.I64 : NativeType.I32;
            nativeOne = this.currentType.toNativeOne(this.module);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.SubI64;
            nativeType = NativeType.I64;
            nativeOne = this.module.createI64(1);
            break;

          case TypeKind.F32:
            op = BinaryOp.SubF32;
            nativeType = NativeType.F32;
            nativeOne = this.module.createF32(1);
            break;

          case TypeKind.F64:
            op = BinaryOp.SubF64;
            nativeType = NativeType.F64;
            nativeOne = this.module.createF64(1);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        throw new Error("unary postfix operator expected");
    }

    // simplify if dropped anyway
    if (contextualType == Type.void)
      return this.compileAssignmentWithValue(expression.operand,
        this.module.createBinary(op,
          getValue,
          nativeOne
        ), false
      );

    // use a temp local for the intermediate value and prepare a setter
    var tempLocal = this.currentFunction.getTempLocal(this.currentType);
    var setValue = this.module.createBinary(op,
      this.module.createGetLocal(tempLocal.index, nativeType),
      nativeOne
    );
    if (possiblyOverflows) {
      assert(this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER));
      setValue = makeSmallIntegerWrap(setValue, this.currentType, this.module);
    }
    setValue = this.compileAssignmentWithValue(expression.operand, setValue, false); // sets currentType = void
    this.currentType = tempLocal.type;
    this.currentFunction.freeTempLocal(tempLocal);
    return this.module.createBlock(null, [
      this.module.createSetLocal(tempLocal.index, getValue),
      setValue,
      this.module.createGetLocal(tempLocal.index, nativeType)
    ], nativeType);
  }

  compileUnaryPrefixExpression(expression: UnaryPrefixExpression, contextualType: Type, wrapSmallIntegers: bool = true): ExpressionRef {
    var possiblyOverflows = false;
    var compound = false;
    var expr: ExpressionRef;

    switch (expression.operator) {

      case Token.PLUS:
        if (this.currentType.isReference) {
          this.error(DiagnosticCode.Operation_not_supported, expression.range);
          return this.module.createUnreachable();
        }
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);
        possiblyOverflows = this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER); // if operand already did
        break;

      case Token.MINUS:
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // or if operand already did
          default:
            expr = this.module.createBinary(BinaryOp.SubI32, this.module.createI32(0), expr);
            break;

          case TypeKind.USIZE:
            if (this.currentType.isReference) {
              this.error(DiagnosticCode.Operation_not_supported, expression.range);
              return this.module.createUnreachable();
            }
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.SubI64 : BinaryOp.SubI32, this.currentType.toNativeZero(this.module), expr);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.SubI64, this.module.createI64(0), expr);
            break;

          case TypeKind.F32:
            expr = this.module.createUnary(UnaryOp.NegF32, expr);
            break;

          case TypeKind.F64:
            expr = this.module.createUnary(UnaryOp.NegF64, expr);
            break;
        }
        break;

      case Token.PLUS_PLUS:
        compound = true;
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // or if operand already did
          default:
            expr = this.module.createBinary(BinaryOp.AddI32, expr, this.module.createI32(1));
            break;

          case TypeKind.USIZE:
            if (this.currentType.isReference) {
              this.error(DiagnosticCode.Operation_not_supported, expression.range);
              return this.module.createUnreachable();
            }
            // fall-through
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.AddI64 : BinaryOp.AddI32, expr, this.currentType.toNativeOne(this.module));
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.AddI64, expr, this.module.createI64(1));
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.AddF32, expr, this.module.createF32(1));
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.AddF64, expr, this.module.createF64(1));
            break;
        }
        break;

      case Token.MINUS_MINUS:
        compound = true;
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // or if operand already did
            // fall-through
          default:
            expr = this.module.createBinary(BinaryOp.SubI32, expr, this.module.createI32(1));
            break;

          case TypeKind.USIZE:
            if (this.currentType.isReference) {
              this.error(DiagnosticCode.Operation_not_supported, expression.range);
              return this.module.createUnreachable();
            }
            // fall-through
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.SubI64 : BinaryOp.SubI32, expr, this.currentType.toNativeOne(this.module));
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.SubI64, expr, this.module.createI64(1));
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.SubF32, expr, this.module.createF32(1));
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.SubF64, expr, this.module.createF64(1));
            break;
        }
        break;

      case Token.EXCLAMATION: // must wrap small integers
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        expr = makeIsFalseish(expr, this.currentType, this.module);
        this.currentType = Type.bool;
        break;

      case Token.TILDE: // retains low bits of small integers
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // or if operand already did
          default:
            expr = this.module.createBinary(BinaryOp.XorI32, expr, this.module.createI32(-1));
            break;

          case TypeKind.USIZE:
            if (this.currentType.isReference) {
              this.error(DiagnosticCode.Operation_not_supported, expression.range);
              return this.module.createUnreachable();
            }
            // fall-through
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.XorI64 : BinaryOp.XorI32, expr, this.currentType.toNativeNegOne(this.module));
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.XorI64, expr, this.module.createI64(-1, -1));
            break;
        }
        break;

      case Token.TYPEOF:
        // it might make sense to implement typeof in a way that a generic function can detect whether
        // its type argument is a class type or string. that could then be used, for example, to
        // generate hash codes for sets and maps, depending on the kind of type parameter we have.
        // ideally the comparison would not involve actual string comparison and limit available
        // operations to hard-coded string literals.
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        throw new Error("not implemented");

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        throw new Error("unary operator expected");
    }
    if (possiblyOverflows && wrapSmallIntegers) {
      assert(this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER));
      expr = makeSmallIntegerWrap(expr, this.currentType, this.module);
    }
    return compound
      ? this.compileAssignmentWithValue(expression.operand, expr, contextualType != Type.void)
      : expr;
  }

  addDebugLocation(expr: ExpressionRef, range: Range): void {
    if (this.options.sourceMap != null) {
      var source = range.source;
      if (source.debugInfoIndex < 0)
        source.debugInfoIndex = this.module.addDebugInfoFile(source.normalizedPath);
      range.debugInfoRef = expr;
      if (!this.currentFunction.debugLocations)
        (this.currentFunction.debugLocations = new Array(8)).length = 0;
      this.currentFunction.debugLocations.push(range);
    }
  }
}

// helpers

/** Wraps a 32-bit integer expression so it evaluates to a valid value in the range of the specified small integer type. */
export function makeSmallIntegerWrap(expr: ExpressionRef, type: Type, module: Module) {
  switch (type.kind) {

    case TypeKind.I8:
      expr = module.createBinary(BinaryOp.ShrI32,
        module.createBinary(BinaryOp.ShlI32,
          expr,
          module.createI32(24)
        ),
        module.createI32(24)
      );
      break;

    case TypeKind.I16:
      expr = module.createBinary(BinaryOp.ShrI32,
        module.createBinary(BinaryOp.ShlI32,
          expr,
          module.createI32(16)
        ),
        module.createI32(16)
      );
      break;

    case TypeKind.U8:
      expr = module.createBinary(BinaryOp.AndI32,
        expr,
        module.createI32(0xff)
      );
      break;

    case TypeKind.U16:
      expr = module.createBinary(BinaryOp.AndI32,
        expr,
        module.createI32(0xffff)
      );
      break;

    case TypeKind.BOOL:
      expr = module.createBinary(BinaryOp.AndI32,
        expr,
        module.createI32(0x1)
      );
      break;

    case TypeKind.VOID:
      throw new Error("concrete type expected");
  }
  return expr;
}

/** Creates a comparison whether an expression is not 'true' in a broader sense. */
export function makeIsFalseish(expr: ExpressionRef, type: Type, module: Module): ExpressionRef {
  switch (type.kind) {

    default: // any integer up to 32 bits
      expr = module.createUnary(UnaryOp.EqzI32, expr);
      break;

    case TypeKind.I64:
    case TypeKind.U64:
      expr = module.createUnary(UnaryOp.EqzI64, expr);
      break;

    case TypeKind.USIZE:
      // TODO: strings
    case TypeKind.ISIZE:
      expr = module.createUnary(type.size == 64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32, expr);
      break;

    case TypeKind.F32:
      expr = module.createBinary(BinaryOp.EqF32, expr, module.createF32(0));
      break;

    case TypeKind.F64:
      expr = module.createBinary(BinaryOp.EqF64, expr, module.createF64(0));
      break;

    case TypeKind.VOID:
      throw new Error("concrete type expected");
  }
  return expr;
}

/** Creates a comparison whether an expression is 'true' in a broader sense. */
export function makeIsTrueish(expr: ExpressionRef, type: Type, module: Module): ExpressionRef {
  switch (type.kind) {

    default: // any integer up to 32 bits
      expr = module.createBinary(BinaryOp.NeI32, expr, module.createI32(0));
      break;

    case TypeKind.I64:
    case TypeKind.U64:
      expr = module.createBinary(BinaryOp.NeI64, expr, module.createI64(0));
      break;

    case TypeKind.USIZE:
      // TODO: strings
    case TypeKind.ISIZE:
      expr = type.size == 64
        ? module.createBinary(BinaryOp.NeI64, expr, module.createI64(0))
        : module.createBinary(BinaryOp.NeI32, expr, module.createI32(0));
      break;

    case TypeKind.F32:
      expr = module.createBinary(BinaryOp.NeF32, expr, module.createF32(0));
      break;

    case TypeKind.F64:
      expr = module.createBinary(BinaryOp.NeF64, expr, module.createF64(0));
      break;

    case TypeKind.VOID:
      throw new Error("concrete type expected");
  }
  return expr;
}
