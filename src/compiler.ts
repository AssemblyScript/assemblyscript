/**
 * The AssemblyScript compiler.
 * @module compiler
 *//***/

import {
  compileCall as compileBuiltinCall,
  compileAllocate as compileBuiltinAllocate,
  compileAbort as compileBuiltinAbort
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
  GlobalRef,
  getExpressionId,
  getExpressionType,
  getConstValueI32,
  getConstValueI64Low,
  getConstValueI64High,
  getConstValueF32,
  getConstValueF64,
  getFunctionBody,
  getGetLocalIndex,
  getBlockChildCount,
  getBlockChild,
  getBlockName
} from "./module";

import {
  CommonFlags,
  PATH_DELIMITER,
  INNER_DELIMITER,
  INSTANCE_DELIMITER,
  STATIC_DELIMITER,
  GETTER_PREFIX,
  SETTER_PREFIX
} from "./common";

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
  ConstantValueKind,
  Flow,
  OperatorKind,
  DecoratorFlags
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
  DecoratorKind,

  Statement,
  BlockStatement,
  BreakStatement,
  ClassDeclaration,
  ContinueStatement,
  DeclarationStatement,
  DoStatement,
  EmptyStatement,
  EnumDeclaration,
  ExportStatement,
  ExpressionStatement,
  FunctionDeclaration,
  ForStatement,
  IfStatement,
  ImportStatement,
  InstanceOfExpression,
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
  FieldDeclaration,

  nodeIsConstantValue,
  isLastStatement,
  findDecorator
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
  /** If true, imports the memory provided by the embedder. */
  importMemory: bool = false;
  /** If true, imports the function table provided by the embedder. */
  importTable: bool = false;
  /** If true, generates information necessary for source maps. */
  sourceMap: bool = false;
  /** Static memory start offset. */
  memoryBase: i32 = 0;
  /** Global aliases. */
  globalAliases: Map<string,string> | null = null;
  /** Additional features to activate. */
  features: Feature = Feature.NONE;

  /** Hinted optimize level. Not applied by the compiler itself. */
  optimizeLevelHint: i32 = 0;
  /** Hinted shrink level. Not applied by the compiler itself. */
  shrinkLevelHint: i32 = 0;

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

  /** Tests if a specific feature is activated. */
  hasFeature(feature: Feature): bool {
    return (this.features & feature) != 0;
  }
}

/** Indicates specific features to activate. */
export const enum Feature {
  /** No additional features. */
  NONE = 0,
  /** Sign extension operations. */
  SIGN_EXTENSION = 1 << 0, // see: https://github.com/WebAssembly/sign-extension-ops
  /** Mutable global imports and exports. */
  MUTABLE_GLOBAL = 1 << 1  // see: https://github.com/WebAssembly/mutable-global
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

/** Indicates the desired wrap mode of a conversion. */
export const enum WrapMode {
  /** No wrapping. */
  NONE,
  /** Wrap small integer values. */
  WRAP
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
  /** Current outer function in compilation, if compiling a function expression. */
  currentOuterFunction: Function | null = null;
  /** Current enum in compilation. */
  currentEnum: Enum | null = null;
  /** Current type in compilation. */
  currentType: Type = Type.void;
  /** Start function being compiled. */
  startFunctionInstance: Function;
  /** Start function statements. */
  startFunctionBody: ExpressionRef[];
  /** Counting memory offset. */
  memoryOffset: I64;
  /** Memory segments being compiled. */
  memorySegments: MemorySegment[] = [];
  /** Map of already compiled static string segments. */
  stringSegments: Map<string,MemorySegment> = new Map();
  /** Function table being compiled. */
  functionTable: Function[] = [];
  /** Argument count helper global. */
  argcVar: GlobalRef = 0;
  /** Argument count helper setter. */
  argcSet: FunctionRef = 0;

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
      // leave space for `null`. also functions as a sentinel for erroneous stores at offset 0.
      // note that Binaryen's asm.js output utilizes the first 8 bytes for reinterpretations (#1547)
      max(options.memoryBase, 8)
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

    // set up the start function
    var startFunctionInstance = new Function(program.startFunction, "start", new Signature([], Type.void));
    this.startFunctionInstance = startFunctionInstance;
    var startFunctionBody = new Array<ExpressionRef>();
    this.startFunctionBody = startFunctionBody;
    this.currentFunction = startFunctionInstance;

    // compile entry file(s) while traversing reachable elements
    var sources = program.sources;
    for (let i = 0, k = sources.length; i < k; ++i) {
      if (sources[i].isEntry) this.compileSource(sources[i]);
    }

    // compile the start function if not empty or called by main
    if (startFunctionBody.length || program.mainFunction !== null) {
      let signature = startFunctionInstance.signature;
      let funcRef = module.addFunction(
        startFunctionInstance.internalName,
        this.ensureFunctionType(
          signature.parameterTypes,
          signature.returnType,
          signature.thisType
        ),
        typesToNativeTypes(startFunctionInstance.additionalLocals),
        module.createBlock(null, startFunctionBody)
      );
      startFunctionInstance.finalize(module, funcRef);
      if (!program.mainFunction) module.setStart(funcRef);
    }

    // set up static memory segments and the heap base pointer
    var memoryOffset = this.memoryOffset;
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
    var numPages = this.memorySegments.length
      ? i64_low(i64_shr_u(i64_align(memoryOffset, 0x10000), i64_new(16, 0)))
      : 0;
    module.setMemory(
      numPages,
      this.options.isWasm64
        ? Module.MAX_MEMORY_WASM64
        : Module.MAX_MEMORY_WASM32,
      this.memorySegments,
      options.target,
      "memory"
    );

    // import memory if requested (default memory is named '0' by Binaryen)
    if (options.importMemory) module.addMemoryImport("0", "env", "memory");

    // set up function table
    var functionTable = this.functionTable;
    var functionTableSize = functionTable.length;
    var functionTableExported = false;
    if (functionTableSize) {
      let entries = new Array<FunctionRef>(functionTableSize);
      for (let i = 0; i < functionTableSize; ++i) {
        entries[i] = functionTable[i].ref;
      }
      module.setFunctionTable(entries);
      module.addTableExport("0", "table");
      functionTableExported = true;
    }

    // import table if requested (default table is named '0' by Binaryen)
    if (options.importTable) {
      module.addTableImport("0", "env", "table");
      if (!functionTableExported) module.addTableExport("0", "table");
    }

    return module;
  }

  // sources

  /** Compiles a source by looking it up by path first. */
  compileSourceByPath(normalizedPathWithoutExtension: string, reportNode: Node): void {
    var source = this.program.lookupSourceByPath(normalizedPathWithoutExtension);
    if (source) this.compileSource(source);
    else {
      this.error(
        DiagnosticCode.File_0_not_found,
        reportNode.range, normalizedPathWithoutExtension
      );
    }
  }

  /** Compiles a source. */
  compileSource(source: Source): void {
    if (source.is(CommonFlags.COMPILED)) return;
    source.set(CommonFlags.COMPILED);

    // compile top-level statements
    var noTreeShaking = this.options.noTreeShaking;
    var isEntry = source.isEntry;
    var startFunctionInstance = this.startFunctionInstance;
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
        case NodeKind.INTERFACEDECLARATION: break;
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
          this.currentFunction = startFunctionInstance;
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
    if (global.is(CommonFlags.COMPILED)) return true;
    global.set(CommonFlags.COMPILED);

    var module = this.module;
    var declaration = global.declaration;
    var initExpr: ExpressionRef = 0;

    if (global.type == Type.void) { // type is void if not yet resolved or not annotated
      if (declaration) {

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
          initExpr = this.compileExpressionRetainType( // reports
            declaration.initializer,
            Type.void,
            WrapMode.WRAP
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
      } else {
        assert(false); // must have a declaration if 'void' (and thus resolved later on)
      }
    }

    // ambient builtins like 'HEAP_BASE' need to be resolved but are added explicitly
    if (global.is(CommonFlags.AMBIENT | CommonFlags.BUILTIN)) return true;

    var nativeType = global.type.toNativeType();
    var isConstant = global.isAny(CommonFlags.CONST) || global.is(CommonFlags.STATIC | CommonFlags.READONLY);

    // handle imports
    if (global.is(CommonFlags.AMBIENT)) {

      // constant global
      if (isConstant || this.options.hasFeature(Feature.MUTABLE_GLOBAL)) {
        global.set(CommonFlags.MODULE_IMPORT);
        if (declaration) {
          mangleImportName(global, declaration, global.parent);
        } else {
          mangleImportName_moduleName = "env";
          mangleImportName_elementName = global.simpleName;
        }
        module.addGlobalImport(
          global.internalName,
          mangleImportName_moduleName,
          mangleImportName_elementName,
          nativeType
        );
        global.set(CommonFlags.COMPILED);
        return true;

      // importing mutable globals is not supported in the MVP
      } else {
        this.error(
          DiagnosticCode.Operation_not_supported,
          assert(declaration).range
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
      if (declaration && declaration.initializer) {
        if (!initExpr) {
          initExpr = this.compileExpression(
            declaration.initializer,
            global.type,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP
          );
        }

        // check if the initializer is constant
        if (getExpressionId(initExpr) != ExpressionId.Const) {

          // if a constant global, check if the initializer becomes constant after precompute
          if (isConstant) {
            initExpr = this.precomputeExpressionRef(initExpr);
            if (getExpressionId(initExpr) != ExpressionId.Const) {
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
        let exprType = getExpressionType(initExpr);
        switch (exprType) {
          case NativeType.I32: {
            global.constantValueKind = ConstantValueKind.INTEGER;
            global.constantIntegerValue = i64_new(getConstValueI32(initExpr), 0);
            break;
          }
          case NativeType.I64: {
            global.constantValueKind = ConstantValueKind.INTEGER;
            global.constantIntegerValue = i64_new(
              getConstValueI64Low(initExpr),
              getConstValueI64High(initExpr)
            );
            break;
          }
          case NativeType.F32: {
            global.constantValueKind = ConstantValueKind.FLOAT;
            global.constantFloatValue = getConstValueF32(initExpr);
            break;
          }
          case NativeType.F64: {
            global.constantValueKind = ConstantValueKind.FLOAT;
            global.constantFloatValue = getConstValueF64(initExpr);
            break;
          }
          default: {
            assert(false);
            return false;
          }
        }
        global.set(CommonFlags.INLINED); // inline the value from now on
        if (global.is(CommonFlags.MODULE_EXPORT)) {
          module.addGlobal(internalName, nativeType, false, initExpr);
          module.addGlobalExport(internalName, mangleExportName(global));
        } else if (declaration && declaration.isTopLevel) { // might become re-exported
          module.addGlobal(internalName, nativeType, false, initExpr);
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
            initExpr = this.compileExpression(
              <Expression>valueDeclaration.value,
              Type.i32,
              ConversionKind.IMPLICIT,
              WrapMode.NONE
            );
            if (getExpressionId(initExpr) != ExpressionId.Const) {
              initExpr = this.precomputeExpressionRef(initExpr);
              if (getExpressionId(initExpr) != ExpressionId.Const) {
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
            if (getExpressionType(initExpr) == NativeType.I32) {
              val.constantValue = getConstValueI32(initExpr);
              val.set(CommonFlags.INLINED);
            } else {
              assert(false);
              val.constantValue = 0;
            }
          }
        }
        previousValue = <EnumValue>val;

        // export values if the enum is exported
        if (element.is(CommonFlags.MODULE_EXPORT)) {
          if (member.is(CommonFlags.INLINED) || this.options.hasFeature(Feature.MUTABLE_GLOBAL)) {
            module.addGlobalExport(member.internalName, mangleExportName(member));
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

  /** Compiles a top-level function given its declaration. */
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
      null, // no outer scope (is top level)
      (<FunctionPrototype>element).declaration.name
    );
  }

  /** Resolves the specified type arguments prior to compiling the resulting function instance. */
  compileFunctionUsingTypeArguments(
    prototype: FunctionPrototype,
    typeArguments: TypeNode[],
    contextualTypeArguments: Map<string,Type> | null,
    outerScope: Flow | null,
    reportNode: Node
  ): Function | null {
    var instance = prototype.resolveUsingTypeArguments( // reports
      typeArguments,
      contextualTypeArguments,
      reportNode
    );
    if (!instance) return null;
    instance.outerScope = outerScope;
    if (!this.compileFunction(instance)) return null; // reports
    return instance;
  }

  /** Either reuses or creates the function type matching the specified signature. */
  private ensureFunctionType(
    parameterTypes: Type[] | null,
    returnType: Type,
    thisType: Type | null = null
  ): FunctionTypeRef {
    var numParameters = parameterTypes ? parameterTypes.length : 0;
    var paramTypes: NativeType[];
    var index = 0;
    if (thisType) {
      paramTypes = new Array(1 + numParameters);
      paramTypes[0] = thisType.toNativeType();
      index = 1;
    } else {
      paramTypes = new Array(numParameters);
    }
    if (parameterTypes) {
      for (let i = 0; i < numParameters; ++i, ++index) {
        paramTypes[index] = parameterTypes[i].toNativeType();
      }
    }
    var resultType = returnType.toNativeType();
    var module = this.module;
    var typeRef = module.getFunctionTypeBySignature(resultType, paramTypes);
    if (!typeRef) {
      let name = Signature.makeSignatureString(parameterTypes, returnType, thisType);
      typeRef = module.addFunctionType(name, resultType, paramTypes);
    }
    return typeRef;
  }

  /** Compiles a readily resolved function instance. */
  compileFunction(instance: Function): bool {
    if (instance.is(CommonFlags.COMPILED)) return true;
    assert(!instance.is(CommonFlags.AMBIENT | CommonFlags.BUILTIN));
    instance.set(CommonFlags.COMPILED);

    // check that modifiers are matching
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
    var signature = instance.signature;
    var typeRef = this.ensureFunctionType(signature.parameterTypes, signature.returnType, signature.thisType);
    var module = this.module;
    if (body) {
      let isConstructor = instance.is(CommonFlags.CONSTRUCTOR);
      let returnType = instance.signature.returnType;

      // compile body
      let previousFunction = this.currentFunction;
      this.currentFunction = instance;
      let flow = instance.flow;
      let stmt: ExpressionRef;
      if (body.kind == NodeKind.EXPRESSION) { // () => expression
        assert(!instance.isAny(CommonFlags.CONSTRUCTOR | CommonFlags.GET | CommonFlags.SET | CommonFlags.MAIN));
        assert(instance.is(CommonFlags.ARROW));
        stmt = this.compileExpression(
          (<ExpressionStatement>body).expression,
          returnType,
          ConversionKind.IMPLICIT,
          WrapMode.NONE
        );
        flow.set(FlowFlags.RETURNS);
        if (!flow.canOverflow(stmt, returnType)) flow.set(FlowFlags.RETURNS_WRAPPED);
        flow.finalize();
      } else {
        assert(body.kind == NodeKind.BLOCK);
        let stmts = this.compileStatements((<BlockStatement>body).statements);
        if (instance.is(CommonFlags.MAIN)) {
          module.addGlobal("~started", NativeType.I32, true, module.createI32(0));
          stmts.unshift(
            module.createIf(
              module.createUnary(
                UnaryOp.EqzI32,
                module.createGetGlobal("~started", NativeType.I32)
              ),
              module.createBlock(null, [
                module.createCall("start", null, NativeType.None),
                module.createSetGlobal("~started", module.createI32(1))
              ])
            )
          );
        }
        flow.finalize();
        if (isConstructor) {
          let nativeSizeType = this.options.nativeSizeType;
          assert(instance.is(CommonFlags.INSTANCE));

          // implicitly return `this` if the constructor doesn't always return on its own
          if (!flow.is(FlowFlags.RETURNS)) {

            // if all branches are guaranteed to allocate, skip the final conditional allocation
            if (flow.is(FlowFlags.ALLOCATES)) {
              stmts.push(module.createGetLocal(0, nativeSizeType));

            // if not all branches are guaranteed to allocate, also append a conditional allocation
            } else {
              let parent = assert(instance.parent);
              assert(parent.kind == ElementKind.CLASS);
              stmts.push(module.createTeeLocal(0,
                this.makeConditionalAllocate(<Class>parent, declaration.name)
              ));
            }
          }

        // make sure all branches return
        } else if (returnType != Type.void && !flow.is(FlowFlags.RETURNS)) {
          this.error(
            DiagnosticCode.A_function_whose_declared_type_is_not_void_must_return_a_value,
            declaration.signature.returnType.range
          );
        }
        stmt = !stmts.length
          ? module.createNop()
          : stmts.length == 1
            ? stmts[0]
            : module.createBlock(null, stmts, returnType.toNativeType());
      }
      this.currentFunction = previousFunction;

      // create the function
      ref = module.addFunction(
        instance.internalName,
        typeRef,
        typesToNativeTypes(instance.additionalLocals),
        stmt
      );

      // concrete functions cannot have an annotated external name
      if (instance.hasDecorator(DecoratorFlags.EXTERNAL)) {
        let decorator = assert(findDecorator(DecoratorKind.EXTERNAL, declaration.decorators));
        this.error(
          DiagnosticCode.Operation_not_supported,
          decorator.range
        );
      }

    } else {
      instance.set(CommonFlags.MODULE_IMPORT);
      mangleImportName(instance, declaration, instance.prototype.parent); // TODO: check for duplicates

      // create the function import
      ref = module.addFunctionImport(
        instance.internalName,
        mangleImportName_moduleName,
        mangleImportName_elementName,
        typeRef
      );
    }

    // check module-level export
    if (instance.is(CommonFlags.MODULE_EXPORT)) {
      if (signature.requiredParameters < signature.parameterTypes.length) {
        // export the trampoline if the function takes optional parameters
        instance = this.ensureTrampoline(instance);
        this.ensureArgcSet();
      }
      module.addFunctionExport(instance.internalName, mangleExportName(instance));
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
        default: assert(false);
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
              null, // no contextual type arguments
              null, // no outer scope
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
    var fileLevelExports = this.program.fileLevelExports;
    var members = statement.members;
    if (!members) return; // filespace
    for (let i = 0, k = members.length; i < k; ++i) {
      let member = members[i];
      let internalExportName = (
        statement.range.source.internalPath +
        PATH_DELIMITER +
        member.externalName.text
      );
      let element = fileLevelExports.get(internalExportName);
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
              null, // no contextual type arguments
              null, // no outer scope
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

    var staticMembers = instance.prototype.members;
    if (staticMembers) {
      for (let element of staticMembers.values()) {
        switch (element.kind) {
          case ElementKind.GLOBAL: {
            this.compileGlobal(<Global>element);
            break;
          }
          case ElementKind.FUNCTION_PROTOTYPE: {
            if (
              !(<FunctionPrototype>element).is(CommonFlags.GENERIC)
            ) {
              this.compileFunctionUsingTypeArguments(
                <FunctionPrototype>element,
                [], null, null,
                (<FunctionPrototype>element).declaration.name
              );
            }
            break;
          }
          case ElementKind.PROPERTY: {
            let getter = (<Property>element).getterPrototype;
            if (getter) {
              this.compileFunctionUsingTypeArguments(
                getter,
                [], null, null,
                getter.declaration.name
              );
            }
            let setter = (<Property>element).setterPrototype;
            if (setter) {
              this.compileFunctionUsingTypeArguments(
                setter,
                [], null, null,
                setter.declaration.name
              );
            }
            break;
          }
        }
      }
    }
    var ctorInstance = instance.constructorInstance;
    if (ctorInstance) this.compileFunction(ctorInstance);
    var instanceMembers = instance.members;
    if (instanceMembers) {
      for (let element of instanceMembers.values()) {
        switch (element.kind) {
          case ElementKind.FUNCTION_PROTOTYPE: {
            if (
              !(<FunctionPrototype>element).is(CommonFlags.GENERIC)
            ) {
              this.compileFunctionUsingTypeArguments(
                <FunctionPrototype>element,
                [],
                instance.contextualTypeArguments,
                null, // no outer scope
                (<FunctionPrototype>element).declaration.name
              );
            }
            break;
          }
          case ElementKind.FIELD: {
            element.set(CommonFlags.COMPILED);
            if (!instance.is(CommonFlags.MODULE_EXPORT) || element.is(CommonFlags.PRIVATE)) break;
            let module = this.module;
            let name = (<Field>element).simpleName;
            let type = (<Field>element).type;
            let nativeType = type.toNativeType();
            let offset = (<Field>element).memoryOffset;
            let usizeType = this.options.usizeType;
            let nativeSizeType = this.options.nativeSizeType;

            // export an implicit getter: get:fieldName(this: usize) -> fieldType
            let getterName = mangleExportName(element, GETTER_PREFIX + name);
            module.addFunction(
              getterName,
              this.ensureFunctionType(null, type, usizeType),
              null,
              module.createLoad(
                type.byteSize,
                type.is(TypeFlags.SIGNED),
                module.createGetLocal(0, nativeSizeType),
                nativeType,
                offset
              )
            );
            module.addFunctionExport(getterName, getterName);

            // export an implicit setter: set:fieldName(this: usize, value: fieldType) -> void
            if (element.is(CommonFlags.READONLY)) break;
            let setterName = mangleExportName(element, SETTER_PREFIX + name);
            module.addFunction(
              setterName,
              this.ensureFunctionType([ type ], Type.void, usizeType),
              null,
              module.createStore(
                type.byteSize,
                module.createGetLocal(0, nativeSizeType),
                module.createGetLocal(1, nativeType),
                nativeType,
                offset
              )
            );
            module.addFunctionExport(setterName, setterName);
            break;
          }
          case ElementKind.PROPERTY: {
            let getter = (<Property>element).getterPrototype;
            if (getter) {
              this.compileFunctionUsingTypeArguments(
                getter,
                [], instance.contextualTypeArguments, null,
                getter.declaration.name
              );
            }
            let setter = (<Property>element).setterPrototype;
            if (setter) {
              this.compileFunctionUsingTypeArguments(
                setter,
                [], instance.contextualTypeArguments, null,
                setter.declaration.name
              );
            }
            break;
          }
        }
      }
    }
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
    var stmt: ExpressionRef;
    switch (statement.kind) {
      case NodeKind.BLOCK: {
        stmt = this.compileBlockStatement(<BlockStatement>statement);
        break;
      }
      case NodeKind.BREAK: {
        stmt = this.compileBreakStatement(<BreakStatement>statement);
        break;
      }
      case NodeKind.CONTINUE: {
        stmt = this.compileContinueStatement(<ContinueStatement>statement);
        break;
      }
      case NodeKind.DO: {
        stmt = this.compileDoStatement(<DoStatement>statement);
        break;
      }
      case NodeKind.EMPTY: {
        stmt = this.compileEmptyStatement(<EmptyStatement>statement);
        break;
      }
      case NodeKind.EXPRESSION: {
        stmt = this.compileExpressionStatement(<ExpressionStatement>statement);
        break;
      }
      case NodeKind.FOR: {
        stmt = this.compileForStatement(<ForStatement>statement);
        break;
      }
      case NodeKind.IF: {
        stmt = this.compileIfStatement(<IfStatement>statement);
        break;
      }
      case NodeKind.RETURN: {
        stmt = this.compileReturnStatement(<ReturnStatement>statement);
        break;
      }
      case NodeKind.SWITCH: {
        stmt = this.compileSwitchStatement(<SwitchStatement>statement);
        break;
      }
      case NodeKind.THROW: {
        stmt = this.compileThrowStatement(<ThrowStatement>statement);
        break;
      }
      case NodeKind.TRY: {
        stmt = this.compileTryStatement(<TryStatement>statement);
        break;
      }
      case NodeKind.VARIABLE: {
        stmt = this.compileVariableStatement(<VariableStatement>statement);
        if (!stmt) stmt = module.createNop();
        break;
      }
      case NodeKind.VOID: {
        stmt = this.compileVoidStatement(<VoidStatement>statement);
        break;
      }
      case NodeKind.WHILE: {
        stmt = this.compileWhileStatement(<WhileStatement>statement);
        break;
      }
      case NodeKind.TYPEDECLARATION: {
        // type declarations must be top-level because function bodies are evaluated when
        // reachaable only.
        if (this.currentFunction == this.startFunctionInstance) {
          return module.createNop();
        }
        // otherwise fall-through
      }
      default: {
        assert(false);
        stmt = module.createUnreachable();
      }
    }
    if (this.options.sourceMap) this.addDebugLocation(stmt, statement.range);
    return stmt;
  }

  compileStatements(statements: Statement[]): ExpressionRef[] {
    var numStatements = statements.length;
    var stmts = new Array<ExpressionRef>(numStatements);
    stmts.length = 0;
    var flow = this.currentFunction.flow;
    for (let i = 0; i < numStatements; ++i) {
      let stmt = this.compileStatement(statements[i]);
      switch (getExpressionId(stmt)) {
        case ExpressionId.Block: {
          if (!getBlockName(stmt)) {
            for (let j = 0, k = getBlockChildCount(stmt); j < k; ++j) stmts.push(getBlockChild(stmt, j));
            break;
          }
          // fall-through
        }
        default: stmts.push(stmt);
        case ExpressionId.Nop:
      }
      if (flow.isAny(FlowFlags.ANY_TERMINATING)) break;
    }
    return stmts;
  }

  compileBlockStatement(statement: BlockStatement): ExpressionRef {
    var statements = statement.statements;
    var parentFlow = this.currentFunction.flow;
    var flow = parentFlow.fork();
    this.currentFunction.flow = flow;

    var stmts = this.compileStatements(statements);
    var stmt = stmts.length == 0
      ? this.module.createNop()
      : stmts.length == 1
        ? stmts[0]
        : this.module.createBlock(null, stmts,getExpressionType(stmts[stmts.length - 1]));

    this.currentFunction.flow = flow.free();
    parentFlow.inherit(flow);
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
    var currentFunction = this.currentFunction;
    var module = this.module;

    var label = currentFunction.enterBreakContext();
    var parentFlow = currentFunction.flow;
    var flow = parentFlow.fork();
    currentFunction.flow = flow;
    var breakLabel = "break|" + label;
    flow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    flow.continueLabel = continueLabel;

    var body = this.compileStatement(statement.statement);
    var condExpr = this.makeIsTrueish(
      this.compileExpression(statement.condition, Type.i32, ConversionKind.NONE, WrapMode.NONE),
      this.currentType
    );
    // TODO: check if condition is always false and if so, omit it (just a block)

    // Switch back to the parent flow
    currentFunction.flow = flow.free();
    currentFunction.leaveBreakContext();
    var terminated = flow.isAny(FlowFlags.ANY_TERMINATING);
    flow.unset(
      FlowFlags.BREAKS |
      FlowFlags.CONDITIONALLY_BREAKS |
      FlowFlags.CONTINUES |
      FlowFlags.CONDITIONALLY_CONTINUES
    );
    parentFlow.inherit(flow);

    return module.createBlock(breakLabel, [
      module.createLoop(continueLabel,
        terminated
          ? body // skip trailing continue if unnecessary
          : module.createBlock(null, [
              body,
              module.createBreak(continueLabel, condExpr)
            ], NativeType.None)
      )
    ], terminated ? NativeType.Unreachable : NativeType.None);
  }

  compileEmptyStatement(statement: EmptyStatement): ExpressionRef {
    return this.module.createNop();
  }

  compileExpressionStatement(statement: ExpressionStatement): ExpressionRef {
    var expr = this.compileExpression(statement.expression, Type.void, ConversionKind.NONE, WrapMode.NONE);
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
    var label = currentFunction.enterBreakContext();
    var parentFlow = currentFunction.flow;
    var flow = parentFlow.fork();
    currentFunction.flow = flow;
    var breakLabel = flow.breakLabel = "break|" + label;
    flow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    flow.continueLabel = continueLabel;
    var repeatLabel = "repeat|" + label;

    // Compile in correct order
    var module = this.module;
    var initExpr = statement.initializer
      ? this.compileStatement(<Statement>statement.initializer)
      : 0;
    var condExpr: ExpressionRef = 0;
    var alwaysTrue = false;
    if (statement.condition) {
      condExpr = this.makeIsTrueish(
        this.compileExpressionRetainType(<Expression>statement.condition, Type.bool, WrapMode.NONE),
        this.currentType
      );
      // check if the condition is always true
      let condPre = this.precomputeExpressionRef(condExpr);
      if (getExpressionId(condPre) == ExpressionId.Const) {
        assert(getExpressionType(condPre) == NativeType.I32);
        if (getConstValueI32(condPre) != 0) alwaysTrue = true;
        // TODO: could skip compilation if the condition is always false here, but beware that the
        // initializer could still declare new 'var's that are used later on.
      }
      // recompile to original
      condExpr = this.makeIsTrueish(
        this.compileExpressionRetainType(<Expression>statement.condition, Type.bool, WrapMode.NONE),
        this.currentType
      );
    } else {
      // omitted condition is always true
      condExpr = module.createI32(1);
      alwaysTrue = true;
    }
    var incrExpr = statement.incrementor
      ? this.compileExpression(<Expression>statement.incrementor, Type.void, ConversionKind.IMPLICIT, WrapMode.NONE)
      : 0;
    var bodyExpr = this.compileStatement(statement.statement);

    // Switch back to the parent flow
    currentFunction.flow = flow.free();
    currentFunction.leaveBreakContext();
    var usesContinue = flow.isAny(FlowFlags.CONTINUES | FlowFlags.CONDITIONALLY_CONTINUES);
    flow.unset(
      FlowFlags.BREAKS |
      FlowFlags.CONDITIONALLY_BREAKS |
      FlowFlags.CONTINUES |
      FlowFlags.CONDITIONALLY_CONTINUES
    );
    var terminated = alwaysTrue && flow.isAny(FlowFlags.ANY_TERMINATING);
    if (alwaysTrue) parentFlow.inherit(flow);
    else parentFlow.inheritConditional(flow);

    var breakBlock = new Array<ExpressionRef>(); // outer 'break' block
    if (initExpr) breakBlock.push(initExpr);

    var repeatBlock = new Array<ExpressionRef>(); // block repeating the loop
    if (usesContinue) {
      repeatBlock.push(
        module.createBlock(continueLabel, [ // inner 'continue' block
          module.createBreak(breakLabel, module.createUnary(UnaryOp.EqzI32, condExpr)),
          bodyExpr
        ], NativeType.None)
      );
    } else { // can omit the 'continue' block
      repeatBlock.push(
        module.createBreak(breakLabel, module.createUnary(UnaryOp.EqzI32, condExpr))
      );
      repeatBlock.push(bodyExpr);
    }
    if (incrExpr) repeatBlock.push(incrExpr);
    repeatBlock.push(
      module.createBreak(repeatLabel)
    );

    breakBlock.push(
      module.createLoop(repeatLabel,
        module.createBlock(null, repeatBlock, NativeType.None)
      )
    );

    return module.createBlock(
      breakLabel,
      breakBlock,
      terminated
        ? NativeType.Unreachable
        : NativeType.None
      );
  }

  compileIfStatement(statement: IfStatement): ExpressionRef {
    var module = this.module;
    var currentFunction = this.currentFunction;
    var ifTrue = statement.ifTrue;
    var ifFalse = statement.ifFalse;

    // The condition doesn't initiate a branch yet
    var condExpr = this.makeIsTrueish(
      this.compileExpressionRetainType(statement.condition, Type.bool, WrapMode.NONE),
      this.currentType
    );

    if (
      !this.options.noTreeShaking ||
      this.currentFunction.isAny(CommonFlags.GENERIC | CommonFlags.GENERIC_CONTEXT)
    ) {
      // Try to eliminate unnecesssary branches if the condition is constant
      let condExprPrecomp = this.precomputeExpressionRef(condExpr);
      if (
        getExpressionId(condExprPrecomp) == ExpressionId.Const &&
        getExpressionType(condExprPrecomp) == NativeType.I32
      ) {
        return getConstValueI32(condExprPrecomp)
          ? this.compileStatement(ifTrue)
          : ifFalse
            ? this.compileStatement(ifFalse)
            : module.createNop();

      // Otherwise recompile to the original and let the optimizer decide
      } else /* if (condExpr != condExprPrecomp) <- not guaranteed */ {
        condExpr = this.makeIsTrueish(
          this.compileExpressionRetainType(statement.condition, Type.bool, WrapMode.NONE),
          this.currentType
        );
      }
    }

    // Each arm initiates a branch
    var parentFlow = currentFunction.flow;
    var ifTrueFlow = parentFlow.fork();
    currentFunction.flow = ifTrueFlow;
    var ifTrueExpr = this.compileStatement(ifTrue);
    currentFunction.flow = ifTrueFlow.free();

    var ifFalseExpr: ExpressionRef = 0;
    if (ifFalse) {
      let ifFalseFlow = parentFlow.fork();
      currentFunction.flow = ifFalseFlow;
      ifFalseExpr = this.compileStatement(ifFalse);
      currentFunction.flow = ifFalseFlow.free();
      parentFlow.inheritMutual(ifTrueFlow, ifFalseFlow);
    } else {
      parentFlow.inheritConditional(ifTrueFlow);
    }
    return module.createIf(condExpr, ifTrueExpr, ifFalseExpr);
  }

  compileReturnStatement(statement: ReturnStatement): ExpressionRef {
    var module = this.module;
    var currentFunction = this.currentFunction;
    var expr: ExpressionRef = 0;
    var flow = currentFunction.flow;

    // Remember that this flow returns
    flow.set(FlowFlags.RETURNS);

    if (statement.value) {
      let returnType = flow.returnType;
      if (returnType == Type.void) {
        this.compileExpressionRetainType(statement.value, returnType, WrapMode.NONE);
        this.error(
          DiagnosticCode.Type_0_is_not_assignable_to_type_1,
          statement.value.range, this.currentType.toString(), returnType.toString()
        );
        this.currentType = Type.void;
        return module.createUnreachable();
      }
      expr = this.compileExpression(
        statement.value,
        returnType,
        ConversionKind.IMPLICIT,
        currentFunction.is(CommonFlags.MODULE_EXPORT)
          ? WrapMode.WRAP
          : WrapMode.NONE
      );

      // Remember whether returning a properly wrapped value
      if (!flow.canOverflow(expr, returnType)) flow.set(FlowFlags.RETURNS_WRAPPED);
    }

    // If the last statement anyway, make it the block's return value
    if (isLastStatement(statement)) return expr ? expr : module.createNop();

    // When inlining, break to the end of the inlined function's block (no need to wrap)
    return flow.is(FlowFlags.INLINE_CONTEXT)
      ? module.createBreak(assert(flow.returnLabel), 0, expr)
      : module.createReturn(expr);
  }

  compileSwitchStatement(statement: SwitchStatement): ExpressionRef {
    var module = this.module;
    var currentFunction = this.currentFunction;

    var cases = statement.cases;
    var numCases = cases.length;
    if (!numCases) {
      return this.compileExpression(statement.condition, Type.void, ConversionKind.IMPLICIT, WrapMode.NONE);
    }

    // Everything within a switch uses the same break context
    var context = currentFunction.enterBreakContext();
    var parentFlow = currentFunction.flow;

    // introduce a local for evaluating the condition (exactly once)
    var tempLocal = currentFunction.getTempLocal(Type.u32, false);
    var tempLocalIndex = tempLocal.index;

    // Prepend initializer to inner block. Does not initiate a new branch, yet.
    var breaks = new Array<ExpressionRef>(1 + numCases);
    breaks[0] = module.createSetLocal( // initializer
      tempLocalIndex,
      this.compileExpression(statement.condition, Type.u32, ConversionKind.IMPLICIT, WrapMode.NONE)
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
            this.compileExpression(label, Type.u32, ConversionKind.IMPLICIT, WrapMode.NONE)
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
    var alwaysReturnsWrapped = true;
    var alwaysThrows = true;
    var alwaysAllocates = true;
    for (let i = 0; i < numCases; ++i) {
      let case_ = cases[i];
      let statements = case_.statements;
      let numStatements = statements.length;

      // Each switch case initiates a new branch
      let flow = parentFlow.fork();
      currentFunction.flow = flow;
      let breakLabel = "break|" + context;
      flow.breakLabel = breakLabel;

      let isLast = i == numCases - 1;
      let nextLabel = isLast ? breakLabel : "case" + (i + 1).toString(10) + "|" + context;
      let stmts = new Array<ExpressionRef>(1 + numStatements);
      stmts[0] = currentBlock;
      let count = 1;
      let terminated = false;
      for (let j = 0; j < numStatements; ++j) {
        let stmt = this.compileStatement(statements[j]);
        if (getExpressionId(stmt) != ExpressionId.Nop) {
          stmts[count++] = stmt;
          if (flow.isAny(FlowFlags.ANY_TERMINATING)) {
            terminated = true;
            break;
          }
        }
      }
      stmts.length = count;
      if (terminated || isLast) {
        if (!flow.is(FlowFlags.RETURNS)) alwaysReturns = false;
        if (!flow.is(FlowFlags.RETURNS_WRAPPED)) alwaysReturnsWrapped = false;
        if (!flow.is(FlowFlags.THROWS)) alwaysThrows = false;
        if (!flow.is(FlowFlags.ALLOCATES)) alwaysAllocates = false;
      }

      // Switch back to the parent flow
      flow.unset(
        FlowFlags.BREAKS |
        FlowFlags.CONDITIONALLY_BREAKS
      );
      currentFunction.flow = flow.free();
      currentBlock = module.createBlock(nextLabel, stmts, NativeType.None); // must be a labeled block
    }
    currentFunction.leaveBreakContext();

    // If the switch has a default (guaranteed to handle any value), propagate common flags
    if (defaultIndex >= 0) {
      if (alwaysReturns) parentFlow.set(FlowFlags.RETURNS);
      if (alwaysReturnsWrapped) parentFlow.set(FlowFlags.RETURNS_WRAPPED);
      if (alwaysThrows) parentFlow.set(FlowFlags.THROWS);
      if (alwaysAllocates) parentFlow.set(FlowFlags.ALLOCATES);
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
    return compileBuiltinAbort(this, null, statement);
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
      currentFunction == this.startFunctionInstance &&
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
    var flow = this.currentFunction.flow;
    for (let i = 0; i < numDeclarations; ++i) {
      let declaration = declarations[i];
      let name = declaration.name.text;
      let type: Type | null = null;
      let initExpr: ExpressionRef = 0;
      if (declaration.type) {
        type = program.resolveType( // reports
          declaration.type,
          flow.contextualTypeArguments
        );
        if (!type) continue;
        if (declaration.initializer) {
          initExpr = this.compileExpression( // reports
            declaration.initializer,
            type,
            ConversionKind.IMPLICIT,
            WrapMode.NONE
          );
        }
      } else if (declaration.initializer) { // infer type using void/NONE for proper literal inference
        initExpr = this.compileExpressionRetainType( // reports
          declaration.initializer,
          Type.void,
          WrapMode.NONE
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
        if (initExpr) {
          initExpr = this.precomputeExpressionRef(initExpr);
          if (getExpressionId(initExpr) == ExpressionId.Const) {
            let local = new Local(program, name, -1, type);
            switch (getExpressionType(initExpr)) {
              case NativeType.I32: {
                local = local.withConstantIntegerValue(
                  i64_new(
                    getConstValueI32(initExpr),
                    0
                  )
                );
                break;
              }
              case NativeType.I64: {
                local = local.withConstantIntegerValue(
                  i64_new(
                    getConstValueI64Low(initExpr),
                    getConstValueI64High(initExpr)
                  )
                );
                break;
              }
              case NativeType.F32: {
                local = local.withConstantFloatValue(<f64>getConstValueF32(initExpr));
                break;
              }
              case NativeType.F64: {
                local = local.withConstantFloatValue(getConstValueF64(initExpr));
                break;
              }
              default: {
                assert(false);
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
        let local: Local;
        if (
          declaration.isAny(CommonFlags.LET | CommonFlags.CONST) ||
          flow.is(FlowFlags.INLINE_CONTEXT)
        ) { // here: not top-level
          local = flow.addScopedLocal(type, name, false, declaration); // reports
        } else {
          local = currentFunction.addLocal(type, name, declaration); // reports
        }
        if (initExpr) {
          initializers.push(this.compileAssignmentWithValue(declaration.name, initExpr));
          if (local.type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
            flow.setLocalWrapped(local.index, !flow.canOverflow(initExpr, type));
          }
        } else if (local.type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
          flow.setLocalWrapped(local.index, true); // zero
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
    return this.compileExpression(statement.expression, Type.void, ConversionKind.EXPLICIT, WrapMode.NONE);
  }

  compileWhileStatement(statement: WhileStatement): ExpressionRef {
    var module = this.module;

    // The condition does not yet initialize a branch
    var condExpr = this.makeIsTrueish(
      this.compileExpressionRetainType(statement.condition, Type.bool, WrapMode.NONE),
      this.currentType
    );

    if (
      !this.options.noTreeShaking ||
      this.currentFunction.isAny(CommonFlags.GENERIC | CommonFlags.GENERIC_CONTEXT)
    ) {
      // Try to eliminate unnecesssary loops if the condition is constant
      let condExprPrecomp = this.precomputeExpressionRef(condExpr);
      if (
        getExpressionId(condExprPrecomp) == ExpressionId.Const &&
        getExpressionType(condExprPrecomp) == NativeType.I32
      ) {
        if (!getConstValueI32(condExprPrecomp)) return module.createNop();

      // Otherwise recompile to the original and let the optimizer decide
      } else /* if (condExpr != condExprPrecomp) <- not guaranteed */ {
        condExpr = this.makeIsTrueish(
          this.compileExpressionRetainType(statement.condition, Type.bool, WrapMode.NONE),
          this.currentType
        );
      }
    }

    // Statements initiate a new branch with its own break context
    var currentFunction = this.currentFunction;
    var label = currentFunction.enterBreakContext();
    var parentFlow = currentFunction.flow;
    var flow = parentFlow.fork();
    currentFunction.flow = flow;
    var breakLabel = "break|" + label;
    flow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    flow.continueLabel = continueLabel;

    var body = this.compileStatement(statement.statement);
    var alwaysTrue = false; // TODO
    var alwaysReturns = alwaysTrue && flow.is(FlowFlags.RETURNS);
    var terminated = flow.isAny(FlowFlags.ANY_TERMINATING);

    // Switch back to the parent flow
    currentFunction.flow = flow.free();
    currentFunction.leaveBreakContext();
    flow.unset(
      FlowFlags.BREAKS |
      FlowFlags.CONDITIONALLY_BREAKS |
      FlowFlags.CONTINUES |
      FlowFlags.CONDITIONALLY_CONTINUES
    );
    if (alwaysTrue) parentFlow.inherit(flow);
    else parentFlow.inheritConditional(flow);

    var expr = module.createBlock(breakLabel, [
      module.createLoop(continueLabel,
        module.createIf(condExpr,
          terminated
            ? body // skip trailing continue if unnecessary
            : module.createBlock(null, [
                body,
                module.createBreak(continueLabel)
              ], NativeType.None)
        )
      )
    ], alwaysReturns ? NativeType.Unreachable : NativeType.None);
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
        ); // recognized by canOverflow
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        let mask = element.type.computeSmallIntegerMask(Type.i32);
        return this.module.createI32(
          element.constantValueKind == ConstantValueKind.INTEGER
            ? i64_low(element.constantIntegerValue) & mask
            : 0
        ); // recognized by canOverflow
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
      case TypeKind.F64: {
        if (!(element.is(CommonFlags.BUILTIN) && contextualType == Type.f32)) {
          return this.module.createF64((<VariableLikeElement>element).constantFloatValue);
        }
        // otherwise fall-through: basically precomputes f32.demote/f64 of NaN / Infinity
        this.currentType = Type.f32;
      }
      case TypeKind.F32: {
        return this.module.createF32((<VariableLikeElement>element).constantFloatValue);
      }
      default: {
        assert(false);
        return this.module.createUnreachable();
      }
    }
  }

  compileExpression(
    expression: Expression,
    contextualType: Type,
    conversionKind: ConversionKind,
    wrapMode: WrapMode
  ): ExpressionRef {
    this.currentType = contextualType;

    var expr: ExpressionRef;
    switch (expression.kind) {
      case NodeKind.ASSERTION: {
        expr = this.compileAssertionExpression(<AssertionExpression>expression, contextualType);
        break;
      }
      case NodeKind.BINARY: {
        expr = this.compileBinaryExpression(<BinaryExpression>expression, contextualType);
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
      case NodeKind.SUPER:
      case NodeKind.TRUE: {
        expr = this.compileIdentifierExpression(
          <IdentifierExpression>expression,
          contextualType,
          conversionKind == ConversionKind.NONE // retain type of inlined constants
        );
        break;
      }
      case NodeKind.INSTANCEOF: {
        expr = this.compileInstanceOfExpression(<InstanceOfExpression>expression, contextualType);
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
        expr = this.compileParenthesizedExpression(<ParenthesizedExpression>expression, contextualType);
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
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, contextualType);
        break;
      }
      default: {
        assert(false);
        expr = this.module.createUnreachable();
      }
    }

    var currentType = this.currentType;
    if (conversionKind != ConversionKind.NONE && currentType != contextualType) {
      expr = this.convertExpression(expr, currentType, contextualType, conversionKind, wrapMode, expression);
      this.currentType = contextualType;
    } else if (wrapMode == WrapMode.WRAP) {
      expr = this.ensureSmallIntegerWrap(expr, currentType);
    }

    if (this.options.sourceMap) this.addDebugLocation(expr, expression.range);
    return expr;
  }

  compileExpressionRetainType(
    expression: Expression,
    contextualType: Type,
    wrapMode: WrapMode
  ): ExpressionRef {
    return this.compileExpression(
      expression,
      contextualType == Type.void
        ? Type.i32
        : contextualType,
      ConversionKind.NONE,
      wrapMode
    );
  }

  precomputeExpression(
    expression: Expression,
    contextualType: Type,
    conversionKind: ConversionKind,
    wrapMode: WrapMode
  ): ExpressionRef {
    return this.precomputeExpressionRef(
      this.compileExpression(expression, contextualType, conversionKind, wrapMode)
    );
  }

  precomputeExpressionRef(expr: ExpressionRef): ExpressionRef {
    var module = this.module;
    var type = this.currentType;
    var nativeType = type.toNativeType();
    var funcRef = module.addTemporaryFunction(nativeType, null, expr);
    module.runPasses([ "precompute" ], funcRef);
    var ret = getFunctionBody(funcRef);
    module.removeTemporaryFunction();
    return ret;
  }

  convertExpression(
    expr: ExpressionRef,
    fromType: Type,
    toType: Type,
    conversionKind: ConversionKind,
    wrapMode: WrapMode,
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
    if (toType.kind == TypeKind.VOID) return module.createDrop(expr);

    if (!fromType.isAssignableTo(toType)) {
      if (conversionKind == ConversionKind.IMPLICIT) {
        this.error(
          DiagnosticCode.Conversion_from_type_0_to_1_requires_an_explicit_cast,
          reportNode.range, fromType.toString(), toType.toString()
        ); // recoverable
      }
    }

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
            }
          } else {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.createUnary(UnaryOp.TruncF32ToU64, expr);
            } else {
              expr = module.createUnary(UnaryOp.TruncF32ToU32, expr);
            }
          }

        // f64 to int
        } else {
          if (toType.is(TypeFlags.SIGNED)) {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.createUnary(UnaryOp.TruncF64ToI64, expr);
            } else {
              expr = module.createUnary(UnaryOp.TruncF64ToI32, expr);
            }
          } else {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.createUnary(UnaryOp.TruncF64ToU64, expr);
            } else {
              expr = module.createUnary(UnaryOp.TruncF64ToU32, expr);
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
      // i64 to ...
      if (fromType.is(TypeFlags.LONG)) {

        // i64 to i32 or smaller
        if (!toType.is(TypeFlags.LONG)) {
          expr = module.createUnary(UnaryOp.WrapI64, expr); // discards upper bits
        }

      // i32 or smaller to i64
      } else if (toType.is(TypeFlags.LONG)) {
        expr = module.createUnary(
          toType.is(TypeFlags.SIGNED) ? UnaryOp.ExtendI32 : UnaryOp.ExtendU32,
          this.ensureSmallIntegerWrap(expr, fromType) // must clear garbage bits
        );
        wrapMode = WrapMode.NONE;

      // i32 to i32
      } else {
        // small i32 to ...
        if (fromType.is(TypeFlags.SHORT)) {
          // small i32 to larger i32
          if (fromType.size < toType.size) {
            expr = this.ensureSmallIntegerWrap(expr, fromType); // must clear garbage bits
            wrapMode = WrapMode.NONE;
          }
        }
      }
    }

    this.currentType = toType;
    return wrapMode == WrapMode.WRAP
      ? this.ensureSmallIntegerWrap(expr, toType)
      : expr;
  }

  compileAssertionExpression(expression: AssertionExpression, contextualType: Type): ExpressionRef {
    var toType = this.program.resolveType( // reports
      expression.toType,
      this.currentFunction.flow.contextualTypeArguments
    );
    if (!toType) return this.module.createUnreachable();
    return this.compileExpression(expression.expression, toType, ConversionKind.EXPLICIT, WrapMode.NONE);
  }

  private f32ModInstance: Function | null = null;
  private f64ModInstance: Function | null = null;
  private f32PowInstance: Function | null = null;
  private f64PowInstance: Function | null = null;

  compileBinaryExpression(
    expression: BinaryExpression,
    contextualType: Type
  ): ExpressionRef {
    var module = this.module;
    var left = expression.left;
    var right = expression.right;

    var leftExpr: ExpressionRef;
    var leftType: Type;
    var rightExpr: ExpressionRef;
    var rightType: Type;
    var commonType: Type | null;

    var expr: ExpressionRef;
    var compound = false;

    var operator = expression.operator;
    switch (operator) {
      case Token.LESSTHAN: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.LT);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, true)) {
          leftExpr = this.convertExpression(
            leftExpr,
            leftType,
            leftType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            left
          );
          rightExpr = this.convertExpression(
            rightExpr,
            rightType,
            rightType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            right
          );
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
          case TypeKind.USIZE: {
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
            expr = module.createUnreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.GREATERTHAN: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.GT);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, true)) {
          leftExpr = this.convertExpression(
            leftExpr,
            leftType,
            leftType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            left
          );
          rightExpr = this.convertExpression(
            rightExpr,
            rightType,
            rightType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            right
          );
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
          case TypeKind.USIZE: {
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
            expr = module.createUnreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.LESSTHAN_EQUALS: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.LE);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, true)) {
          leftExpr = this.convertExpression(
            leftExpr,
            leftType,
            leftType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            left
          );
          rightExpr = this.convertExpression(
            rightExpr,
            rightType,
            rightType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            right
          );
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
          case TypeKind.USIZE: {
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
            expr = module.createUnreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.GREATERTHAN_EQUALS: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.GE);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, true)) {
          leftExpr = this.convertExpression(
            leftExpr,
            leftType,
            leftType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            left
          );
          rightExpr = this.convertExpression(
            rightExpr,
            rightType,
            rightType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            right
          );
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
          case TypeKind.USIZE: {
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
            expr = module.createUnreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }

      case Token.EQUALS_EQUALS_EQUALS:
      case Token.EQUALS_EQUALS: {

        // NOTE that this favors correctness, in terms of emitting a binary expression, over
        // checking for a possible use of unary EQZ. while the most classic of all optimizations,
        // that's not what the source told us to do. for reference, `!left` emits unary EQZ.

        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

         // check operator overload
        if (operator == Token.EQUALS_EQUALS && this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.EQ);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          // still allow '==' with references
        }

        rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, false)) {
          leftExpr = this.convertExpression(
            leftExpr,
            leftType,
            leftType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            left
          );
          rightExpr = this.convertExpression(
            rightExpr,
            rightType,
            rightType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            right
          );
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
          case TypeKind.USIZE:
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
            expr = module.createUnreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.EXCLAMATION_EQUALS_EQUALS:
      case Token.EXCLAMATION_EQUALS: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

         // check operator overload
        if (operator == Token.EXCLAMATION_EQUALS && this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.NE);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          // still allow '!=' with references
        }

        rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
        rightType = this.currentType;
        if (commonType = Type.commonCompatible(leftType, rightType, false)) {
          leftExpr = this.convertExpression(
            leftExpr,
            leftType,
            leftType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            left
          );
          rightExpr = this.convertExpression(
            rightExpr,
            rightType,
            rightType = commonType,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP,
            right
          );
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
          case TypeKind.USIZE:
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
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.ADD);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.NONE);
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(
              leftExpr,
              leftType,
              leftType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              left
            );
            rightExpr = this.convertExpression(
              rightExpr,
              rightType,
              rightType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              right
            );
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
          case TypeKind.I8:   // addition might overflow
          case TypeKind.I16:  // ^
          case TypeKind.U8:   // ^
          case TypeKind.U16:  // ^
          case TypeKind.BOOL: // ^
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.AddI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
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
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.MINUS_EQUALS: compound = true;
      case Token.MINUS: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.SUB);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.NONE);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(
              leftExpr,
              leftType,
              leftType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              left
            );
            rightExpr = this.convertExpression(
              rightExpr,
              rightType,
              rightType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              right
            );
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
          case TypeKind.I8:   // subtraction might overflow
          case TypeKind.I16:  // ^
          case TypeKind.U8:   // ^
          case TypeKind.U16:  // ^
          case TypeKind.BOOL: // ^
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.SubI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
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
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.ASTERISK_EQUALS: compound = true;
      case Token.ASTERISK: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.MUL);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        if (compound) {
          leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType);
          rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.WRAP);
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(
              leftExpr,
              leftType,
              leftType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              left
            );
            rightExpr = this.convertExpression(
              rightExpr,
              rightType,
              rightType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              right
            );
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
          case TypeKind.BOOL:
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.MulI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
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
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.ASTERISK_ASTERISK_EQUALS: compound = true;
      case Token.ASTERISK_ASTERISK: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.POW);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        let instance: Function | null;

        // Mathf.pow if lhs is f32 (result is f32)
        if (this.currentType.kind == TypeKind.F32) {
          rightExpr = this.compileExpression(right, Type.f32, ConversionKind.IMPLICIT, WrapMode.NONE);
          rightType = this.currentType;
          if (!(instance = this.f32PowInstance)) {
            let namespace = this.program.elementsLookup.get("Mathf");
            if (!namespace) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Mathf"
              );
              expr = module.createUnreachable();
              break;
            }
            let prototype = namespace.members ? namespace.members.get("pow") : null;
            if (!prototype) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Mathf.pow"
              );
              expr = module.createUnreachable();
              break;
            }
            assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
            this.f32PowInstance = instance = (<FunctionPrototype>prototype).resolve();
          }

        // Math.pow otherwise (result is f64)
        // TODO: should the result be converted back?
        } else {
          leftExpr = this.convertExpression(
            leftExpr,
            this.currentType,
            Type.f64,
            ConversionKind.IMPLICIT,
            WrapMode.NONE,
            left
          );
          leftType = this.currentType;
          rightExpr = this.compileExpression(
            right,
            Type.f64,
            ConversionKind.IMPLICIT,
            WrapMode.NONE
          );
          rightType = this.currentType;
          if (!(instance = this.f64PowInstance)) {
            let namespace = this.program.elementsLookup.get("Math");
            if (!namespace) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Math"
              );
              expr = module.createUnreachable();
              break;
            }
            let prototype = namespace.members ? namespace.members.get("pow") : null;
            if (!prototype) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Math.pow"
              );
              expr = module.createUnreachable();
              break;
            }
            assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
            this.f64PowInstance = instance = (<FunctionPrototype>prototype).resolve();
          }
        }
        if (!(instance && this.compileFunction(instance))) {
          expr = module.createUnreachable();
        } else {
          expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ]);
        }
        break;
      }
      case Token.SLASH_EQUALS: compound = true;
      case Token.SLASH: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.DIV);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        if (compound) {
          leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType);
          rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.WRAP);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(
              leftExpr,
              leftType,
              leftType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.WRAP, // !
              left
            );
            rightExpr = this.convertExpression(
              rightExpr,
              rightType,
              rightType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.WRAP, // !
              right
            );
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
          case TypeKind.I8:  // signed div on signed small integers might overflow, e.g. -128/-1
          case TypeKind.I16: // ^
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
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.DivU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.DivU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
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
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.PERCENT_EQUALS: compound = true;
      case Token.PERCENT: {
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.REM);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        if (compound) {
          leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType);
          rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.WRAP);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(
              leftExpr,
              leftType,
              leftType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.WRAP, // !
              left
            );
            rightExpr = this.convertExpression(
              rightExpr,
              rightType,
              rightType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.WRAP, // !
              right
            );
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
          case TypeKind.I16: {
            expr = module.createBinary(BinaryOp.RemI32, leftExpr, rightExpr);
            break;
          }
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
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.RemU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.RemU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
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
            let instance = this.f32ModInstance;
            if (!instance) {
              let namespace = this.program.elementsLookup.get("Mathf");
              if (!namespace) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Mathf"
                );
                expr = module.createUnreachable();
                break;
              }
              let prototype = namespace.members ? namespace.members.get("mod") : null;
              if (!prototype) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Mathf.mod"
                );
                expr = module.createUnreachable();
                break;
              }
              assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
              this.f32ModInstance = instance = (<FunctionPrototype>prototype).resolve();
            }
            if (!(instance && this.compileFunction(instance))) {
              expr = module.createUnreachable();
            } else {
              expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ]);
            }
            break;
          }
          case TypeKind.F64: {
            let instance = this.f64ModInstance;
            if (!instance) {
              let namespace = this.program.elementsLookup.get("Math");
              if (!namespace) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Math"
                );
                expr = module.createUnreachable();
                break;
              }
              let prototype = namespace.members ? namespace.members.get("mod") : null;
              if (!prototype) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Math.mod"
                );
                expr = module.createUnreachable();
                break;
              }
              assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
              this.f64ModInstance = instance = (<FunctionPrototype>prototype).resolve();
            }
            if (!(instance && this.compileFunction(instance))) {
              expr = module.createUnreachable();
            } else {
              expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ]);
            }
            break;
          }
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.LESSTHAN_LESSTHAN_EQUALS: compound = true;
      case Token.LESSTHAN_LESSTHAN: {
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.BITWISE_SHL);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.NONE);
        rightType = this.currentType;
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.ShlI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.ShlI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
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
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.GREATERTHAN_GREATERTHAN_EQUALS: compound = true;
      case Token.GREATERTHAN_GREATERTHAN: {
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.BITWISE_SHR);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType); // must clear garbage bits
        rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.WRAP);
        rightType = this.currentType;
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16: {
            expr = module.createBinary(BinaryOp.ShrI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I32: {
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
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.ShrU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.ShrU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.ShrU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
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
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS: compound = true;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: {
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.BITWISE_SHR_U);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType); // must clear garbage bits
        rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.NONE);
        rightType = this.currentType;
        switch (this.currentType.kind) {
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: { // assumes that unsigned shr on unsigned small integers does not overflow
            expr = module.createBinary(BinaryOp.ShrU32, leftExpr, rightExpr);
          }
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.ShrU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.ShrU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
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
          case TypeKind.F32:
          case TypeKind.F64: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, operatorTokenToString(expression.operator), this.currentType.toString()
            );
            return module.createUnreachable();
          }
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.AMPERSAND_EQUALS: compound = true;
      case Token.AMPERSAND: {
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overloadd
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.BITWISE_AND);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.NONE);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(
              leftExpr,
              leftType,
              leftType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              left
            );
            rightExpr = this.convertExpression(
              rightExpr,
              rightType,
              rightType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              right
            );
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
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.AndI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.AndI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
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
          case TypeKind.F32:
          case TypeKind.F64: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, operatorTokenToString(expression.operator), this.currentType.toString()
            );
            return module.createUnreachable();
          }
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.BAR_EQUALS: compound = true;
      case Token.BAR: {
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.BITWISE_OR);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.NONE);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(
              leftExpr,
              leftType,
              leftType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              left
            );
            rightExpr = this.convertExpression(
              rightExpr,
              rightType,
              rightType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              right
            );
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
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.OrI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.OrI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.OrI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
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
          case TypeKind.F32:
          case TypeKind.F64: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, operatorTokenToString(expression.operator), this.currentType.toString()
            );
            return module.createUnreachable();
          }
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.CARET_EQUALS: compound = true;
      case Token.CARET: {
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType, WrapMode.NONE);
        leftType = this.currentType;

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = leftType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.BITWISE_XOR);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.NONE);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType, WrapMode.NONE);
          rightType = this.currentType;
          if (commonType = Type.commonCompatible(leftType, rightType, false)) {
            leftExpr = this.convertExpression(
              leftExpr,
              leftType,
              leftType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              left
            );
            rightExpr = this.convertExpression(
              rightExpr,
              rightType,
              rightType = commonType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE,
              right
            );
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
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.XorI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.createBinary(BinaryOp.XorI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.XorI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
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
          case TypeKind.F32:
          case TypeKind.F64: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, operatorTokenToString(expression.operator), this.currentType.toString()
            );
            return module.createUnreachable();
          }
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }

      // logical (no overloading)

      case Token.AMPERSAND_AMPERSAND: { // left && right
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;
        rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.NONE);
        rightType = this.currentType;

        // simplify if cloning left without side effects is possible
        if (expr = module.cloneExpression(leftExpr, true, 0)) {
          this.makeIsTrueish(leftExpr, this.currentType);
          expr = module.createIf(
            this.makeIsTrueish(leftExpr, this.currentType),
            rightExpr,
            expr
          );

        // if not possible, tee left to a temp. local
        } else {
          let flow = this.currentFunction.flow;
          let tempLocal = this.currentFunction.getAndFreeTempLocal(
            this.currentType,
            !flow.canOverflow(leftExpr, this.currentType)
          );
          expr = module.createIf(
            this.makeIsTrueish(
              module.createTeeLocal(tempLocal.index, leftExpr),
              this.currentType
            ),
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
        leftExpr = this.compileExpressionRetainType(left, contextualType, WrapMode.NONE);
        leftType = this.currentType;
        rightExpr = this.compileExpression(right, leftType, ConversionKind.IMPLICIT, WrapMode.NONE);
        rightType = this.currentType;

        // simplify if cloning left without side effects is possible
        if (expr = this.module.cloneExpression(leftExpr, true, 0)) {
          expr = this.module.createIf(
            this.makeIsTrueish(leftExpr, this.currentType),
            expr,
            rightExpr
          );

        // if not possible, tee left to a temp. local
        } else {
          let flow = this.currentFunction.flow;
          let tempLocal = this.currentFunction.getAndFreeTempLocal(
            this.currentType,
            !flow.canOverflow(leftExpr, this.currentType)
          );
          expr = module.createIf(
            this.makeIsTrueish(
              module.createTeeLocal(tempLocal.index, leftExpr),
              this.currentType
            ),
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
        expr = this.module.createUnreachable();
      }
    }
    return compound
      ? this.compileAssignmentWithValue(left, expr, contextualType != Type.void)
      : expr;
  }

  compileUnaryOverload(
    operatorInstance: Function,
    value: Expression,
    valueExpr: ExpressionRef,
    reportNode: Node
  ): ExpressionRef {
    var argumentExpressions: Expression[];
    var thisArg: ExpressionRef = 0;
    if (operatorInstance.is(CommonFlags.INSTANCE)) {
      thisArg = valueExpr;  // can reuse the previously evaluated expr as the this value here
      argumentExpressions = [];
    } else {
      argumentExpressions = [ value ]; // annotated type might differ -> recompile
    }
    return this.compileCallDirect(
      operatorInstance,
      argumentExpressions,
      reportNode,
      thisArg,
      operatorInstance.hasDecorator(DecoratorFlags.INLINE)
    );
  }

  compileBinaryOverload(
    operatorInstance: Function,
    left: Expression,
    leftExpr: ExpressionRef,
    right: Expression,
    reportNode: Node
  ): ExpressionRef {
    var argumentExpressions: Expression[];
    var thisArg: ExpressionRef = 0;
    if (operatorInstance.is(CommonFlags.INSTANCE)) {
      let parent = assert(operatorInstance.parent);
      assert(parent.kind == ElementKind.CLASS);
      thisArg = leftExpr; // can reuse the previously evaluated leftExpr as the this value here
      argumentExpressions = [ right ];
    } else {
      argumentExpressions = [ left, right ]; // annotated type of LHS might differ -> recompile
    }
    var ret = this.compileCallDirect(
      operatorInstance,
      argumentExpressions,
      reportNode,
      thisArg,
      operatorInstance.hasDecorator(DecoratorFlags.INLINE)
    );
    return ret;
  }

  compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): ExpressionRef {
    var program = this.program;
    var currentFunction = this.currentFunction;
    var target = program.resolveExpression(expression, currentFunction); // reports
    if (!target) return this.module.createUnreachable();

    // to compile just the value, we need to know the target's type
    var targetType: Type;
    switch (target.kind) {
      case ElementKind.GLOBAL: {
        if (!this.compileGlobal(<Global>target)) { // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        }
        assert((<Global>target).type != Type.void); // compileGlobal must guarantee this
        // fall-through
      }
      case ElementKind.LOCAL:
      case ElementKind.FIELD: {
        targetType = (<VariableLikeElement>target).type;
        break;
      }
      case ElementKind.PROPERTY: {
        let prototype = (<Property>target).setterPrototype;
        if (prototype) {
          let instance = prototype.resolve(); // reports
          if (!instance) return this.module.createUnreachable();
          assert(instance.signature.parameterTypes.length == 1); // parser must guarantee this
          targetType = instance.signature.parameterTypes[0];
          break;
        }
        this.error(
          DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
          expression.range, (<Property>target).internalName
        );
        return this.module.createUnreachable();
      }
      case ElementKind.CLASS: {
        if (program.resolvedElementExpression) { // indexed access
          let isUnchecked = currentFunction.flow.is(FlowFlags.UNCHECKED_CONTEXT);
          let indexedSet = (<Class>target).lookupOverload(OperatorKind.INDEXED_SET, isUnchecked);
          if (!indexedSet) {
            let indexedGet = (<Class>target).lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
            if (!indexedGet) {
              this.error(
                DiagnosticCode.Index_signature_is_missing_in_type_0,
                expression.range, (<Class>target).internalName
              );
            } else {
              this.error(
                DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
                expression.range, (<Class>target).internalName
              );
            }
            return this.module.createUnreachable();
          }
          assert(indexedSet.signature.parameterTypes.length == 2); // parser must guarantee this
          targetType = indexedSet.signature.parameterTypes[1];    // 2nd parameter is the element
          break;
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
    assert(targetType != Type.void);
    var valueExpr = this.compileExpression(valueExpression, targetType, ConversionKind.IMPLICIT, WrapMode.NONE);
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
    var target = this.program.resolveExpression(expression, this.currentFunction); // reports
    if (!target) return module.createUnreachable();

    switch (target.kind) {
      case ElementKind.LOCAL: {
        let type = (<Local>target).type;
        assert(type != Type.void);
        this.currentType = tee ? type : Type.void;
        if ((<Local>target).is(CommonFlags.CONST)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, target.internalName
          );
          return module.createUnreachable();
        }
        let flow = this.currentFunction.flow;
        if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
          flow.setLocalWrapped((<Local>target).index, !flow.canOverflow(valueWithCorrectType, type));
        }
        return tee
          ? module.createTeeLocal((<Local>target).index, valueWithCorrectType)
          : module.createSetLocal((<Local>target).index, valueWithCorrectType);
      }
      case ElementKind.GLOBAL: {
        if (!this.compileGlobal(<Global>target)) return module.createUnreachable();
        let type = (<Global>target).type;
        assert(type != Type.void);
        this.currentType = tee ? type : Type.void;
        if ((<Local>target).is(CommonFlags.CONST)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range,
            target.internalName
          );
          return module.createUnreachable();
        }
        valueWithCorrectType = this.ensureSmallIntegerWrap(valueWithCorrectType, type); // guaranteed
        if (tee) {
          let nativeType = type.toNativeType();
          let internalName = target.internalName;
          return module.createBlock(null, [ // emulated teeGlobal
            module.createSetGlobal(internalName, valueWithCorrectType),
            module.createGetGlobal(internalName, nativeType)
          ], nativeType);
        } else {
          return module.createSetGlobal(target.internalName, valueWithCorrectType);
        }
      }
      case ElementKind.FIELD: {
        const declaration = (<Field>target).declaration;
        if (
          (<Field>target).is(CommonFlags.READONLY) &&
          !(
            this.currentFunction.is(CommonFlags.CONSTRUCTOR) ||
            declaration == null ||
            declaration.initializer != null
          )
        ) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, (<Field>target).internalName
          );
          return module.createUnreachable();
        }
        let thisExpression = assert(this.program.resolvedThisExpression);
        let thisExpr = this.compileExpressionRetainType(
          thisExpression,
          this.options.usizeType,
          WrapMode.NONE
        );
        let type = (<Field>target).type;
        this.currentType = tee ? type : Type.void;
        let nativeType = type.toNativeType();
        if (type.kind == TypeKind.BOOL) {
          // make sure bools are wrapped (usually are) when storing as 8 bits
          valueWithCorrectType = this.ensureSmallIntegerWrap(valueWithCorrectType, type);
        }
        if (tee) {
          let currentFunction = this.currentFunction;
          let flow = currentFunction.flow;
          let tempLocal = currentFunction.getAndFreeTempLocal(
            type,
            !flow.canOverflow(valueWithCorrectType, type)
          );
          let tempLocalIndex = tempLocal.index;
          // TODO: simplify if valueWithCorrectType has no side effects
          return module.createBlock(null, [
            module.createSetLocal(tempLocalIndex, valueWithCorrectType),
            module.createStore(
              type.byteSize,
              thisExpr,
              module.createGetLocal(tempLocalIndex, nativeType),
              nativeType,
              (<Field>target).memoryOffset
            ),
            module.createGetLocal(tempLocalIndex, nativeType)
          ], nativeType);
        } else {
          return module.createStore(
            type.byteSize,
            thisExpr,
            valueWithCorrectType,
            nativeType,
            (<Field>target).memoryOffset
          );
        }
      }
      case ElementKind.PROPERTY: {
        let setterPrototype = (<Property>target).setterPrototype;
        if (setterPrototype) {
          let setterInstance = setterPrototype.resolve(); // reports
          if (!setterInstance) return module.createUnreachable();

          // call just the setter if the return value isn't of interest
          if (!tee) {
            if (setterInstance.is(CommonFlags.INSTANCE)) {
              let thisExpression = assert(this.program.resolvedThisExpression);
              let thisExpr = this.compileExpressionRetainType(
                thisExpression,
                this.options.usizeType,
                WrapMode.NONE
              );
              return this.makeCallDirect(setterInstance, [ thisExpr, valueWithCorrectType ]);
            } else {
              return this.makeCallDirect(setterInstance, [ valueWithCorrectType ]);
            }
          }

          // otherwise call the setter first, then the getter
          let getterPrototype = (<Property>target).getterPrototype;
          assert(getterPrototype != null); // must have one if there is a setter
          let getterInstance = (<FunctionPrototype>getterPrototype).resolve(); // reports
          if (!getterInstance) return module.createUnreachable();
          let returnType = getterInstance.signature.returnType;
          let nativeReturnType = returnType.toNativeType();
          if (setterInstance.is(CommonFlags.INSTANCE)) {
            let thisExpression = assert(this.program.resolvedThisExpression);
            let thisExpr = this.compileExpressionRetainType(
              thisExpression,
              this.options.usizeType,
              WrapMode.NONE
            );
            let tempLocal = this.currentFunction.getAndFreeTempLocal(returnType, false);
            let tempLocalIndex = tempLocal.index;
            return module.createBlock(null, [
              this.makeCallDirect(setterInstance, [ // set and remember the target
                module.createTeeLocal(tempLocalIndex, thisExpr),
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
            expression.range, target.internalName
          );
        }
        return module.createUnreachable();
      }
      case ElementKind.CLASS: {
        let elementExpression = this.program.resolvedElementExpression;
        if (elementExpression) {
          let isUnchecked = this.currentFunction.flow.is(FlowFlags.UNCHECKED_CONTEXT);
          let indexedGet = (<Class>target).lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
          if (!indexedGet) {
            this.error(
              DiagnosticCode.Index_signature_is_missing_in_type_0,
              expression.range, target.internalName
            );
            return module.createUnreachable();
          }
          let indexedSet = (<Class>target).lookupOverload(OperatorKind.INDEXED_SET, isUnchecked);
          if (!indexedSet) {
            this.error(
              DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
              expression.range, target.internalName
            );
            this.currentType = tee ? indexedGet.signature.returnType : Type.void;
            return module.createUnreachable();
          }
          let targetType = (<Class>target).type;
          let thisExpression = assert(this.program.resolvedThisExpression);
          let thisExpr = this.compileExpressionRetainType(
            thisExpression,
            this.options.usizeType,
            WrapMode.NONE
          );
          let elementExpr = this.compileExpression(
            elementExpression,
            Type.i32,
            ConversionKind.IMPLICIT,
            WrapMode.NONE
          );
          if (tee) {
            let currentFunction = this.currentFunction;
            let tempLocalTarget = currentFunction.getTempLocal(targetType, false);
            let tempLocalElement = currentFunction.getAndFreeTempLocal(this.currentType, false);
            let returnType = indexedGet.signature.returnType;
            this.currentFunction.freeTempLocal(tempLocalTarget);
            return module.createBlock(null, [
              this.makeCallDirect(indexedSet, [
                module.createTeeLocal(tempLocalTarget.index, thisExpr),
                module.createTeeLocal(tempLocalElement.index, elementExpr),
                valueWithCorrectType
              ]),
              this.makeCallDirect(indexedGet, [
                module.createGetLocal(tempLocalTarget.index, tempLocalTarget.type.toNativeType()),
                module.createGetLocal(tempLocalElement.index, tempLocalElement.type.toNativeType())
              ])
            ], returnType.toNativeType());
          } else {
            return this.makeCallDirect(indexedSet, [
              thisExpr,
              elementExpr,
              valueWithCorrectType
            ]);
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
    var target = this.program.resolveExpression(expression.expression, currentFunction); // reports
    if (!target) return module.createUnreachable();

    var signature: Signature | null;
    var indexArg: ExpressionRef;
    switch (target.kind) {

      // direct call: concrete function
      case ElementKind.FUNCTION_PROTOTYPE: {
        let prototype = <FunctionPrototype>target;
        let typeArguments = expression.typeArguments;

        // builtins handle present respectively omitted type arguments on their own
        if (prototype.is(CommonFlags.AMBIENT | CommonFlags.BUILTIN)) {
          return this.compileCallExpressionBuiltin(prototype, expression, contextualType);
        }

        let instance: Function | null = null;

        // resolve generic call if type arguments have been provided
        if (typeArguments) {
          if (!prototype.is(CommonFlags.GENERIC)) {
            this.error(
              DiagnosticCode.Type_0_is_not_generic,
              expression.expression.range, prototype.internalName
            );
            return module.createUnreachable();
          }
          instance = prototype.resolveUsingTypeArguments( // reports
            typeArguments,
            this.currentFunction.flow.contextualTypeArguments,
            expression
          );

        // infer generic call if type arguments have been omitted
        } else if (prototype.is(CommonFlags.GENERIC)) {
          let inferredTypes = new Map<string,Type | null>();
          let typeParameters = assert(prototype.declaration.typeParameters);
          let numTypeParameters = typeParameters.length;
          for (let i = 0; i < numTypeParameters; ++i) {
            inferredTypes.set(typeParameters[i].name.text, null);
          }
          // let numInferred = 0;
          let parameterTypes = prototype.declaration.signature.parameters;
          let numParameterTypes = parameterTypes.length;
          let argumentExpressions = expression.arguments;
          let numArguments = argumentExpressions.length;
          let argumentExprs = new Array<ExpressionRef>(numArguments);
          for (let i = 0; i < numParameterTypes; ++i) {
            let typeNode = parameterTypes[i].type;
            let name = typeNode.kind == NodeKind.TYPE ? (<TypeNode>typeNode).name.text : null;
            let argumentExpression = i < numArguments
              ? argumentExpressions[i]
              : prototype.declaration.signature.parameters[i].initializer;
            if (!argumentExpression) { // missing initializer -> too few arguments
              this.error(
                DiagnosticCode.Expected_0_arguments_but_got_1,
                expression.range, numParameterTypes.toString(10), numArguments.toString(10)
              );
              return module.createUnreachable();
            }
            if (name !== null && inferredTypes.has(name)) {
              let inferredType = inferredTypes.get(name);
              if (inferredType) {
                argumentExprs[i] = this.compileExpressionRetainType(argumentExpression, inferredType, WrapMode.NONE);
                let commonType: Type | null;
                if (!(commonType = Type.commonCompatible(inferredType, this.currentType, true))) {
                  if (!(commonType = Type.commonCompatible(inferredType, this.currentType, false))) {
                    this.error(
                      DiagnosticCode.Type_0_is_not_assignable_to_type_1,
                      parameterTypes[i].type.range, this.currentType.toString(), inferredType.toString()
                    );
                    return module.createUnreachable();
                  }
                }
                inferredType = commonType;
              } else {
                argumentExprs[i] = this.compileExpressionRetainType(argumentExpression, Type.i32, WrapMode.NONE);
                inferredType = this.currentType;
                // ++numInferred;
              }
              inferredTypes.set(name, inferredType);
            } else {
              let concreteType = this.program.resolveType(
                parameterTypes[i].type,
                this.currentFunction.flow.contextualTypeArguments,
                true
              );
              if (!concreteType) return module.createUnreachable();
              argumentExprs[i] = this.compileExpression(
                argumentExpression,
                concreteType,
                ConversionKind.IMPLICIT,
                WrapMode.NONE
              );
            }
          }
          let resolvedTypeArguments = new Array<Type>(numTypeParameters);
          for (let i = 0; i < numTypeParameters; ++i) {
            let inferredType = assert(inferredTypes.get(typeParameters[i].name.text)); // TODO
            resolvedTypeArguments[i] = inferredType;
          }
          instance = prototype.resolve(
            resolvedTypeArguments,
            this.currentFunction.flow.contextualTypeArguments
          );
          if (!instance) return this.module.createUnreachable();
          return this.makeCallDirect(instance, argumentExprs);
          // TODO: this skips inlining because inlining requires compiling its temporary locals in
          // the scope of the inlined flow. might need another mechanism to lock temp. locals early,
          // so inlining can be performed in `makeCallDirect` instead?

        // otherwise resolve the non-generic call as usual
        } else {
          instance = prototype.resolve(
            null,
            this.currentFunction.flow.contextualTypeArguments
          );
        }
        if (!instance) return this.module.createUnreachable();

        // compile 'this' expression if an instance method
        let thisExpr: ExpressionRef = 0;
        if (instance.is(CommonFlags.INSTANCE)) {
          thisExpr = this.compileExpressionRetainType(
            assert(this.program.resolvedThisExpression),
            this.options.usizeType,
            WrapMode.NONE
          );
        }

        return this.compileCallDirect(
          instance,
          expression.arguments,
          expression,
          thisExpr,
          instance.hasDecorator(DecoratorFlags.INLINE)
        );
      }

      // indirect call: index argument with signature (non-generic, can't be inlined)
      case ElementKind.LOCAL: {
        if (signature = (<Local>target).type.signatureReference) {
          indexArg = module.createGetLocal((<Local>target).index, NativeType.I32);
          break;
        } else {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, (<Local>target).type.toString()
          );
          return module.createUnreachable();
        }
      }
      case ElementKind.GLOBAL: {
        if (signature = (<Global>target).type.signatureReference) {
          indexArg = module.createGetGlobal((<Global>target).internalName, (<Global>target).type.toNativeType());
          break;
        } else {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, (<Global>target).type.toString()
          );
          return module.createUnreachable();
        }
      }
      case ElementKind.FIELD: {
        let type = (<Field>target).type;
        if (signature = type.signatureReference) {
          let thisExpression = assert(this.program.resolvedThisExpression);
          let thisExpr = this.compileExpressionRetainType(
            thisExpression,
            this.options.usizeType,
            WrapMode.NONE
          );
          indexArg = module.createLoad(
            4,
            false,
            thisExpr,
            NativeType.I32,
            (<Field>target).memoryOffset
          );
          break;
        } else {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, (<Field>target).type.toString()
          );
          return module.createUnreachable();
        }
      }
      case ElementKind.FUNCTION_TARGET: {
        signature = (<FunctionTarget>target).signature;
        indexArg = this.compileExpression(
          expression.expression,
          (<FunctionTarget>target).type,
          ConversionKind.IMPLICIT,
          WrapMode.NONE
        );
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

  private compileCallExpressionBuiltin(
    prototype: FunctionPrototype,
    expression: CallExpression,
    contextualType: Type
  ): ExpressionRef {
    var expr = compileBuiltinCall( // reports
      this,
      prototype,
      prototype.resolveBuiltinTypeArguments(
        expression.typeArguments,
        this.currentFunction.flow.contextualTypeArguments
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
      return this.module.createUnreachable();
    }
    return expr;
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
    thisArg: ExpressionRef = 0,
    inline: bool = false
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

    // Inline if explicitly requested
    if (inline) {
      assert(!instance.is(CommonFlags.TRAMPOLINE)); // doesn't make sense
      return this.compileCallInlineUnchecked(instance, argumentExpressions, reportNode, thisArg);
    }

    // Otherwise compile to just a call
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
        parameterTypes[i],
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
    }
    assert(index == numArgumentsInclThis);
    return this.makeCallDirect(instance, operands);
  }

  // Depends on being pre-checked in compileCallDirect
  private compileCallInlineUnchecked(
    instance: Function,
    argumentExpressions: Expression[],
    reportNode: Node,
    thisArg: ExpressionRef = 0
  ): ExpressionRef {
    var numArguments = argumentExpressions.length;
    var signature = instance.signature;
    var currentFunction = this.currentFunction;
    var module = this.module;
    var declaration = instance.prototype.declaration;

    // Create an empty child flow with its own scope and mark it for inlining
    var previousFlow = currentFunction.flow;
    var returnLabel = instance.internalName + "|inlined." + (instance.nextInlineId++).toString(10);
    var returnType = instance.signature.returnType;
    var flow = Flow.create(currentFunction);
    flow.set(FlowFlags.INLINE_CONTEXT);
    flow.returnLabel = returnLabel;
    flow.returnType = returnType;
    flow.contextualTypeArguments = instance.contextualTypeArguments;

    // Convert provided call arguments to temporary locals. It is important that these are compiled
    // here, with their respective locals being blocked. There is no 'makeCallInline'.
    var body = [];
    if (thisArg) {
      let parent = assert(instance.parent);
      assert(parent.kind == ElementKind.CLASS);
      if (getExpressionId(thisArg) == ExpressionId.GetLocal) {
        flow.addScopedLocalAlias(
          getGetLocalIndex(thisArg),
          (<Class>parent).type,
          "this"
        );
      } else {
        let thisLocal = flow.addScopedLocal((<Class>parent).type, "this", false);
        body.push(
          module.createSetLocal(thisLocal.index, thisArg)
        );
      }
    }
    var parameterTypes = signature.parameterTypes;
    for (let i = 0; i < numArguments; ++i) {
      let paramExpr = this.compileExpression(
        argumentExpressions[i],
        parameterTypes[i],
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      if (getExpressionId(paramExpr) == ExpressionId.GetLocal) {
        flow.addScopedLocalAlias(
          getGetLocalIndex(paramExpr),
          parameterTypes[i],
          signature.getParameterName(i)
        );
        // inherits wrap status
      } else {
        let argumentLocal = flow.addScopedLocal(
          parameterTypes[i],
          signature.getParameterName(i),
          !flow.canOverflow(paramExpr, parameterTypes[i])
        );
        body.push(
          module.createSetLocal(argumentLocal.index, paramExpr)
        );
      }
    }

    // Compile optional parameter initializers in the scope of the inlined flow
    currentFunction.flow = flow;
    var numParameters = signature.parameterTypes.length;
    for (let i = numArguments; i < numParameters; ++i) {
      let initExpr = this.compileExpression(
        assert(declaration.signature.parameters[i].initializer),
        parameterTypes[i],
        ConversionKind.IMPLICIT,
        WrapMode.WRAP
      );
      let argumentLocal = flow.addScopedLocal(
        parameterTypes[i],
        signature.getParameterName(i),
        !flow.canOverflow(initExpr, parameterTypes[i])
      );
      body.push(
        module.createSetLocal(argumentLocal.index, initExpr)
      );
    }

    // Compile the called function's body in the scope of the inlined flow
    var bodyStatement = assert(declaration.body);
    if (bodyStatement.kind == NodeKind.BLOCK) {
      let statements = (<BlockStatement>bodyStatement).statements;
      for (let i = 0, k = statements.length; i < k; ++i) {
        let stmt = this.compileStatement(statements[i]);
        if (getExpressionId(stmt) != ExpressionId.Nop) {
          body.push(stmt);
          if (flow.isAny(FlowFlags.ANY_TERMINATING)) break;
        }
      }
    } else {
      body.push(this.compileStatement(bodyStatement));
    }

    // Free any new scoped locals and reset to the original flow
    var scopedLocals = flow.scopedLocals;
    if (scopedLocals) {
      for (let scopedLocal of scopedLocals.values()) {
        if (scopedLocal.is(CommonFlags.SCOPED)) { // otherwise an alias
          currentFunction.freeTempLocal(scopedLocal);
        }
      }
      flow.scopedLocals = null;
    }
    flow.finalize();
    this.currentFunction.flow = previousFlow;
    this.currentType = returnType;

    // Check that all branches are terminated
    if (returnType != Type.void && !flow.isAny(FlowFlags.ANY_TERMINATING)) {
      this.error(
        DiagnosticCode.A_function_whose_declared_type_is_not_void_must_return_a_value,
        declaration.signature.returnType.range
      );
      return module.createUnreachable();
    }
    return module.createBlock(returnLabel, body, returnType.toNativeType());
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
    var originalParameterDeclarations = original.prototype.declaration.signature.parameters;
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
    trampoline = new Function(
      original.prototype,
      trampolineName,
      trampolineSignature,
      original.parent,
      original.contextualTypeArguments
    );
    trampoline.set(original.flags | CommonFlags.TRAMPOLINE | CommonFlags.COMPILED);
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
                module.createGetGlobal("~argc", NativeType.I32),
                module.createI32(minArguments)
              )
            : module.createGetGlobal("~argc", NativeType.I32)
        )
      ]),
      module.createUnreachable()
    ]);
    for (let i = 0; i < numOptional; ++i, ++operandIndex) {
      let type = originalParameterTypes[minArguments + i];
      let declaration = originalParameterDeclarations[minArguments + i];
      let initializer = declaration.initializer;
      let initExpr: ExpressionRef;
      if (initializer) {
        initExpr = module.createSetLocal(operandIndex,
          this.compileExpression(
            initializer,
            type,
            ConversionKind.IMPLICIT,
            WrapMode.WRAP
          )
        );
      } else {
        this.error(
          DiagnosticCode.Optional_parameter_must_have_an_initializer,
          declaration.range
        );
        initExpr = module.createUnreachable();
      }
      body = module.createBlock(names[i + 1], [
        body,
        initExpr,
      ]);
      forwardedOperands[operandIndex] = module.createGetLocal(operandIndex, type.toNativeType());
    }
    this.currentFunction = previousFunction;
    assert(operandIndex == maxOperands);

    var funcRef = module.addFunction(
      trampolineName,
      this.ensureFunctionType(
        trampolineSignature.parameterTypes,
        trampolineSignature.returnType,
        trampolineSignature.thisType
      ),
      typesToNativeTypes(trampoline.additionalLocals),
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

  /** Makes sure that the argument count helper global is present and returns its name. */
  private ensureArgcVar(): string {
    var internalName = "~argc";
    if (!this.argcVar) {
      let module = this.module;
      this.argcVar = module.addGlobal(
        internalName,
        NativeType.I32,
        true,
        module.createI32(0)
      );
    }
    return internalName;
  }

  /** Makes sure that the argument count helper setter is present and returns its name. */
  private ensureArgcSet(): string {
    var internalName = "~setargc";
    if (!this.argcSet) {
      let module = this.module;
      this.argcSet = module.addFunction(internalName,
        this.ensureFunctionType([ Type.u32 ], Type.void),
        null,
        module.createSetGlobal(this.ensureArgcVar(),
          module.createGetLocal(0, NativeType.I32)
        )
      );
      module.addFunctionExport(internalName, "_setargc");
    }
    return internalName;
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

    // fill up omitted arguments with their initializers, if constant, otherwise with zeroes.
    if (numOperands < maxOperands) {
      if (!operands) {
        operands = new Array(maxOperands);
        operands.length = 0;
      }
      let parameterTypes = instance.signature.parameterTypes;
      let parameterNodes = instance.prototype.declaration.signature.parameters;
      let allOptionalsAreConstant = true;
      for (let i = numArguments; i < maxArguments; ++i) {
        let initializer = parameterNodes[i].initializer;
        if (!(initializer !== null && nodeIsConstantValue(initializer.kind))) {
          allOptionalsAreConstant = false;
          break;
        }
      }
      if (allOptionalsAreConstant) { // inline into the call
        for (let i = numArguments; i < maxArguments; ++i) {
          operands.push(
            this.compileExpression(
              <Expression>parameterNodes[i].initializer,
              parameterTypes[i],
              ConversionKind.IMPLICIT,
              WrapMode.NONE
            )
          );
        }
      } else { // otherwise fill up with zeroes and call the trampoline
        for (let i = numArguments; i < maxArguments; ++i) {
          operands.push(parameterTypes[i].toNativeZero(module));
        }
        if (!isCallImport) {
          let original = instance;
          instance = this.ensureTrampoline(instance);
          if (!this.compileFunction(instance)) return module.createUnreachable();
          instance.flow.flags = original.flow.flags;
          this.program.instancesLookup.set(instance.internalName, instance); // so canOverflow can find it
          let nativeReturnType = returnType.toNativeType();
          this.currentType = returnType;
          return module.createBlock(null, [
            module.createSetGlobal(this.ensureArgcVar(), module.createI32(numArguments)),
            module.createCall(instance.internalName, operands, nativeReturnType)
          ], nativeReturnType);
        }
      }
    }

    // otherwise just call through
    this.currentType = returnType;
    if (isCallImport) return module.createCallImport(instance.internalName, operands, returnType.toNativeType());
    var ret = module.createCall(instance.internalName, operands, returnType.toNativeType());
    return ret;
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
        parameterTypes[i],
        ConversionKind.IMPLICIT,
        WrapMode.NONE
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

    this.ensureFunctionType(signature.parameterTypes, signature.returnType, signature.thisType);
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
      module.createSetGlobal(this.ensureArgcVar(), // might still be calling a trampoline
        module.createI32(numArguments)
      ),
      module.createCallIndirect(indexArg, operands, signature.toSignatureString())
    ], returnType.toNativeType()); // not necessarily wrapped
  }

  compileCommaExpression(expression: CommaExpression, contextualType: Type): ExpressionRef {
    var expressions = expression.expressions;
    var numExpressions = expressions.length;
    var exprs = new Array<ExpressionRef>(numExpressions--);
    for (let i = 0; i < numExpressions; ++i) {
      exprs[i] = this.compileExpression(
        expressions[i],
        Type.void, // drop all
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    exprs[numExpressions] = this.compileExpression(
      expressions[numExpressions],
      contextualType, // except last
      ConversionKind.IMPLICIT,
      WrapMode.NONE
    );
    return this.module.createBlock(null, exprs, this.currentType.toNativeType());
  }

  compileElementAccessExpression(expression: ElementAccessExpression, contextualType: Type): ExpressionRef {
    var target = this.program.resolveElementAccess(expression, this.currentFunction); // reports
    if (!target) return this.module.createUnreachable();
    switch (target.kind) {
      case ElementKind.CLASS: {
        let isUnchecked = this.currentFunction.flow.is(FlowFlags.UNCHECKED_CONTEXT);
        let indexedGet = (<Class>target).lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
        if (!indexedGet) {
          this.error(
            DiagnosticCode.Index_signature_is_missing_in_type_0,
            expression.expression.range, (<Class>target).internalName
          );
          return this.module.createUnreachable();
        }
        let thisArg = this.compileExpression(
          expression.expression,
          (<Class>target).type,
          ConversionKind.IMPLICIT,
          WrapMode.NONE
        );
        return this.compileCallDirect(indexedGet, [
          expression.elementExpression
        ], expression, thisArg);
      }
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      expression.range
    );
    return this.module.createUnreachable();
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
      currentFunction.internalName + INNER_DELIMITER + simpleName,
      declaration,
      null,
      DecoratorFlags.NONE
    );
    var flow = currentFunction.flow;
    var instance = this.compileFunctionUsingTypeArguments(
      prototype,
      [],
      flow.contextualTypeArguments,
      flow,
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
    var currentFunction = this.currentFunction;

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
        let flow = currentFunction.flow;
        if (flow.is(FlowFlags.INLINE_CONTEXT)) {
          let scopedThis = flow.getScopedLocal("this");
          if (scopedThis) {
            this.currentType = scopedThis.type;
            return module.createGetLocal(scopedThis.index, scopedThis.type.toNativeType());
          }
        }
        if (currentFunction.is(CommonFlags.INSTANCE)) {
          let parent = assert(currentFunction.parent);
          assert(parent.kind == ElementKind.CLASS);
          let thisType = (<Class>parent).type;
          if (currentFunction.is(CommonFlags.CONSTRUCTOR)) {
            if (!flow.is(FlowFlags.ALLOCATES)) {
              flow.set(FlowFlags.ALLOCATES);
              // must be conditional because `this` could have been provided by a derived class
              this.currentType = thisType;
              return module.createTeeLocal(0,
                this.makeConditionalAllocate(<Class>parent, expression)
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
        let flow = currentFunction.flow;
        if (flow.is(FlowFlags.INLINE_CONTEXT)) {
          let scopedThis = flow.getScopedLocal("this");
          if (scopedThis) {
            let scopedThisClass = assert(scopedThis.type.classReference);
            let base = scopedThisClass.base;
            if (base) {
              this.currentType = base.type;
              return module.createGetLocal(scopedThis.index, base.type.toNativeType());
            }
          }
        }
        if (currentFunction.is(CommonFlags.INSTANCE)) {
          let parent = assert(currentFunction.parent);
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
    var target = this.program.resolveIdentifier( // reports
      expression,
      this.currentEnum || currentFunction
    );
    if (!target) return module.createUnreachable();

    switch (target.kind) {
      case ElementKind.LOCAL: {
        if ((<Local>target).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Local>target, contextualType, retainConstantType);
        }
        let localType = (<Local>target).type;
        let localIndex = (<Local>target).index;
        assert(localIndex >= 0);
        this.currentType = localType;
        return this.module.createGetLocal(localIndex, localType.toNativeType());
      }
      case ElementKind.GLOBAL: {
        if (!this.compileGlobal(<Global>target)) { // reports; not yet compiled if a static field
          return this.module.createUnreachable();
        }
        let globalType = (<Global>target).type;
        assert(globalType != Type.void);
        if ((<Global>target).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Global>target, contextualType, retainConstantType);
        }
        this.currentType = globalType;
        return this.module.createGetGlobal((<Global>target).internalName, globalType.toNativeType());
      }
      case ElementKind.ENUMVALUE: { // here: if referenced from within the same enum
        if (!target.is(CommonFlags.COMPILED)) {
          this.error(
            DiagnosticCode.A_member_initializer_in_a_enum_declaration_cannot_reference_members_declared_after_it_including_members_defined_in_other_enums,
            expression.range
          );
          this.currentType = Type.i32;
          return this.module.createUnreachable();
        }
        this.currentType = Type.i32;
        if ((<EnumValue>target).is(CommonFlags.INLINED)) {
          return this.module.createI32((<EnumValue>target).constantValue);
        }
        return this.module.createGetGlobal((<EnumValue>target).internalName, NativeType.I32);
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        let instance = (<FunctionPrototype>target).resolve(
          null,
          currentFunction.flow.contextualTypeArguments
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

  compileInstanceOfExpression(
    expression: InstanceOfExpression,
    contextualType: Type
  ): ExpressionRef {
    var module = this.module;
    // NOTE that this differs from TypeScript in that the rhs is a type, not an expression. at the
    // time of implementation, this seemed more useful because dynamic rhs expressions are not
    // possible in AS anyway.
    var expr = this.compileExpressionRetainType(expression.expression, this.options.usizeType, WrapMode.NONE);
    var type = this.currentType;
    var isType = this.program.resolveType(expression.isType);
    this.currentType = Type.bool;
    if (!isType) return module.createUnreachable();
    return type.is(TypeFlags.NULLABLE) && !isType.is(TypeFlags.NULLABLE)
      ? type.nonNullableType.isAssignableTo(isType)
        ? module.createBinary( // not precomputeable
            type.is(TypeFlags.LONG)
              ? BinaryOp.NeI64
              : BinaryOp.NeI32,
            expr,
            type.toNativeZero(module)
          )
        : module.createI32(0)
      : module.createI32(type.isAssignableTo(isType, true) ? 1 : 0);
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
          classType.prototype == this.program.arrayPrototype
        ) {
          return this.compileArrayLiteral(
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
          case TypeKind.I32: {
            if (i64_is_i32(intValue)) return module.createI32(i64_low(intValue));
            break;
          }
          case TypeKind.U32: {
            if (i64_is_u32(intValue)) return module.createI32(i64_low(intValue));
            break;
          }
          case TypeKind.BOOL: {
            if (i64_is_bool(intValue)) return module.createI32(i64_low(intValue));
            break;
          }
          case TypeKind.ISIZE: {
            if (!this.options.isWasm64) {
              if (i64_is_i32(intValue)) return module.createI32(i64_low(intValue));
              break;
            }
            return module.createI64(i64_low(intValue), i64_high(intValue));
          }
          case TypeKind.USIZE: {
            if (!this.options.isWasm64) {
              if (i64_is_u32(intValue)) return module.createI32(i64_low(intValue));
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
            return module.createUnreachable();
          }
        }

        // otherwise compile to best fitting native type

        if (i64_is_i32(intValue)) {
          this.currentType = Type.i32;
          return module.createI32(i64_low(intValue));
        } else if (i64_is_u32(intValue)) {
          this.currentType = Type.u32;
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

  compileArrayLiteral(elementType: Type, expressions: (Expression | null)[], reportNode: Node): ExpressionRef {
    var isStatic = true;
    var module = this.module;

    // obtain the array type
    var arrayPrototype = assert(this.program.arrayPrototype);
    if (!arrayPrototype || arrayPrototype.kind != ElementKind.CLASS_PROTOTYPE) return module.createUnreachable();
    var arrayInstance = (<ClassPrototype>arrayPrototype).resolve([ elementType ]);
    if (!arrayInstance) return module.createUnreachable();
    var arrayType = arrayInstance.type;

    var elementCount = expressions.length;
    if (elementCount) { // non-empty static or dynamic
      let nativeElementType = elementType.toNativeType();
      let values: usize;
      let byteLength: usize;
      switch (nativeElementType) {
        case NativeType.I32: {
          values = changetype<usize>(new Int32Array(elementCount));
          byteLength = elementCount * 4;
          break;
        }
        case NativeType.I64: {
          values = changetype<usize>(new Array<I64>(elementCount));
          byteLength = elementCount * 8;
          break;
        }
        case NativeType.F32: {
          values = changetype<usize>(new Float32Array(elementCount));
          byteLength = elementCount * 4;
          break;
        }
        case NativeType.F64: {
          values = changetype<usize>(new Float64Array(elementCount));
          byteLength = elementCount * 8;
          break;
        }
        default: {
          assert(false);
          return module.createUnreachable();
        }
      }

      // precompute value expressions
      let exprs = new Array<ExpressionRef>(elementCount);
      let expr: BinaryenExpressionRef;
      for (let i = 0; i < elementCount; ++i) {
        exprs[i] = expressions[i]
          ? this.compileExpression(<Expression>expressions[i], elementType, ConversionKind.IMPLICIT, WrapMode.NONE)
          : elementType.toNativeZero(module);
        if (isStatic) {
          expr = this.precomputeExpressionRef(exprs[i]);
          if (getExpressionId(expr) == ExpressionId.Const) {
            assert(getExpressionType(expr) == nativeElementType);
            switch (nativeElementType) {
              case NativeType.I32: {
                changetype<i32[]>(values)[i] = getConstValueI32(expr);
                break;
              }
              case NativeType.I64: {
                changetype<I64[]>(values)[i] = i64_new(
                  getConstValueI64Low(expr),
                  getConstValueI64High(expr)
                );
                break;
              }
              case NativeType.F32: {
                changetype<f32[]>(values)[i] = getConstValueF32(expr);
                break;
              }
              case NativeType.F64: {
                changetype<f64[]>(values)[i] = getConstValueF64(expr);
                break;
              }
              default: assert(false); // checked above
            }
          } else {
            // TODO: emit a warning if declared 'const'
            // if (isConst) {
            //   this.warn(
            //     DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable,
            //     reportNode.range
            //   );
            // }
            isStatic = false;
          }
        }
      }

      let usizeTypeSize = this.options.usizeType.byteSize;
      if (isStatic) { // non-empty, all elements can be precomputed

        // Create a combined static memory segment composed of:
        // Array struct + ArrayBuffer struct + aligned ArrayBuffer data

        let arraySize = usizeTypeSize + 4; // buffer_ & length_
        let bufferHeaderSize = (4 + 7) & ~7; // aligned byteLength (8)
        let bufferTotalSize = 1 << (32 - clz(byteLength + bufferHeaderSize - 1)); // see internals
        let data = new Uint8Array(arraySize + bufferTotalSize);
        let segment = this.addMemorySegment(data);
        let offset = 0;

        // write Array struct
        if (usizeTypeSize == 8) {
          writeI64(i64_add(segment.offset, i64_new(arraySize)), data, offset); // buffer_ @ segment[arSize]
          offset += 8;
        } else {
          assert(i64_high(segment.offset) == 0);
          writeI32(i64_low(segment.offset) + arraySize, data, offset); // buffer_ @ segment[arSize]
          offset += 4;
        }
        writeI32(elementCount, data, offset); // length_
        offset += 4;
        assert(offset == arraySize);

        // write ArrayBuffer struct
        writeI32(byteLength, data, offset);
        offset += bufferHeaderSize; // incl. alignment

        // write ArrayBuffer data
        switch (nativeElementType) {
          case NativeType.I32: {
            for (let i = 0; i < elementCount; ++i) {
              writeI32(changetype<i32[]>(values)[i], data, offset); offset += 4;
            }
            break;
          }
          case NativeType.I64: {
            for (let i = 0; i < elementCount; ++i) {
              writeI64(changetype<I64[]>(values)[i], data, offset); offset += 8;
            }
            break;
          }
          case NativeType.F32: {
            for (let i = 0; i < elementCount; ++i) {
              writeF32(changetype<f32[]>(values)[i], data, offset); offset += 4;
            }
            break;
          }
          case NativeType.F64: {
            for (let i = 0; i < elementCount; ++i) {
              writeF64(changetype<f64[]>(values)[i], data, offset); offset += 8;
            }
            break;
          }
          default: {
            assert(false);
            return module.createUnreachable();
          }
        }
        assert(offset <= arraySize + bufferTotalSize);

        this.currentType = arrayType;
        return usizeTypeSize == 8
          ? module.createI64(
              i64_low(segment.offset),
              i64_high(segment.offset)
            )
          : module.createI32(
              i64_low(segment.offset)
            );

      } else { // non-empty, some elements can't be precomputed

        this.currentType = arrayType;
        let setter = arrayInstance.lookupOverload(OperatorKind.INDEXED_SET, true);
        if (!setter) {
          this.error(
            DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
            reportNode.range, arrayInstance.internalName
          );
          return module.createUnreachable();
        }
        let nativeArrayType = arrayType.toNativeType();
        let currentFunction = this.currentFunction;
        let tempLocal = currentFunction.getTempLocal(arrayType, false);
        let stmts = new Array<ExpressionRef>(2 + elementCount);
        let index = 0;
        stmts[index++] = module.createSetLocal(tempLocal.index,
          this.makeCallDirect(assert(arrayInstance.constructorInstance), [
            module.createI32(0), // this
            module.createI32(elementCount)
          ])
        );
        for (let i = 0; i < elementCount; ++i) {
          stmts[index++] = this.makeCallDirect(setter, [
            module.createGetLocal(tempLocal.index, nativeArrayType), // this
            module.createI32(i),
            exprs[i]
          ]);
        }
        assert(index + 1 == stmts.length);
        stmts[index] = module.createGetLocal(tempLocal.index, nativeArrayType);
        currentFunction.freeTempLocal(tempLocal);
        this.currentType = arrayType;
        return module.createBlock(null, stmts, nativeArrayType);
      }

    } else { // empty, TBD: cache this somehow?
      this.currentType = arrayType;
      return this.makeCallDirect(assert(arrayInstance.constructorInstance), [
        module.createI32(0), // this
        module.createI32(0)
      ]);
    }
  }

  compileNewExpression(expression: NewExpression, contextualType: Type): ExpressionRef {
    var module = this.module;
    var options = this.options;
    var currentFunction = this.currentFunction;

    // obtain the class being instantiated
    var target = this.program.resolveExpression( // reports
      expression.expression,
      currentFunction
    );
    if (!target) return module.createUnreachable();
    if (target.kind != ElementKind.CLASS_PROTOTYPE) {
      this.error(
        DiagnosticCode.Cannot_use_new_with_an_expression_whose_type_lacks_a_construct_signature,
        expression.expression.range
      );
      return this.module.createUnreachable();
    }
    var classPrototype = <ClassPrototype>target;
    var classInstance: Class | null = null;
    var typeArguments = expression.typeArguments;
    var classReference: Class | null;
    if (
      !typeArguments &&
      (classReference = contextualType.classReference) !== null &&
      classReference.is(CommonFlags.GENERIC)
    ) {
      classInstance = classPrototype.resolve(
        classReference.typeArguments,
        currentFunction.flow.contextualTypeArguments
      );
    } else {
      classInstance = classPrototype.resolveUsingTypeArguments( // reports
        typeArguments,
        currentFunction.flow.contextualTypeArguments,
        expression
      );
    }
    if (!classInstance) return module.createUnreachable();

    var expr: ExpressionRef;

    // traverse to the first matching constructor
    var currentClassInstance: Class | null = classInstance;
    var constructorInstance = classInstance.constructorInstance;
    while (!constructorInstance && (currentClassInstance = classInstance.base)) {
      constructorInstance = currentClassInstance.constructorInstance;
    }

    // if a constructor is present, call it with a zero `this`
    if (constructorInstance) {
      expr = this.compileCallDirect(constructorInstance, expression.arguments, expression,
        options.usizeType.toNativeZero(module)
      );

    // otherwise simply allocate a new instance and initialize its fields
    } else {
      expr = this.makeAllocate(classInstance, expression);
    }

    this.currentType = classInstance.type;
    return expr;
  }

  compileParenthesizedExpression(
    expression: ParenthesizedExpression,
    contextualType: Type
  ): ExpressionRef {
    // does not change types, just order
    return this.compileExpression(
      expression.expression,
      contextualType,
      ConversionKind.NONE,
      WrapMode.NONE
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

    var target = program.resolvePropertyAccess(propertyAccess, this.currentFunction); // reports
    if (!target) return module.createUnreachable();

    switch (target.kind) {
      case ElementKind.GLOBAL: { // static property
        if (!this.compileGlobal(<Global>target)) { // reports; not yet compiled if a static field
          return module.createUnreachable();
        }
        let globalType = (<Global>target).type;
        assert(globalType != Type.void);
        if ((<Global>target).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Global>target, contextualType, retainConstantType);
        }
        this.currentType = globalType;
        return module.createGetGlobal((<Global>target).internalName, globalType.toNativeType());
      }
      case ElementKind.ENUMVALUE: { // enum value
        let parent = (<EnumValue>target).parent;
        assert(parent !== null && parent.kind == ElementKind.ENUM);
        if (!this.compileEnum(<Enum>parent)) {
          return this.module.createUnreachable();
        }
        this.currentType = Type.i32;
        if ((<EnumValue>target).is(CommonFlags.INLINED)) {
          return module.createI32((<EnumValue>target).constantValue);
        }
        return module.createGetGlobal((<EnumValue>target).internalName, NativeType.I32);
      }
      case ElementKind.FIELD: { // instance field
        let thisExpression = assert(program.resolvedThisExpression);
        assert((<Field>target).memoryOffset >= 0);
        let thisExpr = this.compileExpressionRetainType(
          thisExpression,
          this.options.usizeType,
          WrapMode.NONE
        );
        this.currentType = (<Field>target).type;
        return module.createLoad(
          (<Field>target).type.byteSize,
          (<Field>target).type.is(TypeFlags.SIGNED | TypeFlags.INTEGER),
          thisExpr,
          (<Field>target).type.toNativeType(),
          (<Field>target).memoryOffset
        );
      }
      case ElementKind.PROPERTY: { // instance property (here: getter)
        let prototype = (<Property>target).getterPrototype;
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
          let inline = (instance.decoratorFlags & DecoratorFlags.INLINE) != 0;
          if (instance.is(CommonFlags.INSTANCE)) {
            let parent = assert(instance.parent);
            assert(parent.kind == ElementKind.CLASS);
            let thisExpression = assert(program.resolvedThisExpression);
            let thisExpr = this.compileExpressionRetainType(
              thisExpression,
              this.options.usizeType,
              WrapMode.NONE
            );
            this.currentType = signature.returnType;
            return this.compileCallDirect(instance, [], propertyAccess, thisExpr, inline);
          } else {
            this.currentType = signature.returnType;
            return this.compileCallDirect(instance, [], propertyAccess, 0, inline);
          }
        } else {
          this.error(
            DiagnosticCode.Property_0_does_not_exist_on_type_1,
            propertyAccess.range, (<Property>target).simpleName, (<Property>target).parent.toString()
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
    var currentFunction = this.currentFunction;
    var parentFlow = currentFunction.flow;

    var condExpr = this.makeIsTrueish(
      this.compileExpressionRetainType(expression.condition, Type.bool, WrapMode.NONE),
      this.currentType
    );

    if (
      !this.options.noTreeShaking ||
      this.currentFunction.isAny(CommonFlags.GENERIC | CommonFlags.GENERIC_CONTEXT)
    ) {
      // Try to eliminate unnecesssary branches if the condition is constant
      let condExprPrecomp = this.precomputeExpressionRef(condExpr);
      if (
        getExpressionId(condExprPrecomp) == ExpressionId.Const &&
        getExpressionType(condExprPrecomp) == NativeType.I32
      ) {
        return getConstValueI32(condExprPrecomp)
          ? this.compileExpressionRetainType(ifThen, contextualType, WrapMode.NONE)
          : this.compileExpressionRetainType(ifElse, contextualType, WrapMode.NONE);

      // Otherwise recompile to the original and let the optimizer decide
      } else /* if (condExpr != condExprPrecomp) <- not guaranteed */ {
        condExpr = this.makeIsTrueish(
          this.compileExpressionRetainType(expression.condition, Type.bool, WrapMode.NONE),
          this.currentType
        );
      }
    }

    var ifThenFlow = parentFlow.fork();
    currentFunction.flow = ifThenFlow;
    var ifThenExpr = this.compileExpressionRetainType(ifThen, contextualType, WrapMode.NONE);
    var ifThenType = this.currentType;
    ifThenFlow.free();

    var ifElseFlow = parentFlow.fork();
    currentFunction.flow = ifElseFlow;
    var ifElseExpr = this.compileExpressionRetainType(ifElse, contextualType, WrapMode.NONE);
    var ifElseType = this.currentType;
    currentFunction.flow = ifElseFlow.free();

    parentFlow.inheritMutual(ifThenFlow, ifElseFlow);

    var commonType = Type.commonCompatible(ifThenType, ifElseType, false);
    if (!commonType) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        expression.range, ifThenType.toString(), ifElseType.toString()
      );
      this.currentType = contextualType;
      return this.module.createUnreachable();
    }
    ifThenExpr = this.convertExpression(
      ifThenExpr,
      ifThenType,
      commonType,
      ConversionKind.IMPLICIT,
      WrapMode.NONE,
      ifThen
    );
    ifElseExpr = this.convertExpression(
      ifElseExpr,
      ifElseType,
      commonType,
      ConversionKind.IMPLICIT,
      WrapMode.NONE,
      ifElse
    );
    this.currentType = commonType;
    return this.module.createIf(condExpr, ifThenExpr, ifElseExpr);
  }

  compileUnaryPostfixExpression(expression: UnaryPostfixExpression, contextualType: Type): ExpressionRef {
    var module = this.module;
    var currentFunction = this.currentFunction;

    // make a getter for the expression (also obtains the type)
    var getValue = this.compileExpression( // reports
      expression.operand,
      contextualType == Type.void
        ? Type.i32
        : contextualType,
      ConversionKind.NONE,
      WrapMode.NONE
    );
    // shortcut if compiling the getter already failed
    if (getExpressionId(getValue) == ExpressionId.Unreachable) return getValue;
    var currentType = this.currentType;

    var op: BinaryOp;
    var nativeType: NativeType;
    var nativeOne: ExpressionRef;

    switch (expression.operator) {
      case Token.PLUS_PLUS: {

        // TODO: check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        switch (currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
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
          default: {
            assert(false);
            return module.createUnreachable();
          }
        }
        break;
      }
      case Token.MINUS_MINUS: {

        // TODO: check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return this.module.createUnreachable();
        }

        switch (currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
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
          default: {
            assert(false);
            return module.createUnreachable();
          }
        }
        break;
      }
      default: {
        assert(false);
        return module.createUnreachable();
      }
    }

    // simplify if dropped anyway
    if (contextualType == Type.void) {
      return this.compileAssignmentWithValue(expression.operand,
        module.createBinary(op,
          getValue,
          nativeOne
        ),
        false
      );
    }

    // otherwise use a temp local for the intermediate value (always possibly overflows)
    var tempLocal = currentFunction.getTempLocal(currentType, false);
    var setValue = this.compileAssignmentWithValue(expression.operand,
      module.createBinary(op,
        this.module.createGetLocal(tempLocal.index, nativeType),
        nativeOne
      ),
      false
    );
    this.currentType = assert(tempLocal).type;
    currentFunction.freeTempLocal(<Local>tempLocal);

    var localIndex = (<Local>tempLocal).index;
    return module.createBlock(null, [
      module.createSetLocal(localIndex, getValue),
      setValue,
      module.createGetLocal(localIndex, nativeType)
    ], nativeType); // result of 'x++' / 'x--' might overflow
  }

  compileUnaryPrefixExpression(
    expression: UnaryPrefixExpression,
    contextualType: Type
  ): ExpressionRef {
    var module = this.module;
    var compound = false;
    var expr: ExpressionRef;

    switch (expression.operator) {
      case Token.PLUS: {
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType,
          ConversionKind.NONE,
          WrapMode.NONE
        );

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.PLUS);
            if (overload) {
              expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }

        // nop
        break;
      }
      case Token.MINUS: {
        if (expression.operand.kind == NodeKind.LITERAL && (
          (<LiteralExpression>expression.operand).literalKind == LiteralKind.INTEGER ||
          (<LiteralExpression>expression.operand).literalKind == LiteralKind.FLOAT
        )) {
          // implicitly negate integer and float literals. also enables proper checking of literal ranges.
          expr = this.compileLiteralExpression(<LiteralExpression>expression.operand, contextualType, true);
          // compileExpression normally does this:
          if (this.options.sourceMap) this.addDebugLocation(expr, expression.range);
          break;
        }

        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType,
          ConversionKind.NONE,
          WrapMode.NONE
        );

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.MINUS);
            if (overload) {
              expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.SubI32, module.createI32(0), expr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              this.currentType.toNativeZero(module),
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
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.PLUS_PLUS: {
        compound = true;
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType,
          ConversionKind.NONE,
          WrapMode.NONE
        );

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.PREFIX_INC);
            if (overload) {
              expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.AddI32, expr, this.module.createI32(1));
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.AddI64
                : BinaryOp.AddI32,
              expr,
              this.currentType.toNativeOne(module)
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
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.MINUS_MINUS: {
        compound = true;
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType,
          ConversionKind.NONE,
          WrapMode.NONE
        );

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.PREFIX_DEC);
            if (overload) {
              expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        }

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.SubI32, expr, module.createI32(1));
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              expr,
              this.currentType.toNativeOne(module)
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
          default: {
            assert(false);
            expr = module.createUnreachable();
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
          WrapMode.NONE
        );

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.NOT);
            if (overload) {
              expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
              break;
            }
          }
          // allow '!' for references even without an overload
        }

        expr = this.makeIsFalseish(expr, this.currentType);
        this.currentType = Type.bool;
        break;
      }
      case Token.TILDE: {
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType.is(TypeFlags.FLOAT)
              ? Type.i64
              : contextualType,
          ConversionKind.NONE,
          WrapMode.NONE
        );

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.BITWISE_NOT);
            if (overload) {
              expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
              break;
            }
          }
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
          return module.createUnreachable();
        } else {
          expr = this.convertExpression(
            expr,
            this.currentType, this.currentType.intType,
            ConversionKind.IMPLICIT, WrapMode.NONE,
            expression.operand
          );
        }

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(BinaryOp.XorI32, expr, module.createI32(-1));
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.createBinary(
              this.options.isWasm64
                ? BinaryOp.XorI64
                : BinaryOp.XorI32,
              expr,
              this.currentType.toNativeNegOne(module)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(BinaryOp.XorI64, expr, module.createI64(-1, -1));
            break;
          }
          default: {
            assert(false);
            expr = module.createUnreachable();
          }
        }
        break;
      }
      case Token.TYPEOF: {
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        return module.createUnreachable();
      }
      default: {
        assert(false);
        return module.createUnreachable();
      }
    }
    return compound
      ? this.compileAssignmentWithValue(expression.operand, expr, contextualType != Type.void)
      : expr;
  }

  /** Makes sure that a 32-bit integer value is wrapped to a valid value of the specified type. */
  ensureSmallIntegerWrap(expr: ExpressionRef, type: Type): ExpressionRef {
    var module = this.module;
    var flow = this.currentFunction.flow;
    switch (type.kind) {
      case TypeKind.I8: {
        if (flow.canOverflow(expr, type)) {
          expr = this.options.hasFeature(Feature.SIGN_EXTENSION)
            ? module.createUnary(UnaryOp.ExtendI8ToI32, expr)
            : module.createBinary(BinaryOp.ShrI32,
                module.createBinary(BinaryOp.ShlI32,
                  expr,
                  module.createI32(24)
                ),
                module.createI32(24)
              );
        }
        break;
      }
      case TypeKind.I16: {
        if (flow.canOverflow(expr, type)) {
          expr = this.options.hasFeature(Feature.SIGN_EXTENSION)
            ? module.createUnary(UnaryOp.ExtendI16ToI32, expr)
            : module.createBinary(BinaryOp.ShrI32,
                module.createBinary(BinaryOp.ShlI32,
                  expr,
                  module.createI32(16)
                ),
                module.createI32(16)
              );
        }
        break;
      }
      case TypeKind.U8: {
        if (flow.canOverflow(expr, type)) {
          expr = module.createBinary(BinaryOp.AndI32,
            expr,
            module.createI32(0xff)
          );
        }
        break;
      }
      case TypeKind.U16: {
        if (flow.canOverflow(expr, type)) {
          expr = module.createBinary(BinaryOp.AndI32,
            expr,
            module.createI32(0xffff)
          );
        }
        break;
      }
      case TypeKind.BOOL: {
        if (flow.canOverflow(expr, type)) {
          expr = module.createBinary(BinaryOp.AndI32,
            expr,
            module.createI32(0x1)
          );
        }
        break;
      }
    }
    return expr;
  }

  /** Creates a comparison whether an expression is 'false' in a broader sense. */
  makeIsFalseish(expr: ExpressionRef, type: Type): ExpressionRef {
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        expr = this.ensureSmallIntegerWrap(expr, type);
        // fall-through
      }
      case TypeKind.I32:
      case TypeKind.U32: {
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
      default: {
        assert(false);
        return module.createI32(1);
      }
    }
  }

  /** Creates a comparison whether an expression is 'true' in a broader sense. */
  makeIsTrueish(expr: ExpressionRef, type: Type): ExpressionRef {
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        expr = this.ensureSmallIntegerWrap(expr, type);
        // fall-through
      }
      case TypeKind.I32:
      case TypeKind.U32: {
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
      default: {
        assert(false);
        return module.createI32(0);
      }
    }
  }

  /** Makes an allocation expression for an instance of the specified class. */
  makeAllocate(classInstance: Class, reportNode: Node): ExpressionRef {
    var module = this.module;
    var currentFunction = this.currentFunction;
    var nativeSizeType = this.options.nativeSizeType;

    // allocate the necessary memory and tee the pointer to a temp. local for reuse
    var tempLocal = currentFunction.getTempLocal(classInstance.type, false);
    var initializers = new Array<ExpressionRef>();
    initializers.push(
      module.createSetLocal(tempLocal.index,
        compileBuiltinAllocate(this, classInstance, reportNode)
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
              this.compileExpression( // reports
                fieldDeclaration.initializer,
                fieldType,
                ConversionKind.IMPLICIT,
                WrapMode.NONE
              ),
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
    this.currentType = classInstance.type;
    return module.createBlock(null, initializers, nativeSizeType);
  }

  /** Makes a conditional allocation expression inside of the constructor of the specified class. */
  makeConditionalAllocate(classInstance: Class, reportNode: Node): ExpressionRef {
    // requires that `this` is the first local
    var module = this.module;
    var nativeSizeType = this.options.nativeSizeType;
    this.currentType = classInstance.type;
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
        this.makeAllocate(classInstance, reportNode)
      )
    );
  }

  /** Adds the debug location of the specified expression at the specified range to the source map. */
  addDebugLocation(expr: ExpressionRef, range: Range): void {
    var currentFunction = this.currentFunction;
    var source = range.source;
    if (source.debugInfoIndex < 0) source.debugInfoIndex = this.module.addDebugInfoFile(source.normalizedPath);
    range.debugInfoRef = expr;
    currentFunction.debugLocations.push(range);
  }
}

// helpers

function mangleExportName(element: Element, simpleName: string = element.simpleName): string {
  switch (element.kind) {
    case ElementKind.FUNCTION: {
      let parent = (<Function>element).parent || (<Function>element).prototype.parent;
      return parent
        ? mangleExportName(parent)
        + (element.is(CommonFlags.INSTANCE) ? INSTANCE_DELIMITER : STATIC_DELIMITER)
        + simpleName
        : simpleName;
    }
    case ElementKind.FIELD: {
      let parent = assert((<Field>element).parent);
      return mangleExportName(parent)
          + (element.is(CommonFlags.INSTANCE) ? INSTANCE_DELIMITER : STATIC_DELIMITER)
          + simpleName;
    }
    case ElementKind.ENUMVALUE: {
      let parent = assert((<EnumValue>element).parent);
      return mangleExportName(parent)
          + (element.is(CommonFlags.INSTANCE) ? INSTANCE_DELIMITER : STATIC_DELIMITER)
          + simpleName;
    }
    case ElementKind.CLASS: {
      let parent = (<Class>element).prototype.parent;
      return parent
        ? mangleExportName(parent)
        + STATIC_DELIMITER
        + simpleName
        : simpleName;
    }
    default: {
      let parent = element.parent;
      return parent
        ? mangleExportName(parent)
        + STATIC_DELIMITER
        + simpleName
        : simpleName;
    }
  }
}

function mangleImportName(
  element: Element,
  declaration: DeclarationStatement,
  parentElement: Element | null = null
): void {
  mangleImportName_moduleName = parentElement ? parentElement.simpleName : declaration.range.source.simplePath;
  mangleImportName_elementName = element.simpleName;

  if (!element.hasDecorator(DecoratorFlags.EXTERNAL)) return;

  var program = element.program;
  var decorator = assert(findDecorator(DecoratorKind.EXTERNAL, declaration.decorators));
  var args = decorator.arguments;
  if (args && args.length) {
    let arg = args[0];
    if (arg.kind == NodeKind.LITERAL && (<LiteralExpression>arg).literalKind == LiteralKind.STRING) {
      mangleImportName_elementName = (<StringLiteralExpression>arg).value;
      if (args.length >= 2) {
        arg = args[1];
        if (arg.kind == NodeKind.LITERAL && (<LiteralExpression>arg).literalKind == LiteralKind.STRING) {
          mangleImportName_moduleName = mangleImportName_elementName;
          mangleImportName_elementName = (<StringLiteralExpression>arg).value;
          if (args.length > 2) {
            program.error(
              DiagnosticCode.Expected_0_arguments_but_got_1,
              decorator.range, "2", args.length.toString()
            );
          }
        } else {
          program.error(
            DiagnosticCode.String_literal_expected,
            arg.range
          );
        }
      }
    } else {
      program.error(
        DiagnosticCode.String_literal_expected,
        arg.range
      );
    }
  } else {
    program.error(
      DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
      decorator.range, "1", "0"
    );
  }
}

var mangleImportName_moduleName: string;
var mangleImportName_elementName: string;
