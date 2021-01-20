/**
 * @fileoverview The AssemblyScript compiler.
 * @license Apache-2.0
 */

import {
  BuiltinNames,
  BuiltinContext,
  builtins,
  function_builtins,
  compileVisitGlobals,
  compileVisitMembers,
  compileRTTI,
  compileClassInstanceOf
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
  GlobalRef,
  FeatureFlags,
  Index,
  getExpressionId,
  getExpressionType,
  getConstValueI32,
  getConstValueI64Low,
  getConstValueI64High,
  getConstValueF32,
  getConstValueF64,
  getBlockChildCount,
  getBlockChildAt,
  getBlockName,
  getLocalGetIndex,
  isLocalTee,
  getLocalSetIndex,
  needsExplicitUnreachable,
  getLocalSetValue,
  getGlobalGetName,
  isGlobalMutable,
  createType,
  getSideEffects,
  SideEffects,
  SwitchBuilder,
  ExpressionRunnerFlags
} from "./module";

import {
  CommonFlags,
  INSTANCE_DELIMITER,
  STATIC_DELIMITER,
  GETTER_PREFIX,
  SETTER_PREFIX,
  INDEX_SUFFIX,
  CommonNames,
  Feature,
  Target,
  featureToString
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
  Global,
  Local,
  EnumValue,
  Property,
  VariableLikeElement,
  ConstantValueKind,
  OperatorKind,
  DecoratorFlags,
  PropertyPrototype,
  IndexSignature,
  File,
  mangleInternalName,
  DeclaredElement
} from "./program";

import {
  FlowFlags,
  Flow,
  LocalFlags,
  FieldFlags,
  ConditionKind,
  findUsedLocals
} from "./flow";

import {
  Resolver,
  ReportMode
} from "./resolver";

import {
  Token,
  Range,
  operatorTokenToString
} from "./tokenizer";

import {
  Node,
  NodeKind,
  DecoratorKind,
  AssertionKind,
  SourceKind,
  FunctionTypeNode,

  Statement,
  BlockStatement,
  BreakStatement,
  ClassDeclaration,
  ContinueStatement,
  DeclarationStatement,
  DoStatement,
  EmptyStatement,
  EnumDeclaration,
  ExportDefaultStatement,
  ExportStatement,
  ExpressionStatement,
  FieldDeclaration,
  ForStatement,
  ForOfStatement,
  FunctionDeclaration,
  IfStatement,
  ImportStatement,
  InstanceOfExpression,
  NamespaceDeclaration,
  ReturnStatement,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
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
  ObjectLiteralExpression,
  ParenthesizedExpression,
  PropertyAccessExpression,
  TernaryExpression,
  ArrayLiteralExpression,
  StringLiteralExpression,
  UnaryPostfixExpression,
  UnaryPrefixExpression,

  NamedTypeNode,

  findDecorator,
  isTypeOmitted
} from "./ast";

import {
  Type,
  TypeKind,
  TypeFlags,
  Signature,
  typesToNativeTypes
} from "./types";

import {
  writeI8,
  writeI16,
  writeI32,
  writeI64,
  writeF32,
  writeF64,
  uniqueMap,
  isPowerOf2,
  v128_zero,
  readI32
} from "./util";

/** Compiler options. */
export class Options {

  /** WebAssembly target. Defaults to {@link Target.WASM32}. */
  target: Target = Target.WASM32;
  /** If true, replaces assertions with nops. */
  noAssert: bool = false;
  /** It true, exports the memory to the embedder. */
  exportMemory: bool = true;
  /** If true, imports the memory provided by the embedder. */
  importMemory: bool = false;
  /** Initial memory size, in pages. */
  initialMemory: u32 = 0;
  /** Maximum memory size, in pages. */
  maximumMemory: u32 = 0;
  /** If true, memory is declared as shared. */
  sharedMemory: bool = false;
  /** If true, imports the function table provided by the embedder. */
  importTable: bool = false;
  /** If true, exports the function table. */
  exportTable: bool = false;
  /** If true, generates information necessary for source maps. */
  sourceMap: bool = false;
  /** If true, generates an explicit start function. */
  explicitStart: bool = false;
  /** Static memory start offset. */
  memoryBase: u32 = 0;
  /** Static table start offset. */
  tableBase: u32 = 0;
  /** Global aliases, mapping alias names as the key to internal names to be aliased as the value. */
  globalAliases: Map<string,string> | null = null;
  /** Features to activate by default. These are the finished proposals. */
  features: Feature = Feature.MUTABLE_GLOBALS;
  /** If true, disallows unsafe features in user code. */
  noUnsafe: bool = false;
  /** If true, enables pedantic diagnostics. */
  pedantic: bool = false;
  /** Indicates a very low (<64k) memory limit. */
  lowMemoryLimit: u32 = 0;

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

  /** Gets if any optimizations will be performed. */
  get willOptimize(): bool {
    return this.optimizeLevelHint > 0 || this.shrinkLevelHint > 0;
  }

  /** Tests if a specific feature is activated. */
  hasFeature(feature: Feature): bool {
    return (this.features & feature) != 0;
  }
}

/** Various constraints in expression compilation. */
export const enum Constraints {
  NONE = 0,

  /** Must implicitly convert to the target type. */
  CONV_IMPLICIT = 1 << 0,
  /** Must explicitly convert to the target type. */
  CONV_EXPLICIT = 1 << 1,
  /** Must wrap small integer values to match the target type. */
  MUST_WRAP = 1 << 2,

  /** Indicates that the value will be dropped immediately. */
  WILL_DROP = 1 << 3,
  /** Indicates that the value will be retained immediately. */
  WILL_RETAIN = 1 << 4,
  /** Indicates that static data is preferred. */
  PREFER_STATIC = 1 << 5,
  /** Indicates that the value will become `this` of a property access or instance call. */
  IS_THIS = 1 << 6
}

/** Runtime features to be activated by the compiler. */
export const enum RuntimeFeatures {
  NONE = 0,
  /** Requires heap setup. */
  HEAP = 1 << 0,
  /** Requires runtime type information setup. */
  RTTI = 1 << 1,
  /** Requires the built-in globals visitor. */
  visitGlobals = 1 << 2,
  /** Requires the built-in members visitor. */
  visitMembers = 1 << 3,
  /** Requires the setArgumentsLength export. */
  setArgumentsLength = 1 << 4
}

/** Exported names of compiler-generated elements. */
export namespace ExportNames {
  /** Name of the explicit start function, if applicable. */
  export const start = "_start"; // match WASI
  /** Name of the argumentsLength varargs helper global. */
  export const argumentsLength = "__argumentsLength";
  /** Name of the alternative argumentsLength setter function. */
  export const setArgumentsLength = "__setArgumentsLength";
  /** Name of the memory instance, if exported. */
  export const memory = "memory";
  /** Name of the table instance, if exported. */
  export const table = "table";
}

/** Compiler interface. */
export class Compiler extends DiagnosticEmitter {

  /** Program reference. */
  program: Program;
  /** Resolver reference. */
  get resolver(): Resolver { return this.program.resolver; }
  /** Provided options. */
  get options(): Options { return this.program.options; }
  /** Module instance being compiled. */
  module: Module;

  /** Current control flow. */
  currentFlow: Flow;
  /** Current parent element if not a function, i.e. an enum or namespace. */
  currentParent: Element | null = null;
  /** Current type in compilation. */
  currentType: Type = Type.void;
  /** Start function statements. */
  currentBody: ExpressionRef[];
  /** Counting memory offset. */
  memoryOffset: i64;
  /** Memory segments being compiled. */
  memorySegments: MemorySegment[] = [];
  /** Map of already compiled static string segments. */
  stringSegments: Map<string,MemorySegment> = new Map();
  /** Function table being compiled. First elem is blank. */
  functionTable: Function[] = [];
  /** Arguments length helper global. */
  builtinArgumentsLength: GlobalRef = 0;
  /** Requires runtime features. */
  runtimeFeatures: RuntimeFeatures = RuntimeFeatures.NONE;
  /** Expressions known to have skipped an autorelease. Usually function returns. */
  skippedAutoreleases: Set<ExpressionRef> = new Set();
  /** Current inline functions stack. */
  inlineStack: Function[] = [];
  /** Lazily compiled functions. */
  lazyFunctions: Set<Function> = new Set();
  /** Pending class-specific instanceof helpers. */
  pendingClassInstanceOf: Set<ClassPrototype> = new Set();
  /** Functions potentially involving a virtual call. */
  virtualCalls: Set<Function> = new Set();
  /** Elements currently undergoing compilation. */
  pendingElements: Set<Element> = new Set();
  /** Elements, that are module exports, already processed */
  doneModuleExports: Set<Element> = new Set();

  /** Compiles a {@link Program} to a {@link Module} using the specified options. */
  static compile(program: Program): Module {
    return new Compiler(program).compile();
  }

  /** Constructs a new compiler for a {@link Program} using the specified options. */
  constructor(program: Program) {
    super(program.diagnostics);
    this.program = program;
    var options = program.options;
    var module = Module.create();
    this.module = module;
    if (options.memoryBase) {
      this.memoryOffset = i64_new(options.memoryBase);
      module.setLowMemoryUnused(false);
    } else {
      if (!options.lowMemoryLimit && options.optimizeLevelHint >= 2) {
        this.memoryOffset = i64_new(1024);
        module.setLowMemoryUnused(true);
      } else {
        this.memoryOffset = i64_new(8);
        module.setLowMemoryUnused(false);
      }
    }
    var featureFlags: FeatureFlags = 0;
    if (options.hasFeature(Feature.SIGN_EXTENSION)) featureFlags |= FeatureFlags.SignExt;
    if (options.hasFeature(Feature.MUTABLE_GLOBALS)) featureFlags |= FeatureFlags.MutableGloabls;
    if (options.hasFeature(Feature.NONTRAPPING_F2I)) featureFlags |= FeatureFlags.NontrappingFPToInt;
    if (options.hasFeature(Feature.BULK_MEMORY)) featureFlags |= FeatureFlags.BulkMemory;
    if (options.hasFeature(Feature.SIMD)) featureFlags |= FeatureFlags.SIMD128;
    if (options.hasFeature(Feature.THREADS)) featureFlags |= FeatureFlags.Atomics;
    if (options.hasFeature(Feature.EXCEPTION_HANDLING)) featureFlags |= FeatureFlags.ExceptionHandling;
    if (options.hasFeature(Feature.TAIL_CALLS)) featureFlags |= FeatureFlags.TailCall;
    if (options.hasFeature(Feature.REFERENCE_TYPES)) featureFlags |= FeatureFlags.ReferenceTypes;
    if (options.hasFeature(Feature.MULTI_VALUE)) featureFlags |= FeatureFlags.MultiValue;
    if (options.hasFeature(Feature.GC)) featureFlags |= FeatureFlags.GC;
    if (options.hasFeature(Feature.MEMORY64)) featureFlags |= FeatureFlags.Memory64;
    module.setFeatures(featureFlags);

    // set up the main start function
    var startFunctionInstance = program.makeNativeFunction(BuiltinNames.start, new Signature(program, [], Type.void));
    startFunctionInstance.internalName = BuiltinNames.start;
    this.currentFlow = startFunctionInstance.flow;
    this.currentBody = new Array<ExpressionRef>();
  }

  /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
  compile(): Module {
    var options = this.options;
    var module = this.module;
    var program = this.program;

    // initialize lookup maps, built-ins, imports, exports, etc.
    this.program.initialize();

    // obtain the main start function
    var startFunctionInstance = this.currentFlow.actualFunction;
    assert(startFunctionInstance.internalName == BuiltinNames.start);
    var startFunctionBody = this.currentBody;
    assert(startFunctionBody.length == 0);

    // add mutable heap and rtti base dummies
    if (options.isWasm64) {
      module.addGlobal(BuiltinNames.heap_base, NativeType.I64, true, module.i64(0));
      module.addGlobal(BuiltinNames.rtti_base, NativeType.I64, true, module.i64(0));
    } else {
      module.addGlobal(BuiltinNames.heap_base, NativeType.I32, true, module.i32(0));
      module.addGlobal(BuiltinNames.rtti_base, NativeType.I32, true, module.i32(0));
    }

    // compile entry file(s) while traversing reachable elements
    var files = program.filesByName;
    // TODO: for (let file of files.values()) {
    for (let _values = Map_values(files), i = 0, k = _values.length; i < k; ++i) {
      let file = unchecked(_values[i]);
      if (file.source.sourceKind == SourceKind.USER_ENTRY) {
        this.compileFile(file);
        this.compileExports(file);
      }
    }

    // check if the entire program is acyclic
    var cyclicClasses = program.findCyclicClasses();
    if (cyclicClasses.size) {
      if (options.pedantic) {
        // TODO: for (let classInstance of cyclicClasses) {
        for (let _values = Set_values(cyclicClasses), i = 0, k = _values.length; i < k; ++i) {
          let classInstance = unchecked(_values[i]);
          this.pedantic(
            DiagnosticCode.Type_0_is_cyclic_Module_will_include_deferred_garbage_collection,
            classInstance.identifierNode.range, classInstance.internalName
          );
        }
      }
    } else {
      program.registerConstantInteger("__GC_ALL_ACYCLIC", Type.bool, i64_new(1, 0));
    }

    // compile lazy functions
    var lazyFunctions = this.lazyFunctions;
    do {
      let functionsToCompile = new Array<Function>();
      // TODO: for (let instance of lazyLibraryFunctions) {
      for (let _values = Set_values(lazyFunctions), i = 0, k = _values.length; i < k; ++i) {
        let instance = unchecked(_values[i]);
        functionsToCompile.push(instance);
      }
      lazyFunctions.clear();
      for (let i = 0, k = functionsToCompile.length; i < k; ++i) {
        this.compileFunction(unchecked(functionsToCompile[i]), true);
      }
    } while (lazyFunctions.size);

    // compile pending class-specific instanceof helpers
    // TODO: for (let prototype of this.pendingClassInstanceOf.values()) {
    for (let _values = Set_values(this.pendingClassInstanceOf), i = 0, k = _values.length; i < k; ++i) {
      let prototype = unchecked(_values[i]);
      compileClassInstanceOf(this, prototype);
    }

    // NOTE: no more element compiles from here. may go to the start function!

    // compile the start function if not empty or if explicitly requested
    var startIsEmpty = !startFunctionBody.length;
    var explicitStart = program.isWasi || options.explicitStart;
    if (!startIsEmpty || explicitStart) {
      let signature = startFunctionInstance.signature;
      if (!startIsEmpty && explicitStart) {
        module.addGlobal(BuiltinNames.started, NativeType.I32, true, module.i32(0));
        startFunctionBody.unshift(
          module.global_set(BuiltinNames.started, module.i32(1))
        );
        startFunctionBody.unshift(
          module.if(
            module.global_get(BuiltinNames.started, NativeType.I32),
            module.return()
          )
        );
      }
      let funcRef = module.addFunction(
        startFunctionInstance.internalName,
        signature.nativeParams,
        signature.nativeResults,
        typesToNativeTypes(startFunctionInstance.additionalLocals),
        module.flatten(startFunctionBody)
      );
      startFunctionInstance.finalize(module, funcRef);
      if (!explicitStart) module.setStart(funcRef);
      else module.addFunctionExport(startFunctionInstance.internalName, ExportNames.start);
    }

    // set up virtual lookup tables
    var functionTable = this.functionTable;
    for (let i = 0, k = functionTable.length; i < k; ++i) {
      let instance = functionTable[i];
      if (instance.is(CommonFlags.VIRTUAL)) {
        assert(instance.is(CommonFlags.INSTANCE));
        functionTable[i] = this.ensureVirtualStub(instance); // incl. varargs
        this.finalizeVirtualStub(instance);
      } else if (instance.signature.requiredParameters < instance.signature.parameterTypes.length) {
        functionTable[i] = this.ensureVarargsStub(instance);
      }
    }
    var virtualCalls = this.virtualCalls;
    while (virtualCalls.size) {
      // finalizing a stub may discover more virtual calls, so do this in a loop
      for (let _values = Set_values(virtualCalls), i = 0, k = _values.length; i < k; ++i) {
        let instance = unchecked(_values[i]);
        this.finalizeVirtualStub(instance);
        virtualCalls.delete(instance);
      }
    }

    // finalize runtime features
    module.removeGlobal(BuiltinNames.rtti_base);
    if (this.runtimeFeatures & RuntimeFeatures.RTTI) compileRTTI(this);
    if (this.runtimeFeatures & RuntimeFeatures.visitGlobals) compileVisitGlobals(this);
    if (this.runtimeFeatures & RuntimeFeatures.visitMembers) compileVisitMembers(this);

    // update the heap base pointer
    var memoryOffset = this.memoryOffset;
    memoryOffset = i64_align(memoryOffset, options.usizeType.byteSize);
    var lowMemoryLimit32 = this.options.lowMemoryLimit;
    if (lowMemoryLimit32) {
      let lowMemoryLimit = i64_new(lowMemoryLimit32 & ~15);
      if (i64_gt(memoryOffset, lowMemoryLimit)) {
        this.error(
          DiagnosticCode.Low_memory_limit_exceeded_by_static_data_0_1,
          null, i64_to_string(memoryOffset), i64_to_string(lowMemoryLimit)
        );
      }
    }
    this.memoryOffset = memoryOffset;
    module.removeGlobal(BuiltinNames.heap_base);
    if (this.runtimeFeatures & RuntimeFeatures.HEAP) {
      if (options.isWasm64) {
        module.addGlobal(
          BuiltinNames.heap_base,
          NativeType.I64,
          false,
          module.i64(i64_low(memoryOffset), i64_high(memoryOffset))
        );
      } else {
        module.addGlobal(
          BuiltinNames.heap_base,
          NativeType.I32,
          false,
          module.i32(i64_low(memoryOffset))
        );
      }
    }

    // set up memory
    var initialPages: u32 = 0;
    if (this.options.memoryBase /* is specified */ || this.memorySegments.length) {
      initialPages = u32(i64_low(i64_shr_u(i64_align(memoryOffset, 0x10000), i64_new(16))));
    }
    if (options.initialMemory) {
      if (options.initialMemory < initialPages) {
        this.error(
          DiagnosticCode.Module_requires_at_least_0_pages_of_initial_memory,
          null,
          initialPages.toString()
        );
      } else {
        initialPages = options.initialMemory;
      }
    }
    var maximumPages = Module.UNLIMITED_MEMORY;
    if (options.maximumMemory) {
      if (options.maximumMemory < initialPages) {
        this.error(
          DiagnosticCode.Module_requires_at_least_0_pages_of_maximum_memory,
          null,
          initialPages.toString()
        );
      } else {
        maximumPages = options.maximumMemory;
      }
    }
    var isSharedMemory = false;
    if (options.sharedMemory) {
      isSharedMemory = true;
      if (!options.maximumMemory) {
        this.error(
          DiagnosticCode.Shared_memory_requires_maximum_memory_to_be_defined,
          null
        );
        isSharedMemory = false;
      }
      if (!options.hasFeature(Feature.THREADS)) {
        this.error(
          DiagnosticCode.Shared_memory_requires_feature_threads_to_be_enabled,
          null
        );
        isSharedMemory = false;
      }
    }
    module.setMemory(
      initialPages,
      maximumPages,
      this.memorySegments,
      options.target,
      options.exportMemory ? ExportNames.memory : null,
      isSharedMemory
    );

    // import memory if requested (default memory is named '0' by Binaryen)
    if (options.importMemory) module.addMemoryImport("0", "env", "memory", isSharedMemory);

    // set up function table (first elem is blank)
    var tableBase = this.options.tableBase;
    if (!tableBase) tableBase = 1; // leave first elem blank
    var functionTableNames = new Array<string>(functionTable.length);
    for (let i = 0, k = functionTable.length; i < k; ++i) {
      functionTableNames[i] = functionTable[i].internalName;
    }
    module.setFunctionTable(tableBase + functionTable.length, Module.UNLIMITED_TABLE, functionTableNames, module.i32(tableBase));

    // import and/or export table if requested (default table is named '0' by Binaryen)
    if (options.importTable) {
      module.addTableImport("0", "env", "table");
      if (options.pedantic && options.willOptimize) {
        this.pedantic(
          DiagnosticCode.Importing_the_table_disables_some_indirect_call_optimizations,
          null
        );
      }
    }
    if (options.exportTable) {
      module.addTableExport("0", ExportNames.table);
      if (options.pedantic && options.willOptimize) {
        this.pedantic(
          DiagnosticCode.Exporting_the_table_disables_some_indirect_call_optimizations,
          null
        );
      }
    }

    // set up module exports
    // TODO: for (let file of this.program.filesByName.values()) {
    for (let _values = Map_values(this.program.filesByName), i = 0, k = _values.length; i < k; ++i) {
      let file = unchecked(_values[i]);
      if (file.source.sourceKind == SourceKind.USER_ENTRY) this.ensureModuleExports(file);
    }

    // expose the arguments length helper if there are varargs exports
    if (this.runtimeFeatures & RuntimeFeatures.setArgumentsLength) {
      module.addFunction(BuiltinNames.setArgumentsLength, NativeType.I32, NativeType.None, null,
        module.global_set(BuiltinNames.argumentsLength, module.local_get(0, NativeType.I32))
      );
      module.addFunctionExport(BuiltinNames.setArgumentsLength, ExportNames.setArgumentsLength);
    }
    return module;
  }

  // === Exports ==================================================================================

  /** Applies the respective module exports for the specified file. */
  private ensureModuleExports(file: File): void {
    var exports = file.exports;
    if (exports) {
      // TODO: for (let [elementName, element] of exports) {
      for (let _keys = Map_keys(exports), i = 0, k = _keys.length; i < k; ++i) {
        let elementName = unchecked(_keys[i]);
        let element = assert(exports.get(elementName));
        this.ensureModuleExport(elementName, element);
      }
    }
    var exportsStar = file.exportsStar;
    if (exportsStar)  {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        this.ensureModuleExports(exportsStar[i]);
      }
    }
  }

  /** Applies the respective module export(s) for the specified element. */
  private ensureModuleExport(name: string, element: Element, prefix: string = ""): void {
    switch (element.kind) {

      // traverse instances
      case ElementKind.FUNCTION_PROTOTYPE: {
        let functionPrototype = <FunctionPrototype>element;
        let functionInstances = functionPrototype.instances;
        if (functionInstances !== null && functionInstances.size > 0) {
          // TODO: for (let instance of instances.values()) {
          for (let _values = Map_values(functionInstances), i = 0, k = _values.length; i < k; ++i) {
            let instance = unchecked(_values[i]);
            let instanceName = name;
            if (instance.is(CommonFlags.GENERIC)) {
              let fullName = instance.internalName;
              instanceName += fullName.substring(fullName.lastIndexOf("<"));
            }
            this.ensureModuleExport(instanceName, instance, prefix);
          }
        } else if (functionPrototype.is(CommonFlags.GENERIC)) {
          this.warning(
            DiagnosticCode.Exported_generic_function_or_class_has_no_concrete_instances,
            functionPrototype.identifierNode.range
          );
        }
        break;
      }
      case ElementKind.CLASS_PROTOTYPE: {
        let classPrototype = <ClassPrototype>element;
        let classInstances = classPrototype.instances;
        if (classInstances !== null && classInstances.size > 0) {
          // TODO: for (let instance of instances.values()) {
          for (let _values = Map_values(classInstances), i = 0, k = _values.length; i < k; ++i) {
            let instance = unchecked(_values[i]);
            let instanceName = name;
            if (instance.is(CommonFlags.GENERIC)) {
              let fullName = instance.internalName;
              instanceName += fullName.substring(fullName.lastIndexOf("<"));
            }
            this.ensureModuleExport(instanceName, instance, prefix);
          }
        } else if (classPrototype.is(CommonFlags.GENERIC)) {
          this.warning(
            DiagnosticCode.Exported_generic_function_or_class_has_no_concrete_instances,
            classPrototype.identifierNode.range
          );
        }
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let propertyInstance = (<PropertyPrototype>element).instance;
        if (propertyInstance) this.ensureModuleExport(name, propertyInstance, prefix);
        break;
      }

      // export concrete elements
      case ElementKind.GLOBAL: {
        let global = <Global>element;
        let isConst = global.is(CommonFlags.CONST) || global.is(CommonFlags.STATIC | CommonFlags.READONLY);
        if (!isConst && !this.options.hasFeature(Feature.MUTABLE_GLOBALS)) {
          this.error(
            DiagnosticCode.Cannot_export_a_mutable_global,
            global.identifierNode.range
          );
        } else {
          if (element.is(CommonFlags.COMPILED)) this.module.addGlobalExport(element.internalName, prefix + name);
        }
        break;
      }
      case ElementKind.ENUMVALUE: {
        let enumValue = <EnumValue>element;
        if (!enumValue.isImmutable && !this.options.hasFeature(Feature.MUTABLE_GLOBALS)) {
          this.error(
            DiagnosticCode.Cannot_export_a_mutable_global,
            enumValue.identifierNode.range
          );
        } else {
          this.module.addGlobalExport(element.internalName, prefix + name);
        }
        break;
      }
      case ElementKind.FUNCTION: {
        let functionInstance = <Function>element;
        if (!functionInstance.hasDecorator(DecoratorFlags.BUILTIN)) {
          let signature = functionInstance.signature;
          if (signature.requiredParameters < signature.parameterTypes.length) {
            // utilize varargs stub to fill in omitted arguments
            functionInstance = this.ensureVarargsStub(functionInstance);
            this.ensureArgumentsLength();
            this.runtimeFeatures |= RuntimeFeatures.setArgumentsLength;
          }
          if (functionInstance.is(CommonFlags.COMPILED)) this.module.addFunctionExport(functionInstance.internalName, prefix + name);
        }
        break;
      }
      case ElementKind.PROPERTY: {
        let propertyInstance = <Property>element;
        let getterInstance = propertyInstance.getterInstance;
        if (getterInstance) this.ensureModuleExport(GETTER_PREFIX + name, getterInstance, prefix);
        let setterInstance = propertyInstance.setterInstance;
        if (setterInstance) this.ensureModuleExport(SETTER_PREFIX + name, setterInstance, prefix);
        break;
      }
      case ElementKind.FIELD: {
        let fieldInstance = <Field>element;
        if (element.is(CommonFlags.COMPILED)) {
          let module = this.module;
          module.addFunctionExport(fieldInstance.internalGetterName, prefix + GETTER_PREFIX + name);
          if (!element.is(CommonFlags.READONLY)) {
            module.addFunctionExport(fieldInstance.internalSetterName, prefix + SETTER_PREFIX + name);
          }
        }
        break;
      }
      case ElementKind.CLASS: {
        let classInstance = <Class>element;
        // make the class name itself represent its runtime id
        if (!classInstance.type.isUnmanaged) {
          let module = this.module;
          let internalName = classInstance.internalName;

          if (!this.doneModuleExports.has(element)) {
            module.addGlobal(internalName, NativeType.I32, false, module.i32(classInstance.id));
            this.doneModuleExports.add(element);
          }
          module.addGlobalExport(internalName, prefix + name);
        }
        break;
      }

      // just traverse members below
      case ElementKind.ENUM:
      case ElementKind.INTERFACE_PROTOTYPE:
      case ElementKind.NAMESPACE:
      case ElementKind.TYPEDEFINITION:
      case ElementKind.INDEXSIGNATURE: break;

      default: assert(false); // unexpected module export
    }

    // traverse members
    var members = element.members;
    if (members) {
      let subPrefix = prefix + name + (element.kind == ElementKind.CLASS
        ? INSTANCE_DELIMITER
        : STATIC_DELIMITER
      );
      if (element.kind == ElementKind.NAMESPACE) {
        let implicitExport = element.is(CommonFlags.SCOPED);
        // TODO: for (let [memberName, member] of members) {
        for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
          let memberName = unchecked(_keys[i]);
          let member = assert(members.get(memberName));
          if (implicitExport || member.is(CommonFlags.EXPORT)) {
            this.ensureModuleExport(memberName, member, subPrefix);
          }
        }
      } else {
        // TODO: for (let [memberName, member] of members) {
        for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
          let memberName = unchecked(_keys[i]);
          let member = assert(members.get(memberName));
          if (!member.is(CommonFlags.PRIVATE)) {
            this.ensureModuleExport(memberName, member, subPrefix);
          }
        }
      }
    }
  }

  // === Elements =================================================================================

  /** Compiles any element. */
  compileElement(element: Element, compileMembers: bool = true): void {
    switch (element.kind) {
      case ElementKind.GLOBAL: {
        this.compileGlobal(<Global>element);
        break;
      }
      case ElementKind.ENUM: {
        this.compileEnum(<Enum>element);
        break;
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        if (!element.is(CommonFlags.GENERIC)) {
          let functionInstance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
          if (functionInstance) this.compileFunction(functionInstance);
        }
        break;
      }
      case ElementKind.CLASS_PROTOTYPE: {
        if (!element.is(CommonFlags.GENERIC)) {
          let classInstance = this.resolver.resolveClass(<ClassPrototype>element, null);
          if (classInstance) this.compileClass(classInstance);
        }
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let propertyInstance = this.resolver.resolveProperty(<PropertyPrototype>element);
        if (propertyInstance) this.compileProperty(propertyInstance);
        break;
      }
      case ElementKind.INTERFACE_PROTOTYPE:
      case ElementKind.NAMESPACE:
      case ElementKind.TYPEDEFINITION:
      case ElementKind.ENUMVALUE:
      case ElementKind.INDEXSIGNATURE: break;
      default: assert(false);
    }
    if (compileMembers) {
      let members = element.members;
      if (members) {
        // TODO: for (let element of members.values()) {
        for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
          let element = unchecked(_values[i]);
          this.compileElement(element);
        }
      }
    }
  }

  /** Compiles a file's exports. */
  compileExports(file: File): void {
    var exports = file.exports;
    if (exports) {
      // TODO: for (let element of exports.values()) {
      for (let _values = Map_values(exports), i = 0, k = _values.length; i < k; ++i) {
        let element = unchecked(_values[i]);
        if (!element.hasDecorator(DecoratorFlags.LAZY)) this.compileElement(element);
      }
    }
    var exportsStar = file.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        let exportStar = unchecked(exportsStar[i]);
        this.compileFile(exportStar);
        this.compileExports(exportStar);
      }
    }
  }

  // files

  /** Compiles the file matching the specified path. */
  compileFileByPath(normalizedPathWithoutExtension: string, reportNode: Node): void {
    var file: File;
    var filesByName = this.program.filesByName;
    var pathWithIndex: string;
    if (filesByName.has(normalizedPathWithoutExtension)) {
      file = assert(filesByName.get(normalizedPathWithoutExtension));
    } else if (filesByName.has(pathWithIndex = normalizedPathWithoutExtension + INDEX_SUFFIX)) {
      file = assert(filesByName.get(pathWithIndex));
    } else {
      this.error(
        DiagnosticCode.File_0_not_found,
        reportNode.range, normalizedPathWithoutExtension
      );
      return;
    }
    this.compileFile(file);
  }

  /** Compiles the specified file. */
  compileFile(file: File): void {
    if (file.is(CommonFlags.COMPILED)) return;
    file.set(CommonFlags.COMPILED);

    // compile top-level statements within the file's start function
    var startFunction = file.startFunction;
    var startSignature = startFunction.signature;
    var previousBody = this.currentBody;
    var startFunctionBody = new Array<ExpressionRef>();
    this.currentBody = startFunctionBody;

    // compile top-level statements
    var previousFlow = this.currentFlow;
    var flow = startFunction.flow;
    this.currentFlow = flow;
    for (let statements = file.source.statements, i = 0, k = statements.length; i < k; ++i) {
      this.compileTopLevelStatement(statements[i], startFunctionBody);
    }
    this.finishAutoreleases(flow, startFunctionBody);
    // no need to insert unreachable since last statement should have done that
    this.currentFlow = previousFlow;
    this.currentBody = previousBody;

    // if top-level statements are present, make the per-file start function and call it in start
    if (startFunctionBody.length) {
      let module = this.module;
      let locals = startFunction.localsByIndex;
      let numLocals = locals.length;
      let varTypes = new Array<NativeType>(numLocals);
      for (let i = 0; i < numLocals; ++i) varTypes[i] = locals[i].type.toNativeType();
      module.addFunction(
        startFunction.internalName,
        startSignature.nativeParams,
        startSignature.nativeResults,
        varTypes,
        module.flatten(startFunctionBody)
      );
      previousBody.push(
        module.call(startFunction.internalName, null, NativeType.None)
      );
    }
  }

  // === Globals ==================================================================================

  /** Compiles a global variable. */
  compileGlobal(global: Global): bool {
    if (global.is(CommonFlags.COMPILED)) return !global.is(CommonFlags.ERRORED);
    global.set(CommonFlags.COMPILED);

    var pendingElements = this.pendingElements;
    pendingElements.add(global);

    var module = this.module;
    var initExpr: ExpressionRef = 0;
    var typeNode = global.typeNode;
    var initializerNode = global.initializerNode;

    if (!global.is(CommonFlags.RESOLVED)) {

      // Resolve type if annotated
      if (typeNode) {
        let resolvedType = this.resolver.resolveType(typeNode, global.parent); // reports
        if (!resolvedType) {
          global.set(CommonFlags.ERRORED);
          pendingElements.delete(global);
          return false;
        }
        if (resolvedType == Type.void) {
          this.error(
            DiagnosticCode.Type_expected,
            typeNode.range
          );
          global.set(CommonFlags.ERRORED);
          pendingElements.delete(global);
          return false;
        }
        global.setType(resolvedType);
        this.checkTypeSupported(global.type, typeNode);

      // Otherwise infer type from initializer
      } else if (initializerNode) {
        let previousFlow = this.currentFlow;
        if (global.hasDecorator(DecoratorFlags.LAZY)) {
          this.currentFlow = global.file.startFunction.flow;
        }
        initExpr = this.compileExpression(initializerNode, Type.auto, // reports
          Constraints.MUST_WRAP | Constraints.WILL_RETAIN | Constraints.PREFER_STATIC
        );
        this.currentFlow = previousFlow;
        if (this.currentType == Type.void) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            initializerNode.range, this.currentType.toString(), "<auto>"
          );
          global.set(CommonFlags.ERRORED);
          pendingElements.delete(global);
          return false;
        }
        global.setType(this.currentType);

      // Error if there's neither a type nor an initializer
      } else {
        this.error(
          DiagnosticCode.Type_expected,
          global.identifierNode.range.atEnd
        );
        global.set(CommonFlags.ERRORED);
        pendingElements.delete(global);
        return false;
      }
    }

    // Handle ambient builtins like '__heap_base' that need to be resolved but are added explicitly
    if (global.is(CommonFlags.AMBIENT) && global.hasDecorator(DecoratorFlags.BUILTIN)) {
      if (global.internalName == BuiltinNames.heap_base) this.runtimeFeatures |= RuntimeFeatures.HEAP;
      else if (global.internalName == BuiltinNames.rtti_base) this.runtimeFeatures |= RuntimeFeatures.RTTI;
      pendingElements.delete(global);
      return true;
    }

    var type = global.type;
    var nativeType = type.toNativeType();
    var isDeclaredConstant = global.is(CommonFlags.CONST) || global.is(CommonFlags.STATIC | CommonFlags.READONLY);
    var isDeclaredInline = global.hasDecorator(DecoratorFlags.INLINE);

    // Handle imports
    if (global.is(CommonFlags.AMBIENT)) {

      // Constant global or mutable globals enabled
      if (isDeclaredConstant || this.options.hasFeature(Feature.MUTABLE_GLOBALS)) {
        global.set(CommonFlags.MODULE_IMPORT);
        mangleImportName(global, global.declaration);
        module.addGlobalImport(
          global.internalName,
          mangleImportName_moduleName,
          mangleImportName_elementName,
          nativeType,
          !isDeclaredConstant
        );
        pendingElements.delete(global);
        return true;
      }

      // Importing mutable globals is not supported in the MVP
      this.error(
        DiagnosticCode.Feature_0_is_not_enabled,
        global.declaration.range, "mutable-globals"
      );
      global.set(CommonFlags.ERRORED);
      pendingElements.delete(global);
      return false;
    }

    // The MVP does not yet support initializer expressions other than constants and gets of
    // imported immutable globals, hence such initializations must be performed in the start.
    var initializeInStart = false;

    // Evaluate initializer if present
    if (initializerNode) {
      if (!initExpr) {
        let previousFlow = this.currentFlow;
        if (global.hasDecorator(DecoratorFlags.LAZY)) {
          this.currentFlow = global.file.startFunction.flow;
        }
        initExpr = this.compileExpression(initializerNode, type,
          Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP | Constraints.WILL_RETAIN | Constraints.PREFER_STATIC
        );
        this.currentFlow = previousFlow;
      }

      // If not a constant, attempt to precompute
      if (getExpressionId(initExpr) != ExpressionId.Const) {
        if (isDeclaredConstant) {
          if (getExpressionId(initExpr) != ExpressionId.Const) {
            let precomp = module.runExpression(initExpr, ExpressionRunnerFlags.PreserveSideeffects);
            if (precomp) {
              initExpr = precomp;
            } else {
              initializeInStart = true;
            }
          }
          if (this.skippedAutoreleases.has(initExpr)) this.skippedAutoreleases.add(initExpr);
        } else {
          initializeInStart = true;
        }
      }

      // Handle special case of initializing from imported immutable global
      if (initializeInStart && getExpressionId(initExpr) == ExpressionId.GlobalGet) {
        let fromName = assert(getGlobalGetName(initExpr));
        if (!isGlobalMutable(module.getGlobal(fromName))) {
          let elementsByName = this.program.elementsByName;
          if (elementsByName.has(fromName)) {
            let global = assert(elementsByName.get(fromName));
            if (global.is(CommonFlags.AMBIENT)) initializeInStart = false;
          }
        }
      }

      // Explicitly inline if annotated
      if (isDeclaredInline) {
        if (initializeInStart) {
          this.warning(
            DiagnosticCode.Mutable_value_cannot_be_inlined,
            initializerNode.range
          );
        } else {
          assert(getExpressionId(initExpr) == ExpressionId.Const);
          let exprType = getExpressionType(initExpr);
          switch (<u32>exprType) {
            case <u32>NativeType.I32: {
              global.constantValueKind = ConstantValueKind.INTEGER;
              global.constantIntegerValue = i64_new(getConstValueI32(initExpr), 0);
              break;
            }
            case <u32>NativeType.I64: {
              global.constantValueKind = ConstantValueKind.INTEGER;
              global.constantIntegerValue = i64_new(
                getConstValueI64Low(initExpr),
                getConstValueI64High(initExpr)
              );
              break;
            }
            case <u32>NativeType.F32: {
              global.constantValueKind = ConstantValueKind.FLOAT;
              global.constantFloatValue = getConstValueF32(initExpr);
              break;
            }
            case <u32>NativeType.F64: {
              global.constantValueKind = ConstantValueKind.FLOAT;
              global.constantFloatValue = getConstValueF64(initExpr);
              break;
            }
            default: {
              assert(false);
              global.set(CommonFlags.ERRORED);
              pendingElements.delete(global);
              return false;
            }
          }
          global.set(CommonFlags.INLINED); // inline the value from now on
        }
      }

    // Initialize to zero if there's no initializer
    } else {
      if (global.is(CommonFlags.INLINED)) {
        initExpr = this.compileInlineConstant(global, global.type, Constraints.PREFER_STATIC | Constraints.WILL_RETAIN);
      } else {
        initExpr = this.makeZero(type, global.declaration);
      }
    }

    var internalName = global.internalName;

    if (initializeInStart) { // initialize to mutable zero and set the actual value in start
      if (isDeclaredInline) {
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          findDecorator(DecoratorKind.INLINE, global.decoratorNodes)!.range, "inline"
        );
      }
      module.addGlobal(internalName, nativeType, true, this.makeZero(type, global.declaration));
      if (type.isManaged && !this.skippedAutoreleases.has(initExpr)) initExpr = this.makeRetain(initExpr, type);
      this.currentBody.push(
        module.global_set(internalName, initExpr)
      );
    } else if (!isDeclaredInline) { // compile normally
      module.addGlobal(internalName, nativeType, !isDeclaredConstant, initExpr);
    }
    pendingElements.delete(global);
    return true;
  }

  // === Enums ====================================================================================

  /** Compiles an enum. */
  compileEnum(element: Enum): bool {
    if (element.is(CommonFlags.COMPILED)) return !element.is(CommonFlags.ERRORED);
    element.set(CommonFlags.COMPILED);

    var pendingElements = this.pendingElements;
    pendingElements.add(element);

    var module = this.module;
    var previousParent = this.currentParent;
    this.currentParent = element;
    var previousValue: EnumValue | null = null;
    var previousValueIsMut = false;
    var isInline = element.is(CommonFlags.CONST) || element.hasDecorator(DecoratorFlags.INLINE);

    var members = element.members;
    if (members) {
      // TODO: for (let member of element.members.values()) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        if (member.kind != ElementKind.ENUMVALUE) continue; // happens if an enum is also a namespace
        let initInStart = false;
        let enumValue = <EnumValue>member;
        let valueNode = enumValue.valueNode;
        enumValue.set(CommonFlags.COMPILED);
        let previousFlow = this.currentFlow;
        if (element.hasDecorator(DecoratorFlags.LAZY)) {
          this.currentFlow = element.file.startFunction.flow;
        }
        let initExpr: ExpressionRef;
        if (valueNode) {
          initExpr = this.compileExpression(valueNode, Type.i32,
            Constraints.CONV_IMPLICIT // autorelease is not applicable in i32 context
          );
          if (getExpressionId(initExpr) != ExpressionId.Const) {
            let precomp = module.runExpression(initExpr, ExpressionRunnerFlags.PreserveSideeffects);
            if (precomp) {
              initExpr = precomp;
            } else {
              if (element.is(CommonFlags.CONST)) {
                this.error(
                  DiagnosticCode.In_const_enum_declarations_member_initializer_must_be_constant_expression,
                  valueNode.range
                );
              }
              initInStart = true;
            }
          }
        } else if (previousValue == null) {
          initExpr = module.i32(0);
        } else {
          if (previousValueIsMut) {
            this.error(
              DiagnosticCode.Enum_member_must_have_initializer,
              enumValue.identifierNode.range.atEnd
            );
          }
          if (isInline) {
            let value = i64_add(previousValue.constantIntegerValue, i64_new(1));
            assert(!i64_high(value));
            initExpr = module.i32(i64_low(value));
          } else {
            initExpr = module.binary(BinaryOp.AddI32,
              module.global_get(previousValue.internalName, NativeType.I32),
              module.i32(1)
            );
            let precomp = module.runExpression(initExpr, ExpressionRunnerFlags.PreserveSideeffects);
            if (precomp) {
              initExpr = precomp;
            } else {
              if (element.is(CommonFlags.CONST)) {
                this.error(
                  DiagnosticCode.In_const_enum_declarations_member_initializer_must_be_constant_expression,
                  member.declaration.range
                );
              }
              initInStart = true;
            }
          }
        }
        this.currentFlow = previousFlow;
        if (initInStart) {
          module.addGlobal(enumValue.internalName, NativeType.I32, true, module.i32(0));
          this.currentBody.push(
            this.makeGlobalAssignment(enumValue, initExpr, Type.i32, false)
          );
          previousValueIsMut = true;
        } else {
          if (isInline) {
            enumValue.setConstantIntegerValue(i64_new(getConstValueI32(initExpr)), Type.i32);
            if (enumValue.is(CommonFlags.MODULE_EXPORT)) {
              module.addGlobal(enumValue.internalName, NativeType.I32, false, initExpr);
            }
          } else {
            module.addGlobal(enumValue.internalName, NativeType.I32, false, initExpr);
          }
          enumValue.isImmutable = true;
          previousValueIsMut = false;
        }
        previousValue = enumValue;
      }
    }
    this.currentParent = previousParent;
    pendingElements.delete(element);
    return true;
  }

  // === Functions ================================================================================

  /** Compiles a priorly resolved function. */
  compileFunction(
    /** Function to compile. */
    instance: Function,
    /** Force compilation of stdlib alternative if a builtin. */
    forceStdAlternative: bool = false
  ): bool {
    if (instance.is(CommonFlags.COMPILED)) return !instance.is(CommonFlags.ERRORED);

    if (!forceStdAlternative) {
      if (instance.hasDecorator(DecoratorFlags.BUILTIN)) return true;
      if (instance.hasDecorator(DecoratorFlags.LAZY)) {
        this.lazyFunctions.add(instance);
        return true;
      }
    }

    instance.set(CommonFlags.COMPILED);
    var pendingElements = this.pendingElements;
    pendingElements.add(instance);

    var previousType = this.currentType;
    var module = this.module;
    var signature = instance.signature;
    var bodyNode = instance.prototype.bodyNode;
    var declarationNode = instance.declaration;
    assert(declarationNode.kind == NodeKind.FUNCTIONDECLARATION || declarationNode.kind == NodeKind.METHODDECLARATION);
    this.checkSignatureSupported(instance.signature, (<FunctionDeclaration>declarationNode).signature);

    var funcRef: FunctionRef;

    // concrete function
    if (bodyNode) {

      // must not be ambient
      if (instance.is(CommonFlags.AMBIENT)) {
        this.error(
          DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts,
          instance.identifierNode.range
        );
      }

      // cannot have an annotated external name
      if (instance.hasDecorator(DecoratorFlags.EXTERNAL)) {
        let decoratorNodes = instance.decoratorNodes;
        let decorator = assert(findDecorator(DecoratorKind.EXTERNAL, decoratorNodes));
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          decorator.range, "external"
        );
      }

      // compile body in this function's context
      let previousFlow = this.currentFlow;
      let flow = instance.flow;
      this.currentFlow = flow;
      let stmts = new Array<ExpressionRef>();

      // retain each argument for as long as the function lives
      let index = 0;
      let thisType = signature.thisType;
      if (thisType) {
        // In normal instance functions, `this` is effectively a constant
        // retained elsewhere so does not need to be retained.
        if (instance.is(CommonFlags.CONSTRUCTOR)) {
          // Constructors, however, can allocate their own memory, and as such
          // must refcount the allocation in case something else is `return`ed.
          flow.setLocalFlag(index, LocalFlags.RETAINED);
        }
        ++index;
      }
      let parameterTypes = signature.parameterTypes;
      for (let i = 0, k = parameterTypes.length; i < k; ++i, ++index) {
        let type = parameterTypes[i];
        if (type.isManaged) {
          stmts.push(
            module.local_set(index,
              this.makeRetain(
                module.local_get(index, type.toNativeType()),
                type
              )
            )
          );
          flow.setLocalFlag(index, LocalFlags.RETAINED);
        }
      }

      let body: ExpressionRef;
      if (this.compileFunctionBody(instance, stmts)) {
        if (!flow.is(FlowFlags.TERMINATES)) {
          this.performAutoreleases(flow, stmts);
          this.finishAutoreleases(flow, stmts);
        }
        body = module.flatten(stmts, instance.signature.returnType.toNativeType());
      } else {
        body = module.unreachable();
      }
      this.currentFlow = previousFlow;

      // create the function
      funcRef = module.addFunction(
        instance.internalName,
        signature.nativeParams,
        signature.nativeResults,
        typesToNativeTypes(instance.additionalLocals),
        body
      );

    // imported function
    } else if (instance.is(CommonFlags.AMBIENT)) {
      instance.set(CommonFlags.MODULE_IMPORT);
      mangleImportName(instance, declarationNode); // TODO: check for duplicates
      module.addFunctionImport(
        instance.internalName,
        mangleImportName_moduleName,
        mangleImportName_elementName,
        signature.nativeParams,
        signature.nativeResults
      );
      funcRef = module.getFunction(instance.internalName);

    // abstract or interface function
    } else if (instance.is(CommonFlags.ABSTRACT) || instance.parent.kind == ElementKind.INTERFACE) {
      funcRef = module.addFunction(
        instance.internalName,
        signature.nativeParams,
        signature.nativeResults,
        null,
        module.unreachable()
      );
    } else {
      this.error(
        DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
        instance.identifierNode.range
      );
      funcRef = 0; // TODO?
      instance.set(CommonFlags.ERRORED);
    }

    instance.finalize(module, funcRef);
    this.currentType = previousType;
    pendingElements.delete(instance);
    return true;
  }

  /** Compiles the body of a function within the specified flow. */
  private compileFunctionBody(
    /** Function to compile. */
    instance: Function,
    /** Target array of statements also being returned. Creates a new array if omitted. */
    stmts: ExpressionRef[]
  ): bool {
    var module = this.module;
    var bodyNode = assert(instance.prototype.bodyNode);
    var returnType = instance.signature.returnType;
    var flow = this.currentFlow;
    var thisLocal = instance.signature.thisType
      ? assert(flow.lookupLocal(CommonNames.this_))
      : null;

    // compile statements
    if (bodyNode.kind == NodeKind.BLOCK) {
      stmts = this.compileStatements((<BlockStatement>bodyNode).statements, true, stmts);
    } else {
      // must be an expression statement if not a block
      assert(bodyNode.kind == NodeKind.EXPRESSION);

      // must be an arrow function
      assert(instance.prototype.arrowKind);

      // none of the following can be an arrow function
      assert(!instance.isAny(CommonFlags.CONSTRUCTOR | CommonFlags.GET | CommonFlags.SET));

      // take special care of properly retaining the returned value
      let expr = this.compileReturnedExpression((<ExpressionStatement>bodyNode).expression, returnType, Constraints.CONV_IMPLICIT);

      if (!stmts) stmts = [ expr ];
      else stmts.push(expr);

      if (!flow.is(FlowFlags.TERMINATES)) {
        let indexBefore = stmts.length;
        this.performAutoreleases(flow, stmts);
        this.finishAutoreleases(flow, stmts);
        let canOverflow = flow.canOverflow(expr, returnType);
        let nonNull = flow.isNonnull(expr, returnType);
        if (stmts.length > indexBefore) {
          let temp = flow.getTempLocal(returnType);
          if (!canOverflow) flow.setLocalFlag(temp.index, LocalFlags.WRAPPED);
          if (nonNull) flow.setLocalFlag(temp.index, LocalFlags.NONNULL);
          stmts[indexBefore - 1] = module.local_set(temp.index, expr);
          stmts.push(module.local_get(temp.index, returnType.toNativeType()));
          flow.freeTempLocal(temp);
        }
        if (!canOverflow) flow.set(FlowFlags.RETURNS_WRAPPED);
        if (nonNull) flow.set(FlowFlags.RETURNS_NONNULL);
        flow.set(FlowFlags.RETURNS | FlowFlags.TERMINATES);
      }
    }

    // Make constructors return their instance pointer, and prepend a conditional
    // allocation if any code path accesses `this`.
    if (instance.is(CommonFlags.CONSTRUCTOR)) {
      let nativeSizeType = this.options.nativeSizeType;
      assert(instance.is(CommonFlags.INSTANCE));
      thisLocal = assert(thisLocal);
      let parent = assert(instance.parent);
      assert(parent.kind == ElementKind.CLASS);
      let classInstance = <Class>parent;

      if (flow.isAny(FlowFlags.ACCESSES_THIS | FlowFlags.CONDITIONALLY_ACCESSES_THIS) || !flow.is(FlowFlags.TERMINATES)) {
        // Allocate `this` if not a super call, and initialize fields
        let allocStmts = new Array<ExpressionRef>();
        allocStmts.push(
          module.if(
            module.unary(nativeSizeType == NativeType.I64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
              module.local_get(thisLocal.index, nativeSizeType)
            ),
            module.local_set(thisLocal.index,
              this.makeRetain(
                this.makeAllocation(classInstance),
                classInstance.type
              )
            )
          )
        );
        this.makeFieldInitializationInConstructor(classInstance, allocStmts);
        if (flow.isInline) {
          let firstStmt = stmts[0]; // `this` alias assignment
          assert(getExpressionId(firstStmt) == ExpressionId.LocalSet);
          assert(getLocalSetIndex(firstStmt) == thisLocal.index);
          allocStmts.unshift(firstStmt);
          stmts[0] = module.flatten(allocStmts, NativeType.None);
        } else {
          stmts.unshift(
            module.flatten(allocStmts, NativeType.None)
          );
        }

        // Just prepended allocation is dropped when returning non-'this'
        if (flow.is(FlowFlags.MAY_RETURN_NONTHIS)) {
          if (this.options.pedantic) {
            this.pedantic(
              DiagnosticCode.Explicitly_returning_constructor_drops_this_allocation,
              instance.identifierNode.range
            );
          }
        }
      }

      // Returning something else than 'this' would break 'super()' calls
      if (flow.is(FlowFlags.MAY_RETURN_NONTHIS) && !classInstance.hasDecorator(DecoratorFlags.FINAL)) {
        this.error(
          DiagnosticCode.A_class_with_a_constructor_explicitly_returning_something_else_than_this_must_be_final,
          classInstance.identifierNode.range
        );
      }

      // Implicitly return `this` if the flow falls through
      if (!flow.is(FlowFlags.TERMINATES)) {
        assert(flow.isAnyLocalFlag(thisLocal.index, LocalFlags.ANY_RETAINED));
        flow.unsetLocalFlag(thisLocal.index, LocalFlags.ANY_RETAINED); // undo
        this.performAutoreleases(flow, stmts);
        this.finishAutoreleases(flow, stmts);
        stmts.push(module.local_get(thisLocal.index, this.options.nativeSizeType));
        flow.set(FlowFlags.RETURNS | FlowFlags.RETURNS_NONNULL | FlowFlags.TERMINATES);
      }

      // check that super has been called if this is a derived class
      if (classInstance.base !== null && !flow.is(FlowFlags.CALLS_SUPER)) {
        this.error(
          DiagnosticCode.Constructors_for_derived_classes_must_contain_a_super_call,
          instance.prototype.declaration.range
        );
      }

    // if this is a normal function, make sure that all branches terminate
    } else if (returnType != Type.void && !flow.is(FlowFlags.TERMINATES)) {
      this.error(
        DiagnosticCode.A_function_whose_declared_type_is_not_void_must_return_a_value,
        instance.prototype.functionTypeNode.returnType.range
      );
      return false; // not recoverable
    }

    return true;
  }

  // === Classes ==================================================================================

  /** Compiles a priorly resolved class. */
  compileClass(instance: Class): bool {
    if (instance.is(CommonFlags.COMPILED)) return true;
    instance.set(CommonFlags.COMPILED);
    var prototype = instance.prototype;
    var staticMembers = (<ClassPrototype>prototype).members;
    if (staticMembers) {
      // TODO: for (let element of staticMembers.values()) {
      for (let _values = Map_values(staticMembers), i = 0, k = _values.length; i < k; ++i) {
        let element = unchecked(_values[i]);
        switch (element.kind) {
          case ElementKind.GLOBAL: {
            this.compileGlobal(<Global>element);
            break;
          }
          case ElementKind.FUNCTION_PROTOTYPE: {
            if (element.is(CommonFlags.GENERIC)) break;
            let functionInstance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
            if (!functionInstance) break;
            element = functionInstance;
            // fall-through
          }
          case ElementKind.FUNCTION: {
            this.compileFunction(<Function>element);
            break;
          }
          case ElementKind.PROPERTY_PROTOTYPE: {
            let propertyInstance = this.resolver.resolveProperty(<PropertyPrototype>element);
            if (!propertyInstance) break;
            element = propertyInstance;
            // fall-through
          }
          case ElementKind.PROPERTY: {
            this.compileProperty(<Property>element);
            break;
          }
        }
      }
    }
    this.ensureConstructor(instance, instance.identifierNode);
    this.checkFieldInitialization(instance);

    var instanceMembers = instance.members;
    if (instanceMembers) {
      // TODO: for (let element of instanceMembers.values()) {
      for (let _values = Map_values(instanceMembers), i = 0, k = _values.length; i < k; ++i) {
        let element = unchecked(_values[i]);
        switch (element.kind) {
          case ElementKind.FUNCTION_PROTOTYPE: {
            if (element.is(CommonFlags.GENERIC)) break;
            let functionInstance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
            if (!functionInstance) break;
            element = functionInstance;
            // fall-through
          }
          case ElementKind.FUNCTION: {
            this.compileFunction(<Function>element);
            break;
          }
          case ElementKind.FIELD: {
            this.compileField(<Field>element);
            break;
          }
          case ElementKind.PROPERTY_PROTOTYPE: {
            let propertyInstance = this.resolver.resolveProperty(<PropertyPrototype>element);
            if (!propertyInstance) break;
            element = propertyInstance;
            // fall-through
          }
          case ElementKind.PROPERTY: {
            this.compileProperty(<Property>element);
            break;
          }
        }
      }
    }
    return true;
  }

  /** Compiles an instance field to a getter and a setter. */
  compileField(instance: Field): bool {
    this.compileFieldGetter(instance);
    this.compileFieldSetter(instance);
    return instance.is(CommonFlags.COMPILED);
  }

  /** Compiles the getter of the specified instance field. */
  compileFieldGetter(instance: Field): bool {
    // A getter retains, while a load, as of a field access, does not.
    if (instance.getterRef) return true;
    var type = instance.type;
    var nativeThisType = this.options.nativeSizeType;
    var nativeValueType = type.toNativeType();
    var module = this.module;
    var valueExpr = module.load(type.byteSize, type.isSignedIntegerValue,
      module.local_get(0, nativeThisType),
      nativeValueType, instance.memoryOffset
    );
    if (type.isManaged) valueExpr = this.makeRetain(valueExpr, type);
    instance.getterRef = module.addFunction(instance.internalGetterName, nativeThisType, nativeValueType, null, valueExpr);
    if (instance.setterRef) {
      instance.set(CommonFlags.COMPILED);
    } else {
      let typeNode = instance.typeNode;
      if (typeNode) this.checkTypeSupported(instance.type, typeNode);
    }
    return true;
  }

  /** Compiles the setter of the specified instance field. */
  compileFieldSetter(instance: Field): bool {
    if (instance.setterRef) return true;
    var type = instance.type;
    var nativeThisType = this.options.nativeSizeType;
    var nativeValueType = type.toNativeType();
    var module = this.module;
    var valueExpr: ExpressionRef;
    var varTypes: NativeType[] | null = null;
    if (type.isManaged) {
      // Can't use makeReplace here since there's no corresponding flow, so
      // 0: this, 1: value, 2: oldValue (temp)
      valueExpr = module.block(null, [
        module.if(
          module.binary(nativeValueType == NativeType.I64 ? BinaryOp.NeI64 : BinaryOp.NeI32,
            // value != (oldValue = this.field)
            module.local_get(1, nativeValueType),
            module.local_tee(2,
              module.load(type.byteSize, false,
                module.local_get(0, nativeThisType),
                nativeValueType, instance.memoryOffset
              )
            )
          ),
          module.block(null, [
            module.drop(
              this.makeRetain(module.local_get(1, nativeValueType), type)
            ),
            this.makeRelease(module.local_get(2, nativeValueType), type)
          ])
        ),
        module.local_get(1, nativeValueType)
      ], nativeValueType);
      varTypes = [ nativeValueType ];
    } else {
      valueExpr = module.local_get(1, nativeValueType);
    }
    instance.setterRef = module.addFunction(instance.internalSetterName, createType([ nativeThisType, nativeValueType ]), NativeType.None, varTypes,
      module.store(type.byteSize,
        module.local_get(0, nativeThisType),
        valueExpr,
        nativeValueType, instance.memoryOffset
      )
    );
    if (instance.getterRef) {
      instance.set(CommonFlags.COMPILED);
    } else {
      let typeNode = instance.typeNode;
      if (typeNode) this.checkTypeSupported(instance.type, typeNode);
    }
    return true;
  }

  /** Compiles a property to a getter and potentially a setter. */
  compileProperty(instance: Property): bool {
    this.compilePropertyGetter(instance);
    this.compilePropertySetter(instance);
    return instance.is(CommonFlags.COMPILED);
  }

  /* Compiles the getter of the specified property. */
  compilePropertyGetter(instance: Property): bool {
    var getterInstance = instance.getterInstance;
    if (getterInstance) {
      let ret = this.compileFunction(getterInstance);
      let setterInstance = instance.setterInstance;
      if (getterInstance.is(CommonFlags.COMPILED) && (!setterInstance || setterInstance.is(CommonFlags.COMPILED))) {
        instance.set(CommonFlags.COMPILED);
      }
      return ret;
    }
    return false;
  }

  /** Compiles the setter of the specified property. */
  compilePropertySetter(instance: Property): bool {
    var setterInstance = instance.setterInstance;
    if (setterInstance) {
      let ret = this.compileFunction(setterInstance);
      let getterInstance = instance.getterInstance;
      if (getterInstance !== null && getterInstance.is(CommonFlags.COMPILED) && setterInstance.is(CommonFlags.COMPILED)) {
        instance.set(CommonFlags.COMPILED);
      }
      return ret;
    }
    return false;
  }

  // === Memory ===================================================================================

  /** Adds a static memory segment with the specified data. */
  addAlignedMemorySegment(buffer: Uint8Array, alignment: i32 = 16): MemorySegment {
    assert(isPowerOf2(alignment));
    var memoryOffset = i64_align(this.memoryOffset, alignment);
    var segment = new MemorySegment(buffer, memoryOffset);
    this.memorySegments.push(segment);
    this.memoryOffset = i64_add(memoryOffset, i64_new(buffer.length));
    return segment;
  }

  /** Adds a static memory segment representing a runtime object. */
  addRuntimeMemorySegment(buffer: Uint8Array): MemorySegment {
    var memoryOffset = this.program.computeBlockStart64(this.memoryOffset);
    var segment = new MemorySegment(buffer, memoryOffset);
    this.memorySegments.push(segment);
    this.memoryOffset = i64_add(memoryOffset, i64_new(buffer.length));
    return segment;
  }

  /** Ensures that a string exists in static memory and returns a pointer to it. Deduplicates. */
  ensureStaticString(stringValue: string): ExpressionRef {
    var program = this.program;
    var totalOverhead = program.totalOverhead;
    var stringInstance = assert(program.stringInstance);
    var stringSegment: MemorySegment;
    var segments = this.stringSegments;
    if (segments.has(stringValue)) {
      stringSegment = assert(segments.get(stringValue)); // reuse
    } else {
      let len = stringValue.length;
      let buf = stringInstance.createBuffer(len << 1);
      for (let i = 0; i < len; ++i) {
        writeI16(stringValue.charCodeAt(i), buf, totalOverhead + (i << 1));
      }
      stringSegment = this.addRuntimeMemorySegment(buf);
      segments.set(stringValue, stringSegment);
    }
    var ptr = i64_add(stringSegment.offset, i64_new(totalOverhead));
    this.currentType = stringInstance.type;
    if (this.options.isWasm64) {
      return this.module.i64(i64_low(ptr), i64_high(ptr));
    } else {
      assert(i64_is_u32(ptr));
      return this.module.i32(i64_low(ptr));
    }
  }

  /** Writes a series of static values of the specified type to a buffer. */
  writeStaticBuffer(buf: Uint8Array, pos: i32, elementType: Type, values: ExpressionRef[]): i32 {
    var length = values.length;
    var byteSize = elementType.byteSize;
    var nativeType = elementType.toNativeType();
    switch (<u32>nativeType) {
      case <u32>NativeType.I32: {
        switch (byteSize) {
          case 1: {
            for (let i = 0; i < length; ++i) {
              let value = values[i];
              assert(getExpressionType(value) == nativeType);
              assert(getExpressionId(value) == ExpressionId.Const);
              writeI8(getConstValueI32(value), buf, pos);
              pos += 1;
            }
            break;
          }
          case 2: {
            for (let i = 0; i < length; ++i) {
              let value = values[i];
              assert(getExpressionType(value) == nativeType);
              assert(getExpressionId(value) == ExpressionId.Const);
              writeI16(getConstValueI32(value), buf, pos);
              pos += 2;
            }
            break;
          }
          case 4: {
            for (let i = 0; i < length; ++i) {
              let value = values[i];
              assert(getExpressionType(value) == nativeType);
              assert(getExpressionId(value) == ExpressionId.Const);
              writeI32(getConstValueI32(value), buf, pos);
              pos += 4;
            }
            break;
          }
          default: assert(false);
        }
        break;
      }
      case <u32>NativeType.I64: {
        for (let i = 0; i < length; ++i) {
          let value = values[i];
          assert(getExpressionType(value) == nativeType);
          assert(getExpressionId(value) == ExpressionId.Const);
          writeI64(i64_new(getConstValueI64Low(value), getConstValueI64High(value)), buf, pos);
          pos += 8;
        }
        break;
      }
      case <u32>NativeType.F32: {
        for (let i = 0; i < length; ++i) {
          let value = values[i];
          assert(getExpressionType(value) == nativeType);
          assert(getExpressionId(value) == ExpressionId.Const);
          writeF32(getConstValueF32(value), buf, pos);
          pos += 4;
        }
        break;
      }
      case <u32>NativeType.F64: {
        for (let i = 0; i < length; ++i) {
          let value = values[i];
          assert(getExpressionType(value) == nativeType);
          assert(getExpressionId(value) == ExpressionId.Const);
          writeF64(getConstValueF64(value), buf, pos);
          pos += 8;
        }
        break;
      }
      default: assert(false);
    }
    return pos;
  }

  /** Adds a buffer to static memory and returns the created segment. */
  addStaticBuffer(elementType: Type, values: ExpressionRef[], id: u32 = this.program.arrayBufferInstance.id): MemorySegment {
    var program = this.program;
    var arrayBufferInstance = program.arrayBufferInstance;
    var buf = arrayBufferInstance.createBuffer(values.length * elementType.byteSize);
    this.program.OBJECTInstance.writeField("rtId", id, buf, 0); // use specified rtId
    this.writeStaticBuffer(buf, program.totalOverhead, elementType, values);
    return this.addRuntimeMemorySegment(buf);
  }

  /** Adds an array header to static memory and returns the created segment. */
  private addStaticArrayHeader(elementType: Type, bufferSegment: MemorySegment): MemorySegment {
    var program = this.program;
    var arrayPrototype = assert(program.arrayPrototype);
    var arrayInstance = assert(this.resolver.resolveClass(arrayPrototype, [ elementType ]));
    var bufferLength = readI32(bufferSegment.buffer, program.OBJECTInstance.offsetof("rtSize"));
    var arrayLength = i32(bufferLength / elementType.byteSize);
    var bufferAddress = i64_add(bufferSegment.offset, i64_new(program.totalOverhead));

    var buf = arrayInstance.createBuffer();
    assert(arrayInstance.writeField("buffer", bufferAddress, buf));
    assert(arrayInstance.writeField("dataStart", bufferAddress, buf));
    assert(arrayInstance.writeField("byteLength", bufferLength, buf));
    assert(arrayInstance.writeField("length_", arrayLength, buf));
    return this.addRuntimeMemorySegment(buf);
  }

  // === Table ====================================================================================

  /** Ensures that a runtime counterpart of the specified function exists and returns its address. */
  ensureRuntimeFunction(instance: Function): i64 {
    assert(instance.is(CommonFlags.COMPILED) && !instance.is(CommonFlags.STUB));
    var program = this.program;
    var memorySegment = instance.memorySegment;
    if (!memorySegment) {

      // Add to the function table
      let functionTable = this.functionTable;
      let tableBase = this.options.tableBase;
      if (!tableBase) tableBase = 1; // leave first elem blank
      let index = tableBase + functionTable.length;
      functionTable.push(instance);

      // Create runtime function
      let rtInstance = assert(this.resolver.resolveClass(program.functionPrototype, [ instance.type ]));
      let buf = rtInstance.createBuffer();
      assert(rtInstance.writeField("_index", index, buf));
      assert(rtInstance.writeField("_env", 0, buf));
      instance.memorySegment = memorySegment = this.addRuntimeMemorySegment(buf);
    }
    return i64_add(memorySegment.offset, i64_new(program.totalOverhead));
  }

  // === Statements ===============================================================================

  /** Compiles a top level statement (incl. function declarations etc.) to the specified body. */
  compileTopLevelStatement(statement: Statement, body: ExpressionRef[]): void {
    switch (statement.kind) {
      case NodeKind.CLASSDECLARATION: {
        let memberStatements = (<ClassDeclaration>statement).members;
        for (let i = 0, k = memberStatements.length; i < k; ++i) {
          this.compileTopLevelStatement(memberStatements[i], body);
        }
        break;
      }
      case NodeKind.ENUMDECLARATION: {
        let element = this.program.getElementByDeclaration(<EnumDeclaration>statement);
        if (element) {
          assert(element.kind == ElementKind.ENUM);
          if (!element.hasDecorator(DecoratorFlags.LAZY)) this.compileEnum(<Enum>element);
        }
        break;
      }
      case NodeKind.NAMESPACEDECLARATION: {
        let declaration = <NamespaceDeclaration>statement;
        let element = this.program.getElementByDeclaration(declaration);
        if (element) {
          // any potentiall merged element
          let previousParent = this.currentParent;
          this.currentParent = element;
          let memberStatements = declaration.members;
          for (let i = 0, k = memberStatements.length; i < k; ++i) {
            this.compileTopLevelStatement(memberStatements[i], body);
          }
          this.currentParent = previousParent;
        }
        break;
      }
      case NodeKind.VARIABLE: {
        let declarations = (<VariableStatement>statement).declarations;
        for (let i = 0, k = declarations.length; i < k; ++i) {
          let element = this.program.getElementByDeclaration(declarations[i]);
          if (element) {
            assert(element.kind == ElementKind.GLOBAL);
            if (
              !element.is(CommonFlags.AMBIENT) && // delay imports
              !element.hasDecorator(DecoratorFlags.LAZY)
            ) this.compileGlobal(<Global>element);
          }
        }
        break;
      }
      case NodeKind.FIELDDECLARATION: {
        let element = this.program.getElementByDeclaration(<FieldDeclaration>statement);
        if (element !== null && element.kind == ElementKind.GLOBAL) { // static
          if (!element.hasDecorator(DecoratorFlags.LAZY)) this.compileGlobal(<Global>element);
        }
        break;
      }
      case NodeKind.EXPORT: {
        let exportStatement = <ExportStatement>statement;
        let internalPath = exportStatement.internalPath;
        if (internalPath !== null) {
          this.compileFileByPath(internalPath, assert(exportStatement.path));
        }
        break;
      }
      case NodeKind.EXPORTDEFAULT: {
        this.compileTopLevelStatement((<ExportDefaultStatement>statement).declaration, body);
        break;
      }
      case NodeKind.IMPORT: {
        let importStatement = <ImportStatement>statement;
        this.compileFileByPath(importStatement.internalPath, importStatement.path);
        break;
      }
      case NodeKind.FUNCTIONDECLARATION:
      case NodeKind.METHODDECLARATION:
      case NodeKind.INTERFACEDECLARATION:
      case NodeKind.INDEXSIGNATURE:
      case NodeKind.TYPEDECLARATION: break;
      default: { // otherwise a top-level statement that is part of the start function's body
        let stmt = this.compileStatement(statement);
        if (getExpressionId(stmt) != ExpressionId.Nop) body.push(stmt);
        break;
      }
    }
  }

  /** Compiles a statement. */
  compileStatement(
    /** Statement to compile. */
    statement: Statement,
    /** Whether this is the last statement of the body, if known. */
    isLastInBody: bool = false
  ): ExpressionRef {
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
      case NodeKind.FOROF: {
        stmt = this.compileForOfStatement(<ForOfStatement>statement);
        break;
      }
      case NodeKind.IF: {
        stmt = this.compileIfStatement(<IfStatement>statement);
        break;
      }
      case NodeKind.RETURN: {
        stmt = this.compileReturnStatement(<ReturnStatement>statement, isLastInBody);
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
        if (!stmt) stmt = module.nop();
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
        // TODO: integrate inner type declaration into flow
        this.error(
          DiagnosticCode.Not_implemented_0,
          statement.range,
          "Inner type alias"
        );
        stmt = module.unreachable();
        break;
      }
      default: {
        assert(false);
        stmt = module.unreachable();
      }
    }
    if (this.options.sourceMap) this.addDebugLocation(stmt, statement.range);
    return stmt;
  }

  /** Compiles a series of statements. */
  compileStatements(
    /** Statements to compile. */
    statements: Statement[],
    /** Whether this is an immediate body statement. */
    isBody: bool = false,
    /** Statements to append to that is also returned. Created if omitted. */
    stmts: ExpressionRef[] | null = null
  ): ExpressionRef[] {
    var numStatements = statements.length;
    if (!stmts) {
      stmts = new Array<ExpressionRef>(numStatements);
      stmts.length = 0;
    }
    var module = this.module;
    var flow = this.currentFlow;
    for (let i = 0; i < numStatements; ++i) {
      let stmt = this.compileStatement(statements[i], isBody && i == numStatements - 1);
      switch (getExpressionId(stmt)) {
        case ExpressionId.Block: {
          if (!getBlockName(stmt)) {
            for (let j: Index = 0, k = getBlockChildCount(stmt); j < k; ++j) stmts.push(getBlockChildAt(stmt, j));
            break;
          }
          // fall-through
        }
        default: stmts.push(stmt);
        case ExpressionId.Nop:
      }
      if (flow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS)) {
        if (needsExplicitUnreachable(stmt)) stmts.push(module.unreachable());
        break;
      }
    }
    return stmts;
  }

  private compileBlockStatement(
    statement: BlockStatement
  ): ExpressionRef {
    var statements = statement.statements;
    var outerFlow = this.currentFlow;
    var innerFlow = outerFlow.fork();
    this.currentFlow = innerFlow;

    var stmts = this.compileStatements(statements);
    if (!innerFlow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS)) this.performAutoreleases(innerFlow, stmts);
    innerFlow.freeScopedLocals();
    outerFlow.inherit(innerFlow);
    this.currentFlow = outerFlow;
    return this.module.flatten(stmts);
  }

  private compileBreakStatement(
    statement: BreakStatement
  ): ExpressionRef {
    var module = this.module;
    var labelNode = statement.label;
    if (labelNode) {
      this.error(
        DiagnosticCode.Not_implemented_0,
        labelNode.range,
        "Break label"
      );
      return module.unreachable();
    }
    var flow = this.currentFlow;
    var breakLabel = flow.breakLabel;
    if (breakLabel == null) {
      this.error(
        DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement,
        statement.range
      );
      return module.unreachable();
    }
    var stmts = new Array<ExpressionRef>();
    this.performAutoreleases(flow, stmts);
    var parent = flow.parent;
    while (parent !== null && parent.breakLabel == breakLabel) {
      this.performAutoreleases(parent, stmts, /* finalize */ false);
      parent = parent.parent;
    }
    flow.freeScopedLocals();
    stmts.push(module.br(breakLabel));
    flow.set(FlowFlags.BREAKS);
    return module.flatten(stmts);
  }

  private compileContinueStatement(
    statement: ContinueStatement
  ): ExpressionRef {
    var module = this.module;
    var label = statement.label;
    if (label) {
      this.error(
        DiagnosticCode.Not_implemented_0,
        label.range,
        "Continue label"
      );
      return module.unreachable();
    }
    // Check if 'continue' is allowed here
    var flow = this.currentFlow;
    var continueLabel = flow.continueLabel;
    if (continueLabel == null) {
      this.error(
        DiagnosticCode.A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement,
        statement.range
      );
      return module.unreachable();
    }
    flow.set(FlowFlags.CONTINUES | FlowFlags.TERMINATES);
    var stmts = new Array<ExpressionRef>();
    this.performAutoreleases(flow, stmts);
    var current: Flow | null = flow.parent;
    while (current !== null && current.continueLabel === continueLabel) {
      this.performAutoreleases(current, stmts, /* finalize */ false);
      current = current.parent;
    }
    flow.freeScopedLocals();
    stmts.push(module.br(continueLabel));
    return module.flatten(stmts);
  }

  private compileDoStatement(
    /** Statement to compile. */
    statement: DoStatement
  ): ExpressionRef {
    return this.doCompileDoStatement(statement, null);
  }

  private doCompileDoStatement(
    /** Statement to compile. */
    statement: DoStatement,
    /** If recompiling, the flow with differing local flags that triggered it. */
    flowAfter: Flow | null
  ): ExpressionRef {
    var module = this.module;
    var outerFlow = this.currentFlow;

    // (block $break                          └►┐ flow
    //  (loop $continue                         ├◄───────────┐ recompile?
    //   (body)                                 └─┐ bodyFlow │
    //   [autorelease]                          ┌─┘          │
    //                                        ┌◄┼►╢          │ breaks or terminates?
    //   (local.set $tcond (condition))       │ └─┐ condFlow │
    //   [autorelease]                        │ ┌─┘          │
    //   (br_if (local.get $tcond) $continue) ├◄┴────────────┘ condition?
    //  )                                     └─┐
    // )                                      ┌─┘

    var label = outerFlow.pushBreakLabel();
    var flow = outerFlow.fork(/* resetBreakContext */ true);
    if (flowAfter) flow.unifyLocalFlags(flowAfter);
    var flowBefore = flow.fork();
    this.currentFlow = flow;

    var breakLabel = "do-break|" + label;
    flow.breakLabel = breakLabel;
    var continueLabel = "do-continue|" + label;
    flow.continueLabel = continueLabel;

    // Compile the body (always executes)
    var bodyFlow = flow.fork();
    this.currentFlow = bodyFlow;
    var bodyStmts = new Array<ExpressionRef>();
    var body = statement.statement;
    if (body.kind == NodeKind.BLOCK) {
      this.compileStatements((<BlockStatement>body).statements, false, bodyStmts);
    } else {
      bodyStmts.push(this.compileStatement(body));
    }

    // Shortcut if body never falls through
    if (bodyFlow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS)) {
      bodyStmts.push(
        module.unreachable()
      );
      flow.inherit(bodyFlow);

    // Otherwise evaluate the condition
    } else {
      this.performAutoreleases(bodyFlow, bodyStmts);

      let condFlow = flow.fork();
      this.currentFlow = condFlow;
      let condExpr = this.makeIsTrueish(
        this.compileExpression(statement.condition, Type.i32),
        this.currentType,
        statement.condition
      );
      let condKind = this.evaluateCondition(condExpr);

      // Shortcut if condition is always false
      if (condKind == ConditionKind.FALSE) {
        bodyStmts.push(
          module.drop(condExpr)
        );
        this.performAutoreleases(condFlow, bodyStmts);
        flow.inherit(bodyFlow);

      // Terminate if condition is always true and body never breaks
      } else if (condKind == ConditionKind.TRUE && !bodyFlow.isAny(FlowFlags.BREAKS | FlowFlags.CONDITIONALLY_BREAKS)) {
        bodyStmts.push(
          module.drop(condExpr)
        );
        this.performAutoreleases(condFlow, bodyStmts);
        bodyStmts.push(
          module.br(continueLabel)
        );
        flow.set(FlowFlags.TERMINATES);

      } else {
        let tcond = condFlow.getTempLocal(Type.bool);
        bodyStmts.push(
          module.local_set(tcond.index, condExpr)
        );
        this.performAutoreleases(condFlow, bodyStmts);
        bodyStmts.push(
          module.br(continueLabel,
            module.local_get(tcond.index, NativeType.I32)
          )
        );
        condFlow.freeTempLocal(tcond);
        flow.inherit(condFlow);

        // Detect if local flags are incompatible before and after looping, and
        // if so recompile by unifying local flags between iterations. Note that
        // this may be necessary multiple times where locals depend on each other.
        if (Flow.hasIncompatibleLocalStates(flowBefore, flow)) {
          outerFlow.popBreakLabel();
          this.currentFlow = outerFlow;
          return this.doCompileDoStatement(statement, flow);
        }
      }
    }

    // Finalize
    assert(!flow.hasScopedLocals);
    outerFlow.inherit(flow);
    outerFlow.popBreakLabel();
    this.currentFlow = outerFlow;
    var expr = module.block(breakLabel, [
      module.loop(continueLabel,
        module.flatten(bodyStmts)
      )
    ]);
    if (outerFlow.is(FlowFlags.TERMINATES)) {
      expr = module.block(null, [ expr, module.unreachable() ]);
    }
    return expr;
  }

  private compileEmptyStatement(
    statement: EmptyStatement
  ): ExpressionRef {
    return this.module.nop();
  }

  private compileExpressionStatement(
    statement: ExpressionStatement
  ): ExpressionRef {
    return this.compileExpression(statement.expression, Type.void, Constraints.CONV_IMPLICIT);
  }

  private compileForStatement(
    /** Statement to compile. */
    statement: ForStatement
  ): ExpressionRef {
    return this.doCompileForStatement(statement, null);
  }

  private doCompileForStatement(
    /** Statement to compile. */
    statement: ForStatement,
    /** If recompiling, the flow with differing local flags that triggered it. */
    flowAfter: Flow | null
  ): ExpressionRef {
    var module = this.module;
    var outerFlow = this.currentFlow;

    // (initializer)                  └►┐ flow
    // (block $break                    │
    //  (loop $loop                     ├◄───────────┐ recompile?
    //   (local.set $tcond (condition)) └─┐ condFlow │
    //   [autorelease]                  ┌─┘          │
    //   (if (local.get $tcond)       ┌◄┤            │ condition?
    //    (block $continue            │ │            │
    //     (body)                     │ └─┐ bodyFlow │
    //     [autorelease]              │ ┌─┘          │
    //    )                           ├◄┼►╢          │ breaks or terminates?
    //    (incrementor)               │ └─┐ incrFlow │
    //    [autorelease]               │ ┌─┘          │
    //                                │ └────────────┘
    //    (br $loop)                  └─┐
    //   )                              │
    //  )                               │
    // )                                │
    // [autorelease]                  ┌─┘

    var label = outerFlow.pushBreakLabel();
    var stmts = new Array<ExpressionRef>();
    var flow = outerFlow.fork(/* resetBreakContext */ true);
    this.currentFlow = flow;

    var breakLabel = "for-break" + label;
    flow.breakLabel = breakLabel;
    var continueLabel = "for-continue|" + label;
    flow.continueLabel = continueLabel;
    var loopLabel = "for-loop|" + label;

    // Compile initializer if present (but wait with autoreleases)
    var initializer = statement.initializer;
    if (initializer) {
      assert(
        initializer.kind == NodeKind.EXPRESSION ||
        initializer.kind == NodeKind.VARIABLE
      );
      stmts.push(this.compileStatement(initializer));
    }

    if (flowAfter) flow.unifyLocalFlags(flowAfter);
    var flowBefore = flow.fork();

    // Precompute the condition
    var condFlow = flow.fork();
    this.currentFlow = condFlow;
    var condExpr: ExpressionRef;
    var condKind: ConditionKind;
    var condition = statement.condition;
    if (condition) {
      condExpr = this.makeIsTrueish(
        this.compileExpression(condition, Type.bool),
        this.currentType,
        condition
      );
      condKind = this.evaluateCondition(condExpr);

      // Shortcut if condition is always false (body never runs)
      if (condKind == ConditionKind.FALSE) {
        stmts.push(
          module.drop(condExpr)
        );
        this.performAutoreleases(condFlow, stmts);
        condFlow.freeScopedLocals();
        flow.inherit(condFlow);
        this.performAutoreleases(flow, stmts);
        flow.freeScopedLocals();
        outerFlow.inherit(flow);
        outerFlow.popBreakLabel();
        this.currentFlow = outerFlow;
        return module.flatten(stmts);
      }
    } else {
      condExpr = module.i32(1);
      condKind = ConditionKind.TRUE;
    }

    // From here on condition is either always true or unknown

    // Store condition result in a temp while we autorelease
    var tcond = flow.getTempLocal(Type.bool);
    var loopStmts = new Array<ExpressionRef>();
    loopStmts.push(
      module.local_set(tcond.index, condExpr)
    );
    this.performAutoreleases(condFlow, loopStmts);
    condFlow.freeScopedLocals();

    flow.inherit(condFlow); // always executes
    this.currentFlow = flow;

    // Compile the body assuming the condition turned out true
    var bodyFlow = flow.fork();
    bodyFlow.inheritNonnullIfTrue(condExpr);
    this.currentFlow = bodyFlow;
    var bodyStmts = new Array<ExpressionRef>();
    var body = statement.statement;
    if (body.kind == NodeKind.BLOCK) {
      this.compileStatements((<BlockStatement>body).statements, false, bodyStmts);
    } else {
      bodyStmts.push(this.compileStatement(body));
    }

    // Check if body terminates
    if (bodyFlow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS)) {
      bodyStmts.push(module.unreachable());
    } else {
      this.performAutoreleases(bodyFlow, bodyStmts);
    }
    if (condKind == ConditionKind.TRUE) flow.inherit(bodyFlow);
    else flow.inheritBranch(bodyFlow);
    bodyFlow.freeScopedLocals();

    var ifStmts = new Array<ExpressionRef>();
    ifStmts.push(
      module.block(continueLabel, bodyStmts)
    );

    // Compile the incrementor if it runs
    // Can still fall through to here if body continues, hence is already known to terminate
    if (!bodyFlow.is(FlowFlags.TERMINATES) || bodyFlow.isAny(FlowFlags.CONTINUES | FlowFlags.CONDITIONALLY_CONTINUES)) {
      let incrementor = statement.incrementor;
      if (incrementor) {
        let incrFlow = flow.fork();
        this.currentFlow = incrFlow;
        ifStmts.push(
          this.compileExpression(incrementor, Type.void, Constraints.CONV_IMPLICIT | Constraints.WILL_DROP)
        );
        this.performAutoreleases(incrFlow, ifStmts);
        incrFlow.freeScopedLocals();
        flow.inherit(incrFlow); // mostly local flags, also covers late termination by throwing
        this.currentFlow = flow;
      }

      ifStmts.push(
        module.br(loopLabel)
      );

      // Detect if local flags are incompatible before and after looping, and if
      // so recompile by unifying local flags between iterations. Note that this
      // may be necessary multiple times where locals depend on each other.
      if (Flow.hasIncompatibleLocalStates(flowBefore, flow)) {
        assert(!bodyFlow.hasScopedLocals);
        flow.freeScopedLocals();
        outerFlow.popBreakLabel();
        this.currentFlow = outerFlow;
        return this.doCompileForStatement(statement, flow);
      }
    }
    loopStmts.push(
      module.if(module.local_get(tcond.index, NativeType.I32),
        module.flatten(ifStmts)
      )
    );

    stmts.push(
      module.block(breakLabel, [
        module.loop(loopLabel,
          module.flatten(loopStmts)
        )
      ])
    );
    flow.freeTempLocal(tcond);
    this.currentFlow = flow;

    // Finalize
    flow.freeScopedLocals();
    outerFlow.inherit(flow);
    outerFlow.popBreakLabel();
    if (outerFlow.is(FlowFlags.TERMINATES)) {
      stmts.push(module.unreachable());
    } else {
      this.performAutoreleases(flow, stmts);
    }
    this.currentFlow = outerFlow;
    return module.flatten(stmts);
  }

  private compileForOfStatement(
    statement: ForOfStatement
  ): ExpressionRef {
    this.error(
      DiagnosticCode.Not_implemented_0,
      statement.range,
      "Iterators"
    );
    return this.module.unreachable();
  }

  private compileIfStatement(
    statement: IfStatement
  ): ExpressionRef {
    var module = this.module;
    var ifTrue = statement.ifTrue;
    var ifFalse = statement.ifFalse;

    // (if              └►┐ flow
    //  (condition)      ┌┴───────────┐ condition?
    //  (block           │            │
    //   (ifTrue)        └►┐ thenFlow │
    //   [autorelease]   ┌─┘          │
    //  )                ├─╢          │
    //  (block           │          ┌◄┤ present?
    //   (ifFalse)       │          │ └►┐ elseFlow
    //   [autorelease]   │          │ ┌─┘
    //  )                │          │ ├─╢
    // )                 └┬─────────┴─┘
    // ...              ┌◄┘
    // [autorelease]               incl. condition

    // Precompute the condition (always executes)
    var condExpr = this.makeIsTrueish(
      this.compileExpression(statement.condition, Type.bool),
      this.currentType,
      statement.condition
    );
    var condKind = this.evaluateCondition(condExpr);

    // Shortcut if the condition is constant
    switch (condKind) {
      case ConditionKind.TRUE: {
        return module.block(null, [
          module.drop(condExpr),
          this.compileStatement(ifTrue)
        ]);
      }
      case ConditionKind.FALSE: {
        return ifFalse
          ? module.block(null, [
              module.drop(condExpr),
              this.compileStatement(ifFalse)
            ])
          : module.drop(condExpr);
      }
    }

    // From here on condition is always unknown

    var flow = this.currentFlow;

    // Compile ifTrue assuming the condition turned out true
    var thenStmts = new Array<ExpressionRef>();
    var thenFlow = flow.fork();
    this.currentFlow = thenFlow;
    thenFlow.inheritNonnullIfTrue(condExpr);
    if (ifTrue.kind == NodeKind.BLOCK) {
      this.compileStatements((<BlockStatement>ifTrue).statements, false, thenStmts);
    } else {
      thenStmts.push(this.compileStatement(ifTrue));
    }
    var thenTerminates = thenFlow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS);
    if (thenTerminates) {
      thenStmts.push(module.unreachable());
    } else {
      this.performAutoreleases(thenFlow, thenStmts);
    }
    thenFlow.freeScopedLocals();
    this.currentFlow = flow;

    // Compile ifFalse assuming the condition turned out false, if present
    if (ifFalse) {
      let elseStmts = new Array<ExpressionRef>();
      let elseFlow = flow.fork();
      this.currentFlow = elseFlow;
      elseFlow.inheritNonnullIfFalse(condExpr);
      if (ifFalse.kind == NodeKind.BLOCK) {
        this.compileStatements((<BlockStatement>ifFalse).statements, false, elseStmts);
      } else {
        elseStmts.push(this.compileStatement(ifFalse));
      }
      let elseTerminates = elseFlow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS);
      if (elseTerminates) {
        elseStmts.push(module.unreachable());
      } else {
        this.performAutoreleases(elseFlow, elseStmts);
      }
      elseFlow.freeScopedLocals();
      this.currentFlow = flow;
      flow.inheritMutual(thenFlow, elseFlow);
      return module.if(condExpr,
        module.flatten(thenStmts),
        module.flatten(elseStmts)
      );
    } else {
      flow.inheritBranch(thenFlow);
      flow.inheritNonnullIfFalse(condExpr,
        thenFlow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS)
          ? null     // thenFlow terminates: just inherit
          : thenFlow // must become nonnull in thenFlow otherwise
      );
      return module.if(condExpr,
        module.flatten(thenStmts)
      );
    }
  }

  private compileReturnStatement(
    statement: ReturnStatement,
    isLastInBody: bool
  ): ExpressionRef {
    var module = this.module;
    var expr: ExpressionRef = 0;
    var flow = this.currentFlow;
    var returnType = flow.returnType;

    var valueExpression = statement.value;
    if (valueExpression) {
      if (returnType == Type.void) {
        this.error(
          DiagnosticCode.Type_0_is_not_assignable_to_type_1,
          valueExpression.range, this.currentType.toString(), returnType.toString()
        );
        this.currentType = Type.void;
        return module.unreachable();
      }
      let constraints = Constraints.CONV_IMPLICIT;
      if (flow.actualFunction.is(CommonFlags.MODULE_EXPORT)) constraints |= Constraints.MUST_WRAP;

      // take special care of properly retaining the returned value
      expr = this.compileReturnedExpression(valueExpression, returnType, constraints);
      if (flow.actualFunction.is(CommonFlags.CONSTRUCTOR) && valueExpression.kind != NodeKind.THIS) {
        flow.set(FlowFlags.MAY_RETURN_NONTHIS);
      }
    } else if (returnType != Type.void) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        statement.range, "void", returnType.toString()
      );
      expr = module.unreachable();
    }

    var stmts = new Array<ExpressionRef>();
    this.performAutoreleases(flow, stmts);
    this.finishAutoreleases(flow, stmts);

    if (returnType != Type.void && stmts.length > 0) {
      let temp = flow.getTempLocal(returnType);
      if (flow.isNonnull(expr, returnType)) flow.setLocalFlag(temp.index, LocalFlags.NONNULL);
      stmts.unshift(
        module.local_set(temp.index, expr)
      );
      expr = module.local_get(temp.index, returnType.toNativeType());
      flow.freeTempLocal(temp);
    }
    flow.freeScopedLocals();

    // Remember that this flow returns
    flow.set(FlowFlags.RETURNS | FlowFlags.TERMINATES);

    // If the last statement anyway, make it the block's return value
    if (isLastInBody && expr != 0 && returnType != Type.void) {
      if (!stmts.length) return expr;
      stmts.push(expr);
      return module.flatten(stmts, returnType.toNativeType());
    }

    // When inlining, break to the end of the inlined function's block (no need to wrap)
    if (flow.isInline) {
      if (!stmts.length) return module.br(assert(flow.inlineReturnLabel), 0, expr);
      stmts.push(module.br(assert(flow.inlineReturnLabel), 0, expr));
      // stmts.push(module.createUnreachable());
      return module.flatten(stmts);
    }

    // Otherwise emit a normal return
    if (!stmts.length) return module.return(expr);
    stmts.push(module.return(expr));
    return module.flatten(stmts);
  }

  private compileSwitchStatement(
    statement: SwitchStatement
  ): ExpressionRef {
    var module = this.module;

    var cases = statement.cases;
    var numCases = cases.length;
    if (!numCases) {
      return this.compileExpression(statement.condition, Type.void,
        Constraints.CONV_IMPLICIT
      );
    }

    // Everything within a switch uses the same break context
    var outerFlow = this.currentFlow;
    var context = outerFlow.pushBreakLabel();

    // introduce a local for evaluating the condition (exactly once)
    var tempLocal = outerFlow.getTempLocal(Type.u32);
    var tempLocalIndex = tempLocal.index;

    // Prepend initializer to inner block. Does not initiate a new branch, yet.
    var breaks = new Array<ExpressionRef>(1 + numCases);
    breaks[0] = module.local_set( // initializer
      tempLocalIndex,
      this.compileExpression(statement.condition, Type.u32,
        Constraints.CONV_IMPLICIT
      )
    );

    // make one br_if per (possibly dynamic) labeled case (binaryen optimizes to br_table where possible)
    var breakIndex = 1;
    var defaultIndex = -1;
    for (let i = 0; i < numCases; ++i) {
      let case_ = cases[i];
      let label = case_.label;
      if (label) {
        breaks[breakIndex++] = module.br("case" + i.toString() + "|" + context,
          module.binary(BinaryOp.EqI32,
            module.local_get(tempLocalIndex, NativeType.I32),
            this.compileExpression(label, Type.u32,
              Constraints.CONV_IMPLICIT
            )
          )
        );
      } else {
        defaultIndex = i;
      }
    }

    outerFlow.freeTempLocal(tempLocal);

    // otherwise br to default respectively out of the switch if there is no default case
    breaks[breakIndex] = module.br((defaultIndex >= 0
      ? "case" + defaultIndex.toString()
      : "break"
    ) + "|" + context);

    // nest blocks in order
    var currentBlock = module.block("case0|" + context, breaks, NativeType.None);
    var commonCategorical = FlowFlags.ANY_CATEGORICAL;
    var commonConditional = 0;
    for (let i = 0; i < numCases; ++i) {
      let case_ = cases[i];
      let statements = case_.statements;
      let numStatements = statements.length;

      // Each switch case initiates a new branch
      let innerFlow = outerFlow.fork();
      this.currentFlow = innerFlow;
      let breakLabel = "break|" + context;
      innerFlow.breakLabel = breakLabel;

      let isLast = i == numCases - 1;
      let nextLabel = isLast ? breakLabel : "case" + (i + 1).toString() + "|" + context;
      let stmts = new Array<ExpressionRef>(1 + numStatements);
      stmts[0] = currentBlock;
      let count = 1;
      let terminates = false;
      for (let j = 0; j < numStatements; ++j) {
        let stmt = this.compileStatement(statements[j]);
        if (getExpressionId(stmt) != ExpressionId.Nop) {
          stmts[count++] = stmt;
        }
        if (innerFlow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS)) {
          if (innerFlow.is(FlowFlags.TERMINATES)) terminates = true;
          break;
        }
      }
      stmts.length = count;
      if (terminates || isLast || innerFlow.isAny(FlowFlags.BREAKS | FlowFlags.CONDITIONALLY_BREAKS)) {
        commonCategorical &= innerFlow.flags;
      }
      commonConditional |= innerFlow.flags & FlowFlags.ANY_CONDITIONAL;

      // Switch back to the parent flow
      if (!terminates) this.performAutoreleases(innerFlow, stmts);
      innerFlow.unset(
        FlowFlags.BREAKS |
        FlowFlags.CONDITIONALLY_BREAKS
      );
      innerFlow.freeScopedLocals();
      this.currentFlow = outerFlow;
      currentBlock = module.block(nextLabel, stmts, NativeType.None); // must be a labeled block
    }
    outerFlow.popBreakLabel();

    // If the switch has a default (guaranteed to handle any value), propagate common flags
    if (defaultIndex >= 0) outerFlow.flags |= commonCategorical & ~FlowFlags.BREAKS;
    outerFlow.flags |= commonConditional & ~FlowFlags.CONDITIONALLY_BREAKS;
    // TODO: what about local states?
    return currentBlock;
  }

  private compileThrowStatement(
    statement: ThrowStatement
  ): ExpressionRef {
    // TODO: requires exception-handling spec.
    var flow = this.currentFlow;

    // Remember that this branch throws
    flow.set(FlowFlags.THROWS | FlowFlags.TERMINATES);

    var stmts = new Array<ExpressionRef>();
    var value = statement.value;
    var message: Expression | null = null;
    if (value.kind == NodeKind.NEW) {
      let newArgs = (<NewExpression>value).args;
      if (newArgs.length) message = newArgs[0]; // FIXME: naively assumes type string
    }
    stmts.push(
      this.makeAbort(message, statement)
    );
    // generates dead code (after unreachable) but still updates state
    var dropped = new Array<ExpressionRef>();
    this.performAutoreleases(flow, dropped);
    this.finishAutoreleases(flow, dropped);
    flow.freeScopedLocals();

    return this.module.flatten(stmts);
  }

  private compileTryStatement(
    statement: TryStatement
  ): ExpressionRef {
    // TODO: can't yet support something like: try { return ... } finally { ... }
    // worthwhile to investigate lowering returns to block results (here)?
    this.error(
      DiagnosticCode.Not_implemented_0,
      statement.range,
      "Exceptions"
    );
    return this.module.unreachable();
  }

  /** Compiles a variable statement. Returns `0` if an initializer is not necessary. */
  private compileVariableStatement(
    statement: VariableStatement
  ): ExpressionRef {
    var module = this.module;
    var declarations = statement.declarations;
    var numDeclarations = declarations.length;
    var flow = this.currentFlow;
    var initializers = new Array<ExpressionRef>();
    var resolver = this.resolver;

    for (let i = 0; i < numDeclarations; ++i) {
      let declaration = declarations[i];
      let name = declaration.name.text;
      let type: Type | null = null;
      let initExpr: ExpressionRef = 0;
      let initAutoreleaseSkipped = false;

      // Resolve type if annotated
      let typeNode = declaration.type;
      let initializerNode = declaration.initializer;
      if (typeNode) {
        type = resolver.resolveType( // reports
          typeNode,
          flow.actualFunction,
          uniqueMap(flow.contextualTypeArguments)
        );
        if (!type) continue;
        this.checkTypeSupported(type, typeNode);

        if (initializerNode) {
          let pendingElements = this.pendingElements;
          let dummy = flow.addScopedDummyLocal(name, type); // pending dummy
          pendingElements.add(dummy);
          initExpr = this.compileExpression(initializerNode, type, // reports
            Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN
          );
          initAutoreleaseSkipped = this.skippedAutoreleases.has(initExpr);
          pendingElements.delete(dummy);
          flow.freeScopedDummyLocal(name);
        }

      // Otherwise infer type from initializer
      } else if (initializerNode) {
        let pendingElements = this.pendingElements;
        let temp = flow.addScopedDummyLocal(name, Type.auto); // pending dummy
        pendingElements.add(temp);
        initExpr = this.compileExpression(initializerNode, Type.auto,
          Constraints.WILL_RETAIN
        ); // reports
        initAutoreleaseSkipped = this.skippedAutoreleases.has(initExpr);
        pendingElements.delete(temp);
        flow.freeScopedDummyLocal(name);

        if (this.currentType == Type.void) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            declaration.range, this.currentType.toString(), "<auto>"
          );
          continue;
        }
        type = this.currentType;

      // Error if there's neither a type nor an initializer
      } else {
        this.error(
          DiagnosticCode.Type_expected,
          declaration.name.range.atEnd
        );
        continue;
      }

      // Handle constants, and try to inline if value is static
      let isConst = declaration.is(CommonFlags.CONST);
      let isStatic = false;
      if (isConst) {
        if (initExpr) {
          let precomp = module.runExpression(initExpr, ExpressionRunnerFlags.PreserveSideeffects);
          if (precomp) {
            initExpr = precomp; // always use precomputed initExpr
            let local: Local | null = null;
            switch (<u32>getExpressionType(initExpr)) {
              case <u32>NativeType.I32: {
                local = new Local(name, -1, type, flow.parentFunction);
                local.setConstantIntegerValue(
                  i64_new(
                    getConstValueI32(initExpr),
                    0
                  ),
                  type
                );
                break;
              }
              case <u32>NativeType.I64: {
                local = new Local(name, -1, type, flow.parentFunction);
                local.setConstantIntegerValue(
                  i64_new(
                    getConstValueI64Low(initExpr),
                    getConstValueI64High(initExpr)
                  ),
                  type
                );
                break;
              }
              case <u32>NativeType.F32: {
                local = new Local(name, -1, type, flow.parentFunction);
                local.setConstantFloatValue(<f64>getConstValueF32(initExpr), type);
                break;
              }
              case <u32>NativeType.F64: {
                local = new Local(name, -1, type, flow.parentFunction);
                local.setConstantFloatValue(getConstValueF64(initExpr), type);
                break;
              }
            }
            if (local) {
              // Add as a virtual local that doesn't actually exist in WebAssembly
              let scopedLocals = flow.scopedLocals;
              if (!scopedLocals) flow.scopedLocals = scopedLocals = new Map();
              else if (scopedLocals.has(name)) {
                let existing = assert(scopedLocals.get(name));
                this.errorRelated(
                  DiagnosticCode.Duplicate_identifier_0,
                  declaration.name.range,
                  existing.declaration.name.range,
                  name
                );
                return this.module.unreachable();
              }
              scopedLocals.set(name, local);
              isStatic = true;
            }
          }
        } else {
          this.error(
            DiagnosticCode._const_declarations_must_be_initialized,
            declaration.range
          );
        }
      }

      // Otherwise compile as mutable
      if (!isStatic) {
        let local: Local;
        if (
          declaration.isAny(CommonFlags.LET | CommonFlags.CONST) ||
          flow.isInline
        ) { // here: not top-level
          let existingLocal = flow.getScopedLocal(name);
          if (existingLocal) {
            if (!existingLocal.declaration.range.source.isNative) {
              this.errorRelated(
                DiagnosticCode.Duplicate_identifier_0,
                declaration.name.range,
                existingLocal.declaration.name.range,
                name
              );
            } else { // scoped locals are shared temps that don't track declarations
              this.error(
                DiagnosticCode.Duplicate_identifier_0,
                declaration.name.range, name
              );
            }
            local = existingLocal;
          } else {
            local = flow.addScopedLocal(name, type);
          }
          if (isConst) flow.setLocalFlag(local.index, LocalFlags.CONSTANT);
        } else {
          let existing = flow.lookupLocal(name);
          if (existing) {
            this.errorRelated(
              DiagnosticCode.Duplicate_identifier_0,
              declaration.name.range,
              existing.declaration.name.range,
              name
            );
            continue;
          }
          local = flow.parentFunction.addLocal(type, name, declaration);
          if (isConst) flow.setLocalFlag(local.index, LocalFlags.CONSTANT);
        }
        let isManaged = type.isManaged;
        if (initExpr) {
          if (flow.isNonnull(initExpr, type)) flow.setLocalFlag(local.index, LocalFlags.NONNULL);
          if (isManaged) {
            flow.setLocalFlag(local.index, LocalFlags.RETAINED);
            initializers.push(
              module.local_set(local.index,
                initAutoreleaseSkipped
                  ? initExpr
                  : this.makeRetain(initExpr, type)
              )
            );
          } else {
            initializers.push(
              module.local_set(local.index, initExpr)
            );
            if (local.type.isShortIntegerValue) {
              if (!flow.canOverflow(initExpr, type)) flow.setLocalFlag(local.index, LocalFlags.WRAPPED);
              else flow.unsetLocalFlag(local.index, LocalFlags.WRAPPED);
            }
          }
        } else {
          if (isManaged) {
            // This is necessary because the first use (and assign) of the local could be taking place
            // in a loop, subsequently marking it retained, but the second iteration of the loop
            // still wouldn't release whatever is assigned in the first. Likewise, if the variable wasn't
            // initialized but becomes released later on, whatever was stored before would be released.
            // TODO: Detect this condition inside of a loop instead?
            initializers.push(
              module.local_set(local.index,
                this.makeZero(type, declaration)
              )
            );
            flow.setLocalFlag(local.index, LocalFlags.CONDITIONALLY_RETAINED);
          } else if (local.type.isShortIntegerValue) {
            flow.setLocalFlag(local.index, LocalFlags.WRAPPED);
          }
        }
      }
    }
    return initializers.length == 0
      ? 0
      : module.flatten(initializers);
  }

  private compileVoidStatement(
    statement: VoidStatement
  ): ExpressionRef {
    return this.compileExpression(statement.expression, Type.void,
      Constraints.CONV_EXPLICIT | Constraints.WILL_DROP
    );
  }

  private compileWhileStatement(
    /** Statement to compile. */
    statement: WhileStatement
  ): ExpressionRef {
    return this.doCompileWhileStatement(statement, null);
  }

  private doCompileWhileStatement(
    /** Statement to compile. */
    statement: WhileStatement,
    /** If recompiling, the flow with differing local flags that triggered it. */
    flowAfter: Flow | null
  ): ExpressionRef {
    var module = this.module;
    var outerFlow = this.currentFlow;

    // (block $break                  └►┐ flow
    //  (loop $continue                 ├◄───────────┐ recompile?
    //   (local.set $tcond (condition)) └─┐ condFlow │
    //   [autorelease]                  ┌─┘          │
    //   (if (local.get $tcond)       ┌◄┤            │ condition?
    //    (body)                      │ └─┐ bodyFlow │
    //    [autorelease]               │ ┌─┘          │
    //                                ├◄┼►╢          │ breaks or terminates?
    //    (br $continue)              │ └────────────┘
    //   )                            └─┐
    //  )                               │
    // )                              ┌─┘

    var label = outerFlow.pushBreakLabel();
    var stmts = new Array<ExpressionRef>();
    var flow = outerFlow.fork(/* resetBreakContext */ true);
    if (flowAfter) flow.unifyLocalFlags(flowAfter);
    var flowBefore = flow.fork();
    this.currentFlow = flow;

    var breakLabel = "while-break|" + label;
    flow.breakLabel = breakLabel;
    var continueLabel = "while-continue|" + label;
    flow.continueLabel = continueLabel;

    // Precompute the condition
    var condFlow = flow.fork();
    this.currentFlow = condFlow;
    var condExpr = this.makeIsTrueish(
      this.compileExpression(statement.condition, Type.bool),
      this.currentType,
      statement.condition
    );
    var condKind = this.evaluateCondition(condExpr);

    // Shortcut if condition is always false (body never runs)
    if (condKind == ConditionKind.FALSE) {
      stmts.push(
        module.drop(condExpr)
      );
      this.performAutoreleases(condFlow, stmts);
      assert(!flow.hasScopedLocals);
      outerFlow.popBreakLabel();
      this.currentFlow = outerFlow;
      return module.flatten(stmts);
    }

    // From here on condition is either always true or unknown

    // Store condition result in a temp while we autorelease
    var tcond = flow.getTempLocal(Type.bool);
    stmts.push(
      module.local_set(tcond.index, condExpr)
    );
    this.performAutoreleases(condFlow, stmts);
    condFlow.freeScopedLocals();

    flow.inherit(condFlow); // always executes
    this.currentFlow = flow;

    // Compile the body assuming the condition turned out true
    var bodyFlow = flow.fork();
    bodyFlow.inheritNonnullIfTrue(condExpr);
    this.currentFlow = bodyFlow;
    var bodyStmts = new Array<ExpressionRef>();
    var body = statement.statement;
    if (body.kind == NodeKind.BLOCK) {
      this.compileStatements((<BlockStatement>body).statements, false, bodyStmts);
    } else {
      bodyStmts.push(this.compileStatement(body));
    }

    // Simplify if body always terminates
    if (bodyFlow.is(FlowFlags.TERMINATES)) {
      bodyStmts.push(
        module.unreachable()
      );
      if (condKind == ConditionKind.TRUE) flow.inherit(bodyFlow);
      else flow.inheritBranch(bodyFlow);

    // Terminate if condition is always true and body never breaks
    } else if (condKind == ConditionKind.TRUE && !bodyFlow.isAny(FlowFlags.BREAKS | FlowFlags.CONDITIONALLY_BREAKS)) {
      this.performAutoreleases(bodyFlow, bodyStmts);
      bodyStmts.push(
        module.br(continueLabel)
      );
      flow.set(FlowFlags.TERMINATES);

    } else {
      let breaks = bodyFlow.is(FlowFlags.BREAKS);
      if (breaks) {
        bodyStmts.push(
          module.unreachable()
        );
      } else {
        this.performAutoreleases(bodyFlow, bodyStmts);
        bodyStmts.push(
          module.br(continueLabel)
        );
      }
      if (condKind == ConditionKind.TRUE) flow.inherit(bodyFlow);
      else flow.inheritBranch(bodyFlow);

      // Detect if local flags are incompatible before and after looping, and
      // if so recompile by unifying local flags between iterations. Note that
      // this may be necessary multiple times where locals depend on each other.
      // Here: Only relevant if flow does not always break.
      if (!breaks && Flow.hasIncompatibleLocalStates(flowBefore, flow)) {
        flow.freeTempLocal(tcond);
        outerFlow.popBreakLabel();
        this.currentFlow = outerFlow;
        return this.doCompileWhileStatement(statement, flow);
      }
    }
    stmts.push(
      module.if(module.local_get(tcond.index, NativeType.I32),
        module.flatten(bodyStmts)
      )
    );
    flow.freeTempLocal(tcond);
    this.currentFlow = flow;

    // Finalize
    assert(!flow.hasScopedLocals);
    outerFlow.inherit(flow);
    outerFlow.popBreakLabel();
    this.currentFlow = outerFlow;
    var expr = module.block(breakLabel, [
      module.loop(continueLabel,
        module.flatten(stmts)
      )
    ]);
    if (condKind == ConditionKind.TRUE && outerFlow.is(FlowFlags.TERMINATES)) {
      expr = module.block(null, [ expr, module.unreachable() ]);
    }
    return expr;
  }

  // === Expressions ==============================================================================

  /** Compiles the value of an inlined constant element. */
  compileInlineConstant(
    element: VariableLikeElement,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    assert(element.is(CommonFlags.INLINED | CommonFlags.RESOLVED));
    var type = element.type;
    switch (
      !(constraints & (Constraints.CONV_IMPLICIT | Constraints.CONV_EXPLICIT)) &&
      type.isIntegerValue &&
      contextualType.isIntegerValue &&
      type.size < contextualType.size
        ? (this.currentType = contextualType).kind // essentially precomputes a (sign-)extension
        : (this.currentType = type).kind
    ) {
      case TypeKind.I8:
      case TypeKind.I16: {
        let shift = type.computeSmallIntegerShift(Type.i32);
        return this.module.i32(
          element.constantValueKind == ConstantValueKind.INTEGER
            ? i64_low(element.constantIntegerValue) << shift >> shift
            : 0
        ); // recognized by canOverflow
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        let mask = element.type.computeSmallIntegerMask(Type.i32);
        return this.module.i32(
          element.constantValueKind == ConstantValueKind.INTEGER
            ? i64_low(element.constantIntegerValue) & mask
            : 0
        ); // recognized by canOverflow
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        return this.module.i32(
          element.constantValueKind == ConstantValueKind.INTEGER
            ? i64_low(element.constantIntegerValue)
            : 0
        );
      }
      case TypeKind.ISIZE:
      case TypeKind.USIZE: {
        if (!element.program.options.isWasm64) {
          return this.module.i32(
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
          ? this.module.i64(
              i64_low(element.constantIntegerValue),
              i64_high(element.constantIntegerValue)
            )
          : this.module.i64(0);
      }
      case TypeKind.F64: {
        // monkey-patch for converting built-in floats to f32 implicitly
        if (!(element.hasDecorator(DecoratorFlags.BUILTIN) && contextualType == Type.f32)) {
          return this.module.f64(element.constantFloatValue);
        }
        // otherwise fall-through: basically precomputes f32.demote/f64 of NaN / Infinity
        this.currentType = Type.f32;
      }
      case TypeKind.F32: {
        return this.module.f32(<f32>element.constantFloatValue);
      }
      default: {
        assert(false);
        return this.module.unreachable();
      }
    }
  }

  compileExpression(
    expression: Expression,
    contextualType: Type,
    constraints: Constraints = Constraints.NONE
  ): ExpressionRef {
    while (expression.kind == NodeKind.PARENTHESIZED) { // skip
      expression = (<ParenthesizedExpression>expression).expression;
    }
    this.currentType = contextualType;
    if (contextualType == Type.void) constraints |= Constraints.WILL_DROP;
    var expr: ExpressionRef;
    switch (expression.kind) {
      case NodeKind.ASSERTION: {
        expr = this.compileAssertionExpression(<AssertionExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.BINARY: {
        expr = this.compileBinaryExpression(<BinaryExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.CALL: {
        expr = this.compileCallExpression(<CallExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.COMMA: {
        expr = this.compileCommaExpression(<CommaExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.ELEMENTACCESS: {
        expr = this.compileElementAccessExpression(<ElementAccessExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.FUNCTION: {
        expr = this.compileFunctionExpression(<FunctionExpression>expression, contextualType.signatureReference, constraints);
        break;
      }
      case NodeKind.IDENTIFIER:
      case NodeKind.FALSE:
      case NodeKind.NULL:
      case NodeKind.THIS:
      case NodeKind.SUPER:
      case NodeKind.TRUE: {
        expr = this.compileIdentifierExpression(<IdentifierExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.INSTANCEOF: {
        expr = this.compileInstanceOfExpression(<InstanceOfExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.LITERAL: {
        expr = this.compileLiteralExpression(<LiteralExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.NEW: {
        expr = this.compileNewExpression(<NewExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.PROPERTYACCESS: {
        expr = this.compilePropertyAccessExpression(<PropertyAccessExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.TERNARY: {
        expr = this.compileTernaryExpression(<TernaryExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.UNARYPOSTFIX: {
        expr = this.compileUnaryPostfixExpression(<UnaryPostfixExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.UNARYPREFIX: {
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, contextualType, constraints);
        break;
      }
      default: {
        assert(false);
        expr = this.module.unreachable();
      }
    }
    // ensure conversion and wrapping in case the respective function doesn't on its own
    var currentType = this.currentType;
    var wrap = (constraints & Constraints.MUST_WRAP) != 0;
    if (currentType != contextualType.nonNullableType) { // allow assigning non-nullable to nullable
      if (constraints & Constraints.CONV_EXPLICIT) {
        expr = this.convertExpression(expr, currentType, contextualType, true, expression);
        this.currentType = contextualType;
      } else if (constraints & Constraints.CONV_IMPLICIT) {
        expr = this.convertExpression(expr, currentType, contextualType, false, expression);
        this.currentType = contextualType;
      }
    }
    if (wrap) expr = this.ensureSmallIntegerWrap(expr, currentType);
    // debug location is added here so the caller doesn't have to. means: compilation of an expression
    // must go through this function, with the respective per-kind functions not being used directly.
    if (this.options.sourceMap) this.addDebugLocation(expr, expression.range);
    return expr;
  }

  /** Compiles an expression that is about to be returned, taking special care of retaining and setting flow states. */
  private compileReturnedExpression(
    /** Expression to compile. */
    expression: Expression,
    /** Return type of the function. */
    returnType: Type,
    /** Constraints indicating contextual conditions. */
    constraints: Constraints = Constraints.NONE
  ): ExpressionRef {
    // pretend to retain the expression immediately so the autorelease, if any, is skipped
    var expr = this.compileExpression(expression, returnType, constraints | Constraints.WILL_RETAIN);
    var flow = this.currentFlow;
    if (returnType.isManaged) {
      // check if that worked, and if it didn't, keep the reference alive
      if (!this.skippedAutoreleases.has(expr)) {
        let index = this.tryUndoAutorelease(expr, flow);
        if (index == -1) expr = this.makeRetain(expr, returnType);
        this.skippedAutoreleases.add(expr);
      }
    }
    // remember return states
    if (!flow.canOverflow(expr, returnType)) flow.set(FlowFlags.RETURNS_WRAPPED);
    if (flow.isNonnull(expr, returnType)) flow.set(FlowFlags.RETURNS_NONNULL);
    return expr;
  }

  /** Converts an expression's result from one type to another. */
  convertExpression(
    expr: ExpressionRef,
    /** Original type. */
    fromType: Type,
    /** New type. */
    toType: Type,
    /** Whether the conversion is explicit. */
    explicit: bool,
    /** Report node. */
    reportNode: Node
  ): ExpressionRef {
    var module = this.module;

    // void to any
    if (fromType.kind == TypeKind.VOID) {
      assert(toType.kind != TypeKind.VOID); // convertExpression should not be called with void -> void
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        reportNode.range, fromType.toString(), toType.toString()
      );
      return module.unreachable();
    }

    // any to void
    if (toType.kind == TypeKind.VOID) return module.drop(expr);

    // reference involved
    if (fromType.isReference || toType.isReference) {
      if (this.currentFlow.isNonnull(expr, fromType)) {
        fromType = fromType.nonNullableType;
      } else if (explicit && fromType.isNullableReference && !toType.isNullableReference) {
        // explicit conversion from nullable to non-nullable requires a runtime
        // check here because nonnull state above already didn't know better
        if (!this.options.noAssert) {
          expr = this.makeRuntimeNonNullCheck(expr, fromType, reportNode);
        }
        fromType = fromType.nonNullableType;
      }
      if (fromType.isAssignableTo(toType)) { // downcast or same
        assert(toType.isExternalReference || fromType.kind == toType.kind);
        this.currentType = toType;
        return expr;
      }
      if (explicit && toType.nonNullableType.isAssignableTo(fromType)) { // upcast
        // <Cat | null>(<Animal>maybeCat)
        if (toType.isExternalReference) {
          this.error(
            DiagnosticCode.Not_implemented_0,
            reportNode.range,
            "ref.cast"
          );
          this.currentType = toType;
          return module.unreachable();
        }
        assert(fromType.kind == toType.kind);
        if (!this.options.noAssert) {
          expr = this.makeRuntimeUpcastCheck(expr, fromType, toType, reportNode);
        }
        this.currentType = toType;
        return expr;
      }
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        reportNode.range, fromType.toString(), toType.toString()
      );
      this.currentType = toType;
      return module.unreachable();
    }

    // not dealing with references from here on
    assert(!fromType.isReference && !toType.isReference);

    if (!fromType.isAssignableTo(toType)) {
      if (!explicit) {
        this.error(
          DiagnosticCode.Conversion_from_type_0_to_1_requires_an_explicit_cast,
          reportNode.range, fromType.toString(), toType.toString()
        ); // recoverable
      }
    }

    if (fromType.isFloatValue) {

      // float to float
      if (toType.isFloatValue) {
        if (fromType.kind == TypeKind.F32) {

          // f32 to f64
          if (toType.kind == TypeKind.F64) {
            expr = module.unary(UnaryOp.PromoteF32, expr);
          }

          // otherwise f32 to f32

        // f64 to f32
        } else if (toType.kind == TypeKind.F32) {
          expr = module.unary(UnaryOp.DemoteF64, expr);
        }

        // otherwise f64 to f64

      // float to int
      } else if (toType.isIntegerValue) {

        // f32 to int
        if (fromType.kind == TypeKind.F32) {
          if (toType.isBooleanValue) {
            expr = this.makeIsTrueish(expr, Type.f32, reportNode);
          } else if (toType.isSignedIntegerValue) {
            if (toType.isLongIntegerValue) {
              expr = module.unary(UnaryOp.TruncF32ToI64, expr);
            } else {
              expr = module.unary(UnaryOp.TruncF32ToI32, expr);
            }
          } else {
            if (toType.isLongIntegerValue) {
              expr = module.unary(UnaryOp.TruncF32ToU64, expr);
            } else {
              expr = module.unary(UnaryOp.TruncF32ToU32, expr);
            }
          }

        // f64 to int
        } else {
          if (toType.isBooleanValue) {
            expr = this.makeIsTrueish(expr, Type.f64, reportNode);
          } else if (toType.isSignedIntegerValue) {
            if (toType.isLongIntegerValue) {
              expr = module.unary(UnaryOp.TruncF64ToI64, expr);
            } else {
              expr = module.unary(UnaryOp.TruncF64ToI32, expr);
            }
          } else {
            if (toType.isLongIntegerValue) {
              expr = module.unary(UnaryOp.TruncF64ToU64, expr);
            } else {
              expr = module.unary(UnaryOp.TruncF64ToU32, expr);
            }
          }
        }

      // float to void
      } else {
        assert(toType.flags == TypeFlags.NONE, "void type expected");
        expr = module.drop(expr);
      }

    // int to float
    } else if (fromType.isIntegerValue && toType.isFloatValue) {

      // int to f32
      if (toType.kind == TypeKind.F32) {
        if (fromType.isLongIntegerValue) {
          expr = module.unary(
            fromType.isSignedIntegerValue
              ? UnaryOp.ConvertI64ToF32
              : UnaryOp.ConvertU64ToF32,
            expr
          );
        } else {
          expr = module.unary(
            fromType.isSignedIntegerValue
              ? UnaryOp.ConvertI32ToF32
              : UnaryOp.ConvertU32ToF32,
            expr
          );
        }

      // int to f64
      } else {
        if (fromType.isLongIntegerValue) {
          expr = module.unary(
            fromType.isSignedIntegerValue
              ? UnaryOp.ConvertI64ToF64
              : UnaryOp.ConvertU64ToF64,
            expr
          );
        } else {
          expr = module.unary(
            fromType.isSignedIntegerValue
              ? UnaryOp.ConvertI32ToF64
              : UnaryOp.ConvertU32ToF64,
            expr
          );
        }
      }

    // int to int
    } else {
      // i64 to ...
      if (fromType.isLongIntegerValue) {

        // i64 to i32 or smaller
        if (toType.isBooleanValue) {
          expr = module.binary(BinaryOp.NeI64, expr, module.i64(0));
        } else if (!toType.isLongIntegerValue) {
          expr = module.unary(UnaryOp.WrapI64, expr); // discards upper bits
        }

      // i32 or smaller to i64
      } else if (toType.isLongIntegerValue) {
        expr = module.unary(
          fromType.isSignedIntegerValue ? UnaryOp.ExtendI32 : UnaryOp.ExtendU32,
          this.ensureSmallIntegerWrap(expr, fromType) // must clear garbage bits
        );

      // i32 to i32
      } else {
        // small i32 to ...
        if (fromType.isShortIntegerValue) {
          // small i32 to larger i32
          if (fromType.size < toType.size) {
            expr = this.ensureSmallIntegerWrap(expr, fromType); // must clear garbage bits
          }
        // same size
        } else {
          if (!explicit && !this.options.isWasm64 && fromType.isVaryingIntegerValue && !toType.isVaryingIntegerValue) {
            this.warning(
              DiagnosticCode.Conversion_from_type_0_to_1_will_require_an_explicit_cast_when_switching_between_32_64_bit,
              reportNode.range, fromType.toString(), toType.toString()
            );
          }
        }
      }
    }

    this.currentType = toType;
    return expr;
  }

  private compileAssertionExpression(
    expression: AssertionExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var inheritedConstraints = constraints & ~(Constraints.CONV_IMPLICIT | Constraints.CONV_EXPLICIT);
    switch (expression.assertionKind) {
      case AssertionKind.PREFIX:
      case AssertionKind.AS: {
        let flow = this.currentFlow;
        let toType = this.resolver.resolveType( // reports
          assert(expression.toType),
          flow.actualFunction,
          uniqueMap(flow.contextualTypeArguments)
        );
        if (!toType) return this.module.unreachable();
        return this.compileExpression(expression.expression, toType, inheritedConstraints | Constraints.CONV_EXPLICIT);
      }
      case AssertionKind.NONNULL: {
        assert(!expression.toType);
        let expr = this.compileExpression(expression.expression, contextualType.exceptVoid, inheritedConstraints);
        let type = this.currentType;
        if (this.currentFlow.isNonnull(expr, type)) {
          this.info(
            DiagnosticCode.Expression_is_never_null,
            expression.expression.range
          );
        } else if (!this.options.noAssert) {
          expr = this.makeRuntimeNonNullCheck(expr, type, expression);
        }
        this.currentType = type.nonNullableType;
        return expr;
      }
      case AssertionKind.CONST: {
        // TODO: decide on the layout of ReadonlyArray first
        // let operand = expression.expression;
        // if (operand.kind == NodeKind.LITERAL && (<LiteralExpression>operand).literalKind == LiteralKind.ARRAY) {
        //   let element = this.resolver.lookupExpression(expression /* ! */, this.currentFlow, contextualType);
        //   if (!element) return this.module.unreachable();
        //   if (element.kind == ElementKind.CLASS) {
        //     let arrayInstance = <Class>element;
        //     if (arrayInstance.extends(this.program.readonlyArrayPrototype)) {
        //       return this.compileStaticArrayLiteral(<ArrayLiteralExpression>operand, arrayInstance.type, constraints);
        //     }
        //   }
        // }
        this.error(
          DiagnosticCode.Not_implemented_0,
          expression.range,
          "Const assertion"
        );
        return this.module.unreachable();
      }
      default: assert(false);
    }
    return this.module.unreachable();
  }

  private f32ModInstance: Function | null = null;
  private f64ModInstance: Function | null = null;
  private f32PowInstance: Function | null = null;
  private f64PowInstance: Function | null = null;
  private i32PowInstance: Function | null = null;
  private i64PowInstance: Function | null = null;

  private compileBinaryExpression(
    expression: BinaryExpression,
    contextualType: Type,
    constraints: Constraints
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
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.LT);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonDenominator(leftType, rightType, true);
        if (!commonType || !commonType.isNumericValue) {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, "<", leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.unreachable();
        }

        leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
        leftType = commonType;
        rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
        rightType = commonType;

        expr = this.makeLt(leftExpr, rightExpr, commonType);
        this.currentType = Type.bool;
        break;
      }
      case Token.GREATERTHAN: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.GT);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonDenominator(leftType, rightType, true);
        if (!commonType || !commonType.isNumericValue) {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, ">", leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.unreachable();
        }

        leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
        leftType = commonType;
        rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
        rightType = commonType;

        expr = this.makeGt(leftExpr, rightExpr, commonType);
        this.currentType = Type.bool;
        break;
      }
      case Token.LESSTHAN_EQUALS: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.LE);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonDenominator(leftType, rightType, true);
        if (!commonType || !commonType.isNumericValue) {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, "<=", leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.unreachable();
        }

        leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
        leftType = commonType;
        rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
        rightType = commonType;

        expr = this.makeLe(leftExpr, rightExpr, commonType);
        this.currentType = Type.bool;
        break;
      }
      case Token.GREATERTHAN_EQUALS: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.GE);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonDenominator(leftType, rightType, true);
        if (!commonType || !commonType.isNumericValue) {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, ">=", leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.unreachable();
        }

        leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
        leftType = commonType;
        rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
        rightType = commonType;

        expr = this.makeGe(leftExpr, rightExpr, commonType);
        this.currentType = Type.bool;
        break;
      }

      case Token.EQUALS_EQUALS_EQUALS:
      case Token.EQUALS_EQUALS: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        if (operator == Token.EQUALS_EQUALS) { // can't overload '==='
          let classReference = leftType.getClassOrWrapper(this.program);
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.EQ);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          // fall back to compare by value
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonDenominator(leftType, rightType, false);
        if (!commonType) {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, operatorTokenToString(expression.operator), leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.unreachable();
        }

        leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
        leftType = commonType;
        rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
        rightType = commonType;

        expr = this.makeEq(leftExpr, rightExpr, commonType, expression);
        this.currentType = Type.bool;
        break;
      }
      case Token.EXCLAMATION_EQUALS_EQUALS:
      case Token.EXCLAMATION_EQUALS: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        if (operator == Token.EXCLAMATION_EQUALS) { // can't overload '!=='
          let classReference = leftType.getClass();
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.NE);
            if (overload) {
              expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
              break;
            }
          }
          // fall back to compare by value
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonDenominator(leftType, rightType, false);
        if (!commonType) {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, operatorTokenToString(expression.operator), leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.unreachable();
        }

        leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
        leftType = commonType;
        rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
        rightType = commonType;

        expr = this.makeNe(leftExpr, rightExpr, commonType, expression);
        this.currentType = Type.bool;
        break;
      }
      case Token.EQUALS: {
        return this.compileAssignment(left, right, contextualType);
      }
      case Token.PLUS_EQUALS: compound = true;
      case Token.PLUS: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.ADD);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }
        if (compound) {
          if (!leftType.isNumericValue) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "+", leftType.toString()
            );
            return module.unreachable();
          }
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonDenominator(leftType, rightType, false);
          if (!commonType || !commonType.isNumericValue) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "+", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;
        }
        expr = this.makeAdd(leftExpr, rightExpr, commonType);
        break;
      }
      case Token.MINUS_EQUALS: compound = true;
      case Token.MINUS: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.SUB);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        if (compound) {
          if (!leftType.isNumericValue) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "-", leftType.toString()
            );
            return module.unreachable();
          }
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonDenominator(leftType, rightType, false);
          if (!commonType || !leftType.isNumericValue) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "-", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;
        }
        expr = this.makeSub(leftExpr, rightExpr, commonType);
        break;
      }
      case Token.ASTERISK_EQUALS: compound = true;
      case Token.ASTERISK: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.MUL);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        if (compound) {
          if (!leftType.isNumericValue) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "*", leftType.toString()
            );
            return module.unreachable();
          }
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonDenominator(leftType, rightType, false);
          if (!commonType || !commonType.isNumericValue) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "*", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;
        }
        expr = this.makeMul(leftExpr, rightExpr, commonType);
        break;
      }
      case Token.ASTERISK_ASTERISK_EQUALS: compound = true;
      case Token.ASTERISK_ASTERISK: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.POW);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        if (compound) {
          if (!leftType.isNumericValue) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "**", leftType.toString()
            );
            return module.unreachable();
          }
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonDenominator(leftType, rightType, false);
          if (!commonType || !commonType.isNumericValue) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "**", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;
        }
        expr = this.makePow(leftExpr, rightExpr, commonType, expression);
        break;
      }
      case Token.SLASH_EQUALS: compound = true;
      case Token.SLASH: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.DIV);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        if (compound) {
          if (!leftType.isNumericValue) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "/", leftType.toString()
            );
            return module.unreachable();
          }
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonDenominator(leftType, rightType, false);
          if (!commonType || !commonType.isNumericValue) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "/", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;
        }
        expr = this.makeDiv(leftExpr, rightExpr, commonType);
        break;
      }
      case Token.PERCENT_EQUALS: compound = true;
      case Token.PERCENT: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.REM);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        if (compound) {
          if (!leftType.isNumericValue) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "%", leftType.toString()
            );
            return module.unreachable();
          }
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonDenominator(leftType, rightType, false);
          if (!commonType || !commonType.isNumericValue) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "%", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;
        }
        expr = this.makeRem(leftExpr, rightExpr, commonType, expression);
        break;
      }
      case Token.LESSTHAN_LESSTHAN_EQUALS: compound = true;
      case Token.LESSTHAN_LESSTHAN: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BITWISE_SHL);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }
        if (!leftType.isIntegerValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "<<", leftType.toString()
          );
          return module.unreachable();
        }
        rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
        rightType = this.currentType;

        expr = this.makeShl(leftExpr, rightExpr, rightType);
        break;
      }
      case Token.GREATERTHAN_GREATERTHAN_EQUALS: compound = true;
      case Token.GREATERTHAN_GREATERTHAN: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BITWISE_SHR);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }
        if (!leftType.isIntegerValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, ">>", leftType.toString()
          );
          return this.module.unreachable();
        }

        rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
        rightType = this.currentType;

        expr = this.makeShr(leftExpr, rightExpr, rightType);
        break;
      }
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS: compound = true;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BITWISE_SHR_U);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }
        if (!leftType.isIntegerValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, ">>>", leftType.toString()
          );
          return module.unreachable();
        }
        rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
        rightType = this.currentType;

        expr = this.makeShru(leftExpr, rightExpr, rightType);
        break;
      }
      case Token.AMPERSAND_EQUALS: compound = true;
      case Token.AMPERSAND: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overloadd
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BITWISE_AND);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        if (compound) {
          if (!leftType.isIntegerValue) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "&", leftType.toString()
            );
            return module.unreachable();
          }
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonDenominator(leftType, rightType, false);
          if (!commonType || !commonType.isIntegerValue) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "&", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;
        }
        expr = this.makeAnd(leftExpr, rightExpr, commonType);
        break;
      }
      case Token.BAR_EQUALS: compound = true;
      case Token.BAR: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BITWISE_OR);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        if (compound) {
          if (!leftType.isIntegerValue) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "|", leftType.toString()
            );
            return module.unreachable();
          }
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonDenominator(leftType, rightType, false);
          if (!commonType || !commonType.isIntegerValue) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "|", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;
        }
        expr = this.makeOr(leftExpr, rightExpr, commonType);
        break;
      }
      case Token.CARET_EQUALS: compound = true;
      case Token.CARET: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BITWISE_XOR);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, right, expression);
            break;
          }
        }

        if (compound) {
          if (!leftType.isIntegerValue) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "^", leftType.toString()
            );
            return module.unreachable();
          }
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonDenominator(leftType, rightType, false);
          if (!commonType || !commonType.isIntegerValue) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "^", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;
        }
        expr = this.makeXor(leftExpr, rightExpr, commonType);
        break;
      }

      // logical (no overloading)

      case Token.AMPERSAND_AMPERSAND: { // left && right -> (t = left) ? right : t
        let flow = this.currentFlow;
        let inheritedConstraints = constraints & (Constraints.WILL_RETAIN | Constraints.MUST_WRAP);
        leftExpr = this.compileExpression(left, contextualType.exceptVoid, inheritedConstraints);
        leftType = this.currentType;

        let rightFlow = flow.fork();
        this.currentFlow = rightFlow;
        rightFlow.inheritNonnullIfTrue(leftExpr);

        // simplify if only interested in true or false
        if (contextualType == Type.bool || contextualType == Type.void) {
          rightExpr = this.compileExpression(right, leftType, inheritedConstraints);
          rightType = this.currentType;
          rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType);
          rightFlow.freeScopedLocals();
          this.currentFlow = flow;
          expr = module.if(
            this.makeIsTrueish(leftExpr, leftType, left),
            this.makeIsTrueish(rightExpr, rightType, right),
            module.i32(0)
          );
          this.currentType = Type.bool;

        } else {
          rightExpr = this.compileExpression(right, leftType, inheritedConstraints | Constraints.CONV_IMPLICIT);
          rightType = this.currentType;

          // references must properly retain and release, with the same outcome independent of the branch taken
          if (leftType.isManaged) {
            let leftAutoreleaseSkipped = this.skippedAutoreleases.has(leftExpr);
            let rightAutoreleaseSkipped = this.skippedAutoreleases.has(rightExpr);
            let temp = flow.getTempLocal(leftType);
            leftExpr = module.local_tee(temp.index, leftExpr);

            // instead of retaining left and releasing it again in right when right
            // is taken, we can also just retain left if right is not taken
            let retainLeftInElse = false;
            if (leftAutoreleaseSkipped != rightAutoreleaseSkipped) { // xor
              if (!leftAutoreleaseSkipped) {
                retainLeftInElse = true;
              } else {
                rightExpr = this.makeRetain(rightExpr, rightType);
                rightAutoreleaseSkipped = true;
              }
            } else if (!(constraints & Constraints.WILL_RETAIN)) { // otherwise keep right alive a little longer
              rightExpr = this.delayAutorelease(rightExpr, rightType, rightFlow, flow);
            }

            let rightStmts = new Array<ExpressionRef>();
            if (leftAutoreleaseSkipped) { // left turned out to be true'ish and is dropped
              rightStmts.unshift(
                this.makeRelease(
                  module.local_get(temp.index, leftType.toNativeType()),
                  leftType
                )
              );
            }
            rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType, rightStmts);
            rightFlow.freeScopedLocals();
            this.currentFlow = flow;

            expr = module.if(
              this.makeIsTrueish(leftExpr, leftType, left),
              rightExpr,
              retainLeftInElse
                ? this.makeRetain(
                    module.local_get(temp.index, leftType.toNativeType()),
                    leftType
                  )
                : module.local_get(temp.index, leftType.toNativeType())
            );
            if (leftAutoreleaseSkipped || rightAutoreleaseSkipped) this.skippedAutoreleases.add(expr);
            if (temp) flow.freeTempLocal(temp);

          // basic values can use more aggressive optimizations
          } else {
            rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType);
            rightFlow.freeScopedLocals();
            this.currentFlow = flow;

            // simplify if cloning left without side effects is possible
            if (expr = module.cloneExpression(leftExpr, true, 0)) {
              expr = module.if(
                this.makeIsTrueish(leftExpr, this.currentType, left),
                rightExpr,
                expr
              );

            // if not possible, tee left to a temp
            } else {
              let tempLocal = flow.getTempLocal(leftType);
              if (!flow.canOverflow(leftExpr, leftType)) flow.setLocalFlag(tempLocal.index, LocalFlags.WRAPPED);
              if (flow.isNonnull(leftExpr, leftType)) flow.setLocalFlag(tempLocal.index, LocalFlags.NONNULL);
              expr = module.if(
                this.makeIsTrueish(module.local_tee(tempLocal.index, leftExpr), leftType, left),
                rightExpr,
                module.local_get(tempLocal.index, leftType.toNativeType())
              );
              flow.freeTempLocal(tempLocal);
            }
          }
          this.currentType = leftType;
        }
        break;
      }
      case Token.BAR_BAR: { // left || right -> ((t = left) ? t : right)
        let flow = this.currentFlow;
        let inheritedConstraints = constraints & (Constraints.WILL_RETAIN | Constraints.MUST_WRAP);
        leftExpr = this.compileExpression(left, contextualType.exceptVoid, inheritedConstraints);
        leftType = this.currentType;

        let rightFlow = flow.fork();
        this.currentFlow = rightFlow;
        rightFlow.inheritNonnullIfFalse(leftExpr);

        // simplify if only interested in true or false
        if (contextualType == Type.bool || contextualType == Type.void) {
          rightExpr = this.compileExpression(right, leftType, inheritedConstraints);
          rightType = this.currentType;
          rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, leftType);
          rightFlow.freeScopedLocals();
          this.currentFlow = flow;
          expr = module.if(
            this.makeIsTrueish(leftExpr, leftType, left),
            module.i32(1),
            this.makeIsTrueish(rightExpr, rightType, right)
          );
          this.currentType = Type.bool;

        } else {
          rightExpr = this.compileExpression(right, leftType, inheritedConstraints | Constraints.CONV_IMPLICIT);
          rightType = this.currentType;

          // references must properly retain and release, with the same outcome independent of the branch taken
          if (leftType.isManaged) {
            let leftAutoreleaseSkipped = this.skippedAutoreleases.has(leftExpr);
            let rightAutoreleaseSkipped = this.skippedAutoreleases.has(rightExpr);
            let temp = flow.getTempLocal(leftType);
            leftExpr = module.local_tee(temp.index, leftExpr);

            // instead of retaining left and releasing it again in right when right
            // is taken, we can also just retain left if right is not taken
            let retainLeftInThen = false;
            if (leftAutoreleaseSkipped != rightAutoreleaseSkipped) { // xor
              if (!leftAutoreleaseSkipped) {
                retainLeftInThen = true;
              } else {
                rightExpr = this.makeRetain(rightExpr, rightType);
                rightAutoreleaseSkipped = true;
              }
            } else if (!(constraints & Constraints.WILL_RETAIN)) { // otherwise keep right alive a little longer
              rightExpr = this.delayAutorelease(rightExpr, rightType, rightFlow, flow);
            }

            let rightStmts = new Array<ExpressionRef>();
            if (leftAutoreleaseSkipped) { // left turned out to be false'ish and is dropped
              // TODO: usually, false'ish means left is null, but this might not hold
              // once implicit conversion with strings is performed and left is "", so:
              rightStmts.unshift(
                this.makeRelease(
                  module.local_get(temp.index, leftType.toNativeType()),
                  leftType
                )
              );
            }
            rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType, rightStmts);
            rightFlow.freeScopedLocals();
            this.currentFlow = flow;

            expr = module.if(
              this.makeIsTrueish(leftExpr, leftType, left),
              retainLeftInThen
                ? this.makeRetain(
                    module.local_get(temp.index, leftType.toNativeType()),
                    leftType
                  )
                : module.local_get(temp.index, leftType.toNativeType()),
              rightExpr
            );
            if (leftAutoreleaseSkipped || rightAutoreleaseSkipped) this.skippedAutoreleases.add(expr);
            if (temp) flow.freeTempLocal(temp);

          // basic values can use more aggressive optimizations
          } else {
            rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType);
            rightFlow.freeScopedLocals();
            this.currentFlow = flow;

            // simplify if cloning left without side effects is possible
            if (expr = module.cloneExpression(leftExpr, true, 0)) {
              expr = module.if(
                this.makeIsTrueish(leftExpr, leftType, left),
                expr,
                rightExpr
              );

            // if not possible, tee left to a temp. local
            } else {
              let temp = flow.getTempLocal(leftType);
              if (!flow.canOverflow(leftExpr, leftType)) flow.setLocalFlag(temp.index, LocalFlags.WRAPPED);
              if (flow.isNonnull(leftExpr, leftType)) flow.setLocalFlag(temp.index, LocalFlags.NONNULL);
              expr = module.if(
                this.makeIsTrueish(module.local_tee(temp.index, leftExpr), leftType, left),
                module.local_get(temp.index, leftType.toNativeType()),
                rightExpr
              );
              flow.freeTempLocal(temp);
            }
          }
          this.currentType = leftType;
        }
        break;
      }
      default: {
        assert(false);
        expr = this.module.unreachable();
      }
    }
    if (!compound) return expr;
    var resolver = this.resolver;
    var target = resolver.lookupExpression(left, this.currentFlow);
    if (!target) return module.unreachable();
    var targetType = resolver.getTypeOfElement(target);
    if (!targetType) targetType = Type.void;
    if (!this.currentType.isStrictlyAssignableTo(targetType)) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        expression.range, this.currentType.toString(), targetType.toString()
      );
      return module.unreachable();
    }
    return this.makeAssignment(
      target,
      expr, // TODO: delay release above if possible?
      this.currentType,
      right,
      resolver.currentThisExpression,
      resolver.currentElementExpression,
      contextualType != Type.void
    );
  }

  makeLt(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits and signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: {
        return module.binary(BinaryOp.LtI32, leftExpr, rightExpr);
      }
      case TypeKind.I64: {
        return module.binary(BinaryOp.LtI64, leftExpr, rightExpr);
      }
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.LtI64
            : BinaryOp.LtI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: {
        return module.binary(BinaryOp.LtU32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.LtU64
            : BinaryOp.LtU32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.U64: {
        return module.binary(BinaryOp.LtU64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.LtF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.LtF64, leftExpr, rightExpr);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeGt(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits and signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: {
        return module.binary(BinaryOp.GtI32, leftExpr, rightExpr);
      }
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.GtI64
            : BinaryOp.GtI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64: {
        return module.binary(BinaryOp.GtI64, leftExpr, rightExpr);
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: {
        return module.binary(BinaryOp.GtU32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.GtU64
            : BinaryOp.GtU32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.U64: {
        return module.binary(BinaryOp.GtU64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.GtF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.GtF64, leftExpr, rightExpr);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeLe(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits and signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: {
        return module.binary(BinaryOp.LeI32, leftExpr, rightExpr);
      }
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.LeI64
            : BinaryOp.LeI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64: {
        return module.binary(BinaryOp.LeI64, leftExpr, rightExpr);
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: {
        return module.binary(BinaryOp.LeU32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.LeU64
            : BinaryOp.LeU32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.U64: {
        return module.binary(BinaryOp.LeU64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.LeF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.LeF64, leftExpr, rightExpr);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeGe(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits and signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: {
        return module.binary(BinaryOp.GeI32, leftExpr, rightExpr);
      }
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.GeI64
            : BinaryOp.GeI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64: {
        return module.binary(BinaryOp.GeI64, leftExpr, rightExpr);
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: {
        return module.binary(BinaryOp.GeU32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.GeU64
            : BinaryOp.GeU32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.U64: {
        return module.binary(BinaryOp.GeU64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.GeF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.GeF64, leftExpr, rightExpr);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeEq(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    // Cares about garbage bits
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        return module.binary(BinaryOp.EqI32, leftExpr, rightExpr);
      }
      case TypeKind.ISIZE:
      case TypeKind.USIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.EqI64
            : BinaryOp.EqI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.EqI64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.EqF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.EqF64, leftExpr, rightExpr);
      }
      case TypeKind.V128: {
        return module.unary(UnaryOp.AllTrueI8x16,
          module.binary(BinaryOp.EqI8x16, leftExpr, rightExpr)
        );
      }
      case TypeKind.FUNCREF:
      case TypeKind.EXTERNREF:
      case TypeKind.EXNREF:
      case TypeKind.ANYREF: {
        this.error(
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.range,
          "ref.eq",
          type.toString()
        );
        return module.unreachable();
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeNe(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    // Cares about garbage bits
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        return module.binary(BinaryOp.NeI32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE:
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.NeI64
            : BinaryOp.NeI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.NeI64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.NeF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.NeF64, leftExpr, rightExpr);
      }
      case TypeKind.V128: {
        return module.unary(UnaryOp.AnyTrueI8x16,
          module.binary(BinaryOp.NeI8x16, leftExpr, rightExpr)
        );
      }
      case TypeKind.FUNCREF:
      case TypeKind.EXTERNREF:
      case TypeKind.EXNREF:
      case TypeKind.ANYREF: {
        this.error(
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.range,
          "ref.eq",
          type.toString()
        );
        return module.unreachable();
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeAdd(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL:
      case TypeKind.I32:
      case TypeKind.U32: {
        return module.binary(BinaryOp.AddI32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE:
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.AddI64
            : BinaryOp.AddI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.AddI64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.AddF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.AddF64, leftExpr, rightExpr);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeSub(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL:
      case TypeKind.I32:
      case TypeKind.U32: {
        return module.binary(BinaryOp.SubI32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE:
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.SubI64
            : BinaryOp.SubI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.SubI64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.SubF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.SubF64, leftExpr, rightExpr);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeMul(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL:
      case TypeKind.I32:
      case TypeKind.U32: {
        return module.binary(BinaryOp.MulI32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE:
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.MulI64
            : BinaryOp.MulI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.MulI64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.MulF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.MulF64, leftExpr, rightExpr);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makePow(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    // Cares about garbage bits
    let module = this.module;
    switch (type.kind) {
      case TypeKind.BOOL: {
        return module.select(
          module.i32(1),
          module.binary(BinaryOp.EqI32, rightExpr, module.i32(0)),
          leftExpr
        );
      }
      case TypeKind.I8:
      case TypeKind.U8:
      case TypeKind.I16:
      case TypeKind.U16: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        let instance = this.i32PowInstance;
        if (!instance) {
          let prototype = this.program.lookup(CommonNames.ipow32);
          if (!prototype) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "ipow32"
            );
            return module.unreachable();
          }
          assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
          this.i32PowInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
        }
        if (!instance || !this.compileFunction(instance)) {
          return module.unreachable();
        }
        let expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ], reportNode);
        if (type.size < 32) {
          // TODO: this is necessary because i32PowInstance is generic, and deals with 32-bit integers,
          // so its flow does not indicate whether returned SMIs are wrapped. worth to avoid?
          expr = this.ensureSmallIntegerWrap(expr, type);
        }
        return expr;
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        let instance = this.i64PowInstance;
        if (!instance) {
          let prototype = this.program.lookup(CommonNames.ipow64);
          if (!prototype) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "ipow64"
            );
            return module.unreachable();
          }
          assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
          this.i64PowInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
        }
        if (!instance || !this.compileFunction(instance)) {
          return module.unreachable();
        }
        return this.makeCallDirect(instance, [ leftExpr, rightExpr ], reportNode);
      }
      case TypeKind.ISIZE:
      case TypeKind.USIZE: {
        let isWasm64 = this.options.isWasm64;
        let instance = isWasm64 ? this.i64PowInstance : this.i32PowInstance;
        if (!instance) {
          let prototype = this.program.lookup(isWasm64 ? CommonNames.ipow64 : CommonNames.ipow32);
          if (!prototype) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, isWasm64 ? "ipow64" : "ipow32"
            );
            return module.unreachable();
          }
          assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
          instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
          if (isWasm64) {
            this.i64PowInstance = instance;
          } else {
            this.i32PowInstance = instance;
          }
        }
        if (!instance || !this.compileFunction(instance)) {
          return module.unreachable();
        }
        return this.makeCallDirect(instance, [ leftExpr, rightExpr ], reportNode);
      }
      case TypeKind.F32: {
        let instance = this.f32PowInstance;
        if (!instance) {
          let namespace = this.program.lookup(CommonNames.Mathf);
          if (!namespace) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Mathf"
            );
            return module.unreachable();
          }
          let namespaceMembers = namespace.members;
          if (!namespaceMembers || !namespaceMembers.has(CommonNames.pow)) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Mathf.pow"
            );
            return module.unreachable();
          }
          let prototype = assert(namespaceMembers.get(CommonNames.pow));
          assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
          this.f32PowInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
        }
        if (!instance || !this.compileFunction(instance)) {
          return module.unreachable();
        }
        return this.makeCallDirect(instance, [ leftExpr, rightExpr ], reportNode);
      }
      // Math.pow otherwise (result is f64)
      case TypeKind.F64: {
        let instance = this.f64PowInstance;
        if (!instance) {
          let namespace = this.program.lookup(CommonNames.Math);
          if (!namespace) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Math"
            );
            return module.unreachable();
          }
          let namespaceMembers = namespace.members;
          if (!namespaceMembers || !namespaceMembers.has(CommonNames.pow)) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Math.pow"
            );
            return module.unreachable();
          }
          let prototype = assert(namespaceMembers.get(CommonNames.pow));
          assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
          this.f64PowInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
        }
        if (!instance || !this.compileFunction(instance)) {
          return module.unreachable();
        }
        return this.makeCallDirect(instance, [ leftExpr, rightExpr ], reportNode);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeDiv(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits and signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: {
        return module.binary(BinaryOp.DivI32, leftExpr, rightExpr);
      }
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.DivI64
            : BinaryOp.DivI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64: {
        return module.binary(BinaryOp.DivI64, leftExpr, rightExpr);
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: {
        return module.binary(BinaryOp.DivU32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.DivU64
            : BinaryOp.DivU32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.U64: {
        return module.binary(BinaryOp.DivU64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        return module.binary(BinaryOp.DivF32, leftExpr, rightExpr);
      }
      case TypeKind.F64: {
        return module.binary(BinaryOp.DivF64, leftExpr, rightExpr);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeRem(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    // Cares about garbage bits and signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: {
        return module.binary(BinaryOp.RemI32, leftExpr, rightExpr);
      }
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.RemI64
            : BinaryOp.RemI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.I64: {
        return module.binary(BinaryOp.RemI64, leftExpr, rightExpr);
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        leftExpr = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: {
        return module.binary(BinaryOp.RemU32, leftExpr, rightExpr);
      }
      case TypeKind.USIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.RemU64
            : BinaryOp.RemU32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.U64: {
        return module.binary(BinaryOp.RemU64, leftExpr, rightExpr);
      }
      case TypeKind.F32: {
        let instance = this.f32ModInstance;
        if (!instance) {
          let namespace = this.program.lookup(CommonNames.Mathf);
          if (!namespace) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Mathf"
            );
            return module.unreachable();
          }
          let namespaceMembers = namespace.members;
          if (!namespaceMembers || !namespaceMembers.has(CommonNames.mod)) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Mathf.mod"
            );
            return module.unreachable();
          }
          let prototype = assert(namespaceMembers.get(CommonNames.mod));
          assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
          this.f32ModInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
        }
        if (!instance || !this.compileFunction(instance)) {
          return module.unreachable();
        }
        return this.makeCallDirect(instance, [ leftExpr, rightExpr ], reportNode);
      }
      case TypeKind.F64: {
        let instance = this.f64ModInstance;
        if (!instance) {
          let namespace = this.program.lookup(CommonNames.Math);
          if (!namespace) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Math"
            );
            return module.unreachable();
          }
          let namespaceMembers = namespace.members;
          if (!namespaceMembers || !namespaceMembers.has(CommonNames.mod)) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Math.mod"
            );
            return module.unreachable();
          }
          let prototype = assert(namespaceMembers.get(CommonNames.mod));
          assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
          this.f64ModInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
        }
        if (!instance || !this.compileFunction(instance)) {
          return module.unreachable();
        }
        return this.makeCallDirect(instance, [ leftExpr, rightExpr ], reportNode);
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeShl(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits on the RHS, but only for types smaller than 5 bits
    var module = this.module;
    switch (type.kind) {
      case TypeKind.BOOL: return leftExpr;
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        // leftExpr << (rightExpr & (7|15))
        return module.binary(
          BinaryOp.ShlI32,
          leftExpr,
          module.binary(BinaryOp.AndI32, rightExpr, module.i32(type.size - 1))
        );
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        return module.binary(BinaryOp.ShlI32, leftExpr, rightExpr);
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.ShlI64, leftExpr, rightExpr);
      }
      case TypeKind.USIZE:
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.ShlI64
            : BinaryOp.ShlI32,
          leftExpr,
          rightExpr
        );
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeShr(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits on the LHS, but on the RHS only for types smaller than 5 bits,
    // and signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.BOOL: return leftExpr;
      case TypeKind.I8:
      case TypeKind.I16: {
        // leftExpr >> (rightExpr & (7|15))
        return module.binary(
          BinaryOp.ShrI32,
          this.ensureSmallIntegerWrap(leftExpr, type),
          module.binary(BinaryOp.AndI32, rightExpr, module.i32(type.size - 1))
        );
      }
      case TypeKind.U8:
      case TypeKind.U16: {
        // leftExpr >>> (rightExpr & (7|15))
        return module.binary(
          BinaryOp.ShrU32,
          this.ensureSmallIntegerWrap(leftExpr, type),
          module.binary(BinaryOp.AndI32, rightExpr, module.i32(type.size - 1))
        );
      }
      case TypeKind.I32: {
        return module.binary(BinaryOp.ShrI32, leftExpr, rightExpr);
      }
      case TypeKind.I64: {
        return module.binary(BinaryOp.ShrI64, leftExpr, rightExpr);
      }
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.ShrI64
            : BinaryOp.ShrI32,
          leftExpr,
          rightExpr
        );
      }
      case TypeKind.U32: {
        return module.binary(BinaryOp.ShrU32, leftExpr, rightExpr);
      }
      case TypeKind.U64: {
        return module.binary(BinaryOp.ShrU64, leftExpr, rightExpr);
      }
      case TypeKind.USIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.ShrU64
            : BinaryOp.ShrU32,
          leftExpr,
          rightExpr
        );
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeShru(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits on the LHS, but on the RHS only for types smaller than 5 bits
    var module = this.module;
    switch (type.kind) {
      case TypeKind.BOOL: return leftExpr;
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        // leftExpr >>> (rightExpr & (7|15))
        return module.binary(
          BinaryOp.ShrU32,
          this.ensureSmallIntegerWrap(leftExpr, type),
          module.binary(BinaryOp.AndI32, rightExpr, module.i32(type.size - 1))
        );
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        return module.binary(BinaryOp.ShrU32, leftExpr, rightExpr);
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.ShrU64, leftExpr, rightExpr);
      }
      case TypeKind.USIZE:
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.ShrU64
            : BinaryOp.ShrU32,
          leftExpr,
          rightExpr
        );
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeAnd(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL:
      case TypeKind.U32: {
        return module.binary(BinaryOp.AndI32, leftExpr, rightExpr);
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.AndI64, leftExpr, rightExpr);
      }
      case TypeKind.USIZE:
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.AndI64
            : BinaryOp.AndI32,
          leftExpr,
          rightExpr
        );
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeOr(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        return module.binary(BinaryOp.OrI32, leftExpr, rightExpr);
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        return module.binary(BinaryOp.OrI32, leftExpr, rightExpr);
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.OrI64, leftExpr, rightExpr);
      }
      case TypeKind.USIZE:
      case TypeKind.ISIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.OrI64
            : BinaryOp.OrI32,
          leftExpr,
          rightExpr
        );
      }
    }
    assert(false);
    return module.unreachable();
  }

  makeXor(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.BOOL: {
        return module.binary(BinaryOp.XorI32, leftExpr, rightExpr);
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        return module.binary(BinaryOp.XorI32, leftExpr, rightExpr);
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.XorI64, leftExpr, rightExpr);
      }
      case TypeKind.ISIZE:
      case TypeKind.USIZE: {
        return module.binary(
          this.options.isWasm64
            ? BinaryOp.XorI64
            : BinaryOp.XorI32,
          leftExpr,
          rightExpr
        );
      }
    }
    assert(false);
    return module.unreachable();
  }

  private compileUnaryOverload(
    operatorInstance: Function,
    value: Expression,
    valueExpr: ExpressionRef,
    reportNode: Node
  ): ExpressionRef {
    // FIXME: see comment in compileBinaryOverload below why recompiling on type mismatch
    // is a bad idea currently. so this assumes that the type matches.
    return this.makeCallDirect(operatorInstance, [ valueExpr ], reportNode, false);
  }

  private compileBinaryOverload(
    operatorInstance: Function,
    left: Expression,
    leftExpr: ExpressionRef,
    right: Expression,
    reportNode: Node
  ): ExpressionRef {
    var rightType: Type;
    if (operatorInstance.is(CommonFlags.INSTANCE)) {
      let classInstance = assert(operatorInstance.parent); assert(classInstance.kind == ElementKind.CLASS);
      rightType = operatorInstance.signature.parameterTypes[0];
    } else {
      // FIXME: if LHS type differs we can't recompile left because that'd completely confuse
      // local states, like having retained locals that actually do not even exist, possibly
      // releasing something random in that local before and evil things like that. Hence this
      // assumes that LHS type matches, which in turn means that static overloads must be
      // guaranteed to never mismatch LHS type, which in turn means that we can't have shiny
      // things like multiple static overloads for different combinations of LHS/RHS types.
      // We might want that at some point of course, but requires to complete the resolver so
      // it can actually resolve every kind of expression without ever having to recompile.
      rightType = operatorInstance.signature.parameterTypes[1];
    }
    var rightExpr = this.compileExpression(right, rightType, Constraints.CONV_IMPLICIT);
    return this.makeCallDirect(operatorInstance, [ leftExpr, rightExpr ], reportNode);
  }

  private compileAssignment(
    expression: Expression,
    valueExpression: Expression,
    contextualType: Type
  ): ExpressionRef {
    var program = this.program;
    var resolver = program.resolver;
    var flow = this.currentFlow;
    var target = resolver.lookupExpression(expression, flow); // reports
    if (!target) return this.module.unreachable();
    var thisExpression = resolver.currentThisExpression;
    var elementExpression = resolver.currentElementExpression;

    // to compile just the value, we need to know the target's type
    var targetType: Type;
    switch (target.kind) {
      case ElementKind.GLOBAL: {
        // not yet compiled if a static field compiled as a global
        if (!this.compileGlobal(<Global>target)) return this.module.unreachable(); // reports
        // fall-through
      }
      case ElementKind.LOCAL:
      case ElementKind.FIELD: {
        if (this.pendingElements.has(target)) {
          this.error(
            DiagnosticCode.Variable_0_used_before_its_declaration,
            expression.range,
            target.internalName
          );
          return this.module.unreachable();
        }
        targetType = (<VariableLikeElement>target).type;
        if (target.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let propertyPrototype = <PropertyPrototype>target;
        let propertyInstance = resolver.resolveProperty(propertyPrototype);
        if (!propertyInstance) return this.module.unreachable();
        target = propertyInstance;
        // fall-through
      }
      case ElementKind.PROPERTY: {
        let propertyInstance = <Property>target;
        let setterInstance = propertyInstance.setterInstance;
        if (!setterInstance) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, propertyInstance.internalName
          );
          return this.module.unreachable();
        }
        assert(setterInstance.signature.parameterTypes.length == 1); // parser must guarantee this
        targetType = setterInstance.signature.parameterTypes[0];
        if (setterInstance.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);
        break;
      }
      case ElementKind.INDEXSIGNATURE: {
        let parent = (<IndexSignature>target).parent;
        assert(parent.kind == ElementKind.CLASS);
        let classInstance = <Class>parent;
        let isUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
        let indexedSet = classInstance.lookupOverload(OperatorKind.INDEXED_SET, isUnchecked);
        if (!indexedSet) {
          let indexedGet = classInstance.lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
          if (!indexedGet) {
            this.error(
              DiagnosticCode.Index_signature_is_missing_in_type_0,
              expression.range, classInstance.internalName
            );
          } else {
            this.error(
              DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
              expression.range, classInstance.internalName
            );
          }
          return this.module.unreachable();
        }
        assert(indexedSet.signature.parameterTypes.length == 2); // parser must guarantee this
        targetType = indexedSet.signature.parameterTypes[1];     // 2nd parameter is the element
        if (indexedSet.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);
        if (!isUnchecked && this.options.pedantic) {
          this.pedantic(
            DiagnosticCode.Indexed_access_may_involve_bounds_checking,
            expression.range
          );
        }
        break;
      }
      default: {
        assert(false);
        return this.module.unreachable();
      }
    }

    // compile the value and do the assignment
    assert(targetType != Type.void);
    var valueExpr = this.compileExpression(valueExpression, targetType, Constraints.WILL_RETAIN);
    var valueType = this.currentType;
    return this.makeAssignment(
      target,
      this.convertExpression(valueExpr, valueType, targetType, false, valueExpression),
      valueType,
      valueExpression,
      thisExpression,
      elementExpression,
      contextualType != Type.void
    );
  }

  /** Makes an assignment expression or block, assigning a value to a target. */
  makeAssignment(
    /** Target element, e.g. a Local. */
    target: Element,
    /** Value expression that has been compiled in a previous step already. */
    valueExpr: ExpressionRef,
    /** Value expression type. */
    valueType: Type,
    /** Expression reference. Has already been compiled to `valueExpr`. */
    valueExpression: Expression,
    /** `this` expression reference if a field or property set. */
    thisExpression: Expression | null,
    /** Index expression reference if an indexed set. */
    indexExpression: Expression | null,
    /** Whether to tee the value. */
    tee: bool
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;

    // NOTE: Only locals, globals and fields can make use of skipped autoreleases while
    // everything else must insert the skipped autorelease now. See (*)

    switch (target.kind) {
      case ElementKind.LOCAL: {
        let local = <Local>target;
        if (flow.isLocalFlag(local.index, LocalFlags.CONSTANT, true)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, target.internalName
          );
          this.currentType = tee ? local.type : Type.void;
          return module.unreachable();
        }
        return this.makeLocalAssignment(local, valueExpr, valueType, tee);
      }
      case ElementKind.GLOBAL: {
        let global = <Global>target;
        if (!this.compileGlobal(global)) return module.unreachable();
        if (target.isAny(CommonFlags.CONST | CommonFlags.READONLY)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range,
            target.internalName
          );
          this.currentType = tee ? global.type : Type.void;
          return module.unreachable();
        }
        return this.makeGlobalAssignment(global, valueExpr, valueType, tee);
      }
      case ElementKind.FIELD: {
        let fieldInstance = <Field>target;
        let initializerNode = fieldInstance.initializerNode;
        let isConstructor = flow.actualFunction.is(CommonFlags.CONSTRUCTOR);

        // Cannot assign to readonly fields except in constructors if there's no initializer
        if (fieldInstance.is(CommonFlags.READONLY)) {
          if (!isConstructor || initializerNode !== null) {
            this.error(
              DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
              valueExpression.range, fieldInstance.internalName
            );
            return module.unreachable();
          }
        }

        // Mark initialized fields in constructors
        thisExpression = assert(thisExpression);
        if (isConstructor && thisExpression.kind == NodeKind.THIS) {
          flow.setThisFieldFlag(fieldInstance, FieldFlags.INITIALIZED);
        }

        let fieldParent = fieldInstance.parent;
        assert(fieldParent.kind == ElementKind.CLASS);
        return this.makeFieldAssignment(fieldInstance,
          valueExpr,
          valueType,
          this.compileExpression(
            thisExpression,
            (<Class>fieldParent).type,
            Constraints.CONV_IMPLICIT | Constraints.IS_THIS
          ),
          tee
        );
      }
      case ElementKind.PROPERTY: {
        let propertyInstance = <Property>target;
        let setterInstance = propertyInstance.setterInstance;
        if (!setterInstance) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, target.internalName
          );
          return module.unreachable();
        }
        assert(setterInstance.signature.parameterTypes.length == 1);
        let valueType = setterInstance.signature.parameterTypes[0];
        if (this.skippedAutoreleases.has(valueExpr)) valueExpr = this.makeAutorelease(valueExpr, valueType, flow); // (*)
        if (propertyInstance.is(CommonFlags.INSTANCE)) {
          let thisType = assert(setterInstance.signature.thisType);
          let thisExpr = this.compileExpression(
            assert(thisExpression),
            thisType,
            Constraints.CONV_IMPLICIT | Constraints.IS_THIS
          );
          if (!tee) return this.makeCallDirect(setterInstance, [ thisExpr, valueExpr ], valueExpression);
          let getterInstance = assert((<Property>target).getterInstance);
          assert(getterInstance.signature.thisType == thisType);
          let returnType = getterInstance.signature.returnType;
          let nativeReturnType = returnType.toNativeType();
          let tempThis = flow.getTempLocal(returnType);
          let ret = module.block(null, [
            this.makeCallDirect(setterInstance, [
              module.local_tee(tempThis.index, thisExpr),
              valueExpr
            ], valueExpression),
            this.makeCallDirect(getterInstance, [
              module.local_get(tempThis.index, nativeReturnType)
            ], valueExpression)
          ], nativeReturnType);
          flow.freeTempLocal(tempThis);
          return ret;
        } else {
          if (!tee) return this.makeCallDirect(setterInstance, [ valueExpr ], valueExpression);
          let getterInstance = assert((<Property>target).getterInstance);
          return module.block(null, [
            this.makeCallDirect(setterInstance, [ valueExpr ], valueExpression),
            this.makeCallDirect(getterInstance, null, valueExpression)
          ], getterInstance.signature.returnType.toNativeType());
        }
      }
      case ElementKind.INDEXSIGNATURE: {
        let indexSignature = <IndexSignature>target;
        let parent = indexSignature.parent;
        assert(parent.kind == ElementKind.CLASS);
        let classInstance = <Class>parent;
        assert(classInstance.kind == ElementKind.CLASS);
        let isUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
        let getterInstance = classInstance.lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
        if (!getterInstance) {
          this.error(
            DiagnosticCode.Index_signature_is_missing_in_type_0,
            valueExpression.range, classInstance.internalName
          );
          return module.unreachable();
        }
        let setterInstance = classInstance.lookupOverload(OperatorKind.INDEXED_SET, isUnchecked);
        if (!setterInstance) {
          this.error(
            DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
            valueExpression.range, classInstance.internalName
          );
          this.currentType = tee ? getterInstance.signature.returnType : Type.void;
          return module.unreachable();
        }
        assert(setterInstance.signature.parameterTypes.length == 2);
        let valueType = setterInstance.signature.parameterTypes[1];
        if (this.skippedAutoreleases.has(valueExpr)) valueExpr = this.makeAutorelease(valueExpr, valueType, flow); // (*)
        let thisExpr = this.compileExpression(
          assert(thisExpression),
          classInstance.type,
          Constraints.CONV_IMPLICIT | Constraints.IS_THIS
        );
        let elementExpr = this.compileExpression(assert(indexExpression), Type.i32, Constraints.CONV_IMPLICIT);
        if (tee) {
          let tempTarget = flow.getTempLocal(classInstance.type);
          let tempElement = flow.getTempLocal(this.currentType);
          let returnType = getterInstance.signature.returnType;
          flow.freeTempLocal(tempTarget);
          let ret = module.block(null, [
            this.makeCallDirect(setterInstance, [
              module.local_tee(tempTarget.index, thisExpr),
              module.local_tee(tempElement.index, elementExpr),
              valueExpr
            ], valueExpression),
            this.makeCallDirect(getterInstance, [
              module.local_get(tempTarget.index, tempTarget.type.toNativeType()),
              module.local_get(tempElement.index, tempElement.type.toNativeType())
            ], valueExpression)
          ], returnType.toNativeType());
          flow.freeTempLocal(tempElement);
          flow.freeTempLocal(tempTarget);
          return ret;
        } else {
          return this.makeCallDirect(setterInstance, [
            thisExpr,
            elementExpr,
            valueExpr
          ], valueExpression);
        }
      }
    }
    assert(false);
    return module.unreachable();
  }

  /** Makes an assignment to a local, possibly retaining and releasing affected references and keeping track of wrap and null states. */
  private makeLocalAssignment(
    /** Local to assign to. */
    local: Local,
    /** Value to assign. */
    valueExpr: ExpressionRef,
    /** Value type. */
    valueType: Type,
    /** Whether to tee the value. */
    tee: bool
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var type = local.type;
    assert(type != Type.void);
    var localIndex = local.index;

    if (type.isNullableReference) {
      if (!valueType.isNullableReference || flow.isNonnull(valueExpr, type)) flow.setLocalFlag(localIndex, LocalFlags.NONNULL);
      else flow.unsetLocalFlag(localIndex, LocalFlags.NONNULL);
    }
    flow.setLocalFlag(localIndex, LocalFlags.INITIALIZED);

    if (type.isManaged) {
      let alreadyRetained = this.skippedAutoreleases.has(valueExpr);
      if (flow.isAnyLocalFlag(localIndex, LocalFlags.ANY_RETAINED)) {
        valueExpr = this.makeReplace(
          valueExpr,
          valueType,
          module.local_get(localIndex, type.toNativeType()),
          type,
          alreadyRetained
        );
        if (tee) { // local = REPLACE(local, value)
          this.currentType = type;
          return module.local_tee(localIndex, valueExpr);
        } else { // void(local = REPLACE(local, value))
          this.currentType = Type.void;
          return module.local_set(localIndex, valueExpr);
        }
      } else {
        flow.unsetLocalFlag(localIndex, LocalFlags.CONDITIONALLY_RETAINED);
        flow.setLocalFlag(localIndex, LocalFlags.RETAINED);
        if (!alreadyRetained) valueExpr = this.makeRetain(valueExpr, valueType);
        if (tee) { // local = __retain(value, local)
          this.currentType = type;
          return module.local_tee(localIndex, valueExpr);
        } else { // void(local = __retain(value, local))
          this.currentType = Type.void;
          return module.local_set(localIndex, valueExpr);
        }
      }
    } else {
      if (type.isShortIntegerValue) {
        if (!flow.canOverflow(valueExpr, type)) flow.setLocalFlag(localIndex, LocalFlags.WRAPPED);
        else flow.unsetLocalFlag(localIndex, LocalFlags.WRAPPED);
      }
      if (tee) { // local = value
        this.currentType = type;
        return module.local_tee(localIndex, valueExpr);
      } else { // void(local = value)
        this.currentType = Type.void;
        return module.local_set(localIndex, valueExpr);
      }
    }
  }

  /** Makes an assignment to a global, possibly retaining and releasing affected references. */
  private makeGlobalAssignment(
    /** The global variable to assign to. */
    global: VariableLikeElement,
    /** The value to assign. */
    valueExpr: ExpressionRef,
    /** The type of the value to assign. */
    valueType: Type,
    /** Whether to tee the value. */
    tee: bool
  ): ExpressionRef {
    var module = this.module;
    var type = global.type;
    assert(type != Type.void);
    var nativeType = type.toNativeType();

    if (type.isManaged) {
      let alreadyRetained = this.skippedAutoreleases.has(valueExpr);
      valueExpr = module.global_set(global.internalName,
        this.makeReplace(
          valueExpr,
          valueType,
          module.global_get(global.internalName, nativeType),
          type,
          alreadyRetained
        )
      );
      if (tee) { // (global = REPLACE(global, value))), global
        this.currentType = type;
        return module.block(null, [
          valueExpr,
          module.global_get(global.internalName, nativeType)
        ], nativeType);
      } else { // global = REPLACE(global, value)
        this.currentType = Type.void;
        return valueExpr;
      }
    } else {
      valueExpr = this.ensureSmallIntegerWrap(valueExpr, type); // globals must be wrapped
      if (tee) { // (global = value), global
        this.currentType = type;
        return module.block(null, [
          module.global_set(global.internalName, valueExpr),
          module.global_get(global.internalName, nativeType)
        ], nativeType);
      } else { // global = value
        this.currentType = Type.void;
        return module.global_set(global.internalName,
          valueExpr
        );
      }
    }
  }

  /** Makes an assignment to a field, possibly retaining and releasing affected references. */
  private makeFieldAssignment(
    /** The field to assign to. */
    field: Field,
    /** The value to assign. */
    valueExpr: ExpressionRef,
    /** The type of the value to assign. */
    valueType: Type,
    /** The value of `this`. */
    thisExpr: ExpressionRef,
    /** Whether to tee the value. */
    tee: bool
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var fieldType = field.type;
    var nativeFieldType = fieldType.toNativeType();
    assert(field.parent.kind == ElementKind.CLASS);
    var thisType = (<Class>field.parent).type;
    var nativeThisType = thisType.toNativeType();

    if (!field.is(CommonFlags.COMPILED)) {
      field.set(CommonFlags.COMPILED);
      let typeNode = field.typeNode;
      if (typeNode) this.checkTypeSupported(field.type, typeNode);
    }

    if (fieldType.isManaged && thisType.isManaged) {
      let tempThis = flow.getTempLocal(thisType, findUsedLocals(valueExpr));
      // set before and read after valueExpr executes below ^
      let alreadyRetained = this.skippedAutoreleases.has(valueExpr);
      let ret: ExpressionRef;
      if (tee) { // ((t1 = this).field = REPLACE(t1.field, t2 = value)), t2
        let tempValue = flow.getTempLocal(fieldType);
        if (!flow.canOverflow(valueExpr, fieldType)) flow.setLocalFlag(tempValue.index, LocalFlags.WRAPPED);
        if (flow.isNonnull(valueExpr, fieldType)) flow.setLocalFlag(tempValue.index, LocalFlags.NONNULL);
        ret = module.block(null, [
          module.store(fieldType.byteSize,
            module.local_tee(tempThis.index, thisExpr),
            this.makeReplace(
              module.local_tee(tempValue.index, valueExpr),
              valueType,
              module.load(fieldType.byteSize, fieldType.isSignedIntegerValue,
                module.local_get(tempThis.index, nativeThisType),
                nativeFieldType, field.memoryOffset
              ),
              fieldType,
              alreadyRetained
            ),
            nativeFieldType, field.memoryOffset
          ),
          module.local_get(tempValue.index, nativeFieldType)
        ], nativeFieldType);
        flow.freeTempLocal(tempValue);
        this.currentType = fieldType;
      } else { // (t1 = this).field = REPLACE(t1.field, value)
        ret = module.store(fieldType.byteSize,
          module.local_tee(tempThis.index, thisExpr),
          this.makeReplace(
            valueExpr,
            valueType,
            module.load(fieldType.byteSize, fieldType.isSignedIntegerValue,
              module.local_get(tempThis.index, nativeThisType),
              nativeFieldType, field.memoryOffset
            ),
            fieldType,
            alreadyRetained
          ),
          nativeFieldType, field.memoryOffset
        );
        this.currentType = Type.void;
      }
      flow.freeTempLocal(tempThis);
      return ret;
    } else {
      if (tee) { // (this.field = (t1 = value)), t1
        let temp = flow.getTempLocal(fieldType);
        if (!flow.canOverflow(valueExpr, fieldType)) flow.setLocalFlag(temp.index, LocalFlags.WRAPPED);
        if (flow.isNonnull(valueExpr, fieldType)) flow.setLocalFlag(temp.index, LocalFlags.NONNULL);
        let ret = module.block(null, [
          module.store(fieldType.byteSize,
            thisExpr,
            module.local_tee(temp.index, valueExpr),
            nativeFieldType, field.memoryOffset
          ),
          module.local_get(temp.index, nativeFieldType)
        ], nativeFieldType);
        flow.freeTempLocal(temp);
        this.currentType = fieldType;
        return ret;
      } else { // this.field = value
        this.currentType = Type.void;
        return module.store(fieldType.byteSize,
          thisExpr,
          valueExpr,
          nativeFieldType, field.memoryOffset
        );
      }
    }
  }

  /** Compiles a call expression according to the specified context. */
  private compileCallExpression(
    /** Call expression to compile. */
    expression: CallExpression,
    /** Contextual type indicating the return type the caller expects, if any. */
    contextualType: Type,
    /** Constraints indicating contextual conditions. */
    constraints: Constraints
  ): ExpressionRef {

    var module = this.module;
    var flow = this.currentFlow;

    // handle call to super
    if (expression.expression.kind == NodeKind.SUPER) {
      let flow = this.currentFlow;
      let actualFunction = flow.actualFunction;
      if (!actualFunction.is(CommonFlags.CONSTRUCTOR)) {
        this.error(
          DiagnosticCode.Super_calls_are_not_permitted_outside_constructors_or_in_nested_functions_inside_constructors,
          expression.range
        );
        return module.unreachable();
      }

      let parent = assert(actualFunction.parent);
      assert(parent.kind == ElementKind.CLASS);
      let classInstance = <Class>parent;
      let baseClassInstance = assert(classInstance.base);
      let thisLocal = assert(flow.lookupLocal(CommonNames.this_));
      let nativeSizeType = this.options.nativeSizeType;

      let baseCtorInstance = this.ensureConstructor(baseClassInstance, expression);
      this.checkFieldInitialization(baseClassInstance, expression);
      let superCall = this.compileCallDirect(
        baseCtorInstance,
        expression.args,
        expression,
        module.local_get(thisLocal.index, nativeSizeType),
        Constraints.WILL_RETAIN
      );
      assert(baseClassInstance.type.isUnmanaged || this.skippedAutoreleases.has(superCall)); // guaranteed

      // check that super had been called before accessing `this`
      if (flow.isAny(
        FlowFlags.ACCESSES_THIS |
        FlowFlags.CONDITIONALLY_ACCESSES_THIS
      )) {
        this.error(
          DiagnosticCode._super_must_be_called_before_accessing_this_in_the_constructor_of_a_derived_class,
          expression.range
        );
        return module.unreachable();
      }
      flow.set(FlowFlags.ACCESSES_THIS | FlowFlags.CALLS_SUPER);
      this.currentType = Type.void;
      return module.local_set(thisLocal.index, superCall);
    }

    // otherwise resolve normally
    var target = this.resolver.lookupExpression(expression.expression, flow); // reports
    if (!target) return module.unreachable();
    var thisExpression = this.resolver.currentThisExpression;

    var signature: Signature | null;
    var indexArg: ExpressionRef;
    switch (target.kind) {

      // direct call: concrete function
      case ElementKind.FUNCTION_PROTOTYPE: {
        let functionPrototype = <FunctionPrototype>target;
        if (functionPrototype.hasDecorator(DecoratorFlags.BUILTIN)) {
          // builtins handle present respectively omitted type arguments on their own
          return this.compileCallExpressionBuiltin(functionPrototype, expression, contextualType);
        }
        let functionInstance = this.resolver.maybeInferCall(expression, functionPrototype, flow);
        if (!functionInstance) return this.module.unreachable();
        target = functionInstance;
        // fall-through
      }
      case ElementKind.FUNCTION: {
        let functionInstance = <Function>target;
        let thisArg: ExpressionRef = 0;
        if (functionInstance.is(CommonFlags.INSTANCE)) {
          thisArg = this.compileExpression(
            assert(thisExpression),
            assert(functionInstance.signature.thisType),
            Constraints.CONV_IMPLICIT | Constraints.IS_THIS
          );
        }
        return this.compileCallDirect(
          functionInstance,
          expression.args,
          expression,
          thisArg,
          constraints
        );
      }

      // indirect call: index argument with signature (non-generic, can't be inlined)
      case ElementKind.LOCAL: {
        let local = <Local>target;
        signature = local.type.signatureReference;
        if (signature) {
          if (local.is(CommonFlags.INLINED)) {
            indexArg = module.i32(i64_low(local.constantIntegerValue));
          } else {
            indexArg = module.local_get(local.index, NativeType.I32);
          }
          break;
        }
        this.error(
          DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
          expression.range, local.type.toString()
        );
        return module.unreachable();
      }
      case ElementKind.GLOBAL: {
        let global = <Global>target;
        signature = global.type.signatureReference;
        if (signature) {
          indexArg = module.global_get(global.internalName, global.type.toNativeType());
          break;
        }
        this.error(
          DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
          expression.range, global.type.toString()
        );
        return module.unreachable();
      }
      case ElementKind.FIELD: {
        let fieldInstance = <Field>target;
        let fieldType = fieldInstance.type;
        signature = fieldType.signatureReference;
        if (signature) {
          let fieldParent = fieldInstance.parent;
          assert(fieldParent.kind == ElementKind.CLASS);
          indexArg = module.load(4, false,
            this.compileExpression(
              assert(thisExpression),
              (<Class>fieldParent).type,
              Constraints.CONV_IMPLICIT | Constraints.IS_THIS
            ),
            NativeType.I32,
            fieldInstance.memoryOffset
          );
          break;
        }
        this.error(
          DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
          expression.range, fieldType.toString()
        );
        return module.unreachable();
      }

      case ElementKind.PROPERTY_PROTOTYPE: {
        let propertyInstance = this.resolver.resolveProperty(<PropertyPrototype>target);
        if (!propertyInstance) return module.unreachable();
        target = propertyInstance;
        // fall-through
      }
      case ElementKind.PROPERTY: {
        let propertyInstance = <Property>target;
        let getterInstance = assert(propertyInstance.getterInstance);
        let thisArg: ExpressionRef = 0;
        if (propertyInstance.is(CommonFlags.INSTANCE)) {
          thisArg = this.compileExpression(
            assert(thisExpression),
            assert(getterInstance.signature.thisType),
            Constraints.CONV_IMPLICIT | Constraints.IS_THIS
          );
        }
        indexArg = this.compileCallDirect(getterInstance, [], expression.expression, thisArg);
        signature = this.currentType.signatureReference;
        if (!signature) {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, this.currentType.toString()
          );
          return module.unreachable();
        }
        break;
      }
      case ElementKind.CLASS: {
        let classInstance = <Class>target;
        let typeArguments = classInstance.getTypeArgumentsTo(this.program.functionPrototype);
        if (typeArguments !== null && typeArguments.length > 0) {
          let ftype = typeArguments[0];
          signature = ftype.getSignature();
          indexArg = this.compileExpression(expression.expression, ftype, Constraints.CONV_IMPLICIT);
          break;
        }
        // fall-through
      }

      // not supported
      default: {
        let type = this.resolver.getTypeOfElement(target);
        if (type) {
          this.error(
            DiagnosticCode.Type_0_has_no_call_signatures,
            expression.range, type.toString()
          );
        } else {
          this.error(
            DiagnosticCode.Expression_cannot_be_represented_by_a_type,
            expression.range
          );
        }
        return module.unreachable();
      }
    }
    return this.compileCallIndirect(
      assert(signature), // FIXME: bootstrap can't see this yet
      indexArg,
      expression.args,
      expression,
      0,
      contextualType == Type.void
    );
  }

  private compileCallExpressionBuiltin(
    prototype: FunctionPrototype,
    expression: CallExpression,
    contextualType: Type
  ): ExpressionRef {
    if (prototype.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);

    var typeArguments: Type[] | null = null;

    // builtins handle omitted type arguments on their own. if present, however, resolve them here
    // and pass them to the builtin, even if it's still up to the builtin how to handle them.
    var typeParameterNodes = prototype.typeParameterNodes;
    var typeArgumentNodes = expression.typeArguments;
    if (expression.typeArguments) {
      if (!prototype.is(CommonFlags.GENERIC)) {
        this.error(
          DiagnosticCode.Type_0_is_not_generic,
          expression.range, prototype.internalName
        );
      }
      typeArguments = this.resolver.resolveTypeArguments(
        assert(typeParameterNodes),
        typeArgumentNodes,
        this.currentFlow.actualFunction.parent,
        uniqueMap<string,Type>(this.currentFlow.contextualTypeArguments),
        expression
      );
    }
    var callee = expression.expression;
    var ctx = new BuiltinContext(
      this,
      prototype,
      typeArguments,
      expression.args,
      callee.kind == NodeKind.PROPERTYACCESS
        ? (<PropertyAccessExpression>callee).expression
        : null,
      contextualType,
      expression,
      false
    );
    // global builtins
    var internalName = prototype.internalName;
    if (builtins.has(internalName)) {
      let fn = assert(builtins.get(internalName));
      return fn(ctx);
    }
    // class builtins
    var parent = prototype.parent;
    if (parent.kind == ElementKind.CLASS) {
      let classPrototype = (<Class>parent).prototype;
      if (classPrototype == this.program.functionPrototype) {
        let methodName = prototype.name;
        if (function_builtins.has(methodName)) {
          let fn = assert(function_builtins.get(methodName));
          return fn(ctx);
        }
      }
    }
    assert(false);
    return this.module.unreachable();
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
        DiagnosticCode.The_this_types_of_each_signature_are_incompatible,
        reportNode.range
      );
      return false;
    }

    // not yet implemented (TODO: maybe some sort of an unmanaged/lightweight array?)
    var hasRest = signature.hasRest;
    if (hasRest) {
      this.error(
        DiagnosticCode.Not_implemented_0,
        reportNode.range,
        "Rest parameters"
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

  /** Checks that an unsafe expression is allowed. */
  private checkUnsafe(reportNode: Node, relatedReportNode: Node | null = null): void {
    // Library files may always use unsafe features
    if (this.options.noUnsafe && !reportNode.range.source.isLibrary) {
      if (relatedReportNode) {
        this.errorRelated(
          DiagnosticCode.Operation_is_unsafe,
          reportNode.range, relatedReportNode.range
        );
      } else {
        this.error(
          DiagnosticCode.Operation_is_unsafe,
          reportNode.range
        );
      }
    }
  }

  /** Compiles a direct call to a concrete function. */
  compileCallDirect(
    instance: Function,
    argumentExpressions: Expression[],
    reportNode: Node,
    thisArg: ExpressionRef = 0,
    constraints: Constraints = Constraints.NONE
  ): ExpressionRef {
    var numArguments = argumentExpressions.length;
    var signature = instance.signature;
    if (!this.checkCallSignature( // reports
      signature,
      numArguments,
      thisArg != 0,
      reportNode
    )) {
      this.currentType = signature.returnType;
      return this.module.unreachable();
    }
    if (instance.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(reportNode);

    // handle call on `this` in constructors
    let actualFunction = this.currentFlow.actualFunction;
    if (actualFunction.is(CommonFlags.CONSTRUCTOR) && reportNode.isAccessOnThis) {
      let parent = actualFunction.parent;
      assert(parent.kind == ElementKind.CLASS);
      this.checkFieldInitialization(<Class>parent, reportNode);
    }

    // Inline if explicitly requested
    if (instance.hasDecorator(DecoratorFlags.INLINE) && (!instance.is(CommonFlags.VIRTUAL) || reportNode.isAccessOnSuper)) {
      assert(!instance.is(CommonFlags.STUB)); // doesn't make sense
      let inlineStack = this.inlineStack;
      if (inlineStack.includes(instance)) {
        this.warning(
          DiagnosticCode.Function_0_cannot_be_inlined_into_itself,
          reportNode.range, instance.internalName
        );
      } else {
        inlineStack.push(instance);
        let parameterTypes = signature.parameterTypes;
        assert(numArguments <= parameterTypes.length);
        // compile argument expressions
        let args = new Array<ExpressionRef>(numArguments);
        for (let i = 0; i < numArguments; ++i) {
          args[i] = this.compileExpression(argumentExpressions[i], parameterTypes[i],
            Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN
          );
        }
        // make the inlined call (is aware of autoreleases)
        let expr = this.makeCallInline(instance, args, thisArg, (constraints & Constraints.WILL_DROP) != 0);
        if (this.currentType.isManaged) {
          if (!(constraints & Constraints.WILL_RETAIN)) {
            expr = this.makeAutorelease(expr, instance.signature.returnType, this.currentFlow);
          } else {
            this.skippedAutoreleases.add(expr);
          }
        }
        inlineStack.pop();
        return expr;
      }
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
      operands[index] = this.compileExpression(argumentExpressions[i], parameterTypes[i],
        Constraints.CONV_IMPLICIT
      );
    }
    assert(index == numArgumentsInclThis);
    if (signature.returnType.isManaged) {
      if (constraints & Constraints.WILL_DROP) {
        // Skip autorelease and simply release
        return this.makeCallDirect(instance, operands, reportNode, true);
      } else if (constraints & Constraints.WILL_RETAIN) {
        // Skip autorelease and remember
        let expr = this.makeCallDirect(instance, operands, reportNode, false, true);
        this.skippedAutoreleases.add(expr);
        return expr;
      } else {
        return this.makeCallDirect(instance, operands, reportNode, false, false);
      }
    }
    return this.makeCallDirect(instance, operands, reportNode,
      (constraints & Constraints.WILL_DROP) != 0
    );
  }

  makeCallInline(
    instance: Function,
    operands: ExpressionRef[] | null,
    thisArg: ExpressionRef = 0,
    immediatelyDropped: bool = false
  ): ExpressionRef {
    var module = this.module;
    var numArguments = operands ? operands.length : 0;
    var signature = instance.signature;
    var parameterTypes = signature.parameterTypes;
    var numParameters = parameterTypes.length;

    // Create a new inline flow and use it to compile the function as a block
    var previousFlow = this.currentFlow;
    var flow = Flow.createInline(previousFlow.parentFunction, instance);
    var body = [];
    var usedLocals = new Set<i32>();

    // Prepare compiled arguments right to left, keeping track of used locals.
    for (let i = numArguments - 1; i >= 0; --i) {
      // This is necessary because a later expression must not set an earlier argument local, which
      // is also just a temporary, when being executed. Take for example `t1=1, t2=(t1 = 2)`, where
      // the right expression would reassign the foregoing argument local. So, we iterate from right
      // to left, remembering what's used later, and don't use these for earlier arguments, making
      // the example above essentially `t2=1, t1=(t1 = 2)`.
      let paramExpr = operands![i];
      let paramType = parameterTypes[i];
      let argumentLocal = flow.addScopedLocal(instance.getParameterName(i), paramType, usedLocals);
      findUsedLocals(paramExpr, usedLocals);
      // inlining is aware of wrap/nonnull states:
      if (!previousFlow.canOverflow(paramExpr, paramType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.WRAPPED);
      if (flow.isNonnull(paramExpr, paramType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.NONNULL);
      // inlining is aware of skipped autoreleases:
      if (paramType.isManaged) {
        if (!this.skippedAutoreleases.has(paramExpr)) paramExpr = this.makeRetain(paramExpr, paramType);
        flow.setLocalFlag(argumentLocal.index, LocalFlags.RETAINED);
      }
      body.unshift(
        module.local_set(argumentLocal.index, paramExpr)
      );
    }
    if (thisArg) {
      let parent = assert(instance.parent);
      assert(parent.kind == ElementKind.CLASS);
      let classInstance = <Class>parent;
      let thisType = assert(instance.signature.thisType);
      let thisLocal = flow.addScopedLocal(CommonNames.this_, thisType, usedLocals);
      // In normal instance functions, `this` is effectively a constant
      // retained elsewhere so does not need to be retained.
      if (instance.is(CommonFlags.CONSTRUCTOR)) {
        // Constructors, however, can allocate their own memory, and as such
        // must refcount the allocation in case something else is `return`ed.
        flow.setLocalFlag(thisLocal.index, LocalFlags.RETAINED);
      }
      body.unshift(
        module.local_set(thisLocal.index, thisArg)
      );
      let base = classInstance.base;
      if (base) flow.addScopedAlias(CommonNames.super_, base.type, thisLocal.index);
    } else {
      assert(!instance.signature.thisType);
    }

    // Compile omitted arguments with final argument locals blocked. Doesn't need to take care of
    // side-effects within earlier expressions because these already happened on set.
    this.currentFlow = flow;
    for (let i = numArguments; i < numParameters; ++i) {
      let initType = parameterTypes[i];
      let initExpr = this.compileExpression(
        assert(instance.prototype.functionTypeNode.parameters[i].initializer),
        initType,
        Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN
      );
      let argumentLocal = flow.addScopedLocal(instance.getParameterName(i), initType);
      if (!flow.canOverflow(initExpr, initType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.WRAPPED);
      if (flow.isNonnull(initExpr, initType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.NONNULL);
      if (initType.isManaged) {
        flow.setLocalFlag(argumentLocal.index, LocalFlags.RETAINED);
        if (!this.skippedAutoreleases.has(initExpr)) initExpr = this.makeRetain(initExpr, initType);
      }
      body.push(
        module.local_set(argumentLocal.index, initExpr)
      );
    }

    // Compile the called function's body in the scope of the inlined flow
    this.compileFunctionBody(instance, body);

    // If a constructor, perform field init checks on its flow directly
    if (instance.is(CommonFlags.CONSTRUCTOR)) {
      let parent = instance.parent;
      assert(parent.kind == ElementKind.CLASS);
      this.checkFieldInitializationInFlow(<Class>parent, flow);
    }

    // Free any new scoped locals and reset to the original flow
    if (!flow.is(FlowFlags.TERMINATES)) {
      this.performAutoreleases(flow, body);
      this.finishAutoreleases(flow, body);
    }
    flow.freeScopedLocals();
    var returnType = flow.returnType;
    this.currentFlow = previousFlow;

    // Create an outer block that we can break to when returning a value out of order
    var expr = module.block(flow.inlineReturnLabel, body, returnType.toNativeType());
    this.currentType = returnType;
    if (returnType.isManaged) {
      if (immediatelyDropped) {
        expr = this.makeRelease(expr, returnType);
        this.currentType = Type.void;
      }
    }
    return expr;
  }

  /** Makes sure that the arguments length helper global is present. */
  ensureArgumentsLength(): void {
    if (!this.builtinArgumentsLength) {
      let module = this.module;
      this.builtinArgumentsLength = module.addGlobal(BuiltinNames.argumentsLength, NativeType.I32, true, module.i32(0));
    }
  }

  /** Ensures compilation of the varargs stub for the specified function. */
  ensureVarargsStub(original: Function): Function {
    // A varargs stub is a function called with omitted arguments being zeroed,
    // reading the `argumentsLength` helper global to decide which initializers
    // to inject before calling the original function. It is typically attempted
    // to circumvent the varargs stub where possible, for example where omitted
    // arguments are constants and can be inlined into the original call.
    var stub = original.varargsStub;
    if (stub) return stub;

    var originalSignature = original.signature;
    var originalParameterTypes = originalSignature.parameterTypes;
    var originalParameterDeclarations = original.prototype.functionTypeNode.parameters;
    var returnType = originalSignature.returnType;
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
      forwardedOperands[0] = module.local_get(0, this.options.nativeSizeType);
      operandIndex = 1;
    }

    // forward required arguments
    for (let i = 0; i < minArguments; ++i, ++operandIndex) {
      forwardedOperands[operandIndex] = module.local_get(operandIndex, originalParameterTypes[i].toNativeType());
    }
    assert(operandIndex == minOperands);

    // create the varargs stub
    stub = original.newStub("varargs");
    stub.signature.requiredParameters = maxArguments;
    original.varargsStub = stub;

    // compile initializers of omitted arguments in the scope of the stub,
    // accounting for additional locals and a proper `this` context.
    var previousFlow = this.currentFlow;
    var flow = stub.flow;
    this.currentFlow = flow;

    // create a br_table switching over the number of optional parameters provided
    var numNames = numOptional + 1; // incl. outer block
    var names = new Array<string>(numNames);
    var ofN = "of" + numOptional.toString();
    for (let i = 0; i < numNames; ++i) {
      let label = i.toString() + ofN;
      names[i] = label;
    }
    var body = module.block(names[0], [
      module.block("outOfRange", [
        module.switch(names, "outOfRange",
          // condition is number of provided optional arguments, so subtract required arguments
          minArguments
            ? module.binary(
                BinaryOp.SubI32,
                module.global_get(BuiltinNames.argumentsLength, NativeType.I32),
                module.i32(minArguments)
              )
            : module.global_get(BuiltinNames.argumentsLength, NativeType.I32)
        )
      ]),
      module.unreachable()
    ]);
    for (let i = 0; i < numOptional; ++i, ++operandIndex) {
      let type = originalParameterTypes[minArguments + i];
      let declaration = originalParameterDeclarations[minArguments + i];
      let initializer = declaration.initializer;
      let initExpr: ExpressionRef;
      if (initializer) {
        initExpr = module.local_set(operandIndex,
          this.compileExpression(
            initializer,
            type,
            Constraints.CONV_IMPLICIT
          )
        );
      } else {
        this.error(
          DiagnosticCode.Optional_parameter_must_have_an_initializer,
          declaration.range
        );
        initExpr = module.unreachable();
      }
      body = module.block(names[i + 1], [
        body,
        initExpr,
      ]);
      forwardedOperands[operandIndex] = module.local_get(operandIndex, type.toNativeType());
    }
    assert(operandIndex == maxOperands);

    var stmts: ExpressionRef[] = [ body ];
    var theCall = module.call(original.internalName, forwardedOperands, returnType.toNativeType());
    if (returnType != Type.void) {
      this.performAutoreleasesWithValue(flow, theCall, returnType, stmts);
    } else {
      stmts.push(theCall);
      this.performAutoreleases(flow, stmts);
    }
    flow.freeScopedLocals();
    this.currentFlow = previousFlow;

    var funcRef = module.addFunction(
      stub.internalName,
      stub.signature.nativeParams,
      stub.signature.nativeResults,
      typesToNativeTypes(stub.additionalLocals),
      module.flatten(stmts, returnType.toNativeType())
    );
    stub.set(CommonFlags.COMPILED);
    stub.finalize(module, funcRef);
    return stub;
  }

  /** Ensures compilation of the virtual stub for the specified function. */
  ensureVirtualStub(original: Function): Function {
    // A virtual stub is a function redirecting virtual calls to the actual
    // overload targeted by the call. It utilizes varargs stubs where necessary
    // and as such has the same semantics as one. Here, we only make sure that
    // a placeholder exist, with actual code being generated as a finalization
    // step once module compilation is otherwise complete.
    var stub = original.virtualStub;
    if (stub) return stub;
    stub = original.newStub("virtual");
    original.virtualStub = stub;
    var module = this.module;
    stub.ref = module.addFunction(
      stub.internalName,
      stub.signature.nativeParams,
      stub.signature.nativeResults,
      null,
      module.unreachable()
    );
    this.virtualCalls.add(original);
    return stub;
  }

  /** Finalizes the virtual stub of the specified function. */
  private finalizeVirtualStub(instance: Function): void {
    var stub = this.ensureVirtualStub(instance);
    if (stub.is(CommonFlags.COMPILED)) return;

    // Wouldn't be here if there wasn't at least one overload
    var overloadPrototypes = assert(instance.prototype.overloads);

    var module = this.module;
    var usizeType = this.options.usizeType;
    var nativeSizeType = usizeType.toNativeType();
    var parameterTypes = instance.signature.parameterTypes;
    var returnType = instance.signature.returnType;
    var numParameters = parameterTypes.length;
    var tempIndex = 1 + parameterTypes.length; // incl. `this`

    // Switch over this's rtId and map it to the respective overload
    var builder = new SwitchBuilder(this.module,
      module.load(4, false,
        module.binary(
          nativeSizeType == NativeType.I64
            ? BinaryOp.SubI64
            : BinaryOp.SubI32,
          module.local_get(0, nativeSizeType),
          nativeSizeType == NativeType.I64
            ? module.i64(8) // rtId offset = -8
            : module.i32(8)
        ),
        NativeType.I32
      )
    );

    // A method's `overloads` property contains its unbound overload prototypes
    // so we first have to find the concrete classes it became bound to, obtain
    // their bound prototypes and make sure these are resolved and compiled as
    // we are going to call them conditionally based on this's class id.
    for (let _values = Set_values(overloadPrototypes), i = 0, k = _values.length; i < k; ++i) {
      let unboundOverloadPrototype = _values[i];
      assert(!unboundOverloadPrototype.isBound);
      let unboundOverloadParent = unboundOverloadPrototype.parent;
      let isProperty = unboundOverloadParent.kind == ElementKind.PROPERTY_PROTOTYPE;
      let classInstances: Map<string,Class> | null;
      if (isProperty) {
        let propertyParent = (<PropertyPrototype>unboundOverloadParent).parent;
        assert(propertyParent.kind == ElementKind.CLASS_PROTOTYPE);
        classInstances = (<ClassPrototype>propertyParent).instances;
      } else {
        assert(unboundOverloadParent.kind == ElementKind.CLASS_PROTOTYPE);
        classInstances = (<ClassPrototype>unboundOverloadParent).instances;
      }
      if (classInstances) {
        for (let _values = Map_values(classInstances), j = 0, l = _values.length; j < l; ++j) {
          let classInstance = _values[j];
          let overloadInstance: Function | null;
          if (isProperty) {
            let boundProperty = assert(classInstance.members!.get(unboundOverloadParent.name));
            assert(boundProperty.kind == ElementKind.PROPERTY_PROTOTYPE);
            let boundPropertyInstance = this.resolver.resolveProperty(<PropertyPrototype>boundProperty);
            if (!boundPropertyInstance) continue;
            if (instance.is(CommonFlags.GET)) {
              overloadInstance = boundPropertyInstance.getterInstance;
            } else {
              assert(instance.is(CommonFlags.SET));
              overloadInstance = boundPropertyInstance.setterInstance;
            }
          } else {
            let boundPrototype = assert(classInstance.members!.get(unboundOverloadPrototype.name));
            assert(boundPrototype.kind == ElementKind.FUNCTION_PROTOTYPE);
            overloadInstance = this.resolver.resolveFunction(<FunctionPrototype>boundPrototype, instance.typeArguments);
          }
          if (!overloadInstance || !this.compileFunction(overloadInstance)) continue;
          let overloadType = overloadInstance.type;
          let originalType = instance.type;
          if (!overloadType.isAssignableTo(originalType)) {
            this.error(
              DiagnosticCode.Type_0_is_not_assignable_to_type_1,
              overloadInstance.identifierNode.range, overloadType.toString(), originalType.toString()
            );
            continue;
          }
          // TODO: additional optional parameters are not permitted by `isAssignableTo` yet
          let overloadSignature = overloadInstance.signature;
          let overloadParameterTypes = overloadSignature.parameterTypes;
          let overloadNumParameters = overloadParameterTypes.length;
          let paramExprs = new Array<ExpressionRef>(1 + overloadNumParameters);
          paramExprs[0] = module.local_get(0, nativeSizeType); // this
          for (let n = 1; n <= numParameters; ++n) {
            paramExprs[n] = module.local_get(n, parameterTypes[n - 1].toNativeType());
          }
          let needsVarargsStub = false;
          for (let n = numParameters; n < overloadNumParameters; ++n) {
            // TODO: inline constant initializers and skip varargs stub
            paramExprs[1 + n] = this.makeZero(overloadParameterTypes[n], overloadInstance.declaration);
            needsVarargsStub = true;
          }
          let calledName = needsVarargsStub
            ? this.ensureVarargsStub(overloadInstance).internalName
            : overloadInstance.internalName;
          let nativeReturnType = overloadSignature.returnType.toNativeType();
          let stmts = new Array<ExpressionRef>();
          if (needsVarargsStub) {
            this.ensureArgumentsLength();
            // Safe to prepend since paramExprs are local.get's
            stmts.push(module.global_set(BuiltinNames.argumentsLength, module.i32(numParameters)));
          }
          if (returnType == Type.void) {
            stmts.push(
              module.call(calledName, paramExprs, nativeReturnType)
            );
            stmts.push(
              module.return()
            );
          } else {
            stmts.push(
              module.return(
                module.call(calledName, paramExprs, nativeReturnType)
              )
            );
          }
          builder.addCase(classInstance.id, stmts);
          // Also alias each extendee inheriting this exact overload
          let extendees = classInstance.getAllExtendees(
            isProperty
              ? unboundOverloadParent.name
              : instance.prototype.name
          );
          for (let _values = Set_values(extendees), a = 0, b = _values.length; a < b; ++a) {
            let extendee = _values[a];
            builder.addCase(extendee.id, stmts);
          }
        }
      }
    }

    // Call the original function if no other id matches and the method is not
    // abstract or part of an interface. Note that doing so will not catch an
    // invalid id, but can reduce code size significantly since we also don't
    // have to add branches for extendees inheriting the original function.
    var body: ExpressionRef;
    if (instance.prototype.bodyNode) {
      let paramExprs = new Array<ExpressionRef>(numParameters);
      paramExprs[0] = module.local_get(0, nativeSizeType); // this
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        paramExprs[1 + i] = module.local_get(1 + i, parameterTypes[i].toNativeType());
      }
      body = module.call(instance.internalName, paramExprs, returnType.toNativeType());

    // Otherwise trap
    } else {
      body = module.unreachable();
    }

    // Create the virtual stub function
    var ref = stub.ref;
    if (ref) module.removeFunction(stub.internalName);
    stub.ref = module.addFunction(
      stub.internalName,
      stub.signature.nativeParams,
      stub.signature.nativeResults,
      [ NativeType.I32 ],
      module.block(null, [
        builder.render(tempIndex),
        body
      ], returnType.toNativeType())
    );
    stub.set(CommonFlags.COMPILED);
  }

  // <reference-counting>

  /** Makes a retain call, retaining the expression's value. */
  makeRetain(expr: ExpressionRef, type: Type): ExpressionRef {
    var retainInstance = this.program.retainInstance;
    this.compileFunction(retainInstance);
    return this.module.call(retainInstance.internalName, [ expr ], this.options.nativeSizeType);
  }

  /** Makes a release call, releasing the expression's value. Changes the current type to void.*/
  makeRelease(expr: ExpressionRef, type: Type): ExpressionRef {
    var releaseInstance = this.program.releaseInstance;
    this.compileFunction(releaseInstance);
    return this.module.call(releaseInstance.internalName, [ expr ], NativeType.None);
  }

  /** Makes a replace, retaining the new expression's value and releasing the old expression's value, in this order. */
  makeReplace(
    /** New value being assigned. */
    newExpr: ExpressionRef,
    /** The type of the new expression. */
    newType: Type,
    /** Old value being replaced. */
    oldExpr: ExpressionRef,
    /** The type of the old expression. */
    oldType: Type,
    /** Whether the new value is already retained. */
    alreadyRetained: bool = false,
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var nativeSizeType = this.options.nativeSizeType;
    if (alreadyRetained) {
      // (t1=newExpr), __release(oldExpr), t1
      // it is important that `newExpr` evaluates before `oldExpr` is released, hence the local
      let temp = flow.getTempLocal(this.options.usizeType, findUsedLocals(oldExpr));
      let ret = module.block(null, [
        module.local_set(temp.index, newExpr),
        this.makeRelease(oldExpr, oldType),
        module.local_get(temp.index, nativeSizeType)
      ], nativeSizeType);
      flow.freeTempLocal(temp);
      return ret;
    } else {
      // if ((t1=newExpr) != (t2=oldExpr)) {
      //   t1 = __retain(t1);
      //   __release(t2);
      // }, t1
      let usizeType = this.options.usizeType;
      let temp1 = flow.getTempLocal(usizeType, findUsedLocals(oldExpr));
      let temp2 = flow.getTempLocal(usizeType);
      let ret = module.block(null, [
        module.if(
          module.binary(nativeSizeType == NativeType.I64 ? BinaryOp.NeI64 : BinaryOp.NeI32,
            module.local_tee(temp1.index, newExpr),
            module.local_tee(temp2.index, oldExpr)
          ),
          module.block(null, [
            module.local_set(temp1.index,
              this.makeRetain(module.local_get(temp1.index, nativeSizeType), newType)
            ),
            this.makeRelease(module.local_get(temp2.index, nativeSizeType), oldType)
          ])
        ),
        module.local_get(temp1.index, nativeSizeType)
      ], nativeSizeType);
      flow.freeTempLocal(temp2);
      flow.freeTempLocal(temp1);
      return ret;
    }
  }

  /** Makes an autorelease call at the end of the specified `flow`. */
  makeAutorelease(
    /** Expression to autorelease. */
    expr: ExpressionRef,
    /** Type of the expression. */
    type: Type,
    /** Flow that should autorelease. Defaults to the current flow. */
    flow: Flow = this.currentFlow
  ): ExpressionRef {
    // An 'autorelease' is the assignment of a managed reference to a temporary local,
    // keeping the reference alive until the surrounding flow concludes. This is useful
    // if a reference is not being immediately assigned to something that would keep it
    // alive, like a local or a global, yet it'll remain alive in other code. Example:
    //
    //   callReceivingAReference(callReturningAReference())
    //
    // will be transformed into an autorelease like
    //
    //   callReceivingAReference(t = callReturningAReference())
    //   ...
    //   __release(t)
    //
    // since releasing immediately would free the value before the call:
    //
    //   callReceivingAReference((__release(t = callReturningAReference()), t))
    //
    var local = flow.getAutoreleaseLocal(type);
    if (flow.isNonnull(expr, type)) flow.setLocalFlag(local.index, LocalFlags.NONNULL);
    return this.module.local_tee(local.index, expr);
  }

  /**
   * Attempts to undo an autorelease in the specified `flow`.
   * Returns the index of the previously retaining variable or -1 if not possible.
   */
  tryUndoAutorelease(
    /** Expression being autoreleased. */
    expr: ExpressionRef,
    /** Flow that would autorelease. */
    flow: Flow
  ): i32 {
    // The following assumes that the expression actually belongs to the flow and that
    // top-level autoreleases are never undone. While that's true, it's not necessary
    // to check presence in scopedLocals.
    switch (getExpressionId(expr)) {
      case ExpressionId.LocalGet: { // local.get(idx)
        let index = getLocalGetIndex(expr);
        if (flow.isAnyLocalFlag(index, LocalFlags.ANY_RETAINED)) {
          flow.unsetLocalFlag(index, LocalFlags.ANY_RETAINED);
          return index;
        }
        break;
      }
      case ExpressionId.LocalSet: { // local.tee(idx, expr)
        if (isLocalTee(expr)) {
          // NOTE: Can't remove the local.tee completely because it's already compiled
          // and a child of something else. Preventing the final release however makes
          // it optimize away.
          let index = getLocalSetIndex(expr);
          if (flow.isAnyLocalFlag(index, LocalFlags.ANY_RETAINED)) {
            flow.unsetLocalFlag(index, LocalFlags.ANY_RETAINED);
            return index;
          }
        }
        break;
      }
      case ExpressionId.Block: { // { ..., local.get|tee(...) }
        if (getBlockName(expr) === null) { // must not be a break target
          let count = getBlockChildCount(expr);
          if (count) {
            return this.tryUndoAutorelease(getBlockChildAt(expr, count - 1), flow);
          }
        }
        break;
      }
    }
    return -1;
  }

  /** Delays an autorelease in `innerFlow` until `outerFlow` concludes. */
  delayAutorelease(
    /** Expression being autoreleased in `innerFlow`. */
    expr: ExpressionRef,
    /** Type of the expression. */
    type: Type,
    /** Inner flow that would autorelease. Must not have processed autoreleases yet. */
    innerFlow: Flow,
    /** Outer flow that should autorelease instead. */
    outerFlow: Flow
  ): ExpressionRef {
    // Attempt to undo the autorelease in `innerFlow`
    var index = this.tryUndoAutorelease(expr, innerFlow);
    return ~index
      // If it worked, autorelease in `outerFlow` instead
      ? this.makeAutorelease(expr, type, outerFlow)
      // If it didn't work, extend the lifetime into `outerFlow`
      : this.makeAutorelease(this.makeRetain(expr, type), type, outerFlow);
  }

  /** Performs any queued autoreleases in the specified flow. */
  performAutoreleases(
    /** Flow releasing its queued autoreleases. */
    flow: Flow,
    /** Array of statements to append the releases to. */
    stmts: ExpressionRef[],
    /**
     * Whether to finalize affected locals. Defaults to `true`, which
     * is almost always correct, except when bubbling up parent flows
     * in break-like scenarios.
     */
    finalize: bool = true
  ): void {
    // Autoreleases must be performed whenever a flow concludes, decrementing
    // the RC of all the references in that flow scheduled for an autorelease.
    var scopedLocals = flow.scopedLocals;
    if (scopedLocals) {
      let module = this.module;
      // TODO: for (let local of scopedLocals.values()) {
      for (let _values = Map_values(scopedLocals), i = 0, k = _values.length; i < k; ++i) {
        let local = unchecked(_values[i]);
        if (local.is(CommonFlags.SCOPED)) { // otherwise an alias
          let localIndex = local.index;
          if (flow.isAnyLocalFlag(localIndex, LocalFlags.ANY_RETAINED)) {
            if (finalize) flow.unsetLocalFlag(localIndex, LocalFlags.ANY_RETAINED);
            stmts.push(
              this.makeRelease(
                module.local_get(localIndex, local.type.toNativeType()),
                local.type
              )
            );
          }
        }
      }
    }
  }

  /** Performs any queued autoreleases in the specified flow and returns the given value. */
  performAutoreleasesWithValue(
    /** Flow releasing its queued autoreleases. */
    flow: Flow,
    /** Value to return. */
    valueExpr: ExpressionRef,
    /** Type of the returned value. */
    valueType: Type,
    /** Array of statements to append the releases to. */
    stmts: ExpressionRef[] | null = null,
    /** Whether to finalize affected locals. */
    finalize: bool = true
  ): ExpressionRef {
    if (!stmts) stmts = new Array<ExpressionRef>();
    stmts.push(
      this.module.nop()
    );
    var lengthBefore = stmts.length;
    this.performAutoreleases(flow, stmts, finalize);
    var module = this.module;
    if (stmts.length > lengthBefore) {
      let nativeType = valueType.toNativeType();
      let temp = flow.getTempLocal(valueType);
      if (!flow.canOverflow(valueExpr, valueType)) flow.setLocalFlag(temp.index, LocalFlags.WRAPPED);
      if (flow.isNonnull(valueExpr, valueType)) flow.setLocalFlag(temp.index, LocalFlags.NONNULL);
      stmts[lengthBefore - 1] = module.local_set(temp.index, valueExpr); // nop -> set
      stmts.push(
        module.local_get(temp.index, nativeType) // append get
      );
      let ret = module.flatten(stmts, nativeType);
      flow.freeTempLocal(temp);
      return ret;
    } else if (stmts.length > 1) {
      stmts[lengthBefore - 1] = valueExpr; // nop -> value
      return module.flatten(stmts, valueType.toNativeType());
    }
    return valueExpr;
  }

  /** Finishes any queued autoreleases in the actual function of the specified flow. */
  finishAutoreleases(
    /** Flow releasing its queued autoreleases. */
    flow: Flow,
    /** Array of statements to append the releases to. */
    stmts: ExpressionRef[]
  ): void {
    // Differs from `performAutoreleases` in that concluding this flow also
    // concludes all its parent flows, for example on a `return`.
    if (flow.isInline) {
      // Traverse to the top-most flow containing the inlined function's
      // locals as scoped locals and release these instead of all the locals.
      let current = flow;
      let parent: Flow | null;
      while (parent = current.parent) current = parent;
      let scopedLocals = current.scopedLocals;
      if (scopedLocals) {
        // TODO: for (let local of scopedLocals.values()) {
        for (let _values = Map_values(scopedLocals), i = 0, k = _values.length; i < k; ++i) {
          let local = unchecked(_values[i]);
          this.maybeFinishAutorelease(local, flow, stmts);
        }
      }
    } else {
      let localsByIndex = flow.parentFunction.localsByIndex;
      for (let i = 0, k = localsByIndex.length; i < k; ++i) {
        let local = unchecked(localsByIndex[i]);
        this.maybeFinishAutorelease(local, flow, stmts);
      }
    }
  }

  /** Finishes a single autorelease of the specified local. */
  private maybeFinishAutorelease(
    /** Local to finish autoreleasing. */
    local: Local,
    /** Flow releasing its queued autoreleases. */
    flow: Flow,
    /** Array of statements to append the releases to. */
    stmts: ExpressionRef[]
  ): void {
    var localIndex = local.index;
    var module = this.module;
    if (~localIndex && flow.isAnyLocalFlag(localIndex, LocalFlags.ANY_RETAINED)) {
      flow.unsetLocalFlag(localIndex, LocalFlags.ANY_RETAINED);
      stmts.push(
        this.makeRelease(
          module.local_get(localIndex, local.type.toNativeType()),
          local.type
        )
      );
    }
  }

  // </reference-counting>

  /** Creates a direct call to the specified function. */
  makeCallDirect(
    instance: Function,
    operands: ExpressionRef[] | null,
    reportNode: Node,
    immediatelyDropped: bool = false,
    /** Skip the usual autorelease and manage this at the callsite instead. */
    skipAutorelease: bool = false
  ): ExpressionRef {
    if (instance.hasDecorator(DecoratorFlags.INLINE)) {
      if (!instance.is(CommonFlags.VIRTUAL)) {
        assert(!instance.is(CommonFlags.STUB)); // doesn't make sense
        let inlineStack = this.inlineStack;
        if (inlineStack.includes(instance)) {
          this.warning(
            DiagnosticCode.Function_0_cannot_be_inlined_into_itself,
            reportNode.range, instance.internalName
          );
        } else {
          inlineStack.push(instance);
          let expr: ExpressionRef;
          if (instance.is(CommonFlags.INSTANCE)) {
            let theOperands = assert(operands);
            assert(theOperands.length);
            expr = this.makeCallInline(instance, theOperands.slice(1), theOperands[0], immediatelyDropped);
          } else {
            expr = this.makeCallInline(instance, operands, 0, immediatelyDropped);
          }
          let returnType = this.currentType;
          if (returnType.isManaged) {
            if (!skipAutorelease) {
              expr = this.makeAutorelease(expr, returnType);
            } else {
              this.skippedAutoreleases.add(expr);
            }
          }
          inlineStack.pop();
          return expr;
        }
      } else {
        this.warning(
          DiagnosticCode.Function_0_is_virtual_and_will_not_be_inlined,
          reportNode.range, instance.internalName
        );
      }
    }
    var module = this.module;
    var numOperands = operands ? operands.length : 0;
    var numArguments = numOperands;
    var minArguments = instance.signature.requiredParameters;
    var minOperands = minArguments;
    var parameterTypes = instance.signature.parameterTypes;
    var maxArguments = parameterTypes.length;
    var maxOperands = maxArguments;
    if (instance.is(CommonFlags.INSTANCE)) {
      ++minOperands;
      ++maxOperands;
      --numArguments;
    }
    assert(numOperands >= minOperands);

    if (!this.compileFunction(instance)) return module.unreachable();
    var returnType = instance.signature.returnType;

    // fill up omitted arguments with their initializers, if constant, otherwise with zeroes.
    if (numOperands < maxOperands) {
      if (!operands) {
        operands = new Array(maxOperands);
        operands.length = 0;
      }
      let parameterNodes = instance.prototype.functionTypeNode.parameters;
      assert(parameterNodes.length == parameterTypes.length);
      let allOptionalsAreConstant = true;
      for (let i = numArguments; i < maxArguments; ++i) {
        let initializer = parameterNodes[i].initializer;
        if (initializer) {
          if (initializer.compilesToConst) {
            operands.push(this.compileExpression(
              initializer,
              parameterTypes[i],
              Constraints.CONV_IMPLICIT
            ));
            continue;
          }
          let resolved = this.resolver.lookupExpression(initializer, instance.flow, parameterTypes[i], ReportMode.SWALLOW);
          if (resolved) {
            if (resolved.kind == ElementKind.GLOBAL) {
              let global = <Global>resolved;
              if (this.compileGlobal(global)) {
                if (global.is(CommonFlags.INLINED)) {
                  operands.push(
                    this.compileInlineConstant(global, parameterTypes[i], Constraints.CONV_IMPLICIT)
                  );
                } else {
                  operands.push(
                    this.convertExpression(
                      module.global_get(global.internalName, global.type.toNativeType()),
                      global.type, parameterTypes[i], false, initializer
                    )
                  );
                }
                continue;
              }
            }
          }
        }
        operands.push(this.makeZero(parameterTypes[i], instance.declaration));
        allOptionalsAreConstant = false;
      }
      if (!allOptionalsAreConstant) {
        if (!instance.is(CommonFlags.MODULE_IMPORT)) {
          let original = instance;
          instance = this.ensureVarargsStub(instance);
          if (!this.compileFunction(instance)) return module.unreachable();
          instance.flow.flags = original.flow.flags;
          let nativeReturnType = returnType.toNativeType();
          // We know the last operand is optional and omitted, so inject setting
          // ~argumentsLength into that operand, which is always safe.
          let lastOperand = operands[maxOperands - 1];
          assert(!(getSideEffects(lastOperand) & SideEffects.WritesGlobal));
          let lastOperandType = parameterTypes[maxArguments - 1];
          operands[maxOperands - 1] = module.block(null, [
            module.global_set(BuiltinNames.argumentsLength, module.i32(numArguments)),
            lastOperand
          ], lastOperandType.toNativeType());
          let expr = module.call(instance.internalName, operands, nativeReturnType);
          this.currentType = returnType;
          if (returnType.isManaged) {
            if (immediatelyDropped) {
              expr = this.makeRelease(expr, returnType);
              this.currentType = Type.void;
            } else if (!skipAutorelease) {
              expr = this.makeAutorelease(expr, returnType);
            } else {
              this.skippedAutoreleases.add(expr);
            }
          }
          this.ensureArgumentsLength();
          return expr;
        }
      }
    }

    // Call the virtual stub with the vtable if the function has overloads
    if (instance.is(CommonFlags.VIRTUAL) && !reportNode.isAccessOnSuper) {
      instance = this.ensureVirtualStub(instance);
    }

    // If the return value is of a reference type it has not yet been released but is in flight
    // which is equivalent to a skipped autorelease. Hence, insert either a release if it is
    // dropped anyway, preserve the skipped autorelease if explicitly requested or autorelease now.
    var expr = module.call(instance.internalName, operands, returnType.toNativeType());
    this.currentType = returnType;
    if (returnType.isManaged) {
      if (immediatelyDropped) {
        expr = this.makeRelease(expr, returnType);
        this.currentType = Type.void;
      } else if (!skipAutorelease) {
        expr = this.makeAutorelease(expr, returnType);
      }
    }
    return expr;
  }

  /** Compiles an indirect call using an index argument and a signature. */
  compileCallIndirect(
    signature: Signature,
    indexArg: ExpressionRef,
    argumentExpressions: Expression[],
    reportNode: Node,
    thisArg: ExpressionRef = 0,
    immediatelyDropped: bool = false
  ): ExpressionRef {
    var numArguments = argumentExpressions.length;

    if (!this.checkCallSignature( // reports
      signature,
      numArguments,
      thisArg != 0,
      reportNode
    )) {
      return this.module.unreachable();
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
      operands[index] = this.compileExpression(argumentExpressions[i], parameterTypes[i],
        Constraints.CONV_IMPLICIT
      );
    }
    assert(index == numArgumentsInclThis);
    return this.makeCallIndirect(signature, indexArg, reportNode, operands, immediatelyDropped);
  }

  /** Creates an indirect call to the function at `indexArg` in the function table. */
  makeCallIndirect(
    signature: Signature,
    indexArg: ExpressionRef,
    reportNode: Node,
    operands: ExpressionRef[] | null = null,
    immediatelyDropped: bool = false,
  ): ExpressionRef {
    var module = this.module;
    var numOperands = operands ? operands.length : 0;
    var numArguments = numOperands;
    var minArguments = signature.requiredParameters;
    var minOperands = minArguments;
    var parameterTypes = signature.parameterTypes;
    var returnType = signature.returnType;
    var maxArguments = parameterTypes.length;
    var maxOperands = maxArguments;
    if (signature.thisType) {
      ++minOperands;
      ++maxOperands;
      --numArguments;
    }
    assert(numOperands >= minOperands);

    // fill up omitted arguments with zeroes
    if (numOperands < maxOperands) {
      if (!operands) {
        operands = new Array(maxOperands);
        operands.length = 0;
      }
      let parameterTypes = signature.parameterTypes;
      for (let i = numArguments; i < maxArguments; ++i) {
        operands.push(this.makeZero(parameterTypes[i], reportNode));
      }
    }

    if (this.options.isWasm64) {
      indexArg = module.unary(UnaryOp.WrapI64, indexArg);
    }

    // We might be calling a varargs stub here, even if all operands have been
    // provided, so we must set `argumentsLength` in any case. Inject setting it
    // into the index argument, which becomes executed last after any operands.
    this.ensureArgumentsLength();
    var nativeSizeType = this.options.nativeSizeType;
    if (getSideEffects(indexArg) & SideEffects.WritesGlobal) {
      let flow = this.currentFlow;
      let temp = flow.getTempLocal(this.options.usizeType, findUsedLocals(indexArg));
      indexArg = module.block(null, [
        module.local_set(temp.index, indexArg),
        module.global_set(BuiltinNames.argumentsLength, module.i32(numArguments)),
        module.local_get(temp.index, nativeSizeType)
      ], nativeSizeType);
      flow.freeTempLocal(temp);
    } else { // simplify
      indexArg = module.block(null, [
        module.global_set(BuiltinNames.argumentsLength, module.i32(numArguments)),
        indexArg
      ], nativeSizeType);
    }
    var expr = module.call_indirect(
      nativeSizeType == NativeType.I64
        ? module.unary(UnaryOp.WrapI64,
            module.load(8, false, indexArg, NativeType.I64)
          )
        : module.load(4, false, indexArg, NativeType.I32),
      operands,
      signature.nativeParams,
      signature.nativeResults
    );
    this.currentType = returnType;
    if (returnType.isManaged) {
      if (immediatelyDropped) {
        expr = this.makeRelease(expr, returnType);
        this.currentType = Type.void;
      } else {
        expr = this.makeAutorelease(expr, returnType);
      }
    }
    return expr;
  }

  private compileCommaExpression(
    expression: CommaExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var expressions = expression.expressions;
    var numExpressions = expressions.length;
    var exprs = new Array<ExpressionRef>(numExpressions--);
    for (let i = 0; i < numExpressions; ++i) {
      exprs[i] = this.compileExpression(expressions[i], Type.void, // drop all except last
        Constraints.CONV_IMPLICIT | Constraints.WILL_DROP
      );
    }
    exprs[numExpressions] = this.compileExpression(expressions[numExpressions], contextualType, constraints);
    return this.module.flatten(exprs, this.currentType.toNativeType());
  }

  private compileElementAccessExpression(
    expression: ElementAccessExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    var targetExpression = expression.expression;
    var targetType = this.resolver.resolveExpression(targetExpression, this.currentFlow); // reports
    if (targetType) {
      let classReference = targetType.getClassOrWrapper(this.program);
      if (classReference) {
        let isUnchecked = this.currentFlow.is(FlowFlags.UNCHECKED_CONTEXT);
        let indexedGet = classReference.lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
        if (indexedGet) {
          let thisType = assert(indexedGet.signature.thisType);
          let thisArg = this.compileExpression(targetExpression, thisType,
            Constraints.CONV_IMPLICIT
          );
          if (!isUnchecked && this.options.pedantic) {
            this.pedantic(
              DiagnosticCode.Indexed_access_may_involve_bounds_checking,
              expression.range
            );
          }
          return this.compileCallDirect(indexedGet, [
            expression.elementExpression
          ], expression, thisArg, constraints);
        }
      }
      this.error(
        DiagnosticCode.Index_signature_is_missing_in_type_0,
        expression.expression.range, targetType.toString()
      );
    }
    return module.unreachable();
  }

  private compileFunctionExpression(
    expression: FunctionExpression,
    contextualSignature: Signature | null,
    constraints: Constraints
  ): ExpressionRef {
    var declaration = expression.declaration.clone(); // generic contexts can have multiple
    assert(!declaration.typeParameters); // function expression cannot be generic
    var flow = this.currentFlow;
    var actualFunction = flow.actualFunction;
    var prototype = new FunctionPrototype(
      declaration.name.text.length
        ? declaration.name.text
        : "anonymous|" + (actualFunction.nextAnonymousId++).toString(),
      actualFunction,
      declaration,
      DecoratorFlags.NONE
    );
    var instance: Function | null;
    var contextualTypeArguments = uniqueMap(flow.contextualTypeArguments);

    // compile according to context. this differs from a normal function in that omitted parameter
    // and return types can be inferred and omitted arguments can be replaced with dummies.
    if (contextualSignature) {
      let signatureNode = prototype.functionTypeNode;
      let parameterNodes = signatureNode.parameters;
      let numPresentParameters = parameterNodes.length;

      // must not require more than the maximum number of parameters
      let parameterTypes = contextualSignature.parameterTypes;
      let numParameters = parameterTypes.length;
      if (numPresentParameters > numParameters) {
        this.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          expression.range, numParameters.toString(), numPresentParameters.toString()
        );
        return this.module.unreachable();
      }

      // check non-omitted parameter types
      for (let i = 0; i < numPresentParameters; ++i) {
        let parameterNode = parameterNodes[i];
        if (!isTypeOmitted(parameterNode.type)) {
          let resolvedType = this.resolver.resolveType(
            parameterNode.type,
            actualFunction.parent,
            contextualTypeArguments
          );
          if (!resolvedType) return this.module.unreachable();
          if (!parameterTypes[i].isStrictlyAssignableTo(resolvedType)) {
            this.error(
              DiagnosticCode.Type_0_is_not_assignable_to_type_1,
              parameterNode.range, parameterTypes[i].toString(), resolvedType.toString()
            );
            return this.module.unreachable();
          }
        }
        // any unused parameters are inherited but ignored
      }

      // check non-omitted return type
      let returnType = contextualSignature.returnType;
      if (!isTypeOmitted(signatureNode.returnType)) {
        let resolvedType = this.resolver.resolveType(
          signatureNode.returnType,
          actualFunction.parent,
          contextualTypeArguments
        );
        if (!resolvedType) return this.module.unreachable();
        if (
          returnType == Type.void
            ? resolvedType != Type.void
            : !resolvedType.isStrictlyAssignableTo(returnType)
        ) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            signatureNode.returnType.range, resolvedType.toString(), returnType.toString()
          );
          return this.module.unreachable();
        }
      }

      // check explicit this type
      let thisType = contextualSignature.thisType;
      let thisTypeNode = signatureNode.explicitThisType;
      if (thisTypeNode) {
        if (!thisType) {
          this.error(
            DiagnosticCode._this_cannot_be_referenced_in_current_location,
            thisTypeNode.range
          );
          return this.module.unreachable();
        }
        let resolvedType = this.resolver.resolveType(
          thisTypeNode,
          actualFunction.parent,
          contextualTypeArguments
        );
        if (!resolvedType) return this.module.unreachable();
        if (!thisType.isStrictlyAssignableTo(resolvedType)) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            thisTypeNode.range, thisType.toString(), resolvedType.toString()
          );
          return this.module.unreachable();
        }
      }

      let signature = new Signature(this.program, parameterTypes, returnType, thisType);
      signature.requiredParameters = numParameters; // !
      instance = new Function(
        prototype.name,
        prototype,
        null,
        signature,
        contextualTypeArguments
      );
      if (!this.compileFunction(instance)) return this.module.unreachable();
      this.currentType = contextualSignature.type;

    // otherwise compile like a normal function
    } else {
      instance = this.resolver.resolveFunction(prototype, null, contextualTypeArguments);
      if (!instance) return this.module.unreachable();
      this.compileFunction(instance);
      this.currentType = instance.signature.type;
    }

    var offset = this.ensureRuntimeFunction(instance); // reports
    return this.options.isWasm64
      ? this.module.i64(i64_low(offset), i64_high(offset))
      : this.module.i32(i64_low(offset));
  }

  /** Makes sure the enclosing source file of the specified expression has been compiled. */
  private maybeCompileEnclosingSource(expression: Expression): void {
    var internalPath = expression.range.source.internalPath;
    var filesByName = this.program.filesByName;
    assert(filesByName.has(internalPath));
    var enclosingFile = assert(filesByName.get(internalPath));
    if (!enclosingFile.is(CommonFlags.COMPILED)) {
      this.compileFileByPath(internalPath, expression);
    }
  }

  private compileIdentifierExpression(
    expression: IdentifierExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var actualFunction = flow.actualFunction;

    // check special keywords first
    switch (expression.kind) {
      case NodeKind.NULL: {
        let options = this.options;
        if (contextualType.isReference) {
          let classReference = contextualType.getClass();
          if (classReference) {
            this.currentType = classReference.type.asNullable();
            return options.isWasm64 ? module.i64(0) : module.i32(0);
          }
          let signatureReference = contextualType.getSignature();
          if (signatureReference) {
            this.currentType = signatureReference.type.asNullable();
            return options.isWasm64 ? module.i64(0) : module.i32(0);
          }
          return this.makeZero(contextualType, expression);
        }
        this.currentType = options.usizeType;
        this.warning(
          DiagnosticCode.Expression_resolves_to_unusual_type_0,
          expression.range, this.currentType.toString()
        );
        return options.isWasm64
          ? module.i64(0)
          : module.i32(0);
      }
      case NodeKind.TRUE: {
        this.currentType = Type.bool;
        return module.i32(1);
      }
      case NodeKind.FALSE: {
        this.currentType = Type.bool;
        return module.i32(0);
      }
      case NodeKind.THIS: {
        let thisType = actualFunction.signature.thisType;
        if (!thisType) {
          this.error(
            DiagnosticCode._this_cannot_be_referenced_in_current_location,
            expression.range
          );
          this.currentType = this.options.usizeType;
          return module.unreachable();
        }
        if (actualFunction.is(CommonFlags.CONSTRUCTOR) && !(constraints & Constraints.IS_THIS)) {
          let parent = actualFunction.parent;
          assert(parent.kind == ElementKind.CLASS);
          this.checkFieldInitialization(<Class>parent, expression);
        }
        let thisLocal = assert(flow.lookupLocal(CommonNames.this_));
        flow.set(FlowFlags.ACCESSES_THIS);
        this.currentType = thisType;
        return module.local_get(thisLocal.index, thisType.toNativeType());
      }
      case NodeKind.SUPER: {
        let flow = this.currentFlow;
        let actualFunction = flow.actualFunction;
        if (actualFunction.is(CommonFlags.CONSTRUCTOR)) {
          if (!flow.is(FlowFlags.CALLS_SUPER)) {
            // TS1034 in the parser effectively limits this to property accesses
            this.error(
              DiagnosticCode._super_must_be_called_before_accessing_a_property_of_super_in_the_constructor_of_a_derived_class,
              expression.range
            );
          }
        }
        if (flow.isInline) {
          let scopedThis = flow.lookupLocal(CommonNames.this_);
          if (scopedThis) {
            let scopedThisClass = assert(scopedThis.type.getClass());
            let base = scopedThisClass.base;
            if (base) {
              this.currentType = base.type;
              return module.local_get(scopedThis.index, base.type.toNativeType());
            }
          }
        }
        if (actualFunction.is(CommonFlags.INSTANCE)) {
          let parent = assert(actualFunction.parent);
          assert(parent.kind == ElementKind.CLASS);
          let classInstance = <Class>parent;
          let baseClassInstance = classInstance.base;
          if (baseClassInstance) {
            let superType = baseClassInstance.type;
            this.currentType = superType;
            return module.local_get(0, superType.toNativeType());
          }
        }
        this.error(
          DiagnosticCode._super_can_only_be_referenced_in_a_derived_class,
          expression.range
        );
        this.currentType = this.options.usizeType;
        return module.unreachable();
      }
    }

    this.maybeCompileEnclosingSource(expression);

    // otherwise resolve
    var currentParent = this.currentParent;
    if (!currentParent) currentParent = actualFunction;
    var target = this.resolver.lookupIdentifierExpression( // reports
      expression,
      flow,
      currentParent
    );
    if (!target) {
      // make a guess to avoid assertions in calling code
      if (this.currentType == Type.void) this.currentType = Type.i32;
      return module.unreachable();
    }

    switch (target.kind) {
      case ElementKind.LOCAL: {
        let local = <Local>target;
        let localType = local.type;
        assert(localType != Type.void);
        if (this.pendingElements.has(local)) {
          this.error(
            DiagnosticCode.Variable_0_used_before_its_declaration,
            expression.range,
            local.internalName
          );
          this.currentType = localType;
          return module.unreachable();
        }
        if (local.is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(local, contextualType, constraints);
        }
        let localIndex = local.index;
        assert(localIndex >= 0);
        if (localType.isNullableReference && flow.isLocalFlag(localIndex, LocalFlags.NONNULL, false)) {
          localType = localType.nonNullableType;
        }
        this.currentType = localType;

        if (target.parent != flow.parentFunction) {
          // TODO: closures
          this.error(
            DiagnosticCode.Not_implemented_0,
            expression.range,
            "Closures"
          );
          return module.unreachable();
        }
        return module.local_get(localIndex, localType.toNativeType());
      }
      case ElementKind.GLOBAL: {
        let global = <Global>target;
        if (!this.compileGlobal(global)) { // reports; not yet compiled if a static field
          return module.unreachable();
        }
        let globalType = global.type;
        if (this.pendingElements.has(global)) {
          this.error(
            DiagnosticCode.Variable_0_used_before_its_declaration,
            expression.range,
            global.internalName
          );
          this.currentType = globalType;
          return module.unreachable();
        }
        assert(globalType != Type.void);
        if (global.is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(global, contextualType, constraints);
        }
        this.currentType = globalType;
        return module.global_get(global.internalName, globalType.toNativeType());
      }
      case ElementKind.ENUMVALUE: { // here: if referenced from within the same enum
        let enumValue = <EnumValue>target;
        if (!target.is(CommonFlags.COMPILED)) {
          this.error(
            DiagnosticCode.A_member_initializer_in_a_enum_declaration_cannot_reference_members_declared_after_it_including_members_defined_in_other_enums,
            expression.range
          );
          this.currentType = Type.i32;
          return module.unreachable();
        }
        this.currentType = Type.i32;
        if (enumValue.is(CommonFlags.INLINED)) {
          assert(enumValue.constantValueKind == ConstantValueKind.INTEGER);
          return module.i32(i64_low(enumValue.constantIntegerValue));
        }
        return module.global_get(enumValue.internalName, NativeType.I32);
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        let functionPrototype = <FunctionPrototype>target;
        let typeParameterNodes = functionPrototype.typeParameterNodes;

        if (typeParameterNodes !== null && typeParameterNodes.length != 0) {
          this.error(
            DiagnosticCode.Expected_0_arguments_but_got_1,
            expression.range, typeParameterNodes.length.toString(), "0"
          );
          return module.unreachable();
        }

        let functionInstance = this.resolver.resolveFunction(
          functionPrototype,
          null,
          uniqueMap<string,Type>(flow.contextualTypeArguments)
        );
        if (!functionInstance || !this.compileFunction(functionInstance)) return module.unreachable();
        if (contextualType.isExternalReference) {
          this.currentType = Type.funcref;
          return module.ref_func(functionInstance.internalName);
        }
        let offset = this.ensureRuntimeFunction(functionInstance);
        this.currentType = functionInstance.signature.type;
        return this.options.isWasm64
          ? module.i64(i64_low(offset), i64_high(offset))
          : module.i32(i64_low(offset));
      }
    }
    assert(false);
    return this.module.unreachable();
  }

  private compileInstanceOfExpression(
    expression: InstanceOfExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var flow = this.currentFlow;
    var isType = expression.isType;

    // Mimic `instanceof CLASS`
    if (isType.kind == NodeKind.NAMEDTYPE) {
      let namedType = <NamedTypeNode>isType;
      if (!(namedType.isNullable || namedType.hasTypeArguments)) {
        let element = this.resolver.resolveTypeName(namedType.name, flow.actualFunction, ReportMode.SWALLOW);
        if (element !== null && element.kind == ElementKind.CLASS_PROTOTYPE) {
          let prototype = <ClassPrototype>element;
          if (prototype.is(CommonFlags.GENERIC)) {
            return this.makeInstanceofClass(expression, prototype);
          }
        }
      }
    }

    // Fall back to `instanceof TYPE`
    var expectedType = this.resolver.resolveType(
      expression.isType,
      flow.actualFunction,
      uniqueMap(flow.contextualTypeArguments)
    );
    if (!expectedType) {
      this.currentType = Type.bool;
      return this.module.unreachable();
    }
    return this.makeInstanceofType(expression, expectedType);
  }

  private makeInstanceofType(expression: InstanceOfExpression, expectedType: Type): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var expr = this.compileExpression(expression.expression, expectedType);
    var actualType = this.currentType;
    this.currentType = Type.bool;

    // instanceof <value> - must be exact
    if (expectedType.isValue) {
      return module.maybeDropCondition(expr, module.i32(actualType == expectedType ? 1 : 0));
    }

    // <value> instanceof <nonValue> - always false
    if (actualType.isValue) {
      return module.maybeDropCondition(expr, module.i32(0));
    }

    // both LHS and RHS are references now
    var nativeSizeType = actualType.toNativeType();

    // <nullable> instanceof <nonNullable> - LHS must be != 0
    if (actualType.isNullableReference && !expectedType.isNullableReference) {

      // downcast - check statically
      if (actualType.nonNullableType.isAssignableTo(expectedType)) {
        return module.binary(
          nativeSizeType == NativeType.I64
            ? BinaryOp.NeI64
            : BinaryOp.NeI32,
          expr,
          this.makeZero(actualType, expression.expression)
        );
      }

      // upcast - check dynamically
      if (expectedType.isAssignableTo(actualType)) {
        let program = this.program;
        if (!(actualType.isUnmanaged || expectedType.isUnmanaged)) {
          let temp = flow.getTempLocal(actualType);
          let instanceofInstance = assert(program.instanceofInstance);
          this.compileFunction(instanceofInstance);
          let ret = module.if(
            module.unary(
              nativeSizeType == NativeType.I64
                ? UnaryOp.EqzI64
                : UnaryOp.EqzI32,
              module.local_tee(temp.index, expr),
            ),
            module.i32(0),
            this.makeCallDirect(instanceofInstance, [
              module.local_get(temp.index, nativeSizeType),
              module.i32(expectedType.classReference!.id)
            ], expression)
          );
          flow.freeTempLocal(temp);
          if (this.options.pedantic) {
            this.pedantic(
              DiagnosticCode.Expression_compiles_to_a_dynamic_check_at_runtime,
              expression.range
            );
          }
          return ret;
        } else {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, "instanceof", actualType.toString(), expectedType.toString()
          );
        }
      }

    // either none or both nullable
    } else {

      // downcast - check statically
      if (actualType.isAssignableTo(expectedType)) {
        return module.maybeDropCondition(expr, module.i32(1));

      // upcast - check dynamically
      } else if (expectedType.isAssignableTo(actualType)) {
        let program = this.program;
        if (!(actualType.isUnmanaged || expectedType.isUnmanaged)) {
          // FIXME: the temp local and the if can be removed here once flows
          // perform null checking, which would error earlier when checking
          // uninitialized (thus zero) `var a: A` to be an instance of something.
          let temp = flow.getTempLocal(actualType);
          let instanceofInstance = assert(program.instanceofInstance);
          this.compileFunction(instanceofInstance);
          let ret = module.if(
            module.unary(
              nativeSizeType == NativeType.I64
                ? UnaryOp.EqzI64
                : UnaryOp.EqzI32,
              module.local_tee(temp.index, expr),
            ),
            module.i32(0),
            this.makeCallDirect(instanceofInstance, [
              module.local_get(temp.index, nativeSizeType),
              module.i32(expectedType.classReference!.id)
            ], expression)
          );
          flow.freeTempLocal(temp);
          return ret;
        } else {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, "instanceof", actualType.toString(), expectedType.toString()
          );
        }
      }
    }

    // false
    return module.maybeDropCondition(expr, module.i32(0));
  }

  private makeInstanceofClass(expression: InstanceOfExpression, prototype: ClassPrototype): ExpressionRef {
    var module = this.module;
    var expr = this.compileExpression(expression.expression, Type.auto);
    var actualType = this.currentType;
    var nativeSizeType = actualType.toNativeType();

    this.currentType = Type.bool;

    // exclusively interested in class references here
    var classReference = actualType.getClass();
    if (classReference) {

      // static check
      if (classReference.extends(prototype)) {

        // <nullable> instanceof <PROTOTYPE> - LHS must be != 0
        if (actualType.isNullableReference) {
          return module.binary(
            nativeSizeType == NativeType.I64
              ? BinaryOp.NeI64
              : BinaryOp.NeI32,
            expr,
            this.makeZero(actualType, expression.expression)
          );

        // <nonNullable> is just `true`
        } else {
          return module.maybeDropCondition(expr, module.i32(1));
        }

      // dynamic check against all possible concrete ids
      } else if (prototype.extends(classReference.prototype)) {
        this.pendingClassInstanceOf.add(prototype);
        return module.call(prototype.internalName + "~instanceof", [ expr ], NativeType.I32);
      }
    }

    // false
    return module.maybeDropCondition(expr, module.i32(0));
  }

  private compileLiteralExpression(
    expression: LiteralExpression,
    contextualType: Type,
    constraints: Constraints,
    implicitlyNegate: bool = false
  ): ExpressionRef {
    var module = this.module;
    switch (expression.literalKind) {
      case LiteralKind.ARRAY: {
        assert(!implicitlyNegate);
        return this.compileArrayLiteral(
          <ArrayLiteralExpression>expression,
          contextualType,
          constraints
        );
      }
      case LiteralKind.FLOAT: {
        let floatValue = (<FloatLiteralExpression>expression).value;
        if (implicitlyNegate) {
          floatValue = -floatValue;
        }
        if (contextualType == Type.f32) {
          return module.f32(<f32>floatValue);
        }
        this.currentType = Type.f64;
        return module.f64(floatValue);
      }
      case LiteralKind.INTEGER: {
        let intValue = (<IntegerLiteralExpression>expression).value;
        if (implicitlyNegate) {
          intValue = i64_sub(
            i64_new(0),
            intValue
          );
        }
        let type = this.resolver.determineIntegerLiteralType(intValue, contextualType);
        this.currentType = type;
        switch (type.kind) {
          case TypeKind.ISIZE: if (!this.options.isWasm64) return module.i32(i64_low(intValue));
          case TypeKind.I64: return module.i64(i64_low(intValue), i64_high(intValue));
          case TypeKind.USIZE: if (!this.options.isWasm64) return module.i32(i64_low(intValue));
          case TypeKind.U64: return module.i64(i64_low(intValue), i64_high(intValue));
          case TypeKind.F32: return module.f32(i64_to_f32(intValue));
          case TypeKind.F64: return module.f64(i64_to_f64(intValue));
          default: return module.i32(i64_low(intValue));
        }
      }
      case LiteralKind.STRING: {
        assert(!implicitlyNegate);
        return this.compileStringLiteral(<StringLiteralExpression>expression, constraints);
      }
      case LiteralKind.OBJECT: {
        assert(!implicitlyNegate);
        return this.compileObjectLiteral(<ObjectLiteralExpression>expression, contextualType);
      }
      case LiteralKind.REGEXP: {
        this.error(
          DiagnosticCode.Not_implemented_0,
          expression.range,
          "Regular expressions"
        );
        this.currentType = contextualType;
        return module.unreachable();
      }
    }
    assert(false);
    return module.unreachable();
  }

  private compileStringLiteral(
    expression: StringLiteralExpression,
    constraints: Constraints
  ): ExpressionRef {
    var expr = this.ensureStaticString(expression.value);
    if (constraints & Constraints.WILL_RETAIN) {
      this.skippedAutoreleases.add(expr);
    } else {
      // not necessary since this is static data anyway
      // expr = this.makeAutorelease(expr, this.currentType);
    }
    return expr;
  }

  private compileArrayLiteral(
    expression: ArrayLiteralExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var program = this.program;

    // handle static arrays
    let contextualClass = contextualType.getClass();
    if (contextualClass !== null && contextualClass.extends(program.staticArrayPrototype)) {
      return this.compileStaticArrayLiteral(expression, contextualType, constraints);
    }

    // handle normal arrays
    var element = this.resolver.lookupExpression(expression, flow, this.currentType);
    if (!element) return module.unreachable();
    assert(element.kind == ElementKind.CLASS);
    var arrayInstance = <Class>element;
    var arrayType = arrayInstance.type;
    var elementType = arrayInstance.getTypeArgumentsTo(program.arrayPrototype)![0];
    var arrayBufferInstance = assert(program.arrayBufferInstance);

    // block those here so compiling expressions doesn't conflict
    var tempThis = flow.getTempLocal(this.options.usizeType);
    var tempDataStart = flow.getTempLocal(arrayBufferInstance.type);

    // compile value expressions and find out whether all are constant
    var expressions = expression.elementExpressions;
    var length = expressions.length;
    var values = new Array<ExpressionRef>(length);
    var isStatic = !elementType.isExternalReference;
    var nativeElementType = elementType.toNativeType();
    for (let i = 0; i < length; ++i) {
      let elementExpression = expressions[i];
      if (elementExpression.kind != NodeKind.OMITTED) {
        let expr = this.compileExpression(<Expression>elementExpression, elementType,
          Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN
        );
        let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
        if (precomp) {
          expr = precomp;
        } else {
          isStatic = false;
        }
        values[i] = expr;
      } else {
        values[i] = this.makeZero(elementType, elementExpression);
      }
    }

    // if the array is static, make a static arraybuffer segment
    if (isStatic) {
      flow.freeTempLocal(tempThis);
      flow.freeTempLocal(tempDataStart);

      let totalOverhead = program.totalOverhead;
      let bufferSegment = this.addStaticBuffer(elementType, values);
      let bufferAddress = i64_add(bufferSegment.offset, i64_new(totalOverhead));

      // make both the buffer and array header static if assigned to a global. this can't be done
      // if inside of a function because each invocation must create a new array reference then.
      if (constraints & Constraints.PREFER_STATIC) {
        let arraySegment = this.addStaticArrayHeader(elementType, bufferSegment);
        let arrayAddress = i64_add(arraySegment.offset, i64_new(totalOverhead));
        this.currentType = arrayType;
        return program.options.isWasm64
          ? this.module.i64(i64_low(arrayAddress), i64_high(arrayAddress))
          : this.module.i32(i64_low(arrayAddress));

      // otherwise allocate a new array header and make it wrap a copy of the static buffer
      } else {
        // __newArray(length, alignLog2, classId, staticBuffer)
        let expr = this.makeCallDirect(program.newArrayInstance, [
          module.i32(length),
          program.options.isWasm64
            ? module.i64(elementType.alignLog2)
            : module.i32(elementType.alignLog2),
          module.i32(arrayInstance.id),
          program.options.isWasm64
            ? module.i64(i64_low(bufferAddress), i64_high(bufferAddress))
            : module.i32(i64_low(bufferAddress))
        ], expression);
        this.currentType = arrayType;
        expr = this.makeRetain(expr, arrayType);
        if (arrayType.isManaged) {
          if (!(constraints & Constraints.WILL_RETAIN)) {
            expr = this.makeAutorelease(expr, arrayType);
          } else {
            this.skippedAutoreleases.add(expr);
          }
        }
        return expr;
      }
    }

    // otherwise compile an explicit instantiation with indexed sets
    var setter = arrayInstance.lookupOverload(OperatorKind.INDEXED_SET, true);
    if (!setter) {
      flow.freeTempLocal(tempThis);
      flow.freeTempLocal(tempDataStart);
      this.error(
        DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
        expression.range, arrayInstance.internalName
      );
      this.currentType = arrayType;
      return module.unreachable();
    }
    var nativeArrayType = arrayType.toNativeType();

    var stmts = new Array<ExpressionRef>();
    // tempThis = __newArray(length, alignLog2, classId, source = 0)
    stmts.push(
      module.local_set(tempThis.index,
        this.makeRetain(
          this.makeCallDirect(program.newArrayInstance, [
            module.i32(length),
            program.options.isWasm64
              ? module.i64(elementType.alignLog2)
              : module.i32(elementType.alignLog2),
            module.i32(arrayInstance.id),
            program.options.isWasm64
              ? module.i64(0)
              : module.i32(0)
          ], expression),
          arrayType
        )
      )
    );
    // tempData = tempThis.dataStart
    var dataStartMember = assert(arrayInstance.lookupInSelf("dataStart"));
    assert(dataStartMember.kind == ElementKind.FIELD);
    stmts.push(
      module.local_set(tempDataStart.index,
        module.load(arrayType.byteSize, false,
          module.local_get(tempThis.index, nativeArrayType),
          nativeArrayType,
          (<Field>dataStartMember).memoryOffset
        )
      )
    );
    var isManaged = elementType.isManaged;
    for (let i = 0, alignLog2 = elementType.alignLog2; i < length; ++i) {
      let valueExpr = values[i];
      if (isManaged) {
        // value = __retain(value)
        if (!this.skippedAutoreleases.has(valueExpr)) {
          valueExpr = this.makeRetain(valueExpr, elementType);
        }
      }
      // store<T>(tempData, value, immOffset)
      stmts.push(
        module.store(elementType.byteSize,
          module.local_get(tempDataStart.index, nativeArrayType),
          valueExpr,
          nativeElementType,
          i << alignLog2
        )
      );
    }
    // -> tempThis
    stmts.push(
      module.local_get(tempThis.index, nativeArrayType)
    );
    flow.freeTempLocal(tempThis);
    flow.freeTempLocal(tempDataStart);
    this.currentType = arrayType;
    var expr = module.flatten(stmts, nativeArrayType);
    if (arrayType.isManaged) {
      if (constraints & Constraints.WILL_RETAIN) {
        this.skippedAutoreleases.add(expr);
      } else {
        expr = this.makeAutorelease(expr, arrayType, this.currentFlow);
      }
    }
    return expr;
  }

  /** Compiles a special `fixed` array literal. */
  private compileStaticArrayLiteral(
    expression: ArrayLiteralExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var program = this.program;

    // make sure this method is only called with a valid contextualType
    var arrayInstance = assert(contextualType.getClass());
    var arrayType = arrayInstance.type;
    var typeArguments = assert(arrayInstance.getTypeArgumentsTo(program.staticArrayPrototype));
    var elementType = typeArguments[0];

    // block those here so compiling expressions doesn't conflict
    var tempThis = flow.getTempLocal(this.options.usizeType);

    // compile value expressions and check if all are compile-time constants
    var expressions = expression.elementExpressions;
    var length = expressions.length;
    var values = new Array<ExpressionRef>(length);
    var nativeElementType = elementType.toNativeType();
    var isStatic = !elementType.isExternalReference;
    for (let i = 0; i < length; ++i) {
      let elementExpression = expressions[i];
      if (elementExpression.kind != NodeKind.OMITTED) {
        let expr = this.compileExpression(elementExpression, elementType,
          Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN
        );
        let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
        if (precomp) {
          expr = precomp;
        } else {
          isStatic = false;
        }
        values[i] = expr;
      } else {
        values[i] = this.makeZero(elementType, elementExpression);
      }
    }

    var isWasm64 = this.options.isWasm64;
    var bufferSize = values.length << elementType.alignLog2;

    // if the array is static, make a static arraybuffer segment
    if (isStatic) {
      flow.freeTempLocal(tempThis);

      let bufferSegment = this.addStaticBuffer(elementType, values, arrayInstance.id);
      let bufferAddress = i64_add(bufferSegment.offset, i64_new(program.totalOverhead));

      // return the static buffer directly if assigned to a global
      if (constraints & Constraints.PREFER_STATIC) {
        let expr = this.options.isWasm64
          ? module.i64(i64_low(bufferAddress), i64_high(bufferAddress))
          : module.i32(i64_low(bufferAddress));
        if (constraints & Constraints.WILL_RETAIN) {
          this.skippedAutoreleases.add(expr);
        } else {
          // not necessary since this is static data anyway
          // expr = this.makeAutorelease(expr, arrayType, flow);
        }
        this.currentType = arrayType;
        return expr;

      // otherwise allocate a new chunk of memory and return a copy of the buffer
      } else {
        // __newBuffer(bufferSize, id, buffer)
        let expr = this.makeRetain(
          this.makeCallDirect(program.newBufferInstance, [
            isWasm64
              ? module.i64(bufferSize)
              : module.i32(bufferSize),
            module.i32(arrayInstance.id),
            isWasm64
              ? module.i64(i64_low(bufferAddress), i64_high(bufferAddress))
              : module.i32(i64_low(bufferAddress))
          ], expression),
          program.arrayBufferInstance.type
        );
        if (arrayType.isManaged) {
          if (constraints & Constraints.WILL_RETAIN) {
            this.skippedAutoreleases.add(expr);
          } else {
            expr = this.makeAutorelease(expr, arrayType);
          }
        }
        this.currentType = arrayType;
        return expr;
      }
    }

    // otherwise compile an explicit instantiation with indexed sets
    var setter = arrayInstance.lookupOverload(OperatorKind.INDEXED_SET, true);
    if (!setter) {
      flow.freeTempLocal(tempThis);
      this.error(
        DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
        expression.range, arrayInstance.internalName
      );
      this.currentType = arrayType;
      return module.unreachable();
    }
    var nativeArrayType = arrayType.toNativeType();

    var stmts = new Array<ExpressionRef>();
    // tempThis = __newBuffer(bufferSize, classId)
    stmts.push(
      module.local_set(tempThis.index,
        this.makeRetain(
          this.makeCallDirect(program.newBufferInstance, [
            isWasm64
              ? module.i64(bufferSize)
              : module.i32(bufferSize),
            module.i32(arrayInstance.id)
          ], expression),
          program.arrayBufferInstance.type
        )
      )
    );
    var isManaged = elementType.isManaged;
    for (let i = 0, alignLog2 = elementType.alignLog2; i < length; ++i) {
      let valueExpr = values[i];
      if (isManaged) {
        // value = __retain(value)
        if (!this.skippedAutoreleases.has(valueExpr)) {
          valueExpr = this.makeRetain(valueExpr, elementType);
        }
      }
      // store<T>(tempThis, value, immOffset)
      stmts.push(
        module.store(elementType.byteSize,
          module.local_get(tempThis.index, nativeArrayType),
          valueExpr,
          nativeElementType,
          i << alignLog2
        )
      );
    }
    // -> tempThis
    stmts.push(
      module.local_get(tempThis.index, nativeArrayType)
    );
    flow.freeTempLocal(tempThis);
    this.currentType = arrayType;
    var expr = module.flatten(stmts, nativeArrayType);
    if (arrayType.isManaged) {
      if (constraints & Constraints.WILL_RETAIN) {
        this.skippedAutoreleases.add(expr);
      } else {
        expr = this.makeAutorelease(expr, arrayType, this.currentFlow);
      }
    }
    return expr;
  }

  private compileObjectLiteral(expression: ObjectLiteralExpression, contextualType: Type): ExpressionRef {
    var module = this.module;

    // Check that contextual type is a class (TODO: hidden class for interfaces?)
    var classReference = contextualType.getClass();
    if (!classReference) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        expression.range, "<object>", contextualType.toString()
      );
      return module.unreachable();
    }
    var classType = classReference.type;
    this.currentType = classType.nonNullableType;
    if (classReference.is(CommonFlags.ABSTRACT)) {
      this.error(
        DiagnosticCode.Cannot_create_an_instance_of_an_abstract_class,
        expression.range
      );
      return module.unreachable();
    }

    // Check that the class is compatible with object literals
    var ctorPrototype = classReference.prototype.constructorPrototype;
    if (ctorPrototype) {
      this.errorRelated(
        DiagnosticCode.Class_0_cannot_declare_a_constructor_when_instantiated_from_an_object_literal,
        expression.range, ctorPrototype.identifierNode.range, classType.toString()
      );
      return module.unreachable();
    }

    var isManaged = classType.isManaged;
    if (!isManaged) {
      this.checkUnsafe(expression, findDecorator(DecoratorKind.UNMANAGED, classReference.decoratorNodes));
    }

    // check and compile field values
    var names = expression.names;
    var numNames = names.length;
    var values = expression.values;
    var members = classReference.members;
    var hasErrors = false;
    var exprs = new Array<ExpressionRef>();
    var flow = this.currentFlow;
    var tempLocal = isManaged
      ? flow.getAutoreleaseLocal(classType)
      : flow.getTempLocal(classType);
    var nativeClassType = classType.toNativeType();
    assert(numNames == values.length);

    // Assume all class fields will be omitted, and add them to our omitted list
    var omittedFields = new Set<Field>();
    if (members) {
      for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
        let memberKey = _keys[i];
        let member = assert(members.get(memberKey));
        if (member !== null && member.kind == ElementKind.FIELD) {
          omittedFields.add(<Field>member); // incl. private/protected
        }
      }
    }

    // Iterate through the members defined in our expression
    for (let i = 0; i < numNames; ++i) {
      let memberName = names[i].text;
      let member: DeclaredElement;
      if (!members || !members.has(memberName) || (member = assert(members.get(memberName))).kind != ElementKind.FIELD) {
        this.error(
          DiagnosticCode.Property_0_does_not_exist_on_type_1,
          names[i].range, memberName, classType.toString()
        );
        hasErrors = true;
        continue;
      }
      if (member.is(CommonFlags.PRIVATE)) {
        this.error(
          DiagnosticCode.Property_0_is_private_and_only_accessible_within_class_1,
          names[i].range, memberName, classType.toString()
        );
        hasErrors = true;
        continue;
      }
      if (member.is(CommonFlags.PROTECTED)) {
        this.error(
          DiagnosticCode.Property_0_is_protected_and_only_accessible_within_class_1_and_its_subclasses,
          names[i].range, memberName, classType.toString()
        );
        hasErrors = true;
        continue;
      }
      let fieldInstance = <Field>member;
      let fieldType = fieldInstance.type;

      let expr = this.compileExpression(values[i], fieldType, Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN);
      if (fieldType.isManaged && !this.skippedAutoreleases.has(expr)) {
        expr = this.makeRetain(expr, fieldType);
      }
      exprs.push(
        module.store( // TODO: handle setters as well
          fieldType.byteSize,
          module.local_get(tempLocal.index, nativeClassType),
          expr,
          fieldType.toNativeType(),
          fieldInstance.memoryOffset
        )
      );

      // This member is no longer omitted, so delete from our omitted fields
      omittedFields.delete(fieldInstance);
    }
    this.currentType = classType.nonNullableType;
    if (hasErrors) return module.unreachable();

    // Check remaining omitted fields
    for (let _values = Set_values(omittedFields), j = 0, l = _values.length; j < l; ++j) {
      let fieldInstance = _values[j];
      let fieldType = fieldInstance.type;

      if (fieldInstance.initializerNode) {
        continue; // set by generated ctor
      }

      if (fieldType.isReference) {
        if (!fieldType.isNullableReference) {
          this.error(
            DiagnosticCode.Property_0_is_missing_in_type_1_but_required_in_type_2,
            expression.range, fieldInstance.name, "<object>", classType.toString()
          );
          hasErrors = true;
          continue;
        }
      }

      switch (fieldType.kind) {
        // Number Types (and Number alias types)
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32:
        case TypeKind.I64:
        case TypeKind.ISIZE:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.USIZE:
        case TypeKind.BOOL:
        case TypeKind.F32:
        case TypeKind.F64: {
          exprs.push(
            module.store( // TODO: handle setters as well
              fieldType.byteSize,
              module.local_get(tempLocal.index, nativeClassType),
              this.makeZero(fieldType, expression),
              fieldType.toNativeType(),
              fieldInstance.memoryOffset
            )
          );
          continue;
        }
      }

      // Otherwise error
      this.error(
        DiagnosticCode.Property_0_is_missing_in_type_1_but_required_in_type_2,
        expression.range, fieldInstance.name, "<object>", classType.toString()
      );
      hasErrors = true;
    }
    if (hasErrors) return module.unreachable();

    // generate the default constructor
    var ctor = this.ensureConstructor(classReference, expression);
    // note that this is not checking field initialization within the ctor, but
    // instead checks conditions above with provided fields taken into account.

    // allocate a new instance first and assign 'this' to the temp. local
    exprs.unshift(
      module.local_set(tempLocal.index,
        this.compileInstantiate(ctor, [], Constraints.WILL_RETAIN, expression)
      )
    );

    // once all field values have been set, return 'this'
    exprs.push(
      module.local_get(tempLocal.index, nativeClassType)
    );

    if (!isManaged) flow.freeTempLocal(tempLocal);
    this.currentType = classType.nonNullableType;
    return module.flatten(exprs, nativeClassType);
  }

  private compileNewExpression(
    expression: NewExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;

    // obtain the class being instantiated
    var target = this.resolver.resolveTypeName(expression.typeName, flow.actualFunction);
    if (!target) return module.unreachable();
    if (target.kind != ElementKind.CLASS_PROTOTYPE) {
      this.error(
        DiagnosticCode.This_expression_is_not_constructable,
        expression.typeName.range
      );
      return this.module.unreachable();
    }
    if (target.is(CommonFlags.ABSTRACT)) {
      this.error(
        DiagnosticCode.Cannot_create_an_instance_of_an_abstract_class,
        expression.typeName.range
      );
      return this.module.unreachable();
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
      classInstance = this.resolver.resolveClass(
        classPrototype,
        classReference.typeArguments,
        uniqueMap<string,Type>(flow.contextualTypeArguments)
      );
    } else {
      classInstance = this.resolver.resolveClassInclTypeArguments(
        classPrototype,
        typeArguments,
        flow.actualFunction.parent, // relative to caller
        uniqueMap<string,Type>(flow.contextualTypeArguments),
        expression
      );
    }
    if (!classInstance) return module.unreachable();
    if (contextualType == Type.void) constraints |= Constraints.WILL_DROP;
    var ctor = this.ensureConstructor(classInstance, expression);
    if (!ctor.hasDecorator(DecoratorFlags.INLINE)) {
      // Inlined ctors haven't been compiled yet and are checked upon inline
      // compilation of their body instead.
      this.checkFieldInitialization(classInstance, expression);
    }
    return this.compileInstantiate(ctor, expression.args, constraints, expression);
  }

  /** Gets the compiled constructor of the specified class or generates one if none is present. */
  ensureConstructor(
    /** Class wanting a constructor. */
    classInstance: Class,
    /** Report node. */
    reportNode: Node
  ): Function {
    var instance = classInstance.constructorInstance;
    if (instance) {
      // shortcut if already compiled
      if (instance.is(CommonFlags.COMPILED)) return instance;
      // do not attempt to compile if inlined anyway
      if (!instance.hasDecorator(DecoratorFlags.INLINE)) this.compileFunction(instance);
    } else {
      // clone base constructor if a derived class. note that we cannot just
      // call the base ctor since the derived class may have additional fields.
      let baseClass = classInstance.base;
      let contextualTypeArguments = uniqueMap(classInstance.contextualTypeArguments);
      if (baseClass) {
        let baseCtor = this.ensureConstructor(baseClass, reportNode);
        this.checkFieldInitialization(baseClass, reportNode);
        instance = new Function(
          CommonNames.constructor,
          new FunctionPrototype(
            CommonNames.constructor,
            classInstance,
            // declaration is important, i.e. to access optional parameter initializers
            (<FunctionDeclaration>baseCtor.declaration).clone()
          ),
          null,
          baseCtor.signature,
          contextualTypeArguments
        );

      // otherwise make a default constructor
      } else {
        instance = new Function(
          CommonNames.constructor,
          new FunctionPrototype(
            CommonNames.constructor,
            classInstance, // bound
            this.program.makeNativeFunctionDeclaration(CommonNames.constructor,
              CommonFlags.INSTANCE | CommonFlags.CONSTRUCTOR
            )
          ),
          null,
          new Signature(this.program, null, classInstance.type, classInstance.type),
          contextualTypeArguments
        );
      }

      instance.set(CommonFlags.COMPILED);
      instance.prototype.setResolvedInstance("", instance);
      if (classInstance.is(CommonFlags.MODULE_EXPORT)) {
        instance.set(CommonFlags.MODULE_EXPORT);
      }
      classInstance.constructorInstance = instance;
      let members = classInstance.members;
      if (!members) classInstance.members = members = new Map();
      members.set("constructor", instance.prototype);

      let previousFlow = this.currentFlow;
      let flow = instance.flow;
      this.currentFlow = flow;

      // generate body
      let signature = instance.signature;
      let module = this.module;
      let nativeSizeType = this.options.nativeSizeType;
      let stmts = new Array<ExpressionRef>();

      // {
      //   if (!this) this = <ALLOC>
      //   IF_DERIVED: this = super(this, ...args)
      //   this.a = X
      //   this.b = Y
      //   return this
      // }
      let allocExpr = this.makeAllocation(classInstance);
      let classType = classInstance.type;
      if (classType.isManaged) allocExpr = this.makeRetain(allocExpr, classType);
      stmts.push(
        module.if(
          module.unary(nativeSizeType == NativeType.I64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
            module.local_get(0, nativeSizeType)
          ),
          module.local_set(0, allocExpr)
        )
      );
      if (baseClass) {
        let parameterTypes = signature.parameterTypes;
        let numParameters = parameterTypes.length;
        let operands = new Array<ExpressionRef>(1 + numParameters);
        operands[0] = module.local_get(0, nativeSizeType);
        for (let i = 1; i <= numParameters; ++i) {
          operands[i] = module.local_get(i, parameterTypes[i - 1].toNativeType());
        }
        stmts.push(
          module.local_set(0,
            this.makeCallDirect(assert(baseClass.constructorInstance), operands, reportNode, false, true)
          )
        );
      }
      this.makeFieldInitializationInConstructor(classInstance, stmts);
      let body = this.performAutoreleasesWithValue(flow, module.local_get(0, nativeSizeType), classInstance.type, stmts);
      flow.freeScopedLocals();
      this.currentFlow = previousFlow;

      // make the function
      let locals = instance.localsByIndex;
      let varTypes = new Array<NativeType>(); // of temp. vars added while compiling initializers
      let numOperands = 1 + signature.parameterTypes.length;
      let numLocals = locals.length;
      if (numLocals > numOperands) {
        for (let i = numOperands; i < numLocals; ++i) varTypes.push(locals[i].type.toNativeType());
      }
      let funcRef = module.addFunction(instance.internalName, signature.nativeParams, signature.nativeResults, varTypes, body);
      instance.finalize(module, funcRef);
    }

    return instance;
  }

  /** Checks that all class fields have been initialized. */
  checkFieldInitialization(classInstance: Class, relatedNode: Node | null = null): void {
    if (classInstance.didCheckFieldInitialization) return;
    classInstance.didCheckFieldInitialization = true;
    var ctor = assert(classInstance.constructorInstance);
    this.checkFieldInitializationInFlow(classInstance, ctor.flow, relatedNode);
  }

  /** Checks that all class fields have been initialized in the specified flow. */
  checkFieldInitializationInFlow(classInstance: Class, flow: Flow, relatedNode: Node | null = null): void {
    var members = classInstance.members;
    if (members) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let element = _values[i];
        if (element.kind == ElementKind.FIELD && element.parent == classInstance) {
          let field = <Field>element;
          if (!field.initializerNode && !flow.isThisFieldFlag(field, FieldFlags.INITIALIZED)) {
            if (!field.is(CommonFlags.DEFINITELY_ASSIGNED)) {
              if (relatedNode) {
                this.errorRelated(
                  DiagnosticCode.Property_0_has_no_initializer_and_is_not_assigned_in_the_constructor_before_this_is_used_or_returned,
                  field.declaration.name.range,
                  relatedNode.range,
                  field.internalName
                );
              } else {
                this.error(
                  DiagnosticCode.Property_0_has_no_initializer_and_is_not_assigned_in_the_constructor_before_this_is_used_or_returned,
                  field.declaration.name.range,
                  field.internalName
                );
              }
            }
          } else if (field.is(CommonFlags.DEFINITELY_ASSIGNED)) {
            if (field.type.isReference) {
              this.warning( // involves a runtime check
                DiagnosticCode.Property_0_is_always_assigned_before_being_used,
                field.identifierNode.range,
                field.internalName
              );
            } else {
              this.pedantic( // is a nop anyway
                DiagnosticCode.Unnecessary_definite_assignment,
                field.identifierNode.range
              );
            }
          }
        }
      }
    }
  }

  compileInstantiate(
    /** Constructor to call. */
    ctorInstance: Function,
    /** Constructor arguments. */
    argumentExpressions: Expression[],
    /** Contextual flags. */
    constraints: Constraints,
    /** Node to report on. */
    reportNode: Node
  ): ExpressionRef {
    assert(ctorInstance.is(CommonFlags.CONSTRUCTOR));
    var parent = ctorInstance.parent;
    assert(parent.kind == ElementKind.CLASS);
    var classInstance = <Class>parent;
    if (classInstance.type.isUnmanaged || ctorInstance.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(reportNode);
    var expr = this.compileCallDirect( // no need for another autoreleased local
      ctorInstance,
      argumentExpressions,
      reportNode,
      this.makeZero(this.options.usizeType, reportNode),
      constraints
    );
    if (getExpressionType(expr) != NativeType.None) { // possibly WILL_DROP
      this.currentType = classInstance.type; // important because a super ctor could be called
    }
    return expr;
  }

  private compilePropertyAccessExpression(
    expression: PropertyAccessExpression,
    ctxType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;

    this.maybeCompileEnclosingSource(expression);

    var resolver = this.resolver;
    var target = resolver.lookupExpression(expression, flow, ctxType); // reports
    if (!target) return module.unreachable();
    var thisExpression = resolver.currentThisExpression;
    if (target.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);

    switch (target.kind) {
      case ElementKind.GLOBAL: { // static field
        let global = <Global>target;
        if (!this.compileGlobal(global)) return module.unreachable(); // reports
        let globalType = global.type;
        assert(globalType != Type.void);
        if (this.pendingElements.has(global)) {
          this.error(
            DiagnosticCode.Variable_0_used_before_its_declaration,
            expression.range,
            global.internalName
          );
          this.currentType = globalType;
          return module.unreachable();
        }
        if (global.is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(global, ctxType, constraints);
        }
        this.currentType = globalType;
        return module.global_get(global.internalName, globalType.toNativeType());
      }
      case ElementKind.ENUMVALUE: { // enum value
        let enumValue = <EnumValue>target;
        let parent = assert(enumValue.parent);
        assert(parent.kind == ElementKind.ENUM);
        let parentEnum = <Enum>parent;
        if (!this.compileEnum(parentEnum)) {
          this.currentType = Type.i32;
          return this.module.unreachable();
        }
        this.currentType = Type.i32;
        if (enumValue.is(CommonFlags.INLINED)) {
          assert(enumValue.constantValueKind == ConstantValueKind.INTEGER);
          return this.compileInlineConstant(enumValue, ctxType, constraints);
        }
        assert(enumValue.type == Type.i32);
        return module.global_get(enumValue.internalName, NativeType.I32);
      }
      case ElementKind.FIELD: {
        let fieldInstance = <Field>target;
        let fieldType = fieldInstance.type;
        assert(fieldInstance.memoryOffset >= 0);
        let fieldParent = fieldInstance.parent;
        assert(fieldParent.kind == ElementKind.CLASS);
        thisExpression = assert(thisExpression);
        let thisExpr = this.compileExpression(
          thisExpression,
          (<Class>fieldParent).type,
          Constraints.CONV_IMPLICIT | Constraints.IS_THIS
        );
        let thisType = this.currentType;
        if (
          flow.actualFunction.is(CommonFlags.CONSTRUCTOR) &&
          thisExpression.kind == NodeKind.THIS &&
          !flow.isThisFieldFlag(fieldInstance, FieldFlags.INITIALIZED) &&
          !fieldInstance.is(CommonFlags.DEFINITELY_ASSIGNED)
        ) {
          this.errorRelated(
            DiagnosticCode.Property_0_is_used_before_being_assigned,
            expression.range,
            fieldInstance.identifierNode.range,
            fieldInstance.internalName
          );
        }
        if (thisType.isNullableReference) {
          if (!flow.isNonnull(thisExpr, thisType)) {
            this.error(
              DiagnosticCode.Object_is_possibly_null,
              thisExpression.range
            );
          }
        }
        if (!fieldInstance.is(CommonFlags.COMPILED)) {
          fieldInstance.set(CommonFlags.COMPILED);
          let typeNode = fieldInstance.typeNode;
          if (typeNode) this.checkTypeSupported(fieldInstance.type, typeNode);
        }
        this.currentType = fieldType;
        let ret = module.load(
          fieldType.byteSize,
          fieldType.isSignedIntegerValue,
          thisExpr,
          fieldType.toNativeType(),
          fieldInstance.memoryOffset
        );
        if (fieldInstance.is(CommonFlags.DEFINITELY_ASSIGNED) && fieldType.isReference && !fieldType.isNullableReference) {
          ret = this.makeRuntimeNonNullCheck(ret, fieldType, expression);
        }
        return ret;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let propertyPrototype = <PropertyPrototype>target;
        let propertyInstance = this.resolver.resolveProperty(propertyPrototype);
        if (!propertyInstance) return module.unreachable();
        target = propertyInstance;
        // fall-through
      }
      case ElementKind.PROPERTY: {
        let propertyInstance = <Property>target;
        let getterInstance = assert(propertyInstance.getterInstance);
        let thisArg: ExpressionRef = 0;
        if (getterInstance.is(CommonFlags.INSTANCE)) {
          thisArg = this.compileExpression(
            assert(thisExpression),
            assert(getterInstance.signature.thisType),
            Constraints.CONV_IMPLICIT | Constraints.IS_THIS
          );
        }
        return this.compileCallDirect(getterInstance, [], expression, thisArg);
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        let functionPrototype = <FunctionPrototype>target;
        let functionInstance = this.resolver.resolveFunction(functionPrototype, null);
        if (!functionInstance) return module.unreachable();
        if (!this.compileFunction(functionInstance)) return module.unreachable();
        this.currentType = functionInstance.type;
        let offset = this.ensureRuntimeFunction(functionInstance);
        return this.options.isWasm64
          ? module.i64(i64_low(offset), i64_high(offset))
          : module.i32(i64_low(offset));
      }
    }
    assert(false);
    return module.unreachable();
  }

  private compileTernaryExpression(
    expression: TernaryExpression,
    ctxType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    var ifThen = expression.ifThen;
    var ifElse = expression.ifElse;

    var condExpr = this.makeIsTrueish(
      this.compileExpression(expression.condition, Type.bool),
      this.currentType,
      expression.condition
    );
    // Try to eliminate unnecesssary branches if the condition is constant
    // FIXME: skips common denominator, inconsistently picking branch type
    var condKind = this.evaluateCondition(condExpr);
    if (condKind == ConditionKind.TRUE) {
      return module.maybeDropCondition(condExpr, this.compileExpression(ifThen, ctxType));
    }
    if (condKind == ConditionKind.FALSE) {
      return module.maybeDropCondition(condExpr, this.compileExpression(ifElse, ctxType));
    }

    var inheritedConstraints = constraints & Constraints.WILL_RETAIN;

    var outerFlow = this.currentFlow;
    var ifThenFlow = outerFlow.fork();
    ifThenFlow.inheritNonnullIfTrue(condExpr);
    this.currentFlow = ifThenFlow;
    var ifThenExpr = this.compileExpression(ifThen, ctxType, inheritedConstraints);
    var ifThenType = this.currentType;
    var ifThenAutoreleaseSkipped = this.skippedAutoreleases.has(ifThenExpr);

    var ifElseFlow = outerFlow.fork();
    ifElseFlow.inheritNonnullIfFalse(condExpr);
    this.currentFlow = ifElseFlow;
    var ifElseExpr = this.compileExpression(ifElse, ctxType == Type.auto ? ifThenType : ctxType, inheritedConstraints);
    var ifElseType = this.currentType;
    var ifElseAutoreleaseSkipped = this.skippedAutoreleases.has(ifElseExpr);

    var commonType = Type.commonDenominator(ifThenType, ifElseType, false);
    if (!commonType) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        ifElse.range, ifElseType.toString(), ifThenType.toString()
      );
      this.currentType = ctxType;
      return module.unreachable();
    }
    ifThenExpr = this.convertExpression(ifThenExpr, ifThenType, commonType, false, ifThen);
    ifThenType = commonType;
    ifElseExpr = this.convertExpression(ifElseExpr, ifElseType, commonType, false, ifElse);
    ifElseType = commonType;
    this.currentType = commonType;

    if (ifThenAutoreleaseSkipped != ifElseAutoreleaseSkipped) { // unify to both skipped
      if (!ifThenAutoreleaseSkipped) {
        ifThenExpr = this.makeRetain(ifThenExpr, ifThenType);
        ifThenAutoreleaseSkipped = true;
      } else {
        ifElseExpr = this.makeRetain(ifElseExpr, ifElseType);
        ifElseAutoreleaseSkipped = true;
      }
    } else if (!ifThenAutoreleaseSkipped && commonType.isManaged) { // keep alive a little longer
      if (constraints & Constraints.WILL_RETAIN) { // try to undo both
        let ifThenIndex = this.tryUndoAutorelease(ifThenExpr, ifThenFlow);
        if (ifThenIndex == -1) ifThenExpr = this.makeRetain(ifThenExpr, ifThenType);
        let ifElseIndex = this.tryUndoAutorelease(ifElseExpr, ifElseFlow);
        if (ifElseIndex == -1) ifElseExpr = this.makeRetain(ifElseExpr, ifElseType);
        ifThenAutoreleaseSkipped = true;
        ifElseAutoreleaseSkipped = true;
      } else {
        ifThenExpr = this.delayAutorelease(ifThenExpr, ifThenType, ifThenFlow, outerFlow);
        ifElseExpr = this.delayAutorelease(ifElseExpr, ifElseType, ifElseFlow, outerFlow);
      }
    }

    ifThenExpr = this.performAutoreleasesWithValue(ifThenFlow, ifThenExpr, commonType);
    ifThenFlow.freeScopedLocals();

    ifElseExpr = this.performAutoreleasesWithValue(ifElseFlow, ifElseExpr, commonType);
    ifElseFlow.freeScopedLocals();

    this.currentFlow = outerFlow;
    outerFlow.inheritMutual(ifThenFlow, ifElseFlow);

    var expr = module.if(condExpr, ifThenExpr, ifElseExpr);
    assert(ifThenAutoreleaseSkipped == ifElseAutoreleaseSkipped);
    if (ifThenAutoreleaseSkipped) this.skippedAutoreleases.add(expr);
    return expr;
  }

  private compileUnaryPostfixExpression(
    expression: UnaryPostfixExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;

    // make a getter for the expression (also obtains the type)
    var getValue = this.compileExpression( // reports
      expression.operand,
      contextualType.exceptVoid,
      Constraints.NONE
    );

    // shortcut if compiling the getter already failed
    if (getExpressionId(getValue) == ExpressionId.Unreachable) return getValue;

    // if the value isn't dropped, a temp. local is required to remember the original value,
    // except if a static overload is found, which reverses the use of a temp. (see below)
    var tempLocal: Local | null = null;
    if (contextualType != Type.void) {
      tempLocal = flow.getTempLocal(this.currentType);
      getValue = module.local_tee(
        tempLocal.index,
        getValue
      );
    }

    var expr: ExpressionRef;

    switch (expression.operator) {
      case Token.PLUS_PLUS: {

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.POSTFIX_INC);
          if (overload) {
            let isInstance = overload.is(CommonFlags.INSTANCE);
            if (tempLocal !== null && !isInstance) { // revert: static overload simply returns
              getValue = getLocalSetValue(getValue);
              flow.freeTempLocal(tempLocal);
              tempLocal = null;
            }
            expr = this.compileUnaryOverload(overload, expression.operand, getValue, expression);
            if (isInstance) break;
            return expr; // here
          }
        }
        if (!this.currentType.isValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "++", this.currentType.toString()
          );
          if (tempLocal) flow.freeTempLocal(tempLocal);
          return module.unreachable();
        }

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(
              BinaryOp.AddI32,
              getValue,
              module.i32(1)
            );
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            let options = this.options;
            expr = module.binary(
              options.isWasm64
                ? BinaryOp.AddI64
                : BinaryOp.AddI32,
              getValue,
              this.makeOne(this.currentType)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(
              BinaryOp.AddI64,
              getValue,
              module.i64(1)
            );
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(
              BinaryOp.AddF32,
              getValue,
              module.f32(1)
            );
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(
              BinaryOp.AddF64,
              getValue,
              module.f64(1)
            );
            break;
          }
          default: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "++", this.currentType.toString()
            );
            return module.unreachable();
          }
        }
        break;
      }
      case Token.MINUS_MINUS: {

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.POSTFIX_DEC);
          if (overload) {
            let isInstance = overload.is(CommonFlags.INSTANCE);
            if (tempLocal !== null && !isInstance) { // revert: static overload simply returns
              getValue = getLocalSetValue(getValue);
              flow.freeTempLocal(tempLocal);
              tempLocal = null;
            }
            expr = this.compileUnaryOverload(overload, expression.operand, getValue, expression);
            if (overload.is(CommonFlags.INSTANCE)) break;
            return expr; // here
          }
        }
        if (!this.currentType.isValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "--", this.currentType.toString()
          );
          if (tempLocal) flow.freeTempLocal(tempLocal);
          return module.unreachable();
        }

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(
              BinaryOp.SubI32,
              getValue,
              module.i32(1)
            );
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            let options = this.options;
            expr = module.binary(
              options.isWasm64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              getValue,
              this.makeOne(this.currentType)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(
              BinaryOp.SubI64,
              getValue,
              module.i64(1)
            );
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(
              BinaryOp.SubF32,
              getValue,
              module.f32(1)
            );
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(
              BinaryOp.SubF64,
              getValue,
              module.f64(1)
            );
            break;
          }
          default: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "--", this.currentType.toString()
            );
            return module.unreachable();
          }
        }
        break;
      }
      default: {
        assert(false);
        return module.unreachable();
      }
    }

    var resolver = this.resolver;
    var target = resolver.lookupExpression(expression.operand, flow); // reports
    if (!target) {
      if (tempLocal) flow.freeTempLocal(tempLocal);
      return module.unreachable();
    }

    // simplify if dropped anyway
    if (!tempLocal) {
      return this.makeAssignment(
        target,
        expr,
        this.currentType,
        expression.operand,
        resolver.currentThisExpression,
        resolver.currentElementExpression,
        false
      );
    }

    // otherwise use the temp. local for the intermediate value (always possibly overflows)
    var setValue = this.makeAssignment(
      target,
      expr, // includes a tee of getValue to tempLocal
      this.currentType,
      expression.operand,
      resolver.currentThisExpression,
      resolver.currentElementExpression,
      false
    );

    this.currentType = tempLocal.type;
    flow.freeTempLocal(tempLocal);
    var nativeType = tempLocal.type.toNativeType();

    return module.block(null, [
      setValue,
      module.local_get(tempLocal.index, nativeType)
    ], nativeType); // result of 'x++' / 'x--' might overflow
  }

  private compileUnaryPrefixExpression(
    expression: UnaryPrefixExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    var compound = false;
    var expr: ExpressionRef;

    switch (expression.operator) {
      case Token.PLUS: {
        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.NONE
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.PLUS);
          if (overload) return this.compileUnaryOverload(overload, expression.operand, expr, expression);
        }
        if (!this.currentType.isValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "+", this.currentType.toString()
          );
          return module.unreachable();
        }

        // nop
        break;
      }
      case Token.MINUS: {
        let operand = expression.operand;
        if (operand.isNumericLiteral) {
          // implicitly negate integer and float literals. also enables proper checking of literal ranges.
          expr = this.compileLiteralExpression(<LiteralExpression>operand, contextualType, Constraints.NONE, true);
          // compileExpression normally does this:
          if (this.options.sourceMap) this.addDebugLocation(expr, expression.range);
          break;
        }

        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.NONE
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.MINUS);
          if (overload) return this.compileUnaryOverload(overload, expression.operand, expr, expression);
        }
        if (!this.currentType.isValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "-", this.currentType.toString()
          );
          return module.unreachable();
        }

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.SubI32, module.i32(0), expr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              this.makeZero(this.currentType, expression.operand),
              expr
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.SubI64, module.i64(0), expr);
            break;
          }
          case TypeKind.F32: {
            expr = module.unary(UnaryOp.NegF32, expr);
            break;
          }
          case TypeKind.F64: {
            expr = module.unary(UnaryOp.NegF64, expr);
            break;
          }
          default: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "-", this.currentType.toString()
            );
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.PLUS_PLUS: {
        compound = true;
        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.NONE
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.PREFIX_INC);
          if (overload) {
            expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
            if (overload.is(CommonFlags.INSTANCE)) break; // re-assign
            return expr; // skip re-assign
          }
        }
        if (!this.currentType.isValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "++", this.currentType.toString()
          );
          return module.unreachable();
        }

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.AddI32, expr, this.module.i32(1));
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.AddI64
                : BinaryOp.AddI32,
              expr,
              this.makeOne(this.currentType)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.AddI64, expr, module.i64(1));
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.AddF32, expr, module.f32(1));
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.AddF64, expr, module.f64(1));
            break;
          }
          default: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "++", this.currentType.toString()
            );
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.MINUS_MINUS: {
        compound = true;
        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.NONE
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.PREFIX_DEC);
          if (overload) {
            expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
            if (overload.is(CommonFlags.INSTANCE)) break; // re-assign
            return expr; // skip re-assign
          }
        }
        if (!this.currentType.isValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "--", this.currentType.toString()
          );
          return module.unreachable();
        }

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.SubI32, expr, module.i32(1));
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              expr,
              this.makeOne(this.currentType)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.SubI64, expr, module.i64(1));
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.SubF32, expr, module.f32(1));
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.SubF64, expr, module.f64(1));
            break;
          }
          default: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "--", this.currentType.toString()
            );
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.EXCLAMATION: {
        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.NONE
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.NOT);
          if (overload) return this.compileUnaryOverload(overload, expression.operand, expr, expression);
          // fall back to compare by value
        }

        expr = module.unary(UnaryOp.EqzI32, this.makeIsTrueish(expr, this.currentType, expression.operand));
        this.currentType = Type.bool;
        break;
      }
      case Token.TILDE: {
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType.isFloatValue
              ? Type.i64
              : contextualType,
          Constraints.NONE
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BITWISE_NOT);
          if (overload) return this.compileUnaryOverload(overload, expression.operand, expr, expression);
        }
        if (!this.currentType.isValue) {
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "~", this.currentType.toString()
          );
          return module.unreachable();
        }

        expr = this.convertExpression(expr, this.currentType, this.currentType.intType, false, expression.operand);

        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.XorI32, expr, module.i32(-1));
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.XorI64
                : BinaryOp.XorI32,
              expr,
              this.makeNegOne(this.currentType)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.XorI64, expr, module.i64(-1, -1));
            break;
          }
          default: {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              expression.range, "~", this.currentType.toString()
            );
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.TYPEOF: {
        return this.compileTypeof(expression, contextualType, constraints);
      }
      default: {
        assert(false);
        return module.unreachable();
      }
    }
    if (!compound) return expr;
    var resolver = this.resolver;
    var target = resolver.lookupExpression(expression.operand, this.currentFlow);
    if (!target) return module.unreachable();
    return this.makeAssignment(
      target,
      expr,
      this.currentType,
      expression.operand,
      resolver.currentThisExpression,
      resolver.currentElementExpression,
      contextualType != Type.void
    );
  }

  private compileTypeof(
    expression: UnaryPrefixExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var operand = expression.operand;
    var expr: ExpressionRef = 0;
    var stringInstance = this.program.stringInstance;
    var typeString: string;
    if (operand.kind == NodeKind.NULL) {
      typeString = "object"; // special since `null` without type context is usize
    } else {
      let element = this.resolver.lookupExpression(operand, this.currentFlow, Type.auto, ReportMode.SWALLOW);
      if (!element) {
        switch (operand.kind) {
          case NodeKind.IDENTIFIER: break; // ignore error: typeof doesntExist -> undefined
          case NodeKind.PROPERTYACCESS:
          case NodeKind.ELEMENTACCESS: {
            operand = operand.kind == NodeKind.PROPERTYACCESS
              ? (<PropertyAccessExpression>operand).expression
              : (<ElementAccessExpression>operand).expression;
            let targetType = this.resolver.resolveExpression(operand, this.currentFlow, Type.auto, ReportMode.REPORT);
            if (!targetType) { // access on non-object
              this.currentType = stringInstance.type;
              return this.module.unreachable();
            }
            // fall-through
          }
          default: {
            expr = this.compileExpression(operand, Type.auto); // may trigger an error
            expr = this.convertExpression(expr, this.currentType, Type.void, true, operand);
          }
        }
        typeString = "undefined";
      } else {
        switch (element.kind) {
          case ElementKind.CLASS_PROTOTYPE:
          case ElementKind.NAMESPACE:
          case ElementKind.ENUM: {
            typeString = "object";
            break;
          }
          case ElementKind.FUNCTION_PROTOTYPE: {
            typeString = "function";
            break;
          }
          default: {
            expr = this.compileExpression(operand, Type.auto);
            let type = this.currentType;
            expr = this.convertExpression(expr, type, Type.void, true, operand);
            if (type.isReference) {
              let signatureReference = type.getSignature();
              if (signatureReference) {
                typeString = "function";
              } else {
                let classReference = type.getClass();
                if (classReference) {
                  if (classReference.prototype === stringInstance.prototype) {
                    typeString = "string";
                  } else {
                    typeString = "object";
                  }
                } else {
                  typeString = "externref"; // TODO?
                }
              }
            } else if (type == Type.bool) {
              typeString = "boolean";
            } else if (type.isNumericValue) {
              typeString = "number";
            } else {
              typeString = "undefined"; // failed to compile?
            }
            break;
          }
        }
      }
    }
    this.currentType = stringInstance.type;
    return expr
      ? this.module.block(null, [ expr, this.ensureStaticString(typeString) ], this.options.nativeSizeType)
      : this.ensureStaticString(typeString);
  }

  /** Makes sure that a 32-bit integer value is wrapped to a valid value of the specified type. */
  ensureSmallIntegerWrap(expr: ExpressionRef, type: Type): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    switch (type.kind) {
      case TypeKind.I8: {
        if (flow.canOverflow(expr, type)) {
          expr = this.options.hasFeature(Feature.SIGN_EXTENSION)
            ? module.unary(UnaryOp.ExtendI8ToI32, expr)
            : module.binary(BinaryOp.ShrI32,
                module.binary(BinaryOp.ShlI32,
                  expr,
                  module.i32(24)
                ),
                module.i32(24)
              );
        }
        break;
      }
      case TypeKind.I16: {
        if (flow.canOverflow(expr, type)) {
          expr = this.options.hasFeature(Feature.SIGN_EXTENSION)
            ? module.unary(UnaryOp.ExtendI16ToI32, expr)
            : module.binary(BinaryOp.ShrI32,
                module.binary(BinaryOp.ShlI32,
                  expr,
                  module.i32(16)
                ),
                module.i32(16)
              );
        }
        break;
      }
      case TypeKind.U8: {
        if (flow.canOverflow(expr, type)) {
          expr = module.binary(BinaryOp.AndI32,
            expr,
            module.i32(0xff)
          );
        }
        break;
      }
      case TypeKind.U16: {
        if (flow.canOverflow(expr, type)) {
          expr = module.binary(BinaryOp.AndI32,
            expr,
            module.i32(0xffff)
          );
        }
        break;
      }
      case TypeKind.BOOL: {
        if (flow.canOverflow(expr, type)) {
          // bool is special in that it compares to 0 instead of masking with 0x1
          expr = module.binary(BinaryOp.NeI32,
            expr,
            module.i32(0)
          );
        }
        break;
      }
    }
    return expr;
  }

  /** Adds the debug location of the specified expression at the specified range to the source map. */
  addDebugLocation(expr: ExpressionRef, range: Range): void {
    var parentFunction = this.currentFlow.parentFunction;
    var source = range.source;
    if (source.debugInfoIndex < 0) source.debugInfoIndex = this.module.addDebugInfoFile(source.normalizedPath);
    range.debugInfoRef = expr;
    parentFunction.debugLocations.push(range);
  }

  /** Checks whether a particular feature is enabled. */
  checkFeatureEnabled(feature: Feature, reportNode: Node): bool {
    if (!this.options.hasFeature(feature)) {
      this.error(
        DiagnosticCode.Feature_0_is_not_enabled,
        reportNode.range, featureToString(feature)
      );
      return false;
    }
    return true;
  }

  /** Checks whether a particular type is supported. */
  checkTypeSupported(type: Type, reportNode: Node): bool {
    switch (type.kind) {
      case TypeKind.V128: return this.checkFeatureEnabled(Feature.SIMD, reportNode);
      case TypeKind.FUNCREF:
      case TypeKind.EXTERNREF:
        return this.checkFeatureEnabled(Feature.REFERENCE_TYPES, reportNode);
      case TypeKind.EXNREF: {
        return this.checkFeatureEnabled(Feature.REFERENCE_TYPES, reportNode)
            && this.checkFeatureEnabled(Feature.EXCEPTION_HANDLING, reportNode);
      }
      case TypeKind.ANYREF: {
        return this.checkFeatureEnabled(Feature.REFERENCE_TYPES, reportNode)
            && this.checkFeatureEnabled(Feature.GC, reportNode);
      }
    }
    let classReference = type.getClass();
    if (classReference) {
      do {
        let typeArguments = classReference.typeArguments;
        if (typeArguments) {
          for (let i = 0, k = typeArguments.length; i < k; ++i) {
            if (!this.checkTypeSupported(typeArguments[i], reportNode)) {
              return false;
            }
          }
        }
        classReference = classReference.base;
      } while(classReference);
    } else {
      let signatureReference = type.getSignature();
      if (signatureReference) {
        let thisType = signatureReference.thisType;
        if (thisType) {
          if (!this.checkTypeSupported(thisType, reportNode)) {
            return false;
          }
        }
        let parameterTypes = signatureReference.parameterTypes;
        for (let i = 0, k = parameterTypes.length; i < k; ++i) {
          if (!this.checkTypeSupported(parameterTypes[i], reportNode)) {
            return false;
          }
        }
        let returnType = signatureReference.returnType;
        if (!this.checkTypeSupported(returnType, reportNode)) {
          return false;
        }
      }
    }
    return true;
  }

  /** Checks whether a particular function signature is supported. */
  checkSignatureSupported(signature: Signature, reportNode: FunctionTypeNode): bool {
    var supported = true;
    var explicitThisType = reportNode.explicitThisType;
    if (explicitThisType) {
      if (!this.checkTypeSupported(assert(signature.thisType), explicitThisType)) {
        supported = false;
      }
    }
    var parameterTypes = signature.parameterTypes;
    var parameterNodes = reportNode.parameters;
    for (let i = 0, k = parameterTypes.length; i < k; ++i) {
      let parameterReportNode: Node;
      if (parameterNodes.length > i) parameterReportNode = parameterNodes[i];
      else parameterReportNode = reportNode;
      if (!this.checkTypeSupported(parameterTypes[i], parameterReportNode)) {
        supported = false;
      }
    }
    if (!this.checkTypeSupported(signature.returnType, reportNode.returnType)) {
      supported = false;
    }
    return supported;
  }

  /** Evaluates a boolean condition, determining whether it is TRUE, FALSE or UNKNOWN. */
  evaluateCondition(expr: ExpressionRef): ConditionKind {
    var module = this.module;
    var evaled = module.runExpression(expr, ExpressionRunnerFlags.Default);
    if (evaled) {
      return getConstValueI32(evaled)
        ? ConditionKind.TRUE
        : ConditionKind.FALSE;
    }
    return ConditionKind.UNKNOWN;
  }

  // === Specialized code generation ==============================================================

  /** Makes a constant zero of the specified type. */
  makeZero(type: Type, reportNode: Node): ExpressionRef {
    var module = this.module;
    switch (type.kind) {
      default: assert(false);
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32:
      case TypeKind.BOOL: return module.i32(0);
      case TypeKind.ISIZE:
      case TypeKind.USIZE: if (type.size != 64) return module.i32(0);
      case TypeKind.I64:
      case TypeKind.U64: return module.i64(0);
      case TypeKind.F32: return module.f32(0);
      case TypeKind.F64: return module.f64(0);
      case TypeKind.V128: return module.v128(v128_zero);
      case TypeKind.FUNCREF:
      case TypeKind.EXTERNREF:
      case TypeKind.EXNREF:
      case TypeKind.ANYREF:
        return module.ref_null(type.toNativeType());
    }
  }

  /** Makes a constant one of the specified type. */
  makeOne(type: Type): ExpressionRef {
    var module = this.module;
    switch (type.kind) {
      default: assert(false);
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32:
      case TypeKind.BOOL: return module.i32(1);
      case TypeKind.ISIZE:
      case TypeKind.USIZE: if (type.size != 64) return module.i32(1);
      case TypeKind.I64:
      case TypeKind.U64: return module.i64(1);
      case TypeKind.F32: return module.f32(1);
      case TypeKind.F64: return module.f64(1);
    }
  }

  /** Makes a constant negative one of the specified type. */
  makeNegOne(type: Type): ExpressionRef {
    var module = this.module;
    switch (type.kind) {
      default: assert(false);
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32: return module.i32(-1);
      case TypeKind.ISIZE:
      case TypeKind.USIZE: if (type.size != 64) return module.i32(-1);
      case TypeKind.I64:
      case TypeKind.U64: return module.i64(-1, -1);
      case TypeKind.F32: return module.f32(-1);
      case TypeKind.F64: return module.f64(-1);
    }
  }

  /** Creates a comparison whether an expression is 'true' in a broader sense. */
  makeIsTrueish(expr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    var module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        expr = this.ensureSmallIntegerWrap(expr, type);
        // fall-through
      }
      case TypeKind.BOOL: // not a mask, just != 0
      case TypeKind.I32:
      case TypeKind.U32: {
        return expr;
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return module.binary(BinaryOp.NeI64, expr, module.i64(0));
      }
      case TypeKind.USIZE: if (type.isManaged && this.skippedAutoreleases.has(expr)) expr = this.makeAutorelease(expr, type);
      case TypeKind.ISIZE: {
        return type.size == 64
          ? module.binary(BinaryOp.NeI64, expr, module.i64(0))
          : expr;
      }
      case TypeKind.F32: {
        // 0 < abs(bitCast(x)) <= bitCast(Infinity) or
        // (reinterpret<u32>(x) & 0x7FFFFFFF) - 1 <= 0x7F800000 - 1
        //
        // and finally:
        // (reinterpret<u32>(x) << 1) - (1 << 1) <= ((0x7F800000 - 1) << 1)
        return module.binary(BinaryOp.LeU32,
          module.binary(BinaryOp.SubI32,
            module.binary(BinaryOp.ShlI32,
              module.unary(UnaryOp.ReinterpretF32, expr),
              module.i32(1)
            ),
            module.i32(2) // 1 << 1
          ),
          module.i32(0xFEFFFFFE) // (0x7F800000 - 1) << 1
        );
      }
      case TypeKind.F64: {
        // 0 < abs(bitCast(x)) <= bitCast(Infinity) or
        // (reinterpret<u64>(x) & 0x7FFFFFFFFFFFFFFF) - 1 <= 0x7FF0000000000000 - 1
        //
        // and finally:
        // (reinterpret<u64>(x) << 1) - (1 << 1) <= ((0x7FF0000000000000 - 1) << 1)
        return module.binary(BinaryOp.LeU64,
          module.binary(BinaryOp.SubI64,
            module.binary(BinaryOp.ShlI64,
              module.unary(UnaryOp.ReinterpretF64, expr),
              module.i64(1)
            ),
            module.i64(2) // 1 << 1
          ),
          module.i64(0xFFFFFFFE, 0xFFDFFFFF) // (0x7FF0000000000000 - 1) << 1
        );
      }
      case TypeKind.FUNCREF:
      case TypeKind.EXTERNREF:
      case TypeKind.EXNREF:
      case TypeKind.ANYREF:{
        return module.ref_is_null(expr);
      }
      default: {
        assert(false);
        return module.i32(0);
      }
    }
  }

  /** Makes an allocation suitable to hold the data of an instance of the given class. */
  makeAllocation(
    classInstance: Class
  ): ExpressionRef {
    var program = this.program;
    assert(classInstance.program == program);
    var module = this.module;
    var options = this.options;
    this.currentType = classInstance.type;
    if (classInstance.hasDecorator(DecoratorFlags.UNMANAGED)) {
      let allocInstance = program.allocInstance;
      this.compileFunction(allocInstance);
      return module.call(allocInstance.internalName, [
        options.isWasm64
          ? module.i64(classInstance.nextMemoryOffset)
          : module.i32(classInstance.nextMemoryOffset)
      ], options.nativeSizeType);
    } else {
      let newInstance = program.newInstance;
      this.compileFunction(newInstance);
      return module.call(newInstance.internalName, [
        options.isWasm64
          ? module.i64(classInstance.nextMemoryOffset)
          : module.i32(classInstance.nextMemoryOffset),
        module.i32(classInstance.id)
      ], options.nativeSizeType);
    }
  }

  /** Makes the initializers for a class's fields within the constructor. */
  makeFieldInitializationInConstructor(
    /** Class being initialized. */
    classInstance: Class,
    /** Statements to append to also being returned. Created if omitted. */
    stmts: ExpressionRef[] = []
  ): ExpressionRef[] {
    var members = classInstance.members;
    if (!members) return stmts;

    var module = this.module;
    var flow = this.currentFlow;
    var isInline = flow.isInline;
    var thisLocalIndex = isInline
      ? flow.lookupLocal(CommonNames.this_)!.index
      : 0;
    var nativeSizeType = this.options.nativeSizeType;

    // TODO: for (let member of members.values()) {
    for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
      let member = unchecked(_values[i]);
      if (
        member.kind != ElementKind.FIELD || // not a field
        member.parent != classInstance      // inherited field
      ) continue;

      let field = <Field>member;
      assert(!field.isAny(CommonFlags.CONST));
      let fieldType = field.type;
      let nativeFieldType = fieldType.toNativeType();
      let fieldPrototype = field.prototype;
      let initializerNode = fieldPrototype.initializerNode;
      let parameterIndex = fieldPrototype.parameterIndex;
      let initExpr: ExpressionRef;
      let typeNode = field.typeNode;
      if (typeNode) this.checkTypeSupported(fieldType, typeNode);

      // if declared as a constructor parameter, use its value
      if (parameterIndex >= 0) {
        initExpr = module.local_get(
          isInline
            ? flow.lookupLocal(field.name)!.index
            : 1 + parameterIndex, // this is local 0
          nativeFieldType
        );
        if (fieldType.isManaged) initExpr = this.makeRetain(initExpr, fieldType);

      // fall back to use initializer if present
      } else if (initializerNode) {
        initExpr = this.compileExpression(initializerNode, fieldType,
          Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN
        );
        if (fieldType.isManaged && !this.skippedAutoreleases.has(initExpr)) {
          initExpr = this.makeRetain(initExpr, fieldType);
        }

      // otherwise initialize with zero
      } else {
        initExpr = this.makeZero(fieldType, fieldPrototype.declaration);
      }

      stmts.push(
        module.store(fieldType.byteSize,
          module.local_get(thisLocalIndex, nativeSizeType),
          initExpr,
          nativeFieldType,
          field.memoryOffset
        )
      );
    }
    return stmts;
  }

  /** Makes a call to `abort`, if present, otherwise creates a trap. */
  makeAbort(
    /** Message argument of type string, if any. */
    message: Expression | null,
    /** Code location to report when aborting. */
    codeLocation: Node
  ): ExpressionRef {
    var program = this.program;
    var abortInstance = program.abortInstance;
    if (!abortInstance || !this.compileFunction(abortInstance)) return this.module.unreachable();

    var stringInstance = program.stringInstance;
    var messageArg: ExpressionRef;
    if (message !== null) {
      // The message argument works much like an arm of an IF that does not become executed if the
      // assertion succeeds respectively is only being computed if the program actually crashes.
      // Hence, let's make it so that the autorelease is skipped at the end of the current block,
      // essentially ignoring the message GC-wise. Doesn't matter anyway on a crash.
      messageArg = this.compileExpression(message, stringInstance.type, Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN);
    } else {
      messageArg = this.makeZero(stringInstance.type, codeLocation);
    }

    return this.makeStaticAbort(messageArg, codeLocation);
  }

  /** Makes a call to `abort`, if present, otherwise creates a trap. */
  makeStaticAbort(
    /** Message argument of type string. May be zero. */
    messageExpr: ExpressionRef,
    /** Code location to report when aborting. */
    codeLocation: Node
  ): ExpressionRef {
    var program = this.program;
    var module = this.module;
    var abortInstance = program.abortInstance;
    if (!abortInstance || !this.compileFunction(abortInstance)) return module.unreachable();

    var filenameExpr = this.ensureStaticString(codeLocation.range.source.normalizedPath);
    var range = codeLocation.range;
    var source = range.source;
    return module.block(null, [
      module.call(
        abortInstance.internalName, [
          messageExpr,
          filenameExpr,
          module.i32(source.lineAt(range.start)),
          module.i32(source.columnAt())
        ],
        NativeType.None
      ),
      module.unreachable()
    ]);
  }

  /** Makes a runtime non-null check, e.g. on `<Type>possiblyNull` or `possiblyNull!`. */
  makeRuntimeNonNullCheck(
    /** Expression being checked. */
    expr: ExpressionRef,
    /** Type of the expression. */
    type: Type,
    /** Report node. */
    reportNode: Node
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var temp = flow.getTempLocal(type);
    if (!flow.canOverflow(expr, type)) flow.setLocalFlag(temp.index, LocalFlags.WRAPPED);
    flow.setLocalFlag(temp.index, LocalFlags.NONNULL);
    expr = module.if(
      module.local_tee(temp.index, expr),
      module.local_get(temp.index, type.toNativeType()),
      this.makeStaticAbort(this.ensureStaticString("unexpected null"), reportNode) // TODO: throw
    );
    flow.freeTempLocal(temp);
    this.currentType = type.nonNullableType;
    return expr;
  }

  /** Makes a runtime upcast check, e.g. on `<Child>parent`. */
  makeRuntimeUpcastCheck(
    /** Expression being upcast. */
    expr: ExpressionRef,
    /** Type of the expression. */
    type: Type,
    /** Type casting to. */
    toType: Type,
    /** Report node. */
    reportNode: Node
  ): ExpressionRef {
    assert(toType.isReference && toType.nonNullableType.isAssignableTo(type));
    var module = this.module;
    var flow = this.currentFlow;
    var temp = flow.getTempLocal(type);
    var instanceofInstance = this.program.instanceofInstance;
    assert(this.compileFunction(instanceofInstance));
    expr = module.if(
      module.call(instanceofInstance.internalName, [
        module.local_tee(temp.index, expr),
        module.i32(toType.classReference!.id)
      ], NativeType.I32),
      module.local_get(temp.index, type.toNativeType()),
      this.makeStaticAbort(this.ensureStaticString("unexpected upcast"), reportNode) // TODO: throw
    );
    flow.freeTempLocal(temp);
    this.currentType = toType;
    return expr;
  }
}

// helpers

function mangleImportName(
  element: Element,
  declaration: DeclarationStatement
): void {
  // by default, use the file name as the module name
  mangleImportName_moduleName = declaration.range.source.simplePath;
  // and the internal name of the element within that file as the element name
  mangleImportName_elementName = mangleInternalName(
    element.name, element.parent, element.is(CommonFlags.INSTANCE), true
  );
  if (!element.hasDecorator(DecoratorFlags.EXTERNAL)) return;

  var program = element.program;
  var decorator = assert(findDecorator(DecoratorKind.EXTERNAL, declaration.decorators));
  var args = decorator.args;
  if (args !== null && args.length > 0) {
    let arg = args[0];
    // if one argument is given, override just the element name
    // if two arguments are given, override both module and element name
    if (arg.isLiteralKind(LiteralKind.STRING)) {
      mangleImportName_elementName = (<StringLiteralExpression>arg).value;
      if (args.length >= 2) {
        arg = args[1];
        if (arg.isLiteralKind(LiteralKind.STRING)) {
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
