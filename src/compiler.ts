/**
 * The AssemblyScript compiler.
 * @module compiler
 *//***/

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
  FunctionRef,
  ExpressionId,
  FunctionTypeRef,
  GlobalRef
} from "./module";

import {
  Program,
  ClassPrototype,
  Class,
  Element,
  ElementKind,
  Enum,
  Field,
  FunctionPrototype,
  Function,
  FunctionTarget,
  Global,
  Local,
  Namespace,
  EnumValue,
  Property,
  VariableLikeElement,
  FlowFlags,
  CommonFlags,
  ConstantValueKind,

  PATH_DELIMITER,
  LIBRARY_PREFIX
} from "./program";

import {
  Token,
  operatorTokenToString
} from "./tokenizer";

import {
  Node,
  NodeKind,
  TypeNode,
  Source,
  Range,

  Statement,
  BlockStatement,
  BreakStatement,
  ClassDeclaration,
  ContinueStatement,
  DoStatement,
  EmptyStatement,
  EnumDeclaration,
  ExportStatement,
  ExpressionStatement,
  FunctionDeclaration,
  ForStatement,
  IfStatement,
  ImportStatement,
  InterfaceDeclaration,
  NamespaceDeclaration,
  ReturnStatement,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  VariableDeclaration,
  VariableStatement,
  VoidStatement,
  WhileStatement,

  Expression,
  AssertionExpression,
  BinaryExpression,
  CallExpression,
  CommaExpression,
  ElementAccessExpression,
  FloatLiteralExpression,
  FunctionExpression,
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
  FieldDeclaration
} from "./ast";

import {
  Type,
  TypeKind,
  TypeFlags,
  Signature,

  typesToNativeTypes
} from "./types";

import {
  writeI32,
  writeI64,
  writeF32,
  writeF64
} from "./util";

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
  /** If true, imports the memory provided by the embedder. */
  importMemory: bool = false;
  /** If true, imports the function table provided by the embedder. */
  importTable: bool = false;
  /** Static memory start offset. */
  memoryBase: u32 = 0;
  /** If true, generates information necessary for source maps. */
  sourceMap: bool = false;

  /** Tests if the target is WASM64 or, otherwise, WASM32. */
  get isWasm64(): bool {
    return this.target == Target.WASM64;
  }

  /** Gets the unsigned size type matching the target. */
  get usizeType(): Type {
    return this.target == Target.WASM64 ? Type.usize64 : Type.usize32;
  }

  /** Gets the signed size type matching the target. */
  get isizeType(): Type {
    return this.target == Target.WASM64 ? Type.isize64 : Type.isize32;
  }

  /** Gets the native size type matching the target. */
  get nativeSizeType(): NativeType {
    return this.target == Target.WASM64 ? NativeType.I64 : NativeType.I32;
  }
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
  /** Current function in compilation. */
  currentFunction: Function;
  /** Current enum in compilation. */
  currentEnum: Enum | null = null;
  /** Current type in compilation. */
  currentType: Type = Type.void;
  /** Start function being compiled. */
  startFunction: Function;
  /** Start function statements. */
  startFunctionBody: ExpressionRef[] = [];
  /** Counting memory offset. */
  memoryOffset: I64;
  /** Memory segments being compiled. */
  memorySegments: MemorySegment[] = new Array();
  /** Map of already compiled static string segments. */
  stringSegments: Map<string,MemorySegment> = new Map();
  /** Function table being compiled. */
  functionTable: Function[] = new Array();
  /** Argument count helper global. */
  argumentCountRef: GlobalRef = 0;
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
    if (!options) options = new Options();
    this.options = options;
    this.memoryOffset = i64_new(
      max(options.memoryBase, options.usizeType.byteSize) // leave space for `null`
    );
    this.module = Module.create();
  }

  /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
  compile(): Module {
    var options = this.options;
    var module = this.module;
    var program = this.program;

    // initialize lookup maps, built-ins, imports, exports, etc.
    program.initialize(options);

    // set up the start function wrapping top-level statements, of all files.
    var startFunctionPrototype = assert(program.elementsLookup.get("start"));
    assert(startFunctionPrototype.kind == ElementKind.FUNCTION_PROTOTYPE);
    var startFunctionInstance = new Function(
      <FunctionPrototype>startFunctionPrototype,
      startFunctionPrototype.internalName,
      new Signature([], Type.void)
    );
    this.startFunction = startFunctionInstance;
    this.currentFunction = startFunctionInstance;

    // compile entry file(s) while traversing to reachable elements
    var sources = program.sources;
    for (let i = 0, k = sources.length; i < k; ++i) {
      if (sources[i].isEntry) {
        this.compileSource(sources[i]);
      }
    }

    // compile the start function if not empty
    var startFunctionBody = this.startFunctionBody;
    if (startFunctionBody.length) {
      let typeRef = this.ensureFunctionType(startFunctionInstance.signature);
      let funcRef: FunctionRef;
      module.setStart(
        funcRef = module.addFunction(
          startFunctionInstance.internalName,
          typeRef,
          typesToNativeTypes(startFunctionInstance.additionalLocals),
          module.createBlock(null, startFunctionBody)
        )
      );
      startFunctionInstance.finalize(module, funcRef);
    }

    // set up static memory segments and the heap base pointer
    if (!options.noMemory) {
      let memoryOffset = this.memoryOffset;
      memoryOffset = i64_align(memoryOffset, options.usizeType.byteSize);
      this.memoryOffset = memoryOffset;
      if (options.isWasm64) {
        module.addGlobal(
          "HEAP_BASE",
          NativeType.I64,
          false,
          module.createI64(i64_low(memoryOffset), i64_high(memoryOffset))
        );
      } else {
        module.addGlobal(
          "HEAP_BASE",
          NativeType.I32,
          false,
          module.createI32(i64_low(memoryOffset))
        );
      }

      // determine initial page size
      let pages = i64_shr_u(i64_align(memoryOffset, 0x10000), i64_new(16, 0));
      module.setMemory(
        i64_low(pages),
        this.options.isWasm64
          ? Module.MAX_MEMORY_WASM64
          : Module.MAX_MEMORY_WASM32,
        this.memorySegments,
        options.target,
        "memory"
      );
    }

    // import memory if requested
    if (options.importMemory) {
      module.addMemoryImport("0", "env", "memory");
    }

    // set up function table
    var functionTable = this.functionTable;
    var functionTableSize = functionTable.length;
    if (functionTableSize) {
      let entries = new Array<FunctionRef>(functionTableSize);
      for (let i = 0; i < functionTableSize; ++i) {
        entries[i] = functionTable[i].ref;
      }
      module.setFunctionTable(entries);
      module.addTableExport("0", "table");
    }

    // import table if requested
    if (options.importTable) {
      module.addTableImport("0", "env", "table");
      if (!functionTableSize) module.addTableExport("0", "table");
    }

    return module;
  }

  // sources

  compileSourceByPath(normalizedPathWithoutExtension: string, reportNode: Node): void {
    var sources = this.program.sources;

    // try file.ts
    var expected = normalizedPathWithoutExtension + ".ts";
    for (let i = 0, k = sources.length; i < k; ++i) {
      let source = sources[i];
      if (source.normalizedPath == expected) {
        this.compileSource(source);
        return;
      }
    }

    // try file/index.ts
    expected = normalizedPathWithoutExtension + "/index.ts";
    for (let i = 0, k = sources.length; i < k; ++i) {
      let source = sources[i];
      if (source.normalizedPath == expected) {
        this.compileSource(source);
        return;
      }
    }

    // try (lib)/file.ts
    expected = LIBRARY_PREFIX + normalizedPathWithoutExtension + ".ts";
    for (let i = 0, k = sources.length; i < k; ++i) {
      let source = sources[i];
      if (source.normalizedPath == expected) {
        this.compileSource(source);
        return;
      }
    }

    this.error(
      DiagnosticCode.File_0_not_found,
      reportNode.range, normalizedPathWithoutExtension
    );
  }

  compileSource(source: Source): void {
    var files = this.files;
    var normalizedPath = source.normalizedPath;
    if (files.has(normalizedPath)) return;
    files.add(normalizedPath);

    // compile top-level statements
    var noTreeShaking = this.options.noTreeShaking;
    var isEntry = source.isEntry;
    var startFunction = this.startFunction;
    var startFunctionBody = this.startFunctionBody;
    var statements = source.statements;
    for (let i = 0, k = statements.length; i < k; ++i) {
      let statement = statements[i];
      switch (statement.kind) {
        case NodeKind.CLASSDECLARATION: {
          if (
            (noTreeShaking || (isEntry && statement.is(CommonFlags.EXPORT))) &&
            !(<ClassDeclaration>statement).isGeneric
          ) {
            this.compileClassDeclaration(<ClassDeclaration>statement, []);
          }
          break;
        }
        case NodeKind.ENUMDECLARATION: {
          if (noTreeShaking || (isEntry && statement.is(CommonFlags.EXPORT))) {
            this.compileEnumDeclaration(<EnumDeclaration>statement);
          }
          break;
        }
        case NodeKind.FUNCTIONDECLARATION: {
          if (
            (noTreeShaking || (isEntry && statement.is(CommonFlags.EXPORT))) &&
            !(<FunctionDeclaration>statement).isGeneric
          ) {
            this.compileFunctionDeclaration(<FunctionDeclaration>statement, []);
          }
          break;
        }
        case NodeKind.IMPORT: {
          this.compileSourceByPath(
            (<ImportStatement>statement).normalizedPath,
            (<ImportStatement>statement).path
          );
          break;
        }
        case NodeKind.NAMESPACEDECLARATION: {
          if (noTreeShaking || (isEntry && statement.is(CommonFlags.EXPORT))) {
            this.compileNamespaceDeclaration(<NamespaceDeclaration>statement);
          }
          break;
        }
        case NodeKind.VARIABLE: { // global, always compiled as initializers might have side effects
          let variableInit = this.compileVariableStatement(<VariableStatement>statement);
          if (variableInit) startFunctionBody.push(variableInit);
          break;
        }
        case NodeKind.EXPORT: {
          if ((<ExportStatement>statement).normalizedPath != null) {
            this.compileSourceByPath(
              <string>(<ExportStatement>statement).normalizedPath,
              <StringLiteralExpression>(<ExportStatement>statement).path
            );
          }
          if (noTreeShaking || isEntry) {
            this.compileExportStatement(<ExportStatement>statement);
          }
          break;
        }
        default: { // otherwise a top-level statement that is part of the start function's body
          let previousFunction = this.currentFunction;
          this.currentFunction = startFunction;
          startFunctionBody.push(this.compileStatement(statement));
          this.currentFunction = previousFunction;
          break;
        }
      }
    }
  }

  // globals

  compileGlobalDeclaration(declaration: VariableDeclaration): Global | null {
    // look up the initialized program element
    var element = assert(this.program.elementsLookup.get(declaration.fileLevelInternalName));
    assert(element.kind == ElementKind.GLOBAL);
    if (!this.compileGlobal(<Global>element)) return null; // reports
    return <Global>element;
  }

  compileGlobal(global: Global): bool {
    if (global.is(CommonFlags.COMPILED) || global.is(CommonFlags.AMBIENT | CommonFlags.BUILTIN)) return true;
    global.set(CommonFlags.COMPILED);   // ^ built-ins are compiled on use

    var module = this.module;
    var declaration = global.declaration;
    var initExpr: ExpressionRef = 0;

    if (global.type == Type.void) { // type is void if not yet resolved or not annotated

      // resolve now if annotated
      if (declaration.type) {
        let resolvedType = this.program.resolveType(declaration.type); // reports
        if (!resolvedType) return false;
        if (resolvedType == Type.void) {
          this.error(
            DiagnosticCode.Type_expected,
            declaration.type.range
          );
          return false;
        }
        global.type = resolvedType;

      // infer from initializer if not annotated
      } else if (declaration.initializer) { // infer type using void/NONE for literal inference
        initExpr = this.compileExpression( // reports
          declaration.initializer,
          Type.void,
          ConversionKind.NONE
        );
        if (this.currentType == Type.void) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            declaration.initializer.range, this.currentType.toString(), "<auto>"
          );
          return false;
        }
        global.type = this.currentType;

      // must either be annotated or have an initializer
      } else {
        this.error(
          DiagnosticCode.Type_expected,
          declaration.name.range.atEnd
        );
        return false;
      }
    }

    var nativeType = global.type.toNativeType();
    var isConstant = global.isAny(CommonFlags.CONST) || global.is(CommonFlags.STATIC | CommonFlags.READONLY);

    // handle imports
    if (global.is(CommonFlags.AMBIENT)) {

      // constant global
      if (isConstant) {
        global.set(CommonFlags.MODULE_IMPORT);
        module.addGlobalImport(
          global.internalName,
          global.namespace
            ? global.namespace.simpleName
            : "env",
          global.simpleName,
          nativeType
        );
        global.set(CommonFlags.COMPILED);
        return true;

      // importing mutable globals is not supported in the MVP
      } else {
        this.error(
          DiagnosticCode.Operation_not_supported,
          declaration.range
        );
      }
      return false;
    }

    // the MVP does not yet support initializer expressions other than constant values (and
    // get_globals), hence such initializations must be performed in the start function for now.
    var initializeInStart = false;

    // inlined constant can be compiled as-is
    if (global.is(CommonFlags.INLINED)) {
      initExpr = this.compileInlineConstant(global, global.type, true);

    } else {

      // evaluate initializer if present
      if (declaration.initializer) {
        if (!initExpr) {
          initExpr = this.compileExpression(declaration.initializer, global.type);
        }

        // check if the initializer is constant
        if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {

          // if a constant global, check if the initializer becomes constant after precompute
          if (isConstant) {
            initExpr = this.precomputeExpressionRef(initExpr);
            if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
              this.warning(
                DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable,
                declaration.range
              );
              initializeInStart = true;
            }
          } else {
            initializeInStart = true;
          }
        }

      // initialize to zero if there's no initializer
      } else {
        initExpr = global.type.toNativeZero(module);
      }
    }

    var internalName = global.internalName;

    if (initializeInStart) { // initialize to mutable zero and set the actual value in start
      module.addGlobal(internalName, nativeType, true, global.type.toNativeZero(module));
      this.startFunctionBody.push(module.createSetGlobal(internalName, initExpr));

    } else { // compile as-is

      if (isConstant) {
        let exprType = _BinaryenExpressionGetType(initExpr);
        switch (exprType) {
          case NativeType.I32: {
            global.constantValueKind = ConstantValueKind.INTEGER;
            global.constantIntegerValue = i64_new(_BinaryenConstGetValueI32(initExpr), 0);
            break;
          }
          case NativeType.I64: {
            global.constantValueKind = ConstantValueKind.INTEGER;
            global.constantIntegerValue = i64_new(
              _BinaryenConstGetValueI64Low(initExpr),
              _BinaryenConstGetValueI64High(initExpr)
            );
            break;
          }
          case NativeType.F32: {
            global.constantValueKind = ConstantValueKind.FLOAT;
            global.constantFloatValue = _BinaryenConstGetValueF32(initExpr);
            break;
          }
          case NativeType.F64: {
            global.constantValueKind = ConstantValueKind.FLOAT;
            global.constantFloatValue = _BinaryenConstGetValueF64(initExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              global.declaration.range
            );
            global.constantValueKind = ConstantValueKind.INTEGER;
            global.constantIntegerValue = i64_new(0);
            break;
          }
        }
        global.set(CommonFlags.INLINED); // inline the value from now on
        if (declaration.isTopLevel) {    // but keep the element as it might be re-exported
          module.addGlobal(internalName, nativeType, false, initExpr);
        }
        if (declaration.range.source.isEntry && declaration.isTopLevelExport) {
          module.addGlobalExport(global.internalName, declaration.programLevelInternalName);
        }

      } else /* mutable */ {
        module.addGlobal(internalName, nativeType, !isConstant, initExpr);
      }
    }
    return true;
  }

  // enums

  compileEnumDeclaration(declaration: EnumDeclaration): Enum | null {
    var element = assert(this.program.elementsLookup.get(declaration.fileLevelInternalName));
    assert(element.kind == ElementKind.ENUM);
    if (!this.compileEnum(<Enum>element)) return null;
    return <Enum>element;
  }

  compileEnum(element: Enum): bool {
    if (element.is(CommonFlags.COMPILED)) return true;
    element.set(CommonFlags.COMPILED);

    var module = this.module;
    this.currentEnum = element;
    var previousValue: EnumValue | null = null;

    if (element.members) {
      for (let member of element.members.values()) {
        if (member.kind != ElementKind.ENUMVALUE) continue; // happens if an enum is also a namespace
        let initInStart = false;
        let val = <EnumValue>member;
        let valueDeclaration = val.declaration;
        val.set(CommonFlags.COMPILED);
        if (val.is(CommonFlags.INLINED)) {
          if (element.declaration.isTopLevelExport) {
            module.addGlobal(
              val.internalName,
              NativeType.I32,
              false, // constant
              module.createI32(val.constantValue)
            );
          }
        } else {
          let initExpr: ExpressionRef;
          if (valueDeclaration.value) {
            initExpr = this.compileExpression(<Expression>valueDeclaration.value, Type.i32);
            if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
              initExpr = this.precomputeExpressionRef(initExpr);
              if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
                if (element.is(CommonFlags.CONST)) {
                  this.warning(
                    DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable,
                    valueDeclaration.range
                  );
                }
                initInStart = true;
              }
            }
          } else if (previousValue == null) {
            initExpr = module.createI32(0);
          } else if (previousValue.is(CommonFlags.INLINED)) {
            initExpr = module.createI32(previousValue.constantValue + 1);
          } else {
            // in TypeScript this errors with TS1061, but actually we can do:
            initExpr = module.createBinary(BinaryOp.AddI32,
              module.createGetGlobal(previousValue.internalName, NativeType.I32),
              module.createI32(1)
            );
            if (element.is(CommonFlags.CONST)) {
              this.warning(
                DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable,
                valueDeclaration.range
              );
            }
            initInStart = true;
          }
          if (initInStart) {
            module.addGlobal(
              val.internalName,
              NativeType.I32,
              true, // mutable
              module.createI32(0)
            );
            this.startFunctionBody.push(module.createSetGlobal(val.internalName, initExpr));
          } else {
            module.addGlobal(val.internalName, NativeType.I32, false, initExpr);
            if (_BinaryenExpressionGetType(initExpr) == NativeType.I32) {
              val.constantValue = _BinaryenConstGetValueI32(initExpr);
              val.set(CommonFlags.INLINED);
            } else {
              assert(false);
              this.error(
                DiagnosticCode.Operation_not_supported,
                valueDeclaration.range
              );
              val.constantValue = 0;
            }
          }
        }
        previousValue = <EnumValue>val;

        // export values if the enum is exported
        if (element.declaration.range.source.isEntry && element.declaration.isTopLevelExport) {
          if (member.is(CommonFlags.INLINED)) {
            module.addGlobalExport(member.internalName, member.internalName);
          } else if (valueDeclaration) {
            this.warning(
              DiagnosticCode.Cannot_export_a_mutable_global,
              valueDeclaration.range
            );
          }
        }
      }
    }
    this.currentEnum = null;
    return true;
  }

  // functions

  /** Compiles a function given its declaration. */
  compileFunctionDeclaration(
    declaration: FunctionDeclaration,
    typeArguments: TypeNode[],
    contextualTypeArguments: Map<string,Type> | null = null
  ): Function | null {
    var element = assert(this.program.elementsLookup.get(declaration.fileLevelInternalName));
    assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
    return this.compileFunctionUsingTypeArguments( // reports
      <FunctionPrototype>element,
      typeArguments,
      contextualTypeArguments,
      (<FunctionPrototype>element).declaration.name
    );
  }

  /** Resolves the specified type arguments prior to compiling the resulting function instance. */
  compileFunctionUsingTypeArguments(
    prototype: FunctionPrototype,
    typeArguments: TypeNode[],
    contextualTypeArguments: Map<string,Type> | null,
    reportNode: Node
  ): Function | null {
    var instance = prototype.resolveUsingTypeArguments( // reports
      typeArguments,
      contextualTypeArguments,
      reportNode
    );
    if (!(instance && this.compileFunction(instance))) return null;
    return instance;
  }

  /** Either reuses or creates the function type matching the specified signature. */
  private ensureFunctionType(signature: Signature): FunctionTypeRef {
    var parameters = signature.parameterTypes;
    var numParameters = parameters.length;
    var thisType = signature.thisType;
    var paramTypes: NativeType[];
    var index = 0;
    if (thisType) {
      paramTypes = new Array(1 + numParameters);
      paramTypes[0] = thisType.toNativeType();
      index = 1;
    } else {
      paramTypes = new Array(numParameters);
    }
    for (let i = 0; i < numParameters; ++i, ++index) {
      paramTypes[index] = signature.parameterTypes[i].toNativeType();
    }
    var resultType = signature.returnType.toNativeType();
    var module = this.module;
    var typeRef = module.getFunctionTypeBySignature(resultType, paramTypes);
    if (!typeRef) {
      typeRef = module.addFunctionType(signature.toSignatureString(), resultType, paramTypes);
    }
    return typeRef;
  }

  /** Compiles a readily resolved function instance. */
  compileFunction(instance: Function): bool {
    if (instance.is(CommonFlags.COMPILED)) return true;
    assert(!instance.is(CommonFlags.AMBIENT | CommonFlags.BUILTIN) || instance.internalName == "abort");
    instance.set(CommonFlags.COMPILED);

    // check that modifiers are matching but still compile as-is
    var declaration = instance.prototype.declaration;
    var body = declaration.body;
    if (body) {
      if (instance.is(CommonFlags.AMBIENT)) {
        this.error(
          DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts,
          declaration.name.range
        );
      }
    } else {
      if (!instance.is(CommonFlags.AMBIENT)) {
        this.error(
          DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
          declaration.name.range
        );
      }
    }

    var ref: FunctionRef;
    var typeRef = this.ensureFunctionType(instance.signature);
    var module = this.module;
    if (body) {
      let isConstructor = instance.is(CommonFlags.CONSTRUCTOR);
      let returnType: Type = instance.signature.returnType;

      // compile body
      let previousFunction = this.currentFunction;
      this.currentFunction = instance;
      let flow = instance.flow;
      let stmt: ExpressionRef;
      if (body.kind == NodeKind.EXPRESSION) { // () => expression
        assert(!instance.isAny(CommonFlags.CONSTRUCTOR | CommonFlags.GET | CommonFlags.SET));
        assert(instance.is(CommonFlags.ARROW));
        stmt = this.compileExpression((<ExpressionStatement>body).expression, returnType);
        flow.set(FlowFlags.RETURNS);
      } else {
        assert(body.kind == NodeKind.BLOCK);
        stmt = this.compileStatement(body);
        flow.finalize();
        if (isConstructor) {
          let nativeSizeType = this.options.nativeSizeType;
          assert(instance.is(CommonFlags.INSTANCE));

          // implicitly return `this` if the constructor doesn't always return on its own
          if (!flow.is(FlowFlags.RETURNS)) {

            // if all branches are guaranteed to allocate, skip the final conditional allocation
            if (flow.is(FlowFlags.ALLOCATES)) {
              stmt = module.createBlock(null, [
                stmt,
                module.createGetLocal(0, nativeSizeType)
              ], nativeSizeType);

            // if not all branches are guaranteed to allocate, also append a conditional allocation
            } else {
              let parent = assert(instance.memberOf);
              assert(parent.kind == ElementKind.CLASS);
              stmt = module.createBlock(null, [
                stmt,
                module.createTeeLocal(0,
                  makeConditionalAllocate(this, <Class>parent, declaration.name)
                )
              ], nativeSizeType);
            }
          }

        // make sure all branches return
        } else if (returnType != Type.void && !flow.is(FlowFlags.RETURNS)) {
          this.error(
            DiagnosticCode.A_function_whose_declared_type_is_not_void_must_return_a_value,
            declaration.signature.returnType.range
          );
        }
      }
      this.currentFunction = previousFunction;

      // create the function
      ref = module.addFunction(
        instance.internalName,
        typeRef,
        typesToNativeTypes(instance.additionalLocals),
        stmt
      );

    } else {
      instance.set(CommonFlags.MODULE_IMPORT);

      // create the function import
      let namespace = instance.prototype.namespace;
      ref = module.addFunctionImport(
        instance.internalName,
        namespace
          ? namespace.simpleName
          : "env",
        instance.simpleName,
        typeRef
      );
    }

    // check module-level export
    if (declaration.range.source.isEntry && declaration.isTopLevelExport) {
      module.addFunctionExport(instance.internalName, declaration.name.text);
    }

    instance.finalize(module, ref);
    return true;
  }

  // namespaces

  compileNamespaceDeclaration(declaration: NamespaceDeclaration): void {
    var members = declaration.members;
    var noTreeShaking = this.options.noTreeShaking;
    for (let i = 0, k = members.length; i < k; ++i) {
      let member = members[i];
      switch (member.kind) {
        case NodeKind.CLASSDECLARATION: {
          if (
            (noTreeShaking || member.is(CommonFlags.EXPORT)) &&
            !(<ClassDeclaration>member).isGeneric
          ) {
            this.compileClassDeclaration(<ClassDeclaration>member, []);
          }
          break;
        }
        case NodeKind.INTERFACEDECLARATION: {
          if (
            (noTreeShaking || member.is(CommonFlags.EXPORT)) &&
            !(<InterfaceDeclaration>member).isGeneric
          ) {
            this.compileInterfaceDeclaration(<InterfaceDeclaration>member, []);
          }
          break;
        }
        case NodeKind.ENUMDECLARATION: {
          if (noTreeShaking || member.is(CommonFlags.EXPORT)) {
            this.compileEnumDeclaration(<EnumDeclaration>member);
          }
          break;
        }
        case NodeKind.FUNCTIONDECLARATION: {
          if (
            (noTreeShaking || member.is(CommonFlags.EXPORT)) &&
            !(<FunctionDeclaration>member).isGeneric
          ) {
            this.compileFunctionDeclaration(<FunctionDeclaration>member, []);
          }
          break;
        }
        case NodeKind.NAMESPACEDECLARATION: {
          if (noTreeShaking || member.is(CommonFlags.EXPORT)) {
            this.compileNamespaceDeclaration(<NamespaceDeclaration>member);
          }
          break;
        }
        case NodeKind.VARIABLE: {
          if (noTreeShaking || member.is(CommonFlags.EXPORT)) {
            let variableInit = this.compileVariableStatement(<VariableStatement>member, true);
            if (variableInit) this.startFunctionBody.push(variableInit);
          }
          break;
        }
        default: {
          assert(false);
          this.error(
            DiagnosticCode.Operation_not_supported,
            member.range
          );
          break;
        }
      }
    }
  }

  compileNamespace(ns: Namespace): void {
    if (!ns.members) return;

    var noTreeShaking = this.options.noTreeShaking;
    for (let element of ns.members.values()) {
      switch (element.kind) {
        case ElementKind.CLASS_PROTOTYPE: {
          if (
            (
              noTreeShaking ||
              (<ClassPrototype>element).is(CommonFlags.EXPORT)
            ) && !(<ClassPrototype>element).is(CommonFlags.GENERIC)
          ) {
            this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
          }
          break;
        }
        case ElementKind.ENUM: {
          this.compileEnum(<Enum>element);
          break;
        }
        case ElementKind.FUNCTION_PROTOTYPE: {
          if (
            (
              noTreeShaking || (<FunctionPrototype>element).is(CommonFlags.EXPORT)
            ) && !(<FunctionPrototype>element).is(CommonFlags.GENERIC)
          ) {
            this.compileFunctionUsingTypeArguments(
              <FunctionPrototype>element,
              [],
              null,
              (<FunctionPrototype>element).declaration.name
            );
          }
          break;
        }
        case ElementKind.GLOBAL: {
          this.compileGlobal(<Global>element);
          break;
        }
        case ElementKind.NAMESPACE: {
          this.compileNamespace(<Namespace>element);
          break;
        }
      }
    }
  }

  // exports

  compileExportStatement(statement: ExportStatement): void {
    var module = this.module;
    var exports = this.program.fileLevelExports;
    var members = statement.members;
    for (let i = 0, k = members.length; i < k; ++i) {
      let member = members[i];
      let internalExportName = (
        statement.range.source.internalPath +
        PATH_DELIMITER +
        member.externalName.text
      );
      let element = exports.get(internalExportName);
      if (!element) continue; // reported in Program#initialize
      switch (element.kind) {
        case ElementKind.CLASS_PROTOTYPE: {
          if (!(<ClassPrototype>element).is(CommonFlags.GENERIC)) {
            this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
          }
          break;
        }
        case ElementKind.ENUM: {
          this.compileEnum(<Enum>element);
          break;
        }
        case ElementKind.FUNCTION_PROTOTYPE: {
          if (
            !(<FunctionPrototype>element).is(CommonFlags.GENERIC) &&
            statement.range.source.isEntry
          ) {
            let functionInstance = this.compileFunctionUsingTypeArguments(
              <FunctionPrototype>element,
              [],
              null,
              (<FunctionPrototype>element).declaration.name
            );
            if (functionInstance) {
              let functionDeclaration = functionInstance.prototype.declaration;
              if (functionDeclaration && functionDeclaration.needsExplicitExport(member)) {
                module.addFunctionExport(functionInstance.internalName, member.externalName.text);
              }
            }
          }
          break;
        }
        case ElementKind.GLOBAL: {
          if (this.compileGlobal(<Global>element) && statement.range.source.isEntry) {
            let globalDeclaration = (<Global>element).declaration;
            if (globalDeclaration && globalDeclaration.needsExplicitExport(member)) {
              if ((<Global>element).is(CommonFlags.INLINED)) {
                module.addGlobalExport(element.internalName, member.externalName.text);
              } else {
                this.warning(
                  DiagnosticCode.Cannot_export_a_mutable_global,
                  member.range
                );
              }
            }
          }
          break;
        }
        case ElementKind.NAMESPACE: {
          this.compileNamespace(<Namespace>element);
          break;
        }
      }
    }
  }

  // classes

  compileClassDeclaration(
    declaration: ClassDeclaration,
    typeArguments: TypeNode[],
    contextualTypeArguments: Map<string,Type> | null = null,
    alternativeReportNode: Node | null = null
  ): void {
    var element = assert(this.program.elementsLookup.get(declaration.fileLevelInternalName));
    assert(element.kind == ElementKind.CLASS_PROTOTYPE);
    this.compileClassUsingTypeArguments(
      <ClassPrototype>element,
      typeArguments,
      contextualTypeArguments,
      alternativeReportNode
    );
  }

  compileClassUsingTypeArguments(
    prototype: ClassPrototype,
    typeArguments: TypeNode[],
    contextualTypeArguments: Map<string,Type> | null = null,
    alternativeReportNode: Node | null = null
  ): void {
    var instance = prototype.resolveUsingTypeArguments( // reports
      typeArguments,
      contextualTypeArguments,
      alternativeReportNode
    );
    if (!instance) return;
    this.compileClass(instance);
  }

  compileClass(instance: Class): bool {
    if (instance.is(CommonFlags.COMPILED)) return true;
    instance.set(CommonFlags.COMPILED);
    return true;
  }

  compileInterfaceDeclaration(
    declaration: InterfaceDeclaration,
    typeArguments: TypeNode[],
    contextualTypeArguments: Map<string,Type> | null = null,
    alternativeReportNode: Node | null = null
  ): void {
    // TODO
    this.error(
      DiagnosticCode.Operation_not_supported,
      declaration.range
    );
  }

  // memory

  /** Adds a static memory segment with the specified data. */
  addMemorySegment(buffer: Uint8Array, alignment: i32 = 8): MemorySegment {
    var memoryOffset = i64_align(this.memoryOffset, alignment);
    var segment = MemorySegment.create(buffer, memoryOffset);
    this.memorySegments.push(segment);
    this.memoryOffset = i64_add(memoryOffset, i64_new(buffer.length, 0));
    return segment;
  }

  // function table

  /** Ensures that a table entry exists for the specified function and returns its index. */
  ensureFunctionTableEntry(func: Function): i32 {
    assert(func.is(CommonFlags.COMPILED));
    if (func.functionTableIndex >= 0) {
      return func.functionTableIndex;
    }
    var functionTable = this.functionTable;
    var index = functionTable.length;
    if (!func.is(CommonFlags.TRAMPOLINE) && func.signature.requiredParameters < func.signature.parameterTypes.length) {
      // insert the trampoline if the function has optional parameters
      func = this.ensureTrampoline(func);
    }
    functionTable.push(func);
    func.functionTableIndex = index;
    return index;
  }

  // statements

  compileStatement(statement: Statement): ExpressionRef {
    var module = this.module;
    var expr: ExpressionRef;
    switch (statement.kind) {
      case NodeKind.BLOCK: {
        expr = this.compileBlockStatement(<BlockStatement>statement);
        break;
      }
      case NodeKind.BREAK: {
        expr = this.compileBreakStatement(<BreakStatement>statement);
        break;
      }
      case NodeKind.CONTINUE: {
        expr = this.compileContinueStatement(<ContinueStatement>statement);
        break;
      }
      case NodeKind.DO: {
        expr = this.compileDoStatement(<DoStatement>statement);
        break;
      }
      case NodeKind.EMPTY: {
        expr = this.compileEmptyStatement(<EmptyStatement>statement);
        break;
      }
      case NodeKind.EXPRESSION: {
        expr = this.compileExpressionStatement(<ExpressionStatement>statement);
        break;
      }
      case NodeKind.FOR: {
        expr = this.compileForStatement(<ForStatement>statement);
        break;
      }
      case NodeKind.IF: {
        expr = this.compileIfStatement(<IfStatement>statement);
        break;
      }
      case NodeKind.RETURN: {
        expr = this.compileReturnStatement(<ReturnStatement>statement);
        break;
      }
      case NodeKind.SWITCH: {
        expr = this.compileSwitchStatement(<SwitchStatement>statement);
        break;
      }
      case NodeKind.THROW: {
        expr = this.compileThrowStatement(<ThrowStatement>statement);
        break;
      }
      case NodeKind.TRY: {
        expr = this.compileTryStatement(<TryStatement>statement);
        break;
      }
      case NodeKind.VARIABLE: {
        expr = this.compileVariableStatement(<VariableStatement>statement);
        if (!expr) expr = module.createNop();
        break;
      }
      case NodeKind.VOID: {
        expr = this.compileVoidStatement(<VoidStatement>statement);
        break;
      }
      case NodeKind.WHILE: {
        expr = this.compileWhileStatement(<WhileStatement>statement);
        break;
      }
      case NodeKind.TYPEDECLARATION: {
        // type declarations must be top-level because function bodies are evaluated when
        // reachaable only.
        if (this.currentFunction == this.startFunction) {
          return module.createNop();
        }
        // otherwise fall-through
      }
      default: {
        assert(false);
        this.error(
          DiagnosticCode.Operation_not_supported,
          statement.range
        );
        expr = module.createUnreachable();
        break;
      }
    }
    if (this.options.sourceMap) {
      addDebugLocation(expr, statement.range, module, this.currentFunction);
    }
    return expr;
  }

  compileStatements(statements: Statement[]): ExpressionRef[] {
    var numStatements = statements.length;
    var stmts = new Array<ExpressionRef>(numStatements);
    for (let i = 0; i < numStatements; ++i) {
      stmts[i] = this.compileStatement(statements[i]);
    }
    return stmts; // array of 0-es in noEmit-mode
  }

  compileBlockStatement(statement: BlockStatement): ExpressionRef {
    var statements = statement.statements;

    // NOTE that we could optimize this to a NOP if empty or unwrap a single
    // statement, but that's not what the source told us to do and left to the
    // optimizer.

    // Not actually a branch, but can contain its own scoped variables.
    var flow = this.currentFunction.flow.enterBranchOrScope();
    this.currentFunction.flow = flow;

    var stmt = this.module.createBlock(null, this.compileStatements(statements), NativeType.None);
    var stmtReturns = flow.is(FlowFlags.RETURNS);
    var stmtThrows = flow.is(FlowFlags.THROWS);
    var stmtAllocates = flow.is(FlowFlags.ALLOCATES);

    // Switch back to the parent flow
    flow = flow.leaveBranchOrScope();
    this.currentFunction.flow = flow;
    if (stmtReturns) flow.set(FlowFlags.RETURNS);
    if (stmtThrows) flow.set(FlowFlags.THROWS);
    if (stmtAllocates) flow.set(FlowFlags.ALLOCATES);
    return stmt;
  }

  compileBreakStatement(statement: BreakStatement): ExpressionRef {
    var module = this.module;
    if (statement.label) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        statement.label.range
      );
      return module.createUnreachable();
    }
    var flow = this.currentFunction.flow;
    var breakLabel = flow.breakLabel;
    if (breakLabel == null) {
      this.error(
        DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement,
        statement.range
      );
      return module.createUnreachable();
    }
    flow.set(FlowFlags.BREAKS);
    return module.createBreak(breakLabel);
  }

  compileContinueStatement(statement: ContinueStatement): ExpressionRef {
    var module = this.module;
    var label = statement.label;
    if (label) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        label.range
      );
      return module.createUnreachable();
    }
    // Check if 'continue' is allowed here
    var flow = this.currentFunction.flow;
    var continueLabel = flow.continueLabel;
    if (continueLabel == null) {
      this.error(
        DiagnosticCode.A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement,
        statement.range
      );
      return module.createUnreachable();
    }
    flow.set(FlowFlags.CONTINUES);
    return module.createBreak(continueLabel);
  }

  compileDoStatement(statement: DoStatement): ExpressionRef {

    // A do statement does not initiate a new branch because it is executed at
    // least once, but has its own break and continue labels.
    var currentFunction = this.currentFunction;
    var label = currentFunction.enterBreakContext();
    var flow = currentFunction.flow;
    var previousBreakLabel = flow.breakLabel;
    var previousContinueLabel = flow.continueLabel;

    var breakLabel = "break|" + label;
    flow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    flow.continueLabel = continueLabel;

    var body = this.compileStatement(statement.statement);

    // Reset to the previous break and continue labels, if any.
    flow.breakLabel = previousBreakLabel;
    flow.continueLabel = previousContinueLabel;

    var module = this.module;
    var condExpr = makeIsTrueish(
      this.compileExpression(statement.condition, Type.i32, ConversionKind.NONE),
      this.currentType,
      module
    );

    // No need to eliminate the condition in generic contexts as the statement is executed anyway.

    this.currentFunction.leaveBreakContext();

    return module.createBlock(breakLabel, [
      module.createLoop(continueLabel,
        module.createBlock(null, [
          body,
          module.createBreak(continueLabel, condExpr)
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
    var currentFunction = this.currentFunction;
    var context = currentFunction.enterBreakContext();
    var flow = currentFunction.flow.enterBranchOrScope();
    currentFunction.flow = flow;
    var breakLabel = flow.breakLabel = "break|" + context;
    flow.breakLabel = breakLabel;
    var continueLabel = "continue|" + context;
    flow.continueLabel = continueLabel;

    // Compile in correct order
    var module = this.module;
    var initializer = statement.initializer
      ? this.compileStatement(<Statement>statement.initializer)
      : module.createNop();
    var condition = statement.condition
      ? this.compileExpression(<Expression>statement.condition, Type.i32)
      : module.createI32(1);
    var incrementor = statement.incrementor
      ? this.compileExpression(<Expression>statement.incrementor, Type.void)
      : module.createNop();
    var body = this.compileStatement(statement.statement);

    var alwaysReturns = !statement.condition && flow.is(FlowFlags.RETURNS);
    var alwaysThrows = !statement.condition && flow.is(FlowFlags.THROWS);
    var alwaysAllocates = !statement.condition && flow.is(FlowFlags.ALLOCATES);
    // TODO: check other always-true conditions as well, not just omitted

    if (alwaysReturns) flow.set(FlowFlags.RETURNS);
    if (alwaysThrows) flow.set(FlowFlags.THROWS);
    if (alwaysAllocates) flow.set(FlowFlags.ALLOCATES);

    // Switch back to the parent flow
    currentFunction.flow = flow.leaveBranchOrScope();
    currentFunction.leaveBreakContext();

    var expr = module.createBlock(breakLabel, [
      initializer,
      module.createLoop(continueLabel, module.createBlock(null, [
        module.createIf(condition, module.createBlock(null, [
          body,
          incrementor,
          module.createBreak(continueLabel)
        ], NativeType.None))
      ], NativeType.None))
    ], NativeType.None);

    // If the loop is guaranteed to run and return, append a hint
    if (alwaysReturns || alwaysThrows) {
      expr = module.createBlock(null, [
        expr,
        module.createUnreachable()
      ]);
    }
    return expr;
  }

  compileIfStatement(statement: IfStatement): ExpressionRef {
    var module = this.module;
    var currentFunction = this.currentFunction;
    var ifTrue = statement.ifTrue;
    var ifFalse = statement.ifFalse;

    // The condition doesn't initiate a branch yet
    var condExpr = makeIsTrueish(
      this.compileExpression(statement.condition, Type.i32, ConversionKind.NONE),
      this.currentType,
      module
    );

    // Eliminate unnecesssary branches in generic contexts if the condition is constant
    if (
      this.currentFunction.isAny(CommonFlags.GENERIC | CommonFlags.GENERIC_CONTEXT) &&
      _BinaryenExpressionGetId(condExpr = this.precomputeExpressionRef(condExpr)) == ExpressionId.Const &&
      _BinaryenExpressionGetType(condExpr) == NativeType.I32
    ) {
      let ret: ExpressionRef;
      if (_BinaryenConstGetValueI32(condExpr)) {
        ret = this.compileStatement(ifTrue);
      } else if (ifFalse) {
        ret = this.compileStatement(ifFalse);
      } else {
        ret = module.createNop();
      }
      return ret;
    }

    // Each arm initiates a branch
    var flow = currentFunction.flow.enterBranchOrScope();
    currentFunction.flow = flow;
    var ifTrueExpr = this.compileStatement(ifTrue);
    var ifTrueReturns = flow.is(FlowFlags.RETURNS);
    var ifTrueThrows = flow.is(FlowFlags.THROWS);
    var ifTrueAllocates = flow.is(FlowFlags.ALLOCATES);
    flow = flow.leaveBranchOrScope();
    currentFunction.flow = flow;

    var ifFalseExpr: ExpressionRef = 0;
    var ifFalseReturns = false;
    var ifFalseThrows = false;
    var ifFalseAllocates = false;
    if (ifFalse) {
      flow = flow.enterBranchOrScope();
      currentFunction.flow = flow;
      ifFalseExpr = this.compileStatement(ifFalse);
      ifFalseReturns = flow.is(FlowFlags.RETURNS);
      ifFalseThrows = flow.is(FlowFlags.THROWS);
      ifFalseAllocates = flow.is(FlowFlags.ALLOCATES);
      flow = flow.leaveBranchOrScope();
      currentFunction.flow = flow;
    }

    if (ifTrueReturns && ifFalseReturns) flow.set(FlowFlags.RETURNS);
    if (ifTrueThrows && ifFalseThrows) flow.set(FlowFlags.THROWS);
    if (ifTrueAllocates && ifFalseAllocates) flow.set(FlowFlags.ALLOCATES);

    return module.createIf(condExpr, ifTrueExpr, ifFalseExpr);
  }

  compileReturnStatement(statement: ReturnStatement): ExpressionRef {
    var currentFunction = this.currentFunction;
    var expression: ExpressionRef = 0;
    if (statement.value) {
      expression = this.compileExpression(
        statement.value,
        currentFunction.signature.returnType
      );
    }

    // Remember that this flow returns
    currentFunction.flow.set(FlowFlags.RETURNS);

    return this.module.createReturn(expression);
  }

  compileSwitchStatement(statement: SwitchStatement): ExpressionRef {
    var module = this.module;
    var currentFunction = this.currentFunction;

    // Everything within a switch uses the same break context
    var context = currentFunction.enterBreakContext();

    // introduce a local for evaluating the condition (exactly once)
    var tempLocal = currentFunction.getTempLocal(Type.u32);
    var tempLocalIndex = tempLocal.index;
    var cases = statement.cases;
    var numCases = cases.length;

    // Prepend initializer to inner block. Does not initiate a new branch, yet.
    var breaks = new Array<ExpressionRef>(1 + numCases);
    breaks[0] = module.createSetLocal( // initializer
      tempLocalIndex,
      this.compileExpression(statement.condition, Type.u32)
    );

    // make one br_if per (possibly dynamic) labeled case (binaryen optimizes to br_table where possible)
    var breakIndex = 1;
    var defaultIndex = -1;
    for (let i = 0; i < numCases; ++i) {
      let case_ = cases[i];
      let label = case_.label;
      if (label) {
        breaks[breakIndex++] = module.createBreak("case" + i.toString(10) + "|" + context,
          module.createBinary(BinaryOp.EqI32,
            module.createGetLocal(tempLocalIndex, NativeType.I32),
            this.compileExpression(label, Type.i32)
          )
        );
      } else {
        defaultIndex = i;
      }
    }

    currentFunction.freeTempLocal(tempLocal);

    // otherwise br to default respectively out of the switch if there is no default case
    breaks[breakIndex] = module.createBreak((defaultIndex >= 0
        ? "case" + defaultIndex.toString(10)
        : "break"
      ) + "|" + context);

    // nest blocks in order
    var currentBlock = module.createBlock("case0|" + context, breaks, NativeType.None);
    var alwaysReturns = true;
    var alwaysThrows = true;
    var alwaysAllocates = true;
    for (let i = 0; i < numCases; ++i) {
      let case_ = cases[i];
      let statements = case_.statements;
      let numStatements = statements.length;
      let body = new Array<ExpressionRef>(1 + numStatements);
      body[0] = currentBlock;

      // Each switch case initiates a new branch
      let flow = currentFunction.flow.enterBranchOrScope();
      currentFunction.flow = flow;
      let breakLabel = "break|" + context;
      flow.breakLabel = breakLabel;

      let fallsThrough = i != numCases - 1;
      let nextLabel = !fallsThrough ? breakLabel : "case" + (i + 1).toString(10) + "|" + context;
      for (let j = 0; j < numStatements; ++j) {
        body[j + 1] = this.compileStatement(statements[j]);
      }
      if (!(fallsThrough || flow.is(FlowFlags.RETURNS))) {
        alwaysReturns = false; // ignore fall-throughs
      }
      if (!(fallsThrough || flow.is(FlowFlags.THROWS))) {
        alwaysThrows = false;
      }
      if (!(fallsThrough || flow.is(FlowFlags.ALLOCATES))) {
        alwaysAllocates = false;
      }

      // Switch back to the parent flow
      currentFunction.flow = flow.leaveBranchOrScope();

      currentBlock = module.createBlock(nextLabel, body, NativeType.None);
    }
    currentFunction.leaveBreakContext();

    // If the switch has a default and always returns, propagate that
    if (defaultIndex >= 0) {
      let flow = currentFunction.flow;
      if (alwaysReturns) flow.set(FlowFlags.RETURNS);
      if (alwaysThrows) flow.set(FlowFlags.THROWS);
      if (alwaysAllocates) flow.set(FlowFlags.ALLOCATES);
    }
    return currentBlock;
  }

  compileThrowStatement(statement: ThrowStatement): ExpressionRef {
    var flow = this.currentFunction.flow;

    // Remember that this branch throws
    flow.set(FlowFlags.THROWS);

    // FIXME: without try-catch it is safe to assume RETURNS as well for now
    flow.set(FlowFlags.RETURNS);

    // TODO: requires exception-handling spec.
    return this.module.createUnreachable();
  }

  compileTryStatement(statement: TryStatement): ExpressionRef {
    // TODO
    // can't yet support something like: try { return ... } finally { ... }
    // worthwhile to investigate lowering returns to block results (here)?
    this.error(
      DiagnosticCode.Operation_not_supported,
      statement.range
    );
    return this.module.createUnreachable();
  }

  /**
   * Compiles a variable statement. Returns `0` if an initializer is not
   * necessary.
   */
  compileVariableStatement(statement: VariableStatement, isKnownGlobal: bool = false): ExpressionRef {
    var program = this.program;
    var currentFunction = this.currentFunction;
    var declarations = statement.declarations;
    var numDeclarations = declarations.length;

    // top-level variables and constants become globals
    if (isKnownGlobal || (
      currentFunction == this.startFunction &&
      statement.parent && statement.parent.kind == NodeKind.SOURCE
    )) {
      // NOTE that the above condition also covers top-level variables declared with 'let', even
      // though such variables could also become start function locals if, and only if, not used
      // within any function declared in the same source, which is unknown at this point. the only
      // efficient way to deal with this would be to keep track of all occasions it is used and
      // replace these instructions afterwards, dynamically. (TOOD: what about a Binaryen pass?)
      for (let i = 0; i < numDeclarations; ++i) {
        this.compileGlobalDeclaration(declarations[i]);
      }
      return 0;
    }

    // other variables become locals
    var initializers = new Array<ExpressionRef>();
    for (let i = 0; i < numDeclarations; ++i) {
      let declaration = declarations[i];
      let name = declaration.name.text;
      let type: Type | null = null;
      let init: ExpressionRef = 0;
      if (declaration.type) {
        type = program.resolveType( // reports
          declaration.type,
          currentFunction.contextualTypeArguments
        );
        if (!type) continue;
        if (declaration.initializer) {
          init = this.compileExpression(declaration.initializer, type); // reports
        }
      } else if (declaration.initializer) { // infer type using void/NONE for proper literal inference
        init = this.compileExpression( // reports
          declaration.initializer,
          Type.void,
          ConversionKind.NONE
        );
        if (this.currentType == Type.void) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            declaration.range, this.currentType.toString(), "<auto>"
          );
          continue;
        }
        type = this.currentType;
      } else {
        this.error(
          DiagnosticCode.Type_expected,
          declaration.name.range.atEnd
        );
        continue;
      }
      let isInlined = false;
      if (declaration.is(CommonFlags.CONST)) {
        if (init) {
          init = this.precomputeExpressionRef(init);
          if (_BinaryenExpressionGetId(init) == ExpressionId.Const) {
            let local = new Local(program, name, -1, type);
            switch (_BinaryenExpressionGetType(init)) {
              case NativeType.I32: {
                local = local.withConstantIntegerValue(_BinaryenConstGetValueI32(init), 0);
                break;
              }
              case NativeType.I64: {
                local = local.withConstantIntegerValue(
                  _BinaryenConstGetValueI64Low(init),
                  _BinaryenConstGetValueI64High(init)
                );
                break;
              }
              case NativeType.F32: {
                local = local.withConstantFloatValue(<f64>_BinaryenConstGetValueF32(init));
                break;
              }
              case NativeType.F64: {
                local = local.withConstantFloatValue(_BinaryenConstGetValueF64(init));
                break;
              }
              default: {
                assert(false);
                this.error(
                  DiagnosticCode.Operation_not_supported,
                  declaration.range
                );
                return this.module.createUnreachable();
              }
            }
            // Create a virtual local that doesn't actually exist in WebAssembly
            let scopedLocals = currentFunction.flow.scopedLocals;
            if (!scopedLocals) currentFunction.flow.scopedLocals = scopedLocals = new Map();
            else if (scopedLocals.has(name)) {
              this.error(
                DiagnosticCode.Duplicate_identifier_0,
                declaration.name.range, name
              );
              return this.module.createUnreachable();
            }
            scopedLocals.set(name, local);
            isInlined = true;
          } else {
            this.warning(
              DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable,
              declaration.range
            );
          }
        } else {
          this.error(
            DiagnosticCode._const_declarations_must_be_initialized,
            declaration.range
          );
        }
      }
      if (!isInlined) {
        if (declaration.isAny(CommonFlags.LET | CommonFlags.CONST)) { // here: not top-level
          currentFunction.flow.addScopedLocal(name, type, declaration.name); // reports
        } else {
          currentFunction.addLocal(type, name); // reports
        }
        if (init) {
          initializers.push(this.compileAssignmentWithValue(declaration.name, init));
        }
      }
    }
    return initializers.length   // we can unwrap these here because the
      ? initializers.length == 1 // source didn't tell us exactly what to do
        ? initializers[0]
        : this.module.createBlock(null, initializers, NativeType.None)
      : 0;
  }

  compileVoidStatement(statement: VoidStatement): ExpressionRef {
    return this.compileExpression(statement.expression, Type.void, ConversionKind.EXPLICIT, false);
  }

  compileWhileStatement(statement: WhileStatement): ExpressionRef {
    var module = this.module;

    // The condition does not yet initialize a branch
    var condExpr = makeIsTrueish(
      this.compileExpression(statement.condition, Type.i32, ConversionKind.NONE),
      this.currentType,
      module
    );

    // Eliminate unnecesssary loops in generic contexts if the condition is constant
    if (
      this.currentFunction.isAny(CommonFlags.GENERIC | CommonFlags.GENERIC_CONTEXT) &&
      _BinaryenExpressionGetId(condExpr = this.precomputeExpressionRef(condExpr)) == ExpressionId.Const &&
      _BinaryenExpressionGetType(condExpr) == NativeType.I32
    ) {
      if (!_BinaryenConstGetValueI32(condExpr)) {
        return module.createNop();
      }
    }

    // Statements initiate a new branch with its own break context
    var currentFunction = this.currentFunction;
    var label = currentFunction.enterBreakContext();
    var flow = currentFunction.flow.enterBranchOrScope();
    currentFunction.flow = flow;
    var breakLabel = "break|" + label;
    flow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    flow.continueLabel = continueLabel;

    var body = this.compileStatement(statement.statement);
    var alwaysReturns = false; // CONDITION_IS_ALWAYS_TRUE && flow.is(FlowFlags.RETURNS);
    // TODO: evaluate if condition is always true

    // Switch back to the parent flow
    currentFunction.flow = flow.leaveBranchOrScope();
    currentFunction.leaveBreakContext();

    var expr = module.createBlock(breakLabel, [
      module.createLoop(continueLabel,
        module.createIf(condExpr, module.createBlock(null, [
          body,
          module.createBreak(continueLabel)
        ], NativeType.None))
      )
    ], NativeType.None);

    // If the loop is guaranteed to run and return, propagate that and append a hint
    if (alwaysReturns) {
      expr = module.createBlock(null, [
        expr,
        module.createUnreachable()
      ]);
    }
    return expr;
  }

  // expressions

  /**
   * Compiles the value of an inlined constant element.
   * @param retainType If true, the annotated type of the constant is retained. Otherwise, the value
   *  is precomputed according to context.
   */
  compileInlineConstant(
    element: VariableLikeElement,
    contextualType: Type,
    retainType: bool
  ): ExpressionRef {
    assert(element.is(CommonFlags.INLINED));
    var type = element.type;
    switch (
      !retainType &&
      type.is(TypeFlags.INTEGER) &&
      contextualType.is(TypeFlags.INTEGER) &&
      type.size < contextualType.size
        ? (this.currentType = contextualType).kind // essentially precomputes a (sign-)extension
        : (this.currentType = type).kind
    ) {
      case TypeKind.I8:
      case TypeKind.I16: {
        let shift = type.computeSmallIntegerShift(Type.i32);
        return this.module.createI32(
          element.constantValueKind == ConstantValueKind.INTEGER
            ? i64_low(element.constantIntegerValue) << shift >> shift
            : 0
        );
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        let mask = element.type.computeSmallIntegerMask(Type.i32);
        return this.module.createI32(
          element.constantValueKind == ConstantValueKind.INTEGER
            ? i64_low(element.constantIntegerValue) & mask
            : 0
        );
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        return this.module.createI32(
          element.constantValueKind == ConstantValueKind.INTEGER
            ? i64_low(element.constantIntegerValue)
            : 0
        );
      }
      case TypeKind.ISIZE:
      case TypeKind.USIZE: {
        if (!element.program.options.isWasm64) {
          return this.module.createI32(
            element.constantValueKind == ConstantValueKind.INTEGER
              ? i64_low(element.constantIntegerValue)
              : 0
          );
        }
        // fall-through
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return element.constantValueKind == ConstantValueKind.INTEGER
          ? this.module.createI64(
              i64_low(element.constantIntegerValue),
              i64_high(element.constantIntegerValue)
            )
          : this.module.createI64(0);
      }
      case TypeKind.F32: {
        return this.module.createF32((<VariableLikeElement>element).constantFloatValue);
      }
      case TypeKind.F64: {
        return this.module.createF64((<VariableLikeElement>element).constantFloatValue);
      }
      default: {
        assert(false);
        this.error(
          DiagnosticCode.Operation_not_supported,
          element.declaration.range
        );
        return this.module.createUnreachable();
      }
    }
  }

  compileExpression(
    expression: Expression,
    contextualType: Type,
    conversionKind: ConversionKind = ConversionKind.IMPLICIT,
    wrapSmallIntegers: bool = true
  ): ExpressionRef {
    this.currentType = contextualType;

    var expr: ExpressionRef;
    switch (expression.kind) {
      case NodeKind.ASSERTION: {
        expr = this.compileAssertionExpression(<AssertionExpression>expression, contextualType);
        break;
      }
      case NodeKind.BINARY: {
        expr = this.compileBinaryExpression(<BinaryExpression>expression, contextualType, wrapSmallIntegers);
        break;
      }
      case NodeKind.CALL: {
        expr = this.compileCallExpression(<CallExpression>expression, contextualType);
        break;
      }
      case NodeKind.COMMA: {
        expr = this.compileCommaExpression(<CommaExpression>expression, contextualType);
        break;
      }
      case NodeKind.ELEMENTACCESS: {
        expr = this.compileElementAccessExpression(<ElementAccessExpression>expression, contextualType);
        break;
      }
      case NodeKind.FUNCTION: {
        expr = this.compileFunctionExpression(<FunctionExpression>expression, contextualType);
        break;
      }
      case NodeKind.IDENTIFIER:
      case NodeKind.FALSE:
      case NodeKind.NULL:
      case NodeKind.THIS:
      case NodeKind.TRUE: {
        expr = this.compileIdentifierExpression(
          <IdentifierExpression>expression,
          contextualType,
          conversionKind == ConversionKind.NONE // retain type of inlined constants
        );
        break;
      }
      case NodeKind.LITERAL: {
        expr = this.compileLiteralExpression(<LiteralExpression>expression, contextualType);
        break;
      }
      case NodeKind.NEW: {
        expr = this.compileNewExpression(<NewExpression>expression, contextualType);
        break;
      }
      case NodeKind.PARENTHESIZED: {
        expr = this.compileParenthesizedExpression(
          <ParenthesizedExpression>expression,
          contextualType,
          wrapSmallIntegers
        );
        break;
      }
      case NodeKind.PROPERTYACCESS: {
        expr = this.compilePropertyAccessExpression(
          <PropertyAccessExpression>expression,
          contextualType,
          conversionKind == ConversionKind.NONE // retain type of inlined constants
        );
        break;
      }
      case NodeKind.TERNARY: {
        expr = this.compileTernaryExpression(<TernaryExpression>expression, contextualType);
        break;
      }
      case NodeKind.UNARYPOSTFIX: {
        expr = this.compileUnaryPostfixExpression(<UnaryPostfixExpression>expression, contextualType);
        break;
      }
      case NodeKind.UNARYPREFIX: {
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, contextualType, wrapSmallIntegers);
        break;
      }
      default: {
        assert(false);
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        expr = this.module.createUnreachable();
        break;
      }
    }

    var currentType = this.currentType;
    if (conversionKind != ConversionKind.NONE && currentType != contextualType) {
      expr = this.convertExpression(expr, currentType, contextualType, conversionKind, expression);
      this.currentType = contextualType;
    }

    if (this.options.sourceMap) {
      addDebugLocation(expr, expression.range, this.module, this.currentFunction);
    }
    return expr;
  }

  compileExpressionRetainType(
    expression: Expression,
    contextualType: Type,
    wrapSmallIntegers: bool = true
  ): ExpressionRef {
    return this.compileExpression(
      expression,
      contextualType == Type.void
        ? Type.i32
        : contextualType,
      ConversionKind.NONE,
      wrapSmallIntegers
    );
  }

  precomputeExpression(
    expression: Expression,
    contextualType: Type,
    conversionKind: ConversionKind = ConversionKind.IMPLICIT
  ): ExpressionRef {
    return this.precomputeExpressionRef(this.compileExpression(expression, contextualType, conversionKind));
  }

  precomputeExpressionRef(expr: ExpressionRef): ExpressionRef {
    var module = this.module;
    var type = this.currentType;
    var nativeType = type.toNativeType();
    var typeRef = module.getFunctionTypeBySignature(nativeType, null);
    var typeRefAdded = false;
    if (!typeRef) {
      typeRef = module.addFunctionType(type.toSignatureString(), nativeType, null);
      typeRefAdded = true;
    }
    var funcRef = module.addFunction("__precompute", typeRef, null, expr);
    module.runPasses([ "precompute" ], funcRef);
    var ret = _BinaryenFunctionGetBody(funcRef);
    module.removeFunction("__precompute");
    if (typeRefAdded) {
      // TODO: also remove the function type somehow if no longer used or make the C-API accept
      // a `null` typeRef, using an implicit type.
    }
    return ret;
  }

  convertExpression(
    expr: ExpressionRef,
    fromType: Type,
    toType: Type,
    conversionKind: ConversionKind,
    reportNode: Node
  ): ExpressionRef {
    assert(conversionKind != ConversionKind.NONE);
    var module = this.module;

    // void to any
    if (fromType.kind == TypeKind.VOID) {
      assert(toType.kind != TypeKind.VOID); // convertExpression should not be called with void -> void
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        reportNode.range, fromType.toString(), toType.toString()
      );
      return module.createUnreachable();
    }

    // any to void
    if (toType.kind == TypeKind.VOID) {
      return module.createDrop(expr);
    }

    if (conversionKind == ConversionKind.IMPLICIT && !fromType.isAssignableTo(toType)) {
      this.error(
        DiagnosticCode.Conversion_from_type_0_to_1_requires_an_explicit_cast,
        reportNode.range, fromType.toString(), toType.toString()
      ); // recoverable
    }

    // TODO: make this a proper switch?
    if (fromType.is(TypeFlags.FLOAT)) {

      // float to float
      if (toType.is(TypeFlags.FLOAT)) {
        if (fromType.kind == TypeKind.F32) {

          // f32 to f64
          if (toType.kind == TypeKind.F64) {
            expr = module.createUnary(UnaryOp.PromoteF32, expr);
          }

          // otherwise f32 to f32

        // f64 to f32
        } else if (toType.kind == TypeKind.F32) {
          expr = module.createUnary(UnaryOp.DemoteF64, expr);
        }

        // otherwise f64 to f64

      // float to int
      } else if (toType.is(TypeFlags.INTEGER)) {

        // f32 to int
        if (fromType.kind == TypeKind.F32) {
          if (toType.is(TypeFlags.SIGNED)) {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.createUnary(UnaryOp.TruncF32ToI64, expr);
            } else {
              expr = module.createUnary(UnaryOp.TruncF32ToI32, expr);
              if (toType.is(TypeFlags.SMALL)) {
                expr = makeSmallIntegerWrap(expr, toType, module);
              }
            }
          } else {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.createUnary(UnaryOp.TruncF32ToU64, expr);
            } else {
              expr = module.createUnary(UnaryOp.TruncF32ToU32, expr);
              if (toType.is(TypeFlags.SMALL)) {
                expr = makeSmallIntegerWrap(expr, toType, module);
              }
            }
          }

        // f64 to int
        } else {
          if (toType.is(TypeFlags.SIGNED)) {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.createUnary(UnaryOp.TruncF64ToI64, expr);
            } else {
              expr = module.createUnary(UnaryOp.TruncF64ToI32, expr);
              if (toType.is(TypeFlags.SMALL)) {
                expr = makeSmallIntegerWrap(expr, toType, module);
              }
            }
          } else {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.createUnary(UnaryOp.TruncF64ToU64, expr);
            } else {
              expr = module.createUnary(UnaryOp.TruncF64ToU32, expr);
              if (toType.is(TypeFlags.SMALL)) {
                expr = makeSmallIntegerWrap(expr, toType, module);
              }
            }
          }
        }

      // float to void
      } else {
        assert(toType.flags == TypeFlags.NONE, "void type expected");
        expr = module.createDrop(expr);
      }

    // int to float
    } else if (fromType.is(TypeFlags.INTEGER) && toType.is(TypeFlags.FLOAT)) {

      // int to f32
      if (toType.kind == TypeKind.F32) {
        if (fromType.is(TypeFlags.LONG)) {
          expr = module.createUnary(
            fromType.is(TypeFlags.SIGNED)
              ? UnaryOp.ConvertI64ToF32
              : UnaryOp.ConvertU64ToF32,
            expr
          );
        } else {
          expr = module.createUnary(
            fromType.is(TypeFlags.SIGNED)
              ? UnaryOp.ConvertI32ToF32
              : UnaryOp.ConvertU32ToF32,
            expr
          );
        }

      // int to f64
      } else {
        if (fromType.is(TypeFlags.LONG)) {
          expr = module.createUnary(
            fromType.is(TypeFlags.SIGNED)
              ? UnaryOp.ConvertI64ToF64
              : UnaryOp.ConvertU64ToF64,
            expr
          );
        } else {
          expr = module.createUnary(
            fromType.is(TypeFlags.SIGNED)
              ? UnaryOp.ConvertI32ToF64
              : UnaryOp.ConvertU32ToF64,
            expr
          );
        }
      }

    // int to int
    } else {
      if (fromType.is(TypeFlags.LONG)) {

        // i64 to i32
        if (!toType.is(TypeFlags.LONG)) {
          expr = module.createUnary(UnaryOp.WrapI64, expr); // discards upper bits
          if (toType.is(TypeFlags.SMALL)) {
            expr = makeSmallIntegerWrap(expr, toType, module);
          }
        }

      // i32 to i64
      } else if (toType.is(TypeFlags.LONG)) {
        expr = module.createUnary(toType.is(TypeFlags.SIGNED) ? UnaryOp.ExtendI32 : UnaryOp.ExtendU32, expr);

      // i32 or smaller to even smaller or same size int with change of sign
      } else if (
        toType.is(TypeFlags.SMALL) &&
        (
          fromType.size > toType.size ||
          (
            fromType.size == toType.size &&
            fromType.is(TypeFlags.SIGNED) != toType.is(TypeFlags.SIGNED)
          )
        )
      ) {
        expr = makeSmallIntegerWrap(expr, toType, module);
      }

      // otherwise (smaller) i32/u32 to (same size) i32/u32
    }

    this.currentType = toType;
    return expr;
  }

  compileAssertionExpression(expression: AssertionExpression, contextualType: Type): ExpressionRef {
    var toType = this.program.resolveType( // reports
      expression.toType,
      this.currentFunction.contextualTypeArguments
    );
    if (!toType) return this.module.createUnreachable();
    return this.compileExpression(expression.expression, toType, ConversionKind.EXPLICIT);
  }

  compileBinaryExpression(
    expression: BinaryExpression,
    contextualType: Type,
    wrapSmallIntegers: bool = true
  ): ExpressionRef {
    var module = this.module;
    var left = expression.left;
    var right = expression.right;

    var leftExpr: ExpressionRef;
    var leftType: Type;
    var rightExpr: ExpressionRef;
    var rightType: Type;
    var commonType: Type | null;

    var condExpr: ExpressionRef;
    var expr: ExpressionRef;
    var compound = false;
    var possiblyOverflows = false;
    var tempLocal: Local | null = null;

    switch (expression.operator) {
      case Token.LESSTHAN: {
        leftExpr = this.compileExpressionRetainType(left, contextualType);
        leftType = this.currentType;
        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, true)) {
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
        } else {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, "<", leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.createUnreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            expr = module.createBinary(BinaryOp.LtI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64: {
            expr = module.createBinary(BinaryOp.LtI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.LtI64
                : BinaryOp.LtI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.LtU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // TODO: check operator overload
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.LtU64
                : BinaryOp.LtU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.LtU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.LtF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.LtF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.GREATERTHAN: {
        leftExpr = this.compileExpressionRetainType(left, contextualType);
        leftType = this.currentType;
        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, true)) {
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
        } else {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, ">", leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.createUnreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            expr = module.createBinary(BinaryOp.GtI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.GtI64
                : BinaryOp.GtI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.createBinary(BinaryOp.GtI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.GtU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // TODO: check operator overload
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.GtU64
                : BinaryOp.GtU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.GtU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.GtF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.GtF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.LESSTHAN_EQUALS: {
        leftExpr = this.compileExpressionRetainType(left, contextualType);
        leftType = this.currentType;
        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, true)) {
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
        } else {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, "<=", leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.createUnreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            expr = module.createBinary(BinaryOp.LeI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.LeI64
                : BinaryOp.LeI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.createBinary(BinaryOp.LeI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.LeU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // TODO: check operator overload
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.LeU64
                : BinaryOp.LeU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.LeU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.LeF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.LeF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.GREATERTHAN_EQUALS: {
        leftExpr = this.compileExpressionRetainType(left, contextualType);
        leftType = this.currentType;
        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, true)) {
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
        } else {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, ">=", leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.createUnreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            expr = module.createBinary(BinaryOp.GeI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.GeI64
                : BinaryOp.GeI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.createBinary(BinaryOp.GeI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.GeU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // TODO: check operator overload
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.GeU64
                : BinaryOp.GeU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.GeU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.GeF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.GeF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        this.currentType = Type.bool;
        break;
      }

      case Token.EQUALS_EQUALS_EQUALS:
        // TODO?
      case Token.EQUALS_EQUALS: {

        // NOTE that this favors correctness, in terms of emitting a binary expression, over
        // checking for a possible use of unary EQZ. while the most classic of all optimizations,
        // that's not what the source told us to do. for reference, `!left` emits unary EQZ.

        leftExpr = this.compileExpressionRetainType(left, contextualType);
        leftType = this.currentType;
        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, false)) {
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
        } else {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, operatorTokenToString(expression.operator), leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.createUnreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.EqI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classInstance = assert(this.currentType.classReference);
              let operatorName = classInstance.prototype.fnEquals;
              if (operatorName != null) {
                expr = this.compileOperatorOverload(classInstance, operatorName, leftExpr, rightExpr);
                assert(this.currentType == Type.bool);
                break;
              }
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.EqI64
                : BinaryOp.EqI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.EqI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.EqF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.EqF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.EXCLAMATION_EQUALS_EQUALS:
        // TODO?
      case Token.EXCLAMATION_EQUALS: {
        leftExpr = this.compileExpressionRetainType(left, contextualType);
        leftType = this.currentType;
        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, false)) {
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
        } else {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, operatorTokenToString(expression.operator), leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.createUnreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.NeI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: // TODO: check operator overload
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.NeI64
                : BinaryOp.NeI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.NeI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.NeF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.NeF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.EQUALS: {
        return this.compileAssignment(left, right, contextualType);
      }
      case Token.PLUS_EQUALS: compound = true;
      case Token.PLUS: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          false // retains low bits of small integers
        );
        if (compound) {
          rightExpr = this.compileExpression(
            right,
            this.currentType,
            ConversionKind.IMPLICIT,
            false // ^
          );
        } else {
          leftType = this.currentType;
          rightExpr = this.compileExpressionRetainType(
            right,
            leftType,
            false // ^
          );
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
            rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
          } else {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "+", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.createUnreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true;
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.AddI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classInstance = assert(this.currentType.classReference);
              let operatorName = classInstance.prototype.fnConcat;
              if (operatorName != null) {
                expr = this.compileOperatorOverload(classInstance, operatorName, leftExpr, rightExpr);
                break;
              }
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.AddI64
                : BinaryOp.AddI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.AddI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.AddF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.AddF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.MINUS_EQUALS: compound = true;
      case Token.MINUS: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          false // retains low bits of small integers
        );
        if (compound) {
          rightExpr = this.compileExpression(
            right,
            this.currentType,
            ConversionKind.IMPLICIT,
            false // ^
          );
        } else {
          leftType = this.currentType;
          rightExpr = this.compileExpressionRetainType(
            right,
            leftType,
            false // ^
          );
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
            rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
          } else {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "-", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.createUnreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true;
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.SubI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classInstance = assert(this.currentType.classReference);
              let operatorName = classInstance.prototype.fnSubtract;
              if (operatorName != null) {
                expr = this.compileOperatorOverload(classInstance, operatorName, leftExpr, rightExpr);
                break;
              }
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.SubI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.SubF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.SubF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.ASTERISK_EQUALS: compound = true;
      case Token.ASTERISK: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          false // retains low bits of small integers
        );
        if (compound) {
          rightExpr = this.compileExpression(
            right,
            this.currentType,
            ConversionKind.IMPLICIT,
            false // ^
          );
        } else {
          leftType = this.currentType;
          rightExpr = this.compileExpressionRetainType(
            right,
            leftType,
            false // ^
          );
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
            rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
          } else {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "*", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.createUnreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true;
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.MulI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classInstance = assert(this.currentType.classReference);
              let operatorName = classInstance.prototype.fnMultiply;
              if (operatorName != null) {
                expr = this.compileOperatorOverload(classInstance, operatorName, leftExpr, rightExpr);
                break;
              }
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.MulI64
                : BinaryOp.MulI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.MulI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.MulF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.MulF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.SLASH_EQUALS: compound = true;
      case Token.SLASH: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          true // TODO: when can division remain unwrapped? does it overflow?
        );
        if (compound) {
          rightExpr = this.compileExpression(
            right,
            this.currentType,
            ConversionKind.IMPLICIT,
            false // ^
          );
        } else {
          leftType = this.currentType;
          rightExpr = this.compileExpressionRetainType(
            right,
            leftType,
            false // ^
          );
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
            rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
          } else {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "/", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.createUnreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16: possiblyOverflows = true;
          case TypeKind.I32: {
            expr = module.createBinary(BinaryOp.DivI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.DivI64
                : BinaryOp.DivI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.createBinary(BinaryOp.DivI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true;
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.DivU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classInstance = assert(this.currentType.classReference);
              let operatorName = classInstance.prototype.fnDivide;
              if (operatorName != null) {
                expr = this.compileOperatorOverload(classInstance, operatorName, leftExpr, rightExpr);
                break;
              }
            }
            // fall-through
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.DivU64
                : BinaryOp.DivU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.DivU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.DivF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.DivF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.PERCENT_EQUALS: compound = true;
      case Token.PERCENT: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          true // TODO: when can remainder remain unwrapped? does it overflow?
        );
        if (compound) {
          rightExpr = this.compileExpression(
            right,
            this.currentType,
            ConversionKind.IMPLICIT,
            false // ^
          );
        } else {
          leftType = this.currentType;
          rightExpr = this.compileExpressionRetainType(
            right,
            leftType,
            false // ^
          );
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
            rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
          } else {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "%", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.createUnreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            expr = module.createBinary(BinaryOp.RemI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.RemI64
                : BinaryOp.RemI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.createBinary(BinaryOp.RemI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.RemU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classInstance = assert(this.currentType.classReference);
              let operatorName = classInstance.prototype.fnFractional;
              if (operatorName != null) {
                expr = this.compileOperatorOverload(classInstance, operatorName, leftExpr, rightExpr);
                break;
              }
            }
            // fall-through
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.RemU64
                : BinaryOp.RemU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.RemU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            let fmodPrototype = this.program.elementsLookup.get("fmodf");
            if (!fmodPrototype) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "fmod"
              );
              expr = module.createUnreachable();
              break;
            }
            assert(fmodPrototype.kind == ElementKind.FUNCTION_PROTOTYPE);
            let fmodInstance = (<FunctionPrototype>fmodPrototype).resolve();
            if (!(fmodInstance && this.compileFunction(fmodInstance))) {
              expr = module.createUnreachable();
            } else {
              expr = this.makeCallDirect(fmodInstance, [ leftExpr, rightExpr ]);
            }
            break;
          }
          case TypeKind.F64: {
            let fmodPrototype = this.program.elementsLookup.get("fmod");
            if (!fmodPrototype) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "fmod"
              );
              expr = module.createUnreachable();
              break;
            }
            assert(fmodPrototype.kind == ElementKind.FUNCTION_PROTOTYPE);
            let fmodInstance = (<FunctionPrototype>fmodPrototype).resolve();
            if (!(fmodInstance && this.compileFunction(fmodInstance))) {
              expr = module.createUnreachable();
            } else {
              expr = this.makeCallDirect(fmodInstance, [ leftExpr, rightExpr ]);
            }
            break;
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.LESSTHAN_LESSTHAN_EQUALS: compound = true;
      case Token.LESSTHAN_LESSTHAN: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          false // retains low bits of small integers
        );
        rightExpr = this.compileExpression(
          right,
          this.currentType,
          ConversionKind.IMPLICIT,
          false // ^
        );
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true;
          default: {
            expr = module.createBinary(BinaryOp.ShlI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.ShlI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: // TODO: check operator overload
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.ShlI64
                : BinaryOp.ShlI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.F32:
          case TypeKind.F64: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, operatorTokenToString(expression.operator), this.currentType.toString()
            );
            return module.createUnreachable();
          }
          case TypeKind.VOID: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.GREATERTHAN_GREATERTHAN_EQUALS: compound = true;
      case Token.GREATERTHAN_GREATERTHAN: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          true // must wrap small integers
        );
        rightExpr = this.compileExpression(
          right,
          this.currentType,
          ConversionKind.IMPLICIT,
          true // ^
        );
        switch (this.currentType.kind) {
          default: {
            // assumes signed shr on signed small integers does not overflow
            expr = module.createBinary(BinaryOp.ShrI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64: {
            expr = module.createBinary(BinaryOp.ShrI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.ShrI64
                : BinaryOp.ShrI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: // assumes unsigned shr on unsigned small integers does not overflow
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.ShrU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.ShrU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // TODO: check operator overload
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.ShrU64
                : BinaryOp.ShrU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.F32:
          case TypeKind.F64: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, operatorTokenToString(expression.operator), this.currentType.toString()
            );
            return module.createUnreachable();
          }
          case TypeKind.VOID: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS: compound = true;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          true // modifies low bits of small integers if unsigned
        );
        rightExpr = this.compileExpression(
          right,
          this.currentType,
          ConversionKind.IMPLICIT,
          true // ^
        );
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16: possiblyOverflows = true;
          default: {
            // assumes that unsigned shr on unsigned small integers does not overflow
            expr = module.createBinary(BinaryOp.ShrU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.ShrU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: // TODO: check operator overload
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.ShrU64
                : BinaryOp.ShrU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.VOID: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.AMPERSAND_EQUALS: compound = true;
      case Token.AMPERSAND: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          false // retains low bits of small integers
        );
        if (compound) {
          rightExpr = this.compileExpression(
            right,
            this.currentType,
            ConversionKind.IMPLICIT,
            false // ^
          );
        } else {
          leftType = this.currentType;
          rightExpr = this.compileExpressionRetainType(
            right,
            leftType,
            false // ^
          );
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
            rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
          } else {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "&", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.createUnreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true; // if left or right already did
          default: {
            expr = module.createBinary(BinaryOp.AndI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.AndI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classInstance = assert(this.currentType.classReference);
              let operatorName = classInstance.prototype.fnBitwiseAnd;
              if (operatorName != null) {
                expr = this.compileOperatorOverload(classInstance, operatorName, leftExpr, rightExpr);
                break;
              }
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.AndI64
                : BinaryOp.AndI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.VOID: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.BAR_EQUALS: compound = true;
      case Token.BAR: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          false // retains low bits of small integers
        );
        if (compound) {
          rightExpr = this.compileExpression(
            right,
            this.currentType,
            ConversionKind.IMPLICIT,
            false // ^
          );
        } else {
          leftType = this.currentType;
          rightExpr = this.compileExpressionRetainType(
            right,
            leftType,
            false // ^
          );
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
            rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
          } else {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "|", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.createUnreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true; // if left or right already did
          default: {
            expr = module.createBinary(BinaryOp.OrI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.OrI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classInstance = assert(this.currentType.classReference);
              let operatorName = classInstance.prototype.fnBitwiseOr;
              if (operatorName != null) {
                expr = this.compileOperatorOverload(classInstance, operatorName, leftExpr, rightExpr);
                break;
              }
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.OrI64
                : BinaryOp.OrI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.VOID: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }
      case Token.CARET_EQUALS: compound = true;
      case Token.CARET: {
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType,
          false // retains low bits of small integers
        );
        if (compound) {
          rightExpr = this.compileExpression(
            right,
            this.currentType,
            ConversionKind.IMPLICIT,
            false // ^
          );
        } else {
          leftType = this.currentType;
          rightExpr = this.compileExpressionRetainType(
            right,
            leftType,
            false // ^
          );
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr, leftType, commonType, ConversionKind.IMPLICIT, left);
            rightExpr = this.convertExpression(rightExpr, rightType, commonType, ConversionKind.IMPLICIT, right);
          } else {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "^", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.createUnreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true; // if left or right already did
          default: {
            expr = module.createBinary(BinaryOp.XorI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.XorI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: { // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classInstance = assert(this.currentType.classReference);
              let operatorName = classInstance.prototype.fnBitwiseXor;
              if (operatorName != null) {
                expr = this.compileOperatorOverload(classInstance, operatorName, leftExpr, rightExpr);
                break;
              }
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.XorI64
                : BinaryOp.XorI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.VOID: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            expr = module.createUnreachable();
            break;
          }
        }
        break;
      }

      // logical (no overloading)

      case Token.AMPERSAND_AMPERSAND: { // left && right
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType
        );
        rightExpr = this.compileExpression(
          right,
          this.currentType,
          ConversionKind.IMPLICIT,
          false
        );

        // clone left if free of side effects
        expr = module.cloneExpression(leftExpr, true, 0);

        // if not possible, tee left to a temp. local
        if (!expr) {
          tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
          leftExpr = module.createTeeLocal(tempLocal.index, leftExpr);
        }

        possiblyOverflows = this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER);
        condExpr = makeIsTrueish(leftExpr, this.currentType, module);

        // simplify when cloning left without side effects was successful
        if (expr) {
          expr = module.createIf(
            condExpr,  // left
            rightExpr, //   ? right
            expr       //   : cloned left
          );
        }

        // otherwise make use of the temp. local
        else {
          expr = module.createIf(
            condExpr,
            rightExpr,
            module.createGetLocal(
              assert(tempLocal).index, // to be sure
              this.currentType.toNativeType()
            )
          );
        }
        break;
      }
      case Token.BAR_BAR: { // left || right
        leftExpr = this.compileExpressionRetainType(
          left,
          contextualType
        );
        rightExpr = this.compileExpression(
          right,
          this.currentType,
          ConversionKind.IMPLICIT,
          false
        );

        // clone left if free of side effects
        expr = this.module.cloneExpression(leftExpr, true, 0);

        // if not possible, tee left to a temp. local
        if (!expr) {
          tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
          leftExpr = module.createTeeLocal(tempLocal.index, leftExpr);
        }

        possiblyOverflows = this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER); // if right did
        condExpr = makeIsTrueish(leftExpr, this.currentType, module);

        // simplify when cloning left without side effects was successful
        if (expr) {
          expr = this.module.createIf(
            condExpr, // left
            expr,      //   ? cloned left
            rightExpr      //   : right
          );
        }

        // otherwise make use of the temp. local
        else {
          expr = module.createIf(
            condExpr,
            module.createGetLocal(
              assert(tempLocal).index, // to be sure
              this.currentType.toNativeType()
            ),
            rightExpr
          );
        }
        break;
      }
      default: {
        assert(false);
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        expr = this.module.createUnreachable();
        break;
      }
    }
    if (possiblyOverflows && wrapSmallIntegers) {
      assert(this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER)); // must be a small int
      expr = makeSmallIntegerWrap(expr, this.currentType, module);
    }
    return compound
      ? this.compileAssignmentWithValue(left, expr, contextualType != Type.void)
      : expr;
  }

  compileOperatorOverload(
    classInstance: Class,
    operatorName: string,
    leftExpr: ExpressionRef,
    rightExpr: ExpressionRef
  ): ExpressionRef {
    var classPrototype = classInstance.prototype;
    var operatorPrototype = assert(assert(classPrototype.members).get(operatorName));
    assert(operatorPrototype.kind == ElementKind.FUNCTION_PROTOTYPE);
    var operatorInstance = (<FunctionPrototype>operatorPrototype).resolve();
    if (!operatorInstance) return this.module.createUnreachable();
    return this.makeCallDirect(operatorInstance, [ leftExpr, rightExpr ]);
  }

  compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): ExpressionRef {
    var currentFunction = this.currentFunction;
    var resolved = this.program.resolveExpression(expression, currentFunction); // reports
    if (!resolved) return this.module.createUnreachable();

    // to compile just the value, we need to know the target's type
    var element = resolved.element;
    var elementType: Type;
    switch (element.kind) {
      case ElementKind.GLOBAL: {
        if (!this.compileGlobal(<Global>element)) { // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        }
        assert((<Global>element).type != Type.void, "concrete type expected");
        // fall-through
      }
      case ElementKind.LOCAL:
      case ElementKind.FIELD: {
        elementType = (<VariableLikeElement>element).type;
        break;
      }
      case ElementKind.PROPERTY: {
        let prototype = (<Property>element).setterPrototype;
        if (prototype) {
          let instance = prototype.resolve(); // reports
          if (!instance) return this.module.createUnreachable();
          assert(instance.signature.parameterTypes.length == 1);
          elementType = instance.signature.parameterTypes[0];
          break;
        }
        this.error(
          DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
          expression.range, (<Property>element).internalName
        );
        return this.module.createUnreachable();
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        if (expression.kind == NodeKind.ELEMENTACCESS) { // @operator("[]")
          if (resolved.target && resolved.target.kind == ElementKind.CLASS) {
            if (element.simpleName == (<Class>resolved.target).prototype.fnIndexedGet) {
              let resolvedIndexedSet = (<FunctionPrototype>element).resolve(null); // reports
              if (resolvedIndexedSet) {
                elementType = resolvedIndexedSet.signature.returnType;
                break;
              }
            } else {
              this.error(
                DiagnosticCode.Index_signature_is_missing_in_type_0,
                expression.range, (<Class>resolved.target).toString()
              );
              return this.module.createUnreachable();
            }
          }
        }
        // fall-through
      }
      default: {
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        return this.module.createUnreachable();
      }
    }

    // compile the value and do the assignment
    var valueExpr = this.compileExpression(valueExpression, elementType);
    return this.compileAssignmentWithValue(
      expression,
      valueExpr,
      contextualType != Type.void
    );
  }

  compileAssignmentWithValue(
    expression: Expression,
    valueWithCorrectType: ExpressionRef,
    tee: bool = false
  ): ExpressionRef {
    var module = this.module;
    var resolved = this.program.resolveExpression(expression, this.currentFunction); // reports
    if (!resolved) return module.createUnreachable();

    var element = resolved.element;
    switch (element.kind) {
      case ElementKind.LOCAL: {
        this.currentType = tee ? (<Local>element).type : Type.void;
        if ((<Local>element).is(CommonFlags.CONST)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, (<Local>element).internalName
          );
          return module.createUnreachable();
        }
        return tee
          ? module.createTeeLocal((<Local>element).index, valueWithCorrectType)
          : module.createSetLocal((<Local>element).index, valueWithCorrectType);
      }
      case ElementKind.GLOBAL: {
        if (!this.compileGlobal(<Global>element)) return module.createUnreachable();
        let type = (<Global>element).type;
        assert(type != Type.void);
        this.currentType = tee ? type : Type.void;
        if ((<Local>element).is(CommonFlags.CONST)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range,
            (<Local>element).internalName
          );
          return module.createUnreachable();
        }
        if (tee) {
          let nativeType = type.toNativeType();
          let internalName = (<Global>element).internalName;
          return module.createBlock(null, [ // emulated teeGlobal
            module.createSetGlobal(internalName, valueWithCorrectType),
            module.createGetGlobal(internalName, nativeType)
          ], nativeType);
        } else {
          return module.createSetGlobal((<Global>element).internalName, valueWithCorrectType);
        }
      }
      case ElementKind.FIELD: {
        if ((<Field>element).is(CommonFlags.READONLY)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, (<Field>element).internalName
          );
          return module.createUnreachable();
        }
        assert(resolved.isInstanceTarget);
        let targetExpr = this.compileExpression(
          <Expression>resolved.targetExpression,
          (<Class>resolved.target).type
        );
        let type = (<Field>element).type;
        this.currentType = tee ? type : Type.void;
        let nativeType = type.toNativeType();
        if (tee) {
          let tempLocal = this.currentFunction.getAndFreeTempLocal(type);
          let tempLocalIndex = tempLocal.index;
          // TODO: simplify if valueWithCorrectType has no side effects
          return module.createBlock(null, [
            module.createSetLocal(tempLocalIndex, valueWithCorrectType),
            module.createStore(
              type.size >> 3,
              targetExpr,
              module.createGetLocal(tempLocalIndex, nativeType),
              nativeType,
              (<Field>element).memoryOffset
            ),
            module.createGetLocal(tempLocalIndex, nativeType)
          ], nativeType);
        } else {
          return module.createStore(
            type.size >> 3,
            targetExpr,
            valueWithCorrectType,
            nativeType,
            (<Field>element).memoryOffset
          );
        }
      }
      case ElementKind.PROPERTY: {
        let setterPrototype = (<Property>element).setterPrototype;
        if (setterPrototype) {
          let setterInstance = setterPrototype.resolve(); // reports
          if (!setterInstance) return module.createUnreachable();

          // call just the setter if the return value isn't of interest
          if (!tee) {
            if (setterInstance.is(CommonFlags.INSTANCE)) {
              assert(resolved.isInstanceTarget);
              let thisArg = this.compileExpression(
                <Expression>resolved.targetExpression,
                (<Class>resolved.target).type
              );
              return this.makeCallDirect(setterInstance, [ thisArg, valueWithCorrectType ]);
            } else {
              return this.makeCallDirect(setterInstance, [ valueWithCorrectType ]);
            }
          }

          // otherwise call the setter first, then the getter
          let getterPrototype = (<Property>element).getterPrototype;
          assert(getterPrototype != null); // must have one if there is a setter
          let getterInstance = (<FunctionPrototype>getterPrototype).resolve(); // reports
          if (!getterInstance) return module.createUnreachable();
          let returnType = getterInstance.signature.returnType;
          let nativeReturnType = returnType.toNativeType();
          if (setterInstance.is(CommonFlags.INSTANCE)) {
            assert(resolved.isInstanceTarget);
            let thisArg = this.compileExpression(
              <Expression>resolved.targetExpression,
              (<Class>resolved.target).type
            );
            let tempLocal = this.currentFunction.getAndFreeTempLocal(returnType);
            let tempLocalIndex = tempLocal.index;
            return module.createBlock(null, [
              this.makeCallDirect(setterInstance, [ // set and remember the target
                module.createTeeLocal(tempLocalIndex, thisArg),
                valueWithCorrectType
              ]),
              this.makeCallDirect(getterInstance, [ // get from remembered target
                module.createGetLocal(tempLocalIndex, nativeReturnType)
              ])
            ], nativeReturnType);
          } else {
            // note that this must be performed here because `resolved` is shared
            return module.createBlock(null, [
              this.makeCallDirect(setterInstance, [ valueWithCorrectType ]),
              this.makeCallDirect(getterInstance)
            ], nativeReturnType);
          }
        } else {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, (<Property>element).internalName
          );
        }
        return module.createUnreachable();
      }
      case ElementKind.FUNCTION_PROTOTYPE: { // @operator("[]") ?
        if (expression.kind == NodeKind.ELEMENTACCESS) {
          assert(resolved.isInstanceTarget);
          let getterInstance = (<FunctionPrototype>element).resolve(); // reports
          if (!getterInstance) return module.createUnreachable();
          // obtain @operator("[]=")
          let setElementName = (<Class>resolved.target).prototype.fnIndexedSet;
          let setElement: Element | null;
          if (
            setElementName != null &&
            (<Class>resolved.target).members &&
            (setElement = (<Map<string,Element>>(<Class>resolved.target).members).get(setElementName)) &&
            setElement.kind == ElementKind.FUNCTION_PROTOTYPE
          ) {
            let setterInstance = (<FunctionPrototype>setElement).resolve(); // reports
            if (!setterInstance) return module.createUnreachable();
            let targetType = (<Class>resolved.target).type;
            let targetExpr = this.compileExpression(
              <Expression>resolved.targetExpression,
              targetType
            );
            let elementExpr = this.compileExpression(
              (<ElementAccessExpression>expression).elementExpression,
              Type.i32
            );
            if (tee) {
              let tempLocalTarget = this.currentFunction.getTempLocal(targetType);
              let tempLocalElement = this.currentFunction.getAndFreeTempLocal(this.currentType);
              let returnType = getterInstance.signature.returnType;
              this.currentFunction.freeTempLocal(tempLocalTarget);
              return module.createBlock(null, [
                this.makeCallDirect(setterInstance, [
                  module.createTeeLocal(tempLocalTarget.index, targetExpr),
                  module.createTeeLocal(tempLocalElement.index, elementExpr),
                  valueWithCorrectType
                ]),
                this.makeCallDirect(getterInstance, [
                  module.createGetLocal(tempLocalTarget.index, tempLocalTarget.type.toNativeType()),
                  module.createGetLocal(tempLocalElement.index, tempLocalElement.type.toNativeType())
                ])
              ], returnType.toNativeType());
            } else {
              return this.makeCallDirect(setterInstance, [
                targetExpr,
                elementExpr,
                valueWithCorrectType
              ]);
            }
          } else {
            this.error(
              DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
              expression.range, (<Class>resolved.target).internalName
            );
            return module.createUnreachable();
          }
        }
        // fall-through
      }
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      expression.range
    );
    return module.createUnreachable();
  }

  compileCallExpression(expression: CallExpression, contextualType: Type): ExpressionRef {
    var module = this.module;
    var currentFunction = this.currentFunction;
    var resolved = this.program.resolveExpression(expression.expression, currentFunction); // reports
    if (!resolved) return module.createUnreachable();

    var element = resolved.element;
    var signature: Signature | null;
    var indexArg: ExpressionRef;
    switch (element.kind) {

      // direct call: concrete function
      case ElementKind.FUNCTION_PROTOTYPE: {
        let prototype = <FunctionPrototype>element;

        // builtins are compiled on the fly
        if (prototype.is(CommonFlags.AMBIENT | CommonFlags.BUILTIN)) {
          let expr = compileBuiltinCall( // reports
            this,
            prototype,
            prototype.resolveBuiltinTypeArguments(
              expression.typeArguments,
              currentFunction.contextualTypeArguments
            ),
            expression.arguments,
            contextualType,
            expression
          );
          if (!expr) {
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            return module.createUnreachable();
          }
          return expr;

        // otherwise compile to a call
        } else {
          let instance = prototype.resolveUsingTypeArguments( // reports
            expression.typeArguments,
            currentFunction.contextualTypeArguments,
            expression
          );
          if (!instance) return module.createUnreachable();
          let thisArg: ExpressionRef = 0;
          if (instance.is(CommonFlags.INSTANCE)) {
            assert(resolved.isInstanceTarget);
            thisArg = this.compileExpression(
              <Expression>resolved.targetExpression,
              (<Class>resolved.target).type
            );
            if (!thisArg) return module.createUnreachable();
          } else {
            assert(!resolved.isInstanceTarget);
          }
          return this.compileCallDirect(instance, expression.arguments, expression, thisArg);
        }
      }

      // indirect call: index argument with signature
      case ElementKind.LOCAL: {
        if (signature = (<Local>element).type.signatureReference) {
          indexArg = module.createGetLocal((<Local>element).index, NativeType.I32);
          break;
        } else {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, (<Local>element).type.toString()
          );
          return module.createUnreachable();
        }
      }
      case ElementKind.GLOBAL: {
        if (signature = (<Global>element).type.signatureReference) {
          indexArg = module.createGetGlobal((<Global>element).internalName, (<Global>element).type.toNativeType());
          break;
        } else {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, (<Global>element).type.toString()
          );
          return module.createUnreachable();
        }
      }
      case ElementKind.FIELD: {
        let type = (<Field>element).type;
        if (signature = type.signatureReference) {
          let targetExpr = this.compileExpression(assert(resolved.targetExpression), type);
          indexArg = module.createLoad(
            4,
            false,
            targetExpr,
            NativeType.I32,
            (<Field>element).memoryOffset
          );
          break;
        } else {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, (<Field>element).type.toString()
          );
          return module.createUnreachable();
        }
      }
      case ElementKind.FUNCTION_TARGET: {
        signature = (<FunctionTarget>element).signature;
        indexArg = this.compileExpression(expression.expression, (<FunctionTarget>element).type);
        break;
      }
      case ElementKind.PROPERTY: // TODO

      // not supported
      default: {
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        return module.createUnreachable();
      }
    }
    return this.compileCallIndirect(
      signature,
      indexArg,
      expression.arguments,
      expression
    );
  }

  /**
   * Checks that a call with the given number as arguments can be performed according to the
   * specified signature.
   */
  checkCallSignature(
    signature: Signature,
    numArguments: i32,
    hasThis: bool,
    reportNode: Node
  ): bool {

    // cannot call an instance method without a `this` argument (TODO: `.call`?)
    var thisType = signature.thisType;
    if (hasThis != (thisType != null)) {
      this.error(
        DiagnosticCode.Operation_not_supported, // TODO: better message?
        reportNode.range
      );
      return false;
    }

    // not yet implemented (TODO: maybe some sort of an unmanaged/lightweight array?)
    var hasRest = signature.hasRest;
    if (hasRest) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        reportNode.range
      );
      return false;
    }

    var minimum = signature.requiredParameters;
    var maximum = signature.parameterTypes.length;

    // must at least be called with required arguments
    if (numArguments < minimum) {
      this.error(
        minimum < maximum
          ? DiagnosticCode.Expected_at_least_0_arguments_but_got_1
          : DiagnosticCode.Expected_0_arguments_but_got_1,
        reportNode.range, minimum.toString(), numArguments.toString()
      );
      return false;
    }

    // must not be called with more than the maximum arguments
    if (numArguments > maximum && !hasRest) {
      this.error(
        DiagnosticCode.Expected_0_arguments_but_got_1,
        reportNode.range, maximum.toString(), numArguments.toString()
      );
      return false;
    }

    return true;
  }

  /** Compiles a direct call to a concrete function. */
  compileCallDirect(
    instance: Function,
    argumentExpressions: Expression[],
    reportNode: Node,
    thisArg: ExpressionRef = 0
  ): ExpressionRef {
    var numArguments = argumentExpressions.length;
    var signature = instance.signature;

    if (!this.checkCallSignature( // reports
      signature,
      numArguments,
      thisArg != 0,
      reportNode
    )) {
      return this.module.createUnreachable();
    }

    var numArgumentsInclThis = thisArg ? numArguments + 1 : numArguments;
    var operands = new Array<ExpressionRef>(numArgumentsInclThis);
    var index = 0;
    if (thisArg) {
      operands[0] = thisArg;
      index = 1;
    }
    var parameterTypes = signature.parameterTypes;
    for (let i = 0; i < numArguments; ++i, ++index) {
      operands[index] = this.compileExpression(
        argumentExpressions[i],
        parameterTypes[i]
      );
    }
    assert(index == numArgumentsInclThis);
    return this.makeCallDirect(instance, operands);
  }

  /** Gets the trampoline for the specified function. */
  ensureTrampoline(original: Function): Function {
    // A trampoline is a function that takes a fixed amount of operands with some of them possibly
    // being zeroed. It takes one additional argument denoting the number of actual operands
    // provided to the call, and takes appropriate steps to initialize zeroed operands to their
    // default values using the optional parameter initializers of the original function. Doing so
    // allows calls to functions with optional parameters to circumvent the trampoline when all
    // parameters are provided as a fast route, respectively setting up omitted operands in a proper
    // context otherwise.
    var trampoline = original.trampoline;
    if (trampoline) return trampoline;

    var originalSignature = original.signature;
    var originalName = original.internalName;
    var originalParameterTypes = originalSignature.parameterTypes;
    var originalParameterDeclarations = original.prototype.declaration.signature.parameterTypes;
    var commonReturnType = originalSignature.returnType;
    var commonThisType = originalSignature.thisType;
    var isInstance = original.is(CommonFlags.INSTANCE);

    // arguments excl. `this`, operands incl. `this`
    var minArguments = originalSignature.requiredParameters;
    var minOperands = minArguments;
    var maxArguments = originalParameterTypes.length;
    var maxOperands = maxArguments;
    if (isInstance) {
      ++minOperands;
      ++maxOperands;
    }
    var numOptional = assert(maxOperands - minOperands);

    var forwardedOperands = new Array<ExpressionRef>(minOperands);
    var operandIndex = 0;

    // forward `this` if applicable
    var module = this.module;
    if (isInstance) {
      forwardedOperands[0] = module.createGetLocal(0, this.options.nativeSizeType);
      operandIndex = 1;
    }

    // forward required arguments
    for (let i = 0; i < minArguments; ++i, ++operandIndex) {
      forwardedOperands[operandIndex] = module.createGetLocal(operandIndex, originalParameterTypes[i].toNativeType());
    }
    assert(operandIndex == minOperands);

    // create the trampoline element
    var trampolineSignature = new Signature(originalParameterTypes, commonReturnType, commonThisType);
    var trampolineName = originalName + "|trampoline";
    trampolineSignature.requiredParameters = maxArguments;
    trampoline = new Function(original.prototype, trampolineName, trampolineSignature, original.memberOf);
    trampoline.set(original.flags | CommonFlags.TRAMPOLINE | CommonFlags.COMPILED);
    trampoline.contextualTypeArguments = original.contextualTypeArguments;
    original.trampoline = trampoline;

    // compile initializers of omitted arguments in scope of the trampoline function
    // this is necessary because initializers might need additional locals and a proper this context
    var previousFunction = this.currentFunction;
    this.currentFunction = trampoline;

    // create a br_table switching over the number of optional parameters provided
    var numNames = numOptional + 1; // incl. outer block
    var names = new Array<string>(numNames);
    var ofN = "of" + numOptional.toString(10);
    for (let i = 0; i < numNames; ++i) {
      let label = i.toString(10) + ofN;
      names[i] = label;
    }
    var body = module.createBlock(names[0], [
      module.createBlock("oob", [
        module.createSwitch(names, "oob",
          // condition is number of provided optional arguments, so subtract required arguments
          minArguments
            ? module.createBinary(
                BinaryOp.SubI32,
                module.createGetGlobal("argumentCount", NativeType.I32),
                module.createI32(minArguments)
              )
            : module.createGetGlobal("argumentCount", NativeType.I32)
        )
      ]),
      module.createUnreachable()
    ]);
    for (let i = 0; i < numOptional; ++i, ++operandIndex) {
      let type = originalParameterTypes[minArguments + i];
      body = module.createBlock(names[i + 1], [
        body,
        module.createSetLocal(operandIndex,
          this.compileExpression(
            assert(originalParameterDeclarations[minArguments + i].initializer),
            type
          )
        )
      ]);
      forwardedOperands[operandIndex] = module.createGetLocal(operandIndex, type.toNativeType());
    }
    this.currentFunction = previousFunction;
    assert(operandIndex == maxOperands);

    var typeRef = this.ensureFunctionType(trampolineSignature);
    var funcRef = module.addFunction(trampolineName, typeRef, typesToNativeTypes(trampoline.additionalLocals),
      module.createBlock(null, [
        body,
        module.createCall(
          originalName,
          forwardedOperands,
          commonReturnType.toNativeType()
        )
      ], commonReturnType.toNativeType())
    );
    trampoline.finalize(module, funcRef);
    return trampoline;
  }

  /** Creates a direct call to the specified function. */
  makeCallDirect(
    instance: Function,
    operands: ExpressionRef[] | null = null
  ): ExpressionRef {
    var numOperands = operands ? operands.length : 0;
    var numArguments = numOperands;
    var minArguments = instance.signature.requiredParameters;
    var minOperands = minArguments;
    var maxArguments = instance.signature.parameterTypes.length;
    var maxOperands = maxArguments;
    if (instance.is(CommonFlags.INSTANCE)) {
      ++minOperands;
      ++maxOperands;
      --numArguments;
    }
    assert(numOperands >= minOperands);

    var module = this.module;
    if (!this.compileFunction(instance)) return module.createUnreachable();
    var returnType = instance.signature.returnType;
    var isCallImport = instance.is(CommonFlags.MODULE_IMPORT);

    // fill up omitted arguments with zeroes
    if (numOperands < maxOperands) {
      if (!operands) {
        operands = new Array(maxOperands);
        operands.length = 0;
      }
      let parameterTypes = instance.signature.parameterTypes;
      for (let i = numArguments; i < maxArguments; ++i) {
        operands.push(parameterTypes[i].toNativeZero(module));
      }
      if (!isCallImport) { // call the trampoline
        instance = this.ensureTrampoline(instance);
        if (!this.compileFunction(instance)) return module.createUnreachable();
        let nativeReturnType = returnType.toNativeType();
        this.currentType = returnType;
        return module.createBlock(null, [
          this.ensureArgumentCount(numArguments),
          module.createCall(instance.internalName, operands, nativeReturnType)
        ], nativeReturnType);
      }
    }

    // otherwise just call through
    this.currentType = returnType;
    return isCallImport
      ? module.createCallImport(instance.internalName, operands, returnType.toNativeType())
      : module.createCall(instance.internalName, operands, returnType.toNativeType());
  }

  /** Compiles an indirect call using an index argument and a signature. */
  compileCallIndirect(
    signature: Signature,
    indexArg: ExpressionRef,
    argumentExpressions: Expression[],
    reportNode: Node,
    thisArg: ExpressionRef = 0
  ): ExpressionRef {
    var numArguments = argumentExpressions.length;

    if (!this.checkCallSignature( // reports
      signature,
      numArguments,
      thisArg != 0,
      reportNode
    )) {
      return this.module.createUnreachable();
    }

    var numArgumentsInclThis = thisArg ? numArguments + 1 : numArguments;
    var operands = new Array<ExpressionRef>(numArgumentsInclThis);
    var index = 0;
    if (thisArg) {
      operands[0] = thisArg;
      index = 1;
    }
    var parameterTypes = signature.parameterTypes;
    for (let i = 0; i < numArguments; ++i, ++index) {
      operands[index] = this.compileExpression(
        argumentExpressions[i],
        parameterTypes[i]
      );
    }
    assert(index == numArgumentsInclThis);
    return this.makeCallIndirect(signature, indexArg, operands);
  }

  /** Creates an indirect call to the function at `indexArg` in the function table. */
  makeCallIndirect(
    signature: Signature,
    indexArg: ExpressionRef,
    operands: ExpressionRef[] | null = null
  ): ExpressionRef {
    var numOperands = operands ? operands.length : 0;
    var numArguments = numOperands;
    var minArguments = signature.requiredParameters;
    var minOperands = minArguments;
    var maxArguments = signature.parameterTypes.length;
    var maxOperands = maxArguments;
    if (signature.thisType) {
      ++minOperands;
      ++maxOperands;
      --numArguments;
    }
    assert(numOperands >= minOperands);

    this.ensureFunctionType(signature);
    var module = this.module;

    // fill up omitted arguments with zeroes
    if (numOperands < maxOperands) {
      if (!operands) {
        operands = new Array(maxOperands);
        operands.length = 0;
      }
      let parameterTypes = signature.parameterTypes;
      for (let i = numArguments; i < maxArguments; ++i) {
        operands.push(parameterTypes[i].toNativeZero(module));
      }
    }

    var returnType = signature.returnType;
    this.currentType = returnType;
    return module.createBlock(null, [
      this.ensureArgumentCount(numArguments), // might still be calling a trampoline
      module.createCallIndirect(indexArg, operands, signature.toSignatureString())
    ], returnType.toNativeType());
  }

  /** Makes sure that the `argumentCount` helper global is present and returns an expression that sets it. */
  private ensureArgumentCount(argumentCount: i32): ExpressionRef {
    var module = this.module;
    if (!this.argumentCountRef) {
      this.argumentCountRef = module.addGlobal(
        "argumentCount",
        NativeType.I32,
        true,
        module.createI32(0)
      );
    }
    return module.createSetGlobal("argumentCount", module.createI32(argumentCount));
  }

  compileCommaExpression(expression: CommaExpression, contextualType: Type): ExpressionRef {
    var expressions = expression.expressions;
    var numExpressions = expressions.length;
    var exprs = new Array<ExpressionRef>(numExpressions--);
    for (let i = 0; i < numExpressions; ++i) {
      exprs[i] = this.compileExpression(expressions[i], Type.void);    // drop all
    }
    exprs[numExpressions] = this.compileExpression(expressions[numExpressions], contextualType); // except last
    return this.module.createBlock(null, exprs, this.currentType.toNativeType());
  }

  compileElementAccessExpression(expression: ElementAccessExpression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolveElementAccess(expression, this.currentFunction); // reports
    if (!resolved) return this.module.createUnreachable();

    assert( // should be guaranteed by resolveElementAccess
      resolved.element.kind == ElementKind.FUNCTION_PROTOTYPE &&
      resolved.target &&
      resolved.target.kind == ElementKind.CLASS
    );
    var target = <Class>resolved.target;
    var instance = (<FunctionPrototype>resolved.element).resolve( // reports
      null,
      target.contextualTypeArguments
    );
    if (!instance) return this.module.createUnreachable();
    var thisArg = this.compileExpression(expression.expression, target.type);
    return this.compileCallDirect(instance, [
      expression.elementExpression
    ], expression, thisArg);
  }

  compileFunctionExpression(expression: FunctionExpression, contextualType: Type): ExpressionRef {
    var declaration = expression.declaration;
    var name = declaration.name;
    var simpleName = (name.text.length
      ? name.text
      : "anonymous") + "|" + this.functionTable.length.toString(10);
    var currentFunction = this.currentFunction;
    var prototype = new FunctionPrototype(
      this.program,
      simpleName,
      currentFunction.internalName + "~" + simpleName,
      declaration
    );
    var instance = this.compileFunctionUsingTypeArguments(
      prototype,
      [],
      currentFunction.contextualTypeArguments,
      declaration
    );
    if (!instance) return this.module.createUnreachable();
    this.currentType = instance.signature.type; // TODO: get cached type?
    // NOTE that, in order to make this work in every case, the function must be represented by a
    // value, so we add it and rely on the optimizer to figure out where it can be called directly.
    var index = this.ensureFunctionTableEntry(instance); // reports
    return index < 0
      ? this.module.createUnreachable()
      : this.module.createI32(index);
  }

  /**
   * Compiles an identifier in the specified context.
   * @param retainConstantType Retains the type of inlined constants if `true`, otherwise
   *  precomputes them according to context.
   */
  compileIdentifierExpression(
    expression: IdentifierExpression,
    contextualType: Type,
    retainConstantType: bool
  ): ExpressionRef {
    var module = this.module;
    // check special keywords first
    switch (expression.kind) {
      case NodeKind.NULL: {
        let options = this.options;
        if (!contextualType.classReference) {
          this.currentType = options.usizeType;
        }
        return options.isWasm64
          ? module.createI64(0)
          : module.createI32(0);
      }
      case NodeKind.TRUE: {
        this.currentType = Type.bool;
        return module.createI32(1);
      }
      case NodeKind.FALSE: {
        this.currentType = Type.bool;
        return module.createI32(0);
      }
      case NodeKind.THIS: {
        let currentFunction = this.currentFunction;
        if (currentFunction.is(CommonFlags.INSTANCE)) {
          let parent = assert(currentFunction.memberOf);
          assert(parent.kind == ElementKind.CLASS);
          let thisType = (<Class>parent).type;
          if (currentFunction.is(CommonFlags.CONSTRUCTOR)) {
            let flow = currentFunction.flow;
            if (!flow.is(FlowFlags.ALLOCATES)) {
              flow.set(FlowFlags.ALLOCATES);
              // must be conditional because `this` could have been provided by a derived class
              this.currentType = thisType;
              return module.createTeeLocal(0,
                makeConditionalAllocate(this, <Class>parent, expression)
              );
            }
          }
          this.currentType = thisType;
          return module.createGetLocal(0, thisType.toNativeType());
        }
        this.error(
          DiagnosticCode._this_cannot_be_referenced_in_current_location,
          expression.range
        );
        this.currentType = this.options.usizeType;
        return module.createUnreachable();
      }
      case NodeKind.SUPER: {
        let currentFunction = this.currentFunction;
        if (currentFunction.is(CommonFlags.INSTANCE)) {
          let parent = assert(currentFunction.memberOf);
          assert(parent.kind == ElementKind.CLASS);
          let base = (<Class>parent).base;
          if (base) {
            let superType = base.type;
            this.currentType = superType;
            return module.createGetLocal(0, superType.toNativeType());
          }
        }
        this.error(
          DiagnosticCode._super_can_only_be_referenced_in_a_derived_class,
          expression.range
        );
        this.currentType = this.options.usizeType;
        return module.createUnreachable();
      }
    }

    // otherwise resolve
    var resolved = this.program.resolveIdentifier( // reports
      expression,
      this.currentFunction,
      this.currentEnum
    );
    if (!resolved) return module.createUnreachable();

    var element = resolved.element;
    switch (element.kind) {
      case ElementKind.LOCAL: {
        if ((<Local>element).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Local>element, contextualType, retainConstantType);
        }
        let localType = (<Local>element).type;
        let localIndex = (<Local>element).index;
        assert(localIndex >= 0);
        this.currentType = localType;
        return this.module.createGetLocal(localIndex, localType.toNativeType());
      }
      case ElementKind.GLOBAL: {
        if (element.is(CommonFlags.AMBIENT | CommonFlags.BUILTIN)) {
          return compileBuiltinGetConstant(this, <Global>element, expression);
        }
        if (!this.compileGlobal(<Global>element)) { // reports; not yet compiled if a static field
          return this.module.createUnreachable();
        }
        let globalType = (<Global>element).type;
        assert(globalType != Type.void);
        if ((<Global>element).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Global>element, contextualType, retainConstantType);
        }
        this.currentType = globalType;
        return this.module.createGetGlobal((<Global>element).internalName, globalType.toNativeType());
      }
      case ElementKind.ENUMVALUE: { // here: if referenced from within the same enum
        if (!element.is(CommonFlags.COMPILED)) {
          this.error(
            DiagnosticCode.A_member_initializer_in_a_enum_declaration_cannot_reference_members_declared_after_it_including_members_defined_in_other_enums,
            expression.range
          );
          this.currentType = Type.i32;
          return this.module.createUnreachable();
        }
        this.currentType = Type.i32;
        if ((<EnumValue>element).is(CommonFlags.INLINED)) {
          return this.module.createI32((<EnumValue>element).constantValue);
        }
        return this.module.createGetGlobal((<EnumValue>element).internalName, NativeType.I32);
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        let instance = (<FunctionPrototype>element).resolve(
          null,
          this.currentFunction.contextualTypeArguments
        );
        if (!(instance && this.compileFunction(instance))) return module.createUnreachable();
        let index = this.ensureFunctionTableEntry(instance);
        this.currentType = instance.signature.type;
        return this.module.createI32(index);
      }
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      expression.range
    );
    return this.module.createUnreachable();
  }

  compileLiteralExpression(
    expression: LiteralExpression,
    contextualType: Type,
    implicitNegate: bool = false
  ): ExpressionRef {
    var module = this.module;

    switch (expression.literalKind) {
      case LiteralKind.ARRAY: {
        assert(!implicitNegate);
        let classType = contextualType.classReference;
        if (
          classType &&
          classType.prototype == this.program.elementsLookup.get("Array")
        ) {
          return this.compileStaticArray(
            assert(classType.typeArguments)[0],
            (<ArrayLiteralExpression>expression).elementExpressions,
            expression
          );
        }
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        return module.createUnreachable();
      }
      case LiteralKind.FLOAT: {
        let floatValue = (<FloatLiteralExpression>expression).value;
        if (implicitNegate) {
          floatValue = -floatValue;
        }
        if (contextualType == Type.f32) {
          return module.createF32(<f32>floatValue);
        }
        this.currentType = Type.f64;
        return module.createF64(floatValue);
      }
      case LiteralKind.INTEGER: {
        let intValue = (<IntegerLiteralExpression>expression).value;
        if (implicitNegate) {
          intValue = i64_sub(
            i64_new(0),
            intValue
          );
        }
        switch (contextualType.kind) {

          // compile to contextualType if matching

          case TypeKind.I8: {
            if (i64_is_i8(intValue)) return module.createI32(i64_low(intValue));
            break;
          }
          case TypeKind.U8: {
            if (i64_is_u8(intValue)) return module.createI32(i64_low(intValue));
            break;
          }
          case TypeKind.I16: {
            if (i64_is_i16(intValue)) return module.createI32(i64_low(intValue));
            break;
          }
          case TypeKind.U16: {
            if (i64_is_u16(intValue)) return module.createI32(i64_low(intValue));
            break;
          }
          case TypeKind.I32:
          case TypeKind.U32: {
            if (i64_is_i32(intValue) || i64_is_u32(intValue)) return module.createI32(i64_low(intValue));
            break;
          }
          case TypeKind.BOOL: {
            if (i64_is_bool(intValue)) return module.createI32(i64_low(intValue));
            break;
          }
          case TypeKind.ISIZE: {
            if (!this.options.isWasm64) {
              if (i64_is_i32(intValue) || i64_is_u32(intValue)) return module.createI32(i64_low(intValue));
              break;
            }
            return module.createI64(i64_low(intValue), i64_high(intValue));
          }
          case TypeKind.USIZE: {
            if (!this.options.isWasm64) {
              if (i64_is_i32(intValue) || i64_is_u32(intValue)) return module.createI32(i64_low(intValue));
              break;
            }
            return module.createI64(i64_low(intValue), i64_high(intValue));
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            return module.createI64(i64_low(intValue), i64_high(intValue));
          }
          case TypeKind.F32: {
            if (i64_is_f32(intValue)) return module.createF32(i64_to_f32(intValue));
            break;
          }
          case TypeKind.F64: {
            if (i64_is_f64(intValue)) return module.createF64(i64_to_f64(intValue));
            break;
          }
          case TypeKind.VOID: {
            break; // compiles to best fitting type below, being dropped
          }
          default: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            return module.createUnreachable();
          }
        }

        // otherwise compile to best fitting native type

        if (i64_is_i32(intValue)) {
          this.currentType = Type.i32;
          return module.createI32(i64_low(intValue));
        } else {
          this.currentType = Type.i64;
          return module.createI64(i64_low(intValue), i64_high(intValue));
        }
      }
      case LiteralKind.STRING: {
        assert(!implicitNegate);
        return this.compileStaticString((<StringLiteralExpression>expression).value);
      }
      // case LiteralKind.OBJECT:
      // case LiteralKind.REGEXP:
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      expression.range
    );
    this.currentType = contextualType;
    return module.createUnreachable();
  }

  compileStaticString(stringValue: string): ExpressionRef {
    var module = this.module;
    var options = this.options;
    var stringSegments = this.stringSegments;

    var stringSegment: MemorySegment | null = stringSegments.get(stringValue);
    if (!stringSegment) {
      let stringLength = stringValue.length;
      let stringBuffer = new Uint8Array(4 + stringLength * 2);
      stringBuffer[0] =  stringLength         & 0xff;
      stringBuffer[1] = (stringLength >>>  8) & 0xff;
      stringBuffer[2] = (stringLength >>> 16) & 0xff;
      stringBuffer[3] = (stringLength >>> 24) & 0xff;
      for (let i = 0; i < stringLength; ++i) {
        stringBuffer[4 + i * 2] =  stringValue.charCodeAt(i)        & 0xff;
        stringBuffer[5 + i * 2] = (stringValue.charCodeAt(i) >>> 8) & 0xff;
      }
      stringSegment = this.addMemorySegment(stringBuffer, options.usizeType.byteSize);
      stringSegments.set(stringValue, stringSegment);
    }
    var stringOffset = stringSegment.offset;
    var stringType = this.program.typesLookup.get("string");
    this.currentType = stringType ? stringType : options.usizeType;
    if (options.isWasm64) {
      return module.createI64(i64_low(stringOffset), i64_high(stringOffset));
    }
    assert(i64_is_i32(stringOffset));
    return module.createI32(i64_low(stringOffset));
  }

  compileStaticArray(elementType: Type, expressions: (Expression | null)[], reportNode: Node): ExpressionRef {
    var isStatic = true;
    var module = this.module;

    // obtain the array type
    var arrayPrototype = assert(this.program.elementsLookup.get("Array"));
    if (!arrayPrototype || arrayPrototype.kind != ElementKind.CLASS_PROTOTYPE) return module.createUnreachable();
    var arrayType = (<ClassPrototype>arrayPrototype).resolve([ elementType ]);
    if (!arrayType) return module.createUnreachable();

    var elementSize = expressions.length;
    var nativeType = elementType.toNativeType();
    var values: usize;
    var memorySize: usize;
    switch (nativeType) {
      case NativeType.I32: {
        values = changetype<usize>(new Int32Array(elementSize));
        memorySize = elementSize * 4;
        break;
      }
      case NativeType.I64: {
        values = changetype<usize>(new Array<I64>(elementSize));
        memorySize = elementSize * 8;
        break;
      }
      case NativeType.F32: {
        values = changetype<usize>(new Float32Array(elementSize));
        memorySize = elementSize * 4;
        break;
      }
      case NativeType.F64: {
        values = changetype<usize>(new Float64Array(elementSize));
        memorySize = elementSize * 8;
        break;
      }
      default: {
        assert(false);
        this.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        return module.createUnreachable();
      }
    }

    // precompute value expressions
    var exprs = new Array<ExpressionRef>(elementSize);
    var expr: BinaryenExpressionRef;
    for (let i = 0; i < elementSize; ++i) {
      exprs[i] = expressions[i]
        ? this.compileExpression(<Expression>expressions[i], elementType)
        : elementType.toNativeZero(module);
      if (isStatic) {
        expr = this.precomputeExpressionRef(exprs[i]);
        if (_BinaryenExpressionGetId(expr) == ExpressionId.Const) {
          assert(_BinaryenExpressionGetType(expr) == nativeType);
          switch (nativeType) {
            case NativeType.I32: {
              changetype<i32[]>(values)[i] = _BinaryenConstGetValueI32(expr);
              break;
            }
            case NativeType.I64: {
              changetype<I64[]>(values)[i] = i64_new(
                _BinaryenConstGetValueI64Low(expr),
                _BinaryenConstGetValueI64High(expr)
              );
              break;
            }
            case NativeType.F32: {
              changetype<f32[]>(values)[i] = _BinaryenConstGetValueF32(expr);
              break;
            }
            case NativeType.F64: {
              changetype<f64[]>(values)[i] = _BinaryenConstGetValueF64(expr);
              break;
            }
            default: {
              assert(false); // checked above
            }
          }
        } else {
          // TODO: emit a warning if declared 'const'
          isStatic = false;
        }
      }
    }

    var usizeTypeSize = this.options.usizeType.byteSize;
    var headerSize = usizeTypeSize + 4 + 4; // memory + capacity + length

    if (isStatic) {
      let buffer = new Uint8Array(headerSize + memorySize);
      let segment = this.addMemorySegment(buffer);

      // make header
      let offset = 0;
      if (usizeTypeSize == 8) {
        writeI64(i64_add(segment.offset, i64_new(headerSize)), buffer, 0); // memory
      } else {
        assert(i64_high(segment.offset) == 0);
        writeI32(i64_low(segment.offset) + headerSize, buffer, 0); // memory
      }
      offset += usizeTypeSize;
      writeI32(elementSize, buffer, offset); // capacity
      offset += 4;
      writeI32(elementSize, buffer, offset); // length
      offset += 4;
      assert(offset == headerSize);

      // make memory
      switch (nativeType) {
        case NativeType.I32: {
          for (let i = 0; i < elementSize; ++i) {
            writeI32(changetype<i32[]>(values)[i], buffer, offset); offset += 4;
          }
          break;
        }
        case NativeType.I64: {
          for (let i = 0; i < elementSize; ++i) {
            writeI64(changetype<I64[]>(values)[i], buffer, offset); offset += 8;
          }
          break;
        }
        case NativeType.F32: {
          for (let i = 0; i < elementSize; ++i) {
            writeF32(changetype<f32[]>(values)[i], buffer, offset); offset += 4;
          }
          break;
        }
        case NativeType.F64: {
          for (let i = 0; i < elementSize; ++i) {
            writeF64(changetype<f64[]>(values)[i], buffer, offset); offset += 8;
          }
          break;
        }
        default: {
          assert(false);
          this.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          return module.createUnreachable();
        }
      }
      assert(offset == headerSize + memorySize);
      this.currentType = arrayType.type;
      return usizeTypeSize == 8
        ? module.createI64(
            i64_low(segment.offset),
            i64_high(segment.offset)
          )
        : module.createI32(
            i64_low(segment.offset)
          );
    } else {
      // TODO: static elements *could* go into data segments while dynamic ones are initialized
      // on top? any benefits?
      throw new Error("not implemented");
    }
  }

  compileNewExpression(expression: NewExpression, contextualType: Type): ExpressionRef {
    var module = this.module;
    var options = this.options;
    var currentFunction = this.currentFunction;

    // obtain the class being instantiated
    var resolved = this.program.resolveExpression( // reports
      expression.expression,
      currentFunction
    );
    if (!resolved) return module.createUnreachable();
    if (resolved.element.kind != ElementKind.CLASS_PROTOTYPE) {
      this.error(
        DiagnosticCode.Cannot_use_new_with_an_expression_whose_type_lacks_a_construct_signature,
        expression.expression.range
      );
      return this.module.createUnreachable();
    }
    var classPrototype = <ClassPrototype>resolved.element;
    var classInstance = classPrototype.resolveUsingTypeArguments( // reports
      expression.typeArguments,
      null,
      expression
    );
    if (!classInstance) return module.createUnreachable();

    var expr: ExpressionRef;
    var constructorInstance = classInstance.constructorInstance;

    // if a constructor is present, call it with a zero `this`
    if (constructorInstance) {
      expr = this.compileCallDirect(constructorInstance, expression.arguments, expression,
        options.usizeType.toNativeZero(module)
      );

    // otherwise simply allocate a new instance and initialize its fields
    } else {
      expr = makeAllocate(this, classInstance, expression);
    }

    this.currentType = classInstance.type;
    return expr;
  }

  compileParenthesizedExpression(
    expression: ParenthesizedExpression,
    contextualType: Type,
    wrapSmallIntegers: bool = true
  ): ExpressionRef {
    // does not change types, just order
    return this.compileExpression(
      expression.expression,
      contextualType,
      ConversionKind.NONE,
      wrapSmallIntegers
    );
  }

  /**
   * Compiles a property access in the specified context.
   * @param retainConstantType Retains the type of inlined constants if `true`, otherwise
   *  precomputes them according to context.
   */
  compilePropertyAccessExpression(
    propertyAccess: PropertyAccessExpression,
    contextualType: Type,
    retainConstantType: bool
  ): ExpressionRef {
    var program = this.program;
    var module = this.module;

    var resolved = program.resolvePropertyAccess(propertyAccess, this.currentFunction); // reports
    if (!resolved) return module.createUnreachable();

    var element = resolved.element;
    var targetExpr: ExpressionRef;
    switch (element.kind) {
      case ElementKind.GLOBAL: { // static property
        if (element.is(CommonFlags.AMBIENT | CommonFlags.BUILTIN)) {
          return compileBuiltinGetConstant(this, <Global>element, propertyAccess);
        }
        if (!this.compileGlobal(<Global>element)) { // reports; not yet compiled if a static field
          return module.createUnreachable();
        }
        let globalType = (<Global>element).type;
        assert(globalType != Type.void);
        if ((<Global>element).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Global>element, contextualType, retainConstantType);
        }
        this.currentType = globalType;
        return module.createGetGlobal((<Global>element).internalName, globalType.toNativeType());
      }
      case ElementKind.ENUMVALUE: { // enum value
        if (!this.compileEnum((<EnumValue>element).enum)) {
          return this.module.createUnreachable();
        }
        this.currentType = Type.i32;
        if ((<EnumValue>element).is(CommonFlags.INLINED)) {
          return module.createI32((<EnumValue>element).constantValue);
        }
        return module.createGetGlobal((<EnumValue>element).internalName, NativeType.I32);
      }
      case ElementKind.FIELD: { // instance field
        assert(resolved.isInstanceTarget);
        assert((<Field>element).memoryOffset >= 0);
        targetExpr = this.compileExpression(
          <Expression>resolved.targetExpression,
          this.options.usizeType,
          ConversionKind.NONE
        );
        this.currentType = (<Field>element).type;
        return module.createLoad(
          (<Field>element).type.size >> 3,
          (<Field>element).type.is(TypeFlags.SIGNED | TypeFlags.INTEGER),
          targetExpr,
          (<Field>element).type.toNativeType(),
          (<Field>element).memoryOffset
        );
      }
      case ElementKind.PROPERTY: { // instance property (here: getter)
        let prototype = (<Property>element).getterPrototype;
        if (prototype) {
          let instance = prototype.resolve(null); // reports
          if (!instance) return module.createUnreachable();
          let signature = instance.signature;
          if (!this.checkCallSignature( // reports
            signature,
            0,
            instance.is(CommonFlags.INSTANCE),
            propertyAccess
          )) {
            return module.createUnreachable();
          }
          if (instance.is(CommonFlags.INSTANCE)) {
            let parent = assert(instance.memberOf);
            assert(parent.kind == ElementKind.CLASS);
            targetExpr = this.compileExpression(
              <Expression>resolved.targetExpression,
              (<Class>parent).type
            );
            this.currentType = signature.returnType;
            return this.compileCallDirect(instance, [], propertyAccess, targetExpr);
          } else {
            this.currentType = signature.returnType;
            return this.compileCallDirect(instance, [], propertyAccess);
          }
        } else {
          this.error(
            DiagnosticCode.Property_0_does_not_exist_on_type_1,
            propertyAccess.range, (<Property>element).simpleName, (<Property>element).parent.toString()
          );
          return module.createUnreachable();
        }
      }
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      propertyAccess.range
    );
    return module.createUnreachable();
  }

  compileTernaryExpression(expression: TernaryExpression, contextualType: Type): ExpressionRef {
    var ifThen = expression.ifThen;
    var ifElse = expression.ifElse;

    var condExpr = makeIsTrueish(
      this.compileExpression(expression.condition, Type.u32, ConversionKind.NONE),
      this.currentType,
      this.module
    );

    // Eliminate unnecesssary branches in generic contexts if the condition is constant
    if (
      this.currentFunction.isAny(CommonFlags.GENERIC | CommonFlags.GENERIC_CONTEXT) &&
      _BinaryenExpressionGetId(condExpr = this.precomputeExpressionRef(condExpr)) == ExpressionId.Const &&
      _BinaryenExpressionGetType(condExpr) == NativeType.I32
    ) {
      return _BinaryenConstGetValueI32(condExpr)
        ? this.compileExpression(ifThen, contextualType)
        : this.compileExpression(ifElse, contextualType);
    }

    var currentFunction = this.currentFunction;
    var ifThenExpr: ExpressionRef;
    var ifElseExpr: ExpressionRef;

    // if part of a constructor, keep track of memory allocations
    if (currentFunction.is(CommonFlags.CONSTRUCTOR)) {
      let flow = currentFunction.flow;

      flow = flow.enterBranchOrScope();
      currentFunction.flow = flow;
      ifThenExpr = this.compileExpression(ifThen, contextualType);
      let ifThenAllocates = flow.is(FlowFlags.ALLOCATES);
      flow = flow.leaveBranchOrScope();
      currentFunction.flow = flow;

      flow = flow.enterBranchOrScope();
      currentFunction.flow = flow;
      ifElseExpr = this.compileExpression(ifElse, contextualType);
      let ifElseAllocates = flow.is(FlowFlags.ALLOCATES);
      flow = flow.leaveBranchOrScope();
      currentFunction.flow = flow;

      if (ifThenAllocates && ifElseAllocates) flow.set(FlowFlags.ALLOCATES);

    // otherwise simplify
    } else {
      ifThenExpr = this.compileExpression(ifThen, contextualType);
      ifElseExpr = this.compileExpression(ifElse, contextualType);
    }

    return this.module.createIf(condExpr, ifThenExpr, ifElseExpr);
  }

  compileUnaryPostfixExpression(expression: UnaryPostfixExpression, contextualType: Type): ExpressionRef {
    var module = this.module;
    var currentFunction = this.currentFunction;

    // make a getter for the expression (also obtains the type)
    var getValue = this.compileExpression(
      expression.operand,
      contextualType == Type.void
        ? Type.i32
        : contextualType,
      ConversionKind.NONE,
      false // wrapped below
    );
    var currentType = this.currentType;

    var op: BinaryOp;
    var nativeType: NativeType;
    var nativeOne: ExpressionRef;
    var possiblyOverflows = false;

    switch (expression.operator) {
      case Token.PLUS_PLUS: {
        if (currentType.is(TypeFlags.REFERENCE)) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }
        switch (currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true;
          default: {
            op = BinaryOp.AddI32;
            nativeType = NativeType.I32;
            nativeOne = module.createI32(1);
            break;
          }
          case TypeKind.USIZE: // TODO: check operator overload
          case TypeKind.ISIZE: {
            let options = this.options;
            op = options.isWasm64
              ? BinaryOp.AddI64
              : BinaryOp.AddI32;
            nativeType = options.nativeSizeType;
            nativeOne = currentType.toNativeOne(module);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            op = BinaryOp.AddI64;
            nativeType = NativeType.I64;
            nativeOne = module.createI64(1);
            break;
          }
          case TypeKind.F32: {
            op = BinaryOp.AddF32;
            nativeType = NativeType.F32;
            nativeOne = module.createF32(1);
            break;
          }
          case TypeKind.F64: {
            op = BinaryOp.AddF64;
            nativeType = NativeType.F64;
            nativeOne = module.createF64(1);
            break;
          }
          case TypeKind.VOID: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            return module.createUnreachable();
          }
        }
        break;
      }
      case Token.MINUS_MINUS: {
        if (currentType.is(TypeFlags.REFERENCE)) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }
        switch (currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true;
          default: {
            op = BinaryOp.SubI32;
            nativeType = NativeType.I32;
            nativeOne = module.createI32(1);
            break;
          }
          case TypeKind.USIZE: // TODO: check operator overload
          case TypeKind.ISIZE: {
            let options = this.options;
            op = options.isWasm64
              ? BinaryOp.SubI64
              : BinaryOp.SubI32;
            nativeType = options.nativeSizeType;
            nativeOne = currentType.toNativeOne(module);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            op = BinaryOp.SubI64;
            nativeType = NativeType.I64;
            nativeOne = module.createI64(1);
            break;
          }
          case TypeKind.F32: {
            op = BinaryOp.SubF32;
            nativeType = NativeType.F32;
            nativeOne = module.createF32(1);
            break;
          }
          case TypeKind.F64: {
            op = BinaryOp.SubF64;
            nativeType = NativeType.F64;
            nativeOne = module.createF64(1);
            break;
          }
          case TypeKind.VOID: {
            assert(false);
            this.error(
              DiagnosticCode.Operation_not_supported,
              expression.range
            );
            return module.createUnreachable();
          }
        }
        break;
      }
      default: {
        assert(false);
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        return module.createUnreachable();
      }
    }

    var setValue: ExpressionRef;
    var tempLocal: Local | null = null;

    // simplify if dropped anyway
    if (contextualType == Type.void) {
      setValue = module.createBinary(op,
        getValue,
        nativeOne
      );

    // otherwise use a temp local for the intermediate value
    } else {
      tempLocal = currentFunction.getTempLocal(currentType);
      setValue = module.createBinary(op,
        this.module.createGetLocal(tempLocal.index, nativeType),
        nativeOne
      );
    }

    if (possiblyOverflows) {
      assert(currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER));
      setValue = makeSmallIntegerWrap(setValue, currentType, module);
    }

    setValue = this.compileAssignmentWithValue(expression.operand, setValue, false);
    // ^ sets currentType = void
    if (contextualType == Type.void) {
      assert(!tempLocal);
      return setValue;
    }

    this.currentType = assert(tempLocal).type;
    currentFunction.freeTempLocal(<Local>tempLocal);
    var localIndex = (<Local>tempLocal).index;
    return module.createBlock(null, [
      module.createSetLocal(localIndex, getValue),
      setValue,
      module.createGetLocal(localIndex, nativeType)
    ], nativeType);
  }

  compileUnaryPrefixExpression(
    expression: UnaryPrefixExpression,
    contextualType: Type,
    wrapSmallIntegers: bool = true
  ): ExpressionRef {
    var module = this.module;
    var currentType = this.currentType;

    var possiblyOverflows = false;
    var compound = false;
    var expr: ExpressionRef;

    switch (expression.operator) {
      case Token.PLUS: {
        if (currentType.is(TypeFlags.REFERENCE)) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType,
          ConversionKind.NONE,
          false // wrapped below
        );
        currentType = this.currentType;
        possiblyOverflows = currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER); // if operand already did
        break;
      }
      case Token.MINUS: {
        if (currentType.is(TypeFlags.REFERENCE)) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }
        if (expression.operand.kind == NodeKind.LITERAL && (
          (<LiteralExpression>expression.operand).literalKind == LiteralKind.INTEGER ||
          (<LiteralExpression>expression.operand).literalKind == LiteralKind.FLOAT
        )) {
          // implicitly negate integer and float literals. also enables proper checking of literal ranges.
          expr = this.compileLiteralExpression(<LiteralExpression>expression.operand, contextualType, true);
          if (this.options.sourceMap) {
            // compileExpression normally does this
            addDebugLocation(expr, expression.range, module, this.currentFunction);
          }
          currentType = this.currentType;
        } else {
          expr = this.compileExpression(
            expression.operand,
            contextualType == Type.void
              ? Type.i32
              : contextualType,
            ConversionKind.NONE,
            false // wrapped below
          );
          currentType = this.currentType;
          switch (currentType.kind) {
            case TypeKind.I8:
            case TypeKind.I16:
            case TypeKind.U8:
            case TypeKind.U16:
            case TypeKind.BOOL: possiblyOverflows = true; // or if operand already did
            default: {
              expr = module.createBinary(BinaryOp.SubI32, module.createI32(0), expr);
              break;
            }
            case TypeKind.USIZE: {
              if (currentType.is(TypeFlags.REFERENCE)) {
                this.error(
                  DiagnosticCode.Operation_not_supported,
                  expression.range
                );
                return module.createUnreachable();
              }
              // fall-through
            }
            case TypeKind.ISIZE: {
              expr = module.createBinary(
                this.options.isWasm64
                  ? BinaryOp.SubI64
                  : BinaryOp.SubI32,
                currentType.toNativeZero(module),
                expr
              );
              break;
            }
            case TypeKind.I64:
            case TypeKind.U64: {
              expr = module.createBinary(BinaryOp.SubI64, module.createI64(0), expr);
              break;
            }
            case TypeKind.F32: {
              expr = module.createUnary(UnaryOp.NegF32, expr);
              break;
            }
            case TypeKind.F64: {
              expr = module.createUnary(UnaryOp.NegF64, expr);
              break;
            }
          }
        }
        break;
      }
      case Token.PLUS_PLUS: {
        if (currentType.is(TypeFlags.REFERENCE)) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }
        compound = true;
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType,
          ConversionKind.NONE,
          false // wrapped below
        );
        currentType = this.currentType;
        switch (currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true; // or if operand already did
          default: {
            expr = module.createBinary(BinaryOp.AddI32, expr, this.module.createI32(1));
            break;
          }
          case TypeKind.USIZE: {
            if (currentType.is(TypeFlags.REFERENCE)) {
              this.error(
                DiagnosticCode.Operation_not_supported,
                expression.range
              );
              return module.createUnreachable();
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.AddI64
                : BinaryOp.AddI32,
              expr,
              currentType.toNativeOne(module)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.AddI64, expr, module.createI64(1));
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.AddF32, expr, module.createF32(1));
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.AddF64, expr, module.createF64(1));
            break;
          }
        }
        break;
      }
      case Token.MINUS_MINUS: {
        if (currentType.is(TypeFlags.REFERENCE)) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }
        compound = true;
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType,
          ConversionKind.NONE,
          false // wrapped below
        );
        currentType = this.currentType;
        switch (currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true; // or if operand already did
          default: {
            expr = module.createBinary(BinaryOp.SubI32, expr, module.createI32(1));
            break;
          }
          case TypeKind.USIZE: {
            if (currentType.is(TypeFlags.REFERENCE)) {
              this.error(
                DiagnosticCode.Operation_not_supported,
                expression.range
              );
              return module.createUnreachable();
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              expr,
              currentType.toNativeOne(module)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.SubI64, expr, module.createI64(1));
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(BinaryOp.SubF32, expr, module.createF32(1));
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(BinaryOp.SubF64, expr, module.createF64(1));
            break;
          }
        }
        break;
      }
      case Token.EXCLAMATION: {
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType,
          ConversionKind.NONE,
          true // must wrap small integers
        );
        expr = makeIsFalseish(expr, this.currentType, module);
        this.currentType = Type.bool;
        break;
      }
      case Token.TILDE: {
        if (currentType.is(TypeFlags.REFERENCE)) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType.is(TypeFlags.FLOAT)
              ? Type.i64
              : contextualType,
          contextualType == Type.void
            ? ConversionKind.NONE
            : ConversionKind.IMPLICIT,
          false // retains low bits of small integers
        );
        currentType = this.currentType;
        switch (currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: possiblyOverflows = true; // or if operand already did
          default: {
            expr = module.createBinary(BinaryOp.XorI32, expr, module.createI32(-1));
            break;
          }
          case TypeKind.USIZE: {
            if (currentType.is(TypeFlags.REFERENCE)) {
              this.error(
                DiagnosticCode.Operation_not_supported,
                expression.range
              );
              return module.createUnreachable();
            }
            // fall-through
          }
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.XorI64
                : BinaryOp.XorI32,
              expr,
              currentType.toNativeNegOne(module)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.XorI64, expr, module.createI64(-1, -1));
            break;
          }
        }
        break;
      }
      case Token.TYPEOF: {
        // it might make sense to implement typeof in a way that a generic function can detect
        // whether its type argument is a class type or string. that could then be used, for
        // example, to generate hash codes for sets and maps, depending on the kind of type
        // parameter we have. ideally the comparison would not involve actual string comparison and
        // limit available operations to hard-coded string literals.
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        return module.createUnreachable();
      }
      default: {
        assert(false);
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        return module.createUnreachable();
      }
    }
    if (possiblyOverflows && wrapSmallIntegers) {
      assert(currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER));
      expr = makeSmallIntegerWrap(expr, currentType, module);
    }
    return compound
      ? this.compileAssignmentWithValue(expression.operand, expr, contextualType != Type.void)
      : expr;
  }
}

// helpers

/** Adds the debug location of the specified expression at the specified range to the source map. */
function addDebugLocation(expr: ExpressionRef, range: Range, module: Module, currentFunction: Function): void {
  var source = range.source;
  if (source.debugInfoIndex < 0) {
    source.debugInfoIndex = module.addDebugInfoFile(source.normalizedPath);
  }
  range.debugInfoRef = expr;
  if (!currentFunction.debugLocations) currentFunction.debugLocations = [];
  currentFunction.debugLocations.push(range);
}

/** Wraps a 32-bit integer expression so it evaluates to a valid value of the specified type. */
export function makeSmallIntegerWrap(expr: ExpressionRef, type: Type, module: Module): ExpressionRef {
  switch (type.kind) {
    case TypeKind.I8: {
      return module.createBinary(BinaryOp.ShrI32,
        module.createBinary(BinaryOp.ShlI32,
          expr,
          module.createI32(24)
        ),
        module.createI32(24)
      );
    }
    case TypeKind.I16: {
      return module.createBinary(BinaryOp.ShrI32,
        module.createBinary(BinaryOp.ShlI32,
          expr,
          module.createI32(16)
        ),
        module.createI32(16)
      );
    }
    case TypeKind.U8: {
      return module.createBinary(BinaryOp.AndI32,
        expr,
        module.createI32(0xff)
      );
    }
    case TypeKind.U16: {
      return module.createBinary(BinaryOp.AndI32,
        expr,
        module.createI32(0xffff)
      );
    }
    case TypeKind.BOOL: {
      return module.createBinary(BinaryOp.AndI32,
        expr,
        module.createI32(0x1)
      );
    }
    default: {
      assert(false);
      return expr;
    }
  }
}

/** Creates a comparison whether an expression is not 'true' in a broader sense. */
export function makeIsFalseish(expr: ExpressionRef, type: Type, module: Module): ExpressionRef {
  switch (type.kind) {
    default: { // any native i32
      return module.createUnary(UnaryOp.EqzI32, expr);
    }
    case TypeKind.I64:
    case TypeKind.U64: {
      return module.createUnary(UnaryOp.EqzI64, expr);
    }
    case TypeKind.USIZE: // TODO: strings?
    case TypeKind.ISIZE: {
      return module.createUnary(type.size == 64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32, expr);
    }
    case TypeKind.F32: {
      return module.createBinary(BinaryOp.EqF32, expr, module.createF32(0));
    }
    case TypeKind.F64: {
      return module.createBinary(BinaryOp.EqF64, expr, module.createF64(0));
    }
    case TypeKind.VOID: {
      assert(false);
      return module.createI32(1);
    }
  }
}

/** Creates a comparison whether an expression is 'true' in a broader sense. */
export function makeIsTrueish(expr: ExpressionRef, type: Type, module: Module): ExpressionRef {
  switch (type.kind) {
    default: { // any native i32
      return expr;
    }
    case TypeKind.I64:
    case TypeKind.U64: {
      return module.createBinary(BinaryOp.NeI64, expr, module.createI64(0));
    }
    case TypeKind.USIZE: // TODO: strings?
    case TypeKind.ISIZE: {
      return type.size == 64
        ? module.createBinary(BinaryOp.NeI64, expr, module.createI64(0))
        : expr;
    }
    case TypeKind.F32: {
      return module.createBinary(BinaryOp.NeF32, expr, module.createF32(0));
    }
    case TypeKind.F64: {
      return module.createBinary(BinaryOp.NeF64, expr, module.createF64(0));
    }
    case TypeKind.VOID: {
      assert(false);
      return module.createI32(0);
    }
  }
}

/** Makes an allocation expression for an instance of the specified class. */
export function makeAllocate(compiler: Compiler, classInstance: Class, reportNode: Node): ExpressionRef {
  var module = compiler.module;
  var currentFunction = compiler.currentFunction;
  var nativeSizeType = compiler.options.nativeSizeType;

  var tempLocal = currentFunction.getTempLocal(classInstance.type);

  // allocate the necessary memory
  var initializers = new Array<ExpressionRef>();
  initializers.push(
    module.createSetLocal(tempLocal.index,
      compileBuiltinAllocate(compiler, classInstance, reportNode)
    )
  );

  // apply field initializers
  if (classInstance.members) {
    for (let member of classInstance.members.values()) {
      if (member.kind == ElementKind.FIELD) {
        let field = <Field>member;
        let fieldType = field.type;
        let nativeFieldType = fieldType.toNativeType();
        let fieldDeclaration = field.prototype.declaration;
        assert(!field.isAny(CommonFlags.CONST));
        if (fieldDeclaration.initializer) { // use initializer
          initializers.push(module.createStore(fieldType.byteSize,
            module.createGetLocal(tempLocal.index, nativeSizeType),
            compiler.compileExpression(fieldDeclaration.initializer, fieldType), // reports
            nativeFieldType,
            field.memoryOffset
          ));
        } else { // initialize with zero
          // TODO: might be unnecessary if the ctor initializes the field
          let parameterIndex = (<FieldDeclaration>field.prototype.declaration).parameterIndex;
          initializers.push(module.createStore(fieldType.byteSize,
            module.createGetLocal(tempLocal.index, nativeSizeType),
            parameterIndex >= 0 // initialized via parameter
              ? module.createGetLocal(1 + parameterIndex, nativeFieldType)
              : fieldType.toNativeZero(module),
              nativeFieldType,
            field.memoryOffset
          ));
        }
      }
    }
  }

  // return `this`
  initializers.push(
    module.createGetLocal(tempLocal.index, nativeSizeType)
  );

  currentFunction.freeTempLocal(tempLocal);
  compiler.currentType = classInstance.type;
  return module.createBlock(null, initializers, nativeSizeType);
}

/** Makes a conditional allocation expression inside of the constructor of the specified class. */
export function makeConditionalAllocate(compiler: Compiler, classInstance: Class, reportNode: Node): ExpressionRef {
  // requires that `this` is the first local
  var module = compiler.module;
  var nativeSizeType = compiler.options.nativeSizeType;
  compiler.currentType = classInstance.type;
  return module.createIf(
    nativeSizeType == NativeType.I64
      ? module.createBinary(
          BinaryOp.NeI64,
          module.createGetLocal(0, NativeType.I64),
          module.createI64(0)
        )
      : module.createGetLocal(0, NativeType.I32),
    module.createGetLocal(0, nativeSizeType),
    module.createTeeLocal(0,
      makeAllocate(compiler, classInstance, reportNode)
    )
  );
}
