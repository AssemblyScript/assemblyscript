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
  compileRTTI
} from "./builtins";

import {
  Range,
  DiagnosticCode,
  DiagnosticEmitter
} from "./diagnostics";

import {
  Module,
  MemorySegment,
  ExpressionRef,
  UnaryOp,
  BinaryOp,
  TypeRef,
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
  getConstValueV128,
  getBlockChildCount,
  getBlockChildAt,
  getBlockName,
  getLocalSetValue,
  getGlobalGetName,
  isGlobalMutable,
  getSideEffects,
  SideEffects,
  SwitchBuilder,
  ExpressionRunnerFlags,
  isConstZero,
  isConstNegZero,
  isConstExpressionNaN,
  ensureType,
  createType
} from "./module";

import {
  CommonFlags,
  STATIC_DELIMITER,
  INDEX_SUFFIX,
  CommonNames,
  Feature,
  Target,
  Runtime
} from "./common";

import {
  Program,
  ClassPrototype,
  Class,
  Element,
  ElementKind,
  DeclaredElement,
  Enum,
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
  mangleInternalName
} from "./program";

import {
  FlowFlags,
  Flow,
  LocalFlags,
  FieldFlags,
  ConditionKind
} from "./flow";

import {
  Resolver,
  ReportMode
} from "./resolver";

import {
  Token,
  operatorTokenToString
} from "./tokenizer";

import {
  Node,
  NodeKind,
  DecoratorKind,
  AssertionKind,
  SourceKind,
  FunctionTypeNode,
  DecoratorNode,

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
  TemplateLiteralExpression,
  UnaryPostfixExpression,
  UnaryPrefixExpression,
  CompiledExpression,

  TypeNode,
  NamedTypeNode,

  findDecorator,
  isTypeOmitted,
  Source
} from "./ast";

import {
  Type,
  TypeKind,
  TypeFlags,
  Signature,
  typesToRefs
} from "./types";

import {
  writeI8,
  writeI16,
  writeI32,
  writeI64,
  writeF32,
  writeF64,
  writeV128,
  cloneMap,
  isPowerOf2,
  readI32,
  isIdentifier,
  accuratePow64,
  v128_zero,
  v128_ones,
} from "./util";

import {
  RtraceMemory
} from "./passes/rtrace";

import {
  ShadowStackPass
} from "./passes/shadowstack";

import {
  liftRequiresExportRuntime,
  lowerRequiresExportRuntime
} from "./bindings/js";

/** Compiler options. */
export class Options {
  constructor() { /* as internref */ }

  /** WebAssembly target. Defaults to {@link Target.Wasm32}. */
  target: Target = Target.Wasm32;
  /** Runtime type. Defaults to Incremental GC. */
  runtime: Runtime = Runtime.Incremental;
  /** If true, indicates that debug information will be emitted by Binaryen. */
  debugInfo: bool = false;
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
  /** If true, imported memory is zero filled. */
  zeroFilledMemory: bool = false;
  /** If true, imports the function table provided by the embedder. */
  importTable: bool = false;
  /** If true, exports the function table. */
  exportTable: bool = false;
  /** If true, generates information necessary for source maps. */
  sourceMap: bool = false;
  /** Unchecked behavior. Defaults to only using unchecked operations inside unchecked(). */
  uncheckedBehavior: UncheckedBehavior = UncheckedBehavior.Default;
  /** If given, exports the start function instead of calling it implicitly. */
  exportStart: string | null = null;
  /** Static memory start offset. */
  memoryBase: u32 = 0;
  /** Static table start offset. */
  tableBase: u32 = 0;
  /** Global aliases, mapping alias names as the key to internal names to be aliased as the value. */
  globalAliases: Map<string,string> | null = null;
  /** Features to activate by default. These are the finished proposals. */
  features: Feature = Feature.MutableGlobals
                    | Feature.SignExtension
                    | Feature.NontrappingF2I
                    | Feature.BulkMemory;
  /** If true, disallows unsafe features in user code. */
  noUnsafe: bool = false;
  /** If true, enables pedantic diagnostics. */
  pedantic: bool = false;
  /** Indicates a very low (<64k) memory limit. */
  lowMemoryLimit: u32 = 0;
  /** If true, exports the runtime helpers. */
  exportRuntime: bool = false;
  /** Stack size in bytes, if using a stack. */
  stackSize: i32 = 0;
  /** Semantic major bundle version from root package.json */
  bundleMajorVersion: i32 = 0;
  /** Semantic minor bundle version from root package.json */
  bundleMinorVersion: i32 = 0;
  /** Semantic patch bundle version from root package.json */
  bundlePatchVersion: i32 = 0;

  /** Hinted optimize level. Not applied by the compiler itself. */
  optimizeLevelHint: i32 = 0;
  /** Hinted shrink level. Not applied by the compiler itself. */
  shrinkLevelHint: i32 = 0;
  /** Hinted basename. */
  basenameHint: string = "output";
  /** Hinted bindings generation. */
  bindingsHint: bool = false;

  /** Tests if the target is WASM64 or, otherwise, WASM32. */
  get isWasm64(): bool {
    return this.target == Target.Wasm64;
  }

  /** Gets the unsigned size type matching the target. */
  get usizeType(): Type {
    return this.target == Target.Wasm64 ? Type.usize64 : Type.usize32;
  }

  /** Gets the signed size type matching the target. */
  get isizeType(): Type {
    return this.target == Target.Wasm64 ? Type.isize64 : Type.isize32;
  }

  /** Gets the size type reference matching the target. */
  get sizeTypeRef(): TypeRef {
    return this.target == Target.Wasm64 ? TypeRef.I64 : TypeRef.I32;
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

/** Behaviors regarding unchecked operations. */
export const enum UncheckedBehavior {
  /** Only use unchecked operations inside unchecked(). */
  Default = 0,
  /** Never use unchecked operations. */
  Never = 1,
  /** Always use unchecked operations if possible. */
  Always = 2
}

/** Various constraints in expression compilation. */
export const enum Constraints {
  None = 0,

  /** Must implicitly convert to the target type. */
  ConvImplicit = 1 << 0,
  /** Must explicitly convert to the target type. */
  ConvExplicit = 1 << 1,
  /** Must wrap small integer values to match the target type. */
  MustWrap = 1 << 2,

  /** Indicates that the value will be dropped immediately. */
  WillDrop = 1 << 3,
  /** Indicates that static data is preferred. */
  PreferStatic = 1 << 4,
  /** Indicates that the value will become `this` of a property access or instance call. */
  IsThis = 1 << 5
}

/** Runtime features to be activated by the compiler. */
export const enum RuntimeFeatures {
  None = 0,
  /** Requires data setup. */
  Data = 1 << 0,
  /** Requires a stack. */
  Stack = 1 << 1,
  /** Requires heap setup. */
  Heap = 1 << 2,
  /** Requires runtime type information setup. */
  Rtti = 1 << 3,
  /** Requires the built-in globals visitor. */
  visitGlobals = 1 << 4,
  /** Requires the built-in members visitor. */
  visitMembers = 1 << 5,
  /** Requires the setArgumentsLength export. */
  setArgumentsLength = 1 << 6
}

/** Imported default names of compiler-generated elements. */
export namespace ImportNames {
  /** Name of the default namespace */
  export const DefaultNamespace = "env";
  /** Name of the memory instance, if imported. */
  export const Memory = "memory";
  /** Name of the table instance, if imported. */
  export const Table = "table";
}

/** Exported names of compiler-generated elements. */
export namespace ExportNames {
  /** Name of the memory instance, if exported. */
  export const Memory = "memory";
  /** Name of the table instance, if exported. */
  export const Table = "table";
  /** Name of the argumentsLength varargs helper global. */
  export const argumentsLength = "__argumentsLength";
  /** Name of the alternative argumentsLength setter function. */
  export const setArgumentsLength = "__setArgumentsLength";
}

/** Functions to export if `--exportRuntime` is set. */
const runtimeFunctions = [ "__new", "__pin", "__unpin", "__collect" ];
/** Globals to export if `--exportRuntime` is set. */
const runtimeGlobals = [ "__rtti_base" ];

/** Compiler interface. */
export class Compiler extends DiagnosticEmitter {

  /** Program reference. */
  program: Program;
  /** Module instance being compiled. */
  get module(): Module { return this.program.module; }
  /** Provided options. */
  get options(): Options { return this.program.options; }
  /** Resolver reference. */
  get resolver(): Resolver { return this.program.resolver; }

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
  runtimeFeatures: RuntimeFeatures = RuntimeFeatures.None;
  /** Current inline functions stack. */
  inlineStack: Function[] = [];
  /** Lazily compiled functions. */
  lazyFunctions: Set<Function> = new Set();
  /** Pending instanceof helpers and their names. */
  pendingInstanceOf: Map<DeclaredElement, string> = new Map();
  /** Stubs to defer calls to overridden methods. */
  overrideStubs: Set<Function> = new Set();
  /** Elements currently undergoing compilation. */
  pendingElements: Set<Element> = new Set();
  /** Elements, that are module exports, already processed */
  doneModuleExports: Set<Element> = new Set();
  /** Shadow stack reference. */
  shadowStack!: ShadowStackPass;
  /** Whether the module has custom function exports. */
  hasCustomFunctionExports: bool = false;
  /** Whether the module would use the exported runtime to lift/lower. */
  desiresExportRuntime: bool = false;

  /** Compiles a {@link Program} to a {@link Module} using the specified options. */
  static compile(program: Program): Module {
    return new Compiler(program).compile();
  }

  /** Constructs a new compiler for a {@link Program} using the specified options. */
  constructor(program: Program) {
    super(program.diagnostics);
    this.program = program;
    let module = program.module;
    let options = program.options;
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
    let featureFlags: FeatureFlags = 0;
    if (options.hasFeature(Feature.SignExtension)) featureFlags |= FeatureFlags.SignExt;
    if (options.hasFeature(Feature.MutableGlobals)) featureFlags |= FeatureFlags.MutableGlobals;
    if (options.hasFeature(Feature.NontrappingF2I)) featureFlags |= FeatureFlags.TruncSat;
    if (options.hasFeature(Feature.BulkMemory)) featureFlags |= FeatureFlags.BulkMemory;
    if (options.hasFeature(Feature.Simd)) featureFlags |= FeatureFlags.SIMD;
    if (options.hasFeature(Feature.Threads)) featureFlags |= FeatureFlags.Atomics;
    if (options.hasFeature(Feature.ExceptionHandling)) featureFlags |= FeatureFlags.ExceptionHandling;
    if (options.hasFeature(Feature.TailCalls)) featureFlags |= FeatureFlags.TailCall;
    if (options.hasFeature(Feature.ReferenceTypes)) featureFlags |= FeatureFlags.ReferenceTypes;
    if (options.hasFeature(Feature.MultiValue)) featureFlags |= FeatureFlags.MultiValue;
    if (options.hasFeature(Feature.GC)) featureFlags |= FeatureFlags.GC;
    if (options.hasFeature(Feature.Memory64)) featureFlags |= FeatureFlags.Memory64;
    if (options.hasFeature(Feature.RelaxedSimd)) featureFlags |= FeatureFlags.RelaxedSIMD;
    if (options.hasFeature(Feature.ExtendedConst)) featureFlags |= FeatureFlags.ExtendedConst;
    if (options.hasFeature(Feature.Stringref)) featureFlags |= FeatureFlags.Stringref;
    module.setFeatures(featureFlags);

    // set up the main start function
    let startFunctionInstance = program.makeNativeFunction(BuiltinNames.start, Signature.create(program, [], Type.void));
    startFunctionInstance.internalName = BuiltinNames.start;
    this.currentFlow = startFunctionInstance.flow;
    this.currentBody = new Array<ExpressionRef>();
    this.shadowStack = new ShadowStackPass(this);
  }

  /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
  compile(): Module {
    let options = this.options;
    let module = this.module;
    let program = this.program;
    let resolver = this.resolver;
    let hasShadowStack = options.stackSize > 0; // implies runtime=incremental

    // initialize lookup maps, built-ins, imports, exports, etc.
    this.program.initialize();

    // obtain the main start function
    let startFunctionInstance = this.currentFlow.targetFunction;
    assert(startFunctionInstance.internalName == BuiltinNames.start);
    let startFunctionBody = this.currentBody;
    assert(startFunctionBody.length == 0);

    // add mutable data, heap and rtti offset dummies
    if (options.isWasm64) {
      module.addGlobal(BuiltinNames.data_end,  TypeRef.I64, true, module.i64(0));
      module.addGlobal(BuiltinNames.heap_base, TypeRef.I64, true, module.i64(0));
      module.addGlobal(BuiltinNames.rtti_base, TypeRef.I64, true, module.i64(0));
    } else {
      module.addGlobal(BuiltinNames.data_end,  TypeRef.I32, true, module.i32(0));
      module.addGlobal(BuiltinNames.heap_base, TypeRef.I32, true, module.i32(0));
      module.addGlobal(BuiltinNames.rtti_base, TypeRef.I32, true, module.i32(0));
    }

    // compile entry file(s) while traversing reachable elements
    let files = program.filesByName;
    // TODO: for (let file of files.values()) {
    for (let _values = Map_values(files), i = 0, k = _values.length; i < k; ++i) {
      let file = unchecked(_values[i]);
      if (file.source.sourceKind == SourceKind.UserEntry) {
        this.compileFile(file);
        this.compileModuleExports(file);
      }
    }

    // compile and export runtime if requested or necessary
    if (this.options.exportRuntime || (this.options.bindingsHint && this.desiresExportRuntime)) {
      for (let i = 0, k = runtimeFunctions.length; i < k; ++i) {
        let name = runtimeFunctions[i];
        let instance = program.requireFunction(name);
        if (this.compileFunction(instance) && !module.hasExport(name)) {
          module.addFunctionExport(instance.internalName, name);
        }
      }
      for (let i = 0, k = runtimeGlobals.length; i < k; ++i) {
        let name = runtimeGlobals[i];
        let instance = program.requireGlobal(name);
        if (this.compileGlobal(instance) && !module.hasExport(name)) {
          module.addGlobalExport(instance.internalName, name);
        }
      }
    }

    // compile lazy functions
    let lazyFunctions = this.lazyFunctions;
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

    // compile pending instanceof helpers
    for (let _keys = Map_keys(this.pendingInstanceOf), i = 0, k = _keys.length; i < k; ++i) {
      let elem = _keys[i];
      let name = assert(this.pendingInstanceOf.get(elem));
      switch (elem.kind) {
        case ElementKind.Class:
        case ElementKind.Interface: {
          this.finalizeInstanceOf(<Class>elem, name);
          break;
        }
        case ElementKind.ClassPrototype:
        case ElementKind.InterfacePrototype: {
          this.finalizeAnyInstanceOf(<ClassPrototype>elem, name);
          break;
        }
        default: assert(false);
      }
    }

    // set up override stubs
    let functionTable = this.functionTable;
    let overrideStubs = this.overrideStubs;
    for (let i = 0, k = functionTable.length; i < k; ++i) {
      let instance = functionTable[i];
      if (instance.is(CommonFlags.Overridden)) {
        assert(instance.is(CommonFlags.Instance));
        functionTable[i] = this.ensureOverrideStub(instance); // includes varargs stub
      } else if (instance.signature.requiredParameters < instance.signature.parameterTypes.length) {
        functionTable[i] = this.ensureVarargsStub(instance);
      }
    }
    let overrideStubsSeen = new Set<Function>();
    do {
      // override stubs and overrides have cross-dependencies on each other, in that compiling
      // either may discover the respective other. do this in a loop until no more are found.
      resolver.discoveredOverride = false;
      for (let _values = Set_values(overrideStubs), i = 0, k = _values.length; i < k; ++i) {
        let instance = unchecked(_values[i]);
        let overrideInstances = resolver.resolveOverrides(instance);
        if (overrideInstances) {
          for (let i = 0, k = overrideInstances.length; i < k; ++i) {
            this.compileFunction(overrideInstances[i]);
          }
        }
        overrideStubsSeen.add(instance);
      }
    } while (overrideStubs.size > overrideStubsSeen.size || resolver.discoveredOverride);
    overrideStubsSeen.clear();
    for (let _values = Set_values(overrideStubs), i = 0, k = _values.length; i < k; ++i) {
      this.finalizeOverrideStub(_values[i]);
    }

    // finalize runtime features
    module.removeGlobal(BuiltinNames.rtti_base);
    if (this.runtimeFeatures & RuntimeFeatures.Rtti) compileRTTI(this);
    if (this.runtimeFeatures & RuntimeFeatures.visitGlobals) compileVisitGlobals(this);
    if (this.runtimeFeatures & RuntimeFeatures.visitMembers) compileVisitMembers(this);

    let memoryOffset = i64_align(this.memoryOffset, options.usizeType.byteSize);

    // finalize data
    module.removeGlobal(BuiltinNames.data_end);
    if ((this.runtimeFeatures & RuntimeFeatures.Data) != 0 || hasShadowStack) {
      if (options.isWasm64) {
        module.addGlobal(BuiltinNames.data_end, TypeRef.I64, false,
          module.i64(i64_low(memoryOffset), i64_high(memoryOffset))
        );
      } else {
        module.addGlobal(BuiltinNames.data_end, TypeRef.I32, false,
          module.i32(i64_low(memoryOffset))
        );
      }
    }

    // finalize stack (grows down from __heap_base to __data_end)
    module.removeGlobal(BuiltinNames.stack_pointer);
    if ((this.runtimeFeatures & RuntimeFeatures.Stack) != 0 || hasShadowStack) {
      memoryOffset = i64_align(
        i64_add(memoryOffset, i64_new(options.stackSize)),
        options.usizeType.byteSize
      );
      if (options.isWasm64) {
        module.addGlobal(BuiltinNames.stack_pointer, TypeRef.I64, true,
          module.i64(i64_low(memoryOffset), i64_high(memoryOffset))
        );
      } else {
        module.addGlobal(BuiltinNames.stack_pointer, TypeRef.I32, true,
          module.i32(i64_low(memoryOffset))
        );
      }
    }

    // finalize heap
    module.removeGlobal(BuiltinNames.heap_base);
    if ((this.runtimeFeatures & RuntimeFeatures.Heap) != 0 || hasShadowStack) {
      if (options.isWasm64) {
        module.addGlobal(BuiltinNames.heap_base, TypeRef.I64, false,
          module.i64(i64_low(memoryOffset), i64_high(memoryOffset))
        );
      } else {
        module.addGlobal(BuiltinNames.heap_base, TypeRef.I32, false,
          module.i32(i64_low(memoryOffset))
        );
      }
    }

    // setup default memory & table
    this.initDefaultMemory(memoryOffset);
    this.initDefaultTable();

    // expose the arguments length helper if there are varargs exports
    if (this.runtimeFeatures & RuntimeFeatures.setArgumentsLength) {
      module.addFunction(BuiltinNames.setArgumentsLength, TypeRef.I32, TypeRef.None, null,
        module.global_set(this.ensureArgumentsLength(), module.local_get(0, TypeRef.I32))
      );
      module.addFunctionExport(BuiltinNames.setArgumentsLength, ExportNames.setArgumentsLength);
    }

    // NOTE: no more element compiles from here. may go to the start function!

    // compile the start function if not empty or if explicitly requested
    let startIsEmpty = !startFunctionBody.length;
    let exportStart = options.exportStart;
    if (!startIsEmpty || exportStart != null) {
      let signature = startFunctionInstance.signature;
      if (!startIsEmpty && exportStart != null) {
        module.addGlobal(BuiltinNames.started, TypeRef.I32, true, module.i32(0));
        startFunctionBody.unshift(
          module.global_set(BuiltinNames.started, module.i32(1))
        );
        startFunctionBody.unshift(
          module.if(
            module.global_get(BuiltinNames.started, TypeRef.I32),
            module.return()
          )
        );
      }
      let funcRef = module.addFunction(
        startFunctionInstance.internalName,
        signature.paramRefs,
        signature.resultRefs,
        typesToRefs(startFunctionInstance.getNonParameterLocalTypes()),
        module.flatten(startFunctionBody)
      );
      startFunctionInstance.finalize(module, funcRef);
      if (exportStart == null) module.setStart(funcRef);
      else {
        if (!isIdentifier(exportStart) || module.hasExport(exportStart)) {
          this.error(
            DiagnosticCode.Start_function_name_0_is_invalid_or_conflicts_with_another_export,
            Source.native.range, exportStart
          );
        } else {
          module.addFunctionExport(startFunctionInstance.internalName, exportStart);
        }
      }
    }

    // Run custom passes
    if (hasShadowStack) {
      this.shadowStack.walkModule();
    }
    if (program.lookup("ASC_RTRACE") != null) {
      new RtraceMemory(this).walkModule();
    }

    return module;
  }

  private initDefaultMemory(memoryOffset: i64): void {
    this.memoryOffset = memoryOffset;

    let options = this.options;
    let module = this.module;
    let memorySegments = this.memorySegments;

    let initialPages: u32 = 0;
    let maximumPages = Module.UNLIMITED_MEMORY;
    let isSharedMemory = false;

    if (options.memoryBase /* is specified */ || memorySegments.length) {
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

    if (options.sharedMemory) {
      isSharedMemory = true;
      if (!options.maximumMemory) {
        this.error(
          DiagnosticCode.Shared_memory_requires_maximum_memory_to_be_defined,
          null
        );
        isSharedMemory = false;
      }
      if (!options.hasFeature(Feature.Threads)) {
        this.error(
          DiagnosticCode.Shared_memory_requires_feature_threads_to_be_enabled,
          null
        );
        isSharedMemory = false;
      }
    }

    // check that we didn't exceed lowMemoryLimit already
    let lowMemoryLimit32 = options.lowMemoryLimit;
    if (lowMemoryLimit32) {
      let lowMemoryLimit = i64_new(lowMemoryLimit32 & ~15);
      if (i64_gt(memoryOffset, lowMemoryLimit)) {
        this.error(
          DiagnosticCode.Low_memory_limit_exceeded_by_static_data_0_1,
          null, i64_to_string(memoryOffset), i64_to_string(lowMemoryLimit)
        );
      }
    }

    // Setup internal memory with default name "0"
    module.setMemory(
      initialPages,
      maximumPages,
      memorySegments,
      options.target,
      options.exportMemory ? ExportNames.Memory : null,
      CommonNames.DefaultMemory,
      isSharedMemory
    );

    // import memory if requested (default memory is named '0' by Binaryen)
    if (options.importMemory) {
      module.addMemoryImport(
        CommonNames.DefaultMemory,
        ImportNames.DefaultNamespace,
        ImportNames.Memory,
        isSharedMemory
      );
    }
  }

  private initDefaultTable(): void {
    let options = this.options;
    let module = this.module;

    // import and/or export table if requested (default table is named '0' by Binaryen)
    if (options.importTable) {
      module.addTableImport(
        CommonNames.DefaultTable,
        ImportNames.DefaultNamespace,
        ImportNames.Table
      );
      if (options.pedantic && options.willOptimize) {
        this.pedantic(
          DiagnosticCode.Importing_the_table_disables_some_indirect_call_optimizations,
          null
        );
      }
    }
    if (options.exportTable) {
      module.addTableExport(CommonNames.DefaultTable, ExportNames.Table);
      if (options.pedantic && options.willOptimize) {
        this.pedantic(
          DiagnosticCode.Exporting_the_table_disables_some_indirect_call_optimizations,
          null
        );
      }
    }

    // set up function table (first elem is blank)
    let tableBase = options.tableBase;
    if (!tableBase) tableBase = 1; // leave first elem blank
    let functionTable = this.functionTable;
    let functionTableNames = new Array<string>(functionTable.length);
    for (let i = 0, k = functionTable.length; i < k; ++i) {
      functionTableNames[i] = functionTable[i].internalName;
    }

    let initialTableSize = <Index>tableBase + functionTable.length;
    let maximumTableSize = Module.UNLIMITED_TABLE;

    if (!(options.importTable || options.exportTable)) {
      // use fixed size for non-imported and non-exported tables
      maximumTableSize = initialTableSize;
      if (options.willOptimize) {
        // Hint for directize pass which indicate table's content will not change
        // and can be better optimized
        module.setPassArgument("directize-initial-contents-immutable", "true");
      }
    }
    module.addFunctionTable(
      CommonNames.DefaultTable,
      initialTableSize,
      maximumTableSize,
      functionTableNames,
      module.i32(tableBase)
    );
  }

  // === Exports ==================================================================================

  /** Compiles the respective module exports for the specified entry file. */
  private compileModuleExports(file: File): void {
    let exports = file.exports;
    if (exports) {
      // TODO: for (let [elementName, element] of exports) {
      for (let _keys = Map_keys(exports), i = 0, k = _keys.length; i < k; ++i) {
        let elementName = unchecked(_keys[i]);
        let element = assert(exports.get(elementName));
        this.compileModuleExport(elementName, element);
      }
    }
    let exportsStar = file.exportsStar;
    if (exportsStar)  {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        this.compileModuleExports(exportsStar[i]);
      }
    }
  }

  /** Compiles the respective module export(s) for the specified element. */
  private compileModuleExport(name: string, element: DeclaredElement, prefix: string = ""): void {
    let module = this.module;
    switch (element.kind) {
      case ElementKind.FunctionPrototype: {
        // obtain the default instance
        let functionPrototype = <FunctionPrototype>element;
        if (!functionPrototype.is(CommonFlags.Generic)) {
          let functionInstance = this.resolver.resolveFunction(functionPrototype, null);
          if (functionInstance) {
            this.compileModuleExport(name, functionInstance, prefix);
          }
          return;
        }
        break;
      }
      case ElementKind.Function: {
        let functionInstance = <Function>element;
        if (!functionInstance.hasDecorator(DecoratorFlags.Builtin)) {
          let signature = functionInstance.signature;
          if (signature.requiredParameters < signature.parameterTypes.length) {
            // utilize varargs stub to fill in omitted arguments
            functionInstance = this.ensureVarargsStub(functionInstance);
            this.runtimeFeatures |= RuntimeFeatures.setArgumentsLength;
          }
          this.compileFunction(functionInstance);
          if (functionInstance.is(CommonFlags.Compiled)) {
            let exportName = prefix + name;
            if (!module.hasExport(exportName)) {
              module.addFunctionExport(functionInstance.internalName, exportName);
              this.hasCustomFunctionExports = true;
              let hasManagedOperands = signature.hasManagedOperands;
              if (hasManagedOperands) {
                this.shadowStack.noteExport(exportName, signature.getManagedOperandIndices());
              }
              if (!this.desiresExportRuntime) {
                let thisType = signature.thisType;
                if (
                  thisType && lowerRequiresExportRuntime(thisType) ||
                  liftRequiresExportRuntime(signature.returnType)
                ) {
                  this.desiresExportRuntime = true;
                } else {
                  let parameterTypes = signature.parameterTypes;
                  for (let i = 0, k = parameterTypes.length; i < k; ++i) {
                    if (lowerRequiresExportRuntime(parameterTypes[i])) {
                      this.desiresExportRuntime = true;
                      break;
                    }
                  }
                }
              }
            }
            return;
          }
        }
        break;
      }
      case ElementKind.Global: {
        let global = <Global>element;
        let isConst = global.is(CommonFlags.Const) || global.is(CommonFlags.Static | CommonFlags.Readonly);
        if (!isConst && !this.options.hasFeature(Feature.MutableGlobals)) {
          this.warning(
            DiagnosticCode.Feature_0_is_not_enabled,
            global.identifierNode.range, "mutable-globals"
          );
          return;
        }
        this.compileGlobal(global);
        if (global.is(CommonFlags.Compiled)) {
          let exportName = prefix + name;
          if (!module.hasExport(exportName)) {
            module.addGlobalExport(element.internalName, exportName);
            if (!this.desiresExportRuntime) {
              let type = global.type;
              if (
                liftRequiresExportRuntime(type) ||
                !global.is(CommonFlags.Const) && lowerRequiresExportRuntime(type)
              ) {
                this.desiresExportRuntime = true;
              }
            }
          }
          if (global.type == Type.v128) {
            this.warning(
              DiagnosticCode.Exchange_of_0_values_is_not_supported_by_all_embeddings,
              global.typeNode
                ? assert(global.typeNode).range
                : global.identifierNode.range,
              "v128"
            );
          }
          return;
        }
        break;
      }
      case ElementKind.Enum: {
        this.compileEnum(<Enum>element);
        let members = element.members;
        if (members) {
          let subPrefix = prefix + name + STATIC_DELIMITER;
          for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
            let memberName = unchecked(_keys[i]);
            let member = assert(members.get(memberName));
            if (!member.is(CommonFlags.Private)) {
              this.compileModuleExport(memberName, member, subPrefix);
            }
          }
        }
        return;
      }
      case ElementKind.EnumValue: {
        let enumValue = <EnumValue>element;
        if (!enumValue.isImmutable && !this.options.hasFeature(Feature.MutableGlobals)) {
          this.error(
            DiagnosticCode.Feature_0_is_not_enabled,
            enumValue.identifierNode.range, "mutable-globals"
          );
          return;
        }
        if (enumValue.is(CommonFlags.Compiled)) {
          let exportName = prefix + name;
          if (!module.hasExport(exportName)) {
            module.addGlobalExport(element.internalName, exportName);
          }
          return;
        }
        break;
      }
    }
    this.warning(
      DiagnosticCode.Only_variables_functions_and_enums_become_WebAssembly_module_exports,
      element.identifierNode.range
    );
  }

  // files

  /** Compiles the file matching the specified path. */
  compileFileByPath(normalizedPathWithoutExtension: string, reportNode: Node): void {
    let file: File;
    let filesByName = this.program.filesByName;
    let pathWithIndex: string;
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
    if (file.is(CommonFlags.Compiled)) return;
    file.set(CommonFlags.Compiled);

    // compile top-level statements within the file's start function
    let startFunction = file.startFunction;
    let startSignature = startFunction.signature;
    let previousBody = this.currentBody;
    let startFunctionBody = new Array<ExpressionRef>();
    this.currentBody = startFunctionBody;

    // compile top-level statements
    let previousFlow = this.currentFlow;
    let flow = startFunction.flow;
    this.currentFlow = flow;
    for (let statements = file.source.statements, i = 0, k = statements.length; i < k; ++i) {
      this.compileTopLevelStatement(statements[i], startFunctionBody);
    }
    // no need to insert unreachable since last statement should have done that
    this.currentFlow = previousFlow;
    this.currentBody = previousBody;

    // if top-level statements are present, make the per-file start function and call it in start
    if (startFunctionBody.length) {
      let module = this.module;
      let locals = startFunction.localsByIndex;
      let numLocals = locals.length;
      let varTypes = new Array<TypeRef>(numLocals);
      for (let i = 0; i < numLocals; ++i) varTypes[i] = locals[i].type.toRef();
      const funcRef = module.addFunction(
        startFunction.internalName,
        startSignature.paramRefs,
        startSignature.resultRefs,
        varTypes,
        module.flatten(startFunctionBody)
      );
      startFunction.finalize(module, funcRef);
      previousBody.push(
        module.call(startFunction.internalName, null, TypeRef.None)
      );
    }
  }

  // === Globals ==================================================================================

  /** Tries to compile a global variable lazily. */
  compileGlobalLazy(global: Global, reportNode: Node): bool {
    if (global.is(CommonFlags.Compiled)) return !global.is(CommonFlags.Errored);
    if (global.hasAnyDecorator(DecoratorFlags.Lazy | DecoratorFlags.Builtin) || global.is(CommonFlags.Ambient)) {
      return this.compileGlobal(global); // compile now
    }
    // Otherwise the global is used before its initializer executes
    this.errorRelated(
      DiagnosticCode.Variable_0_used_before_its_declaration,
      reportNode.range, global.identifierNode.range, global.internalName
    );
    return false;
  }

  /** Compiles a global variable. */
  compileGlobal(global: Global): bool {
    if (global.is(CommonFlags.Compiled)) return !global.is(CommonFlags.Errored);
    global.set(CommonFlags.Compiled);

    let pendingElements = this.pendingElements;
    pendingElements.add(global);

    let module = this.module;
    let initExpr: ExpressionRef = 0;
    let typeNode = global.typeNode;
    let initializerNode = global.initializerNode;

    if (!global.is(CommonFlags.Resolved)) {

      // Resolve type if annotated
      if (typeNode) {
        let resolvedType = this.resolver.resolveType(typeNode, global.parent); // reports
        if (!resolvedType) {
          global.set(CommonFlags.Errored);
          pendingElements.delete(global);
          return false;
        }
        if (resolvedType == Type.void) {
          this.error(
            DiagnosticCode.Type_expected,
            typeNode.range
          );
          global.set(CommonFlags.Errored);
          pendingElements.delete(global);
          return false;
        }
        global.setType(resolvedType);
        this.program.checkTypeSupported(resolvedType, typeNode);

      // Otherwise infer type from initializer
      } else if (initializerNode) {
        let previousFlow = this.currentFlow;
        if (global.hasDecorator(DecoratorFlags.Lazy)) {
          this.currentFlow = global.file.startFunction.flow;
        }
        initExpr = this.compileExpression(initializerNode, Type.auto, // reports
          Constraints.MustWrap | Constraints.PreferStatic
        );
        this.currentFlow = previousFlow;
        if (this.currentType == Type.void) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            initializerNode.range, this.currentType.toString(), "<auto>"
          );
          global.set(CommonFlags.Errored);
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
        global.set(CommonFlags.Errored);
        pendingElements.delete(global);
        return false;
      }
    }

    // Handle ambient builtins like '__heap_base' that need to be resolved but are added explicitly
    if (global.is(CommonFlags.Ambient) && global.hasDecorator(DecoratorFlags.Builtin)) {
      let internalName = global.internalName;
      if (internalName == BuiltinNames.data_end) this.runtimeFeatures |= RuntimeFeatures.Data;
      else if (internalName == BuiltinNames.stack_pointer) this.runtimeFeatures |= RuntimeFeatures.Stack;
      else if (internalName == BuiltinNames.heap_base) this.runtimeFeatures |= RuntimeFeatures.Heap;
      else if (internalName == BuiltinNames.rtti_base) this.runtimeFeatures |= RuntimeFeatures.Rtti;
      pendingElements.delete(global);
      return true;
    }

    let type = global.type;

    // Enforce either an initializer, a definitive assignment or a nullable type
    // to guarantee soundness when globals are accessed. In the absence of an
    // initializer, a definitive assignment guarantees a runtime check, whereas
    // a nullable type guarantees that obtaining default `null` is OK. Avoids:
    //
    //   let foo: string;
    //   function bar() {
    //     foo.length; // no error in TS even though undefined
    //   }
    //   bar();
    if (
      !initializerNode && !global.is(CommonFlags.DefinitelyAssigned) &&
      type.isReference && !type.isNullableReference
    ) {
      this.error(
        DiagnosticCode.Initializer_definitive_assignment_or_nullable_type_expected,
        global.identifierNode.range
      );
    }

    let typeRef = type.toRef();
    let isDeclaredConstant = global.is(CommonFlags.Const) || global.is(CommonFlags.Static | CommonFlags.Readonly);
    let isDeclaredInline = global.hasDecorator(DecoratorFlags.Inline);

    // Handle imports
    if (global.is(CommonFlags.Ambient)) {

      // Constant global or mutable globals enabled
      if (isDeclaredConstant || this.options.hasFeature(Feature.MutableGlobals)) {
        mangleImportName(global, global.declaration);
        this.program.markModuleImport(mangleImportName_moduleName, mangleImportName_elementName, global);
        module.addGlobalImport(
          global.internalName,
          mangleImportName_moduleName,
          mangleImportName_elementName,
          typeRef,
          !isDeclaredConstant
        );
        pendingElements.delete(global);
        if (!this.desiresExportRuntime && lowerRequiresExportRuntime(type)) {
          this.desiresExportRuntime = true;
        }
        return true;
      }

      // Importing mutable globals is not supported in the MVP
      this.error(
        DiagnosticCode.Feature_0_is_not_enabled,
        global.declaration.range, "mutable-globals"
      );
      global.set(CommonFlags.Errored);
      pendingElements.delete(global);
      return false;
    }

    // The MVP does not yet support initializer expressions other than constants and gets of
    // imported immutable globals, hence such initializations must be performed in the start.
    let initializeInStart = false;

    // Evaluate initializer if present
    if (initializerNode) {
      if (!initExpr) {
        let previousFlow = this.currentFlow;
        if (global.hasDecorator(DecoratorFlags.Lazy)) {
          this.currentFlow = global.file.startFunction.flow;
        }
        initExpr = this.compileExpression(initializerNode, type,
          Constraints.ConvImplicit | Constraints.MustWrap | Constraints.PreferStatic
        );
        this.currentFlow = previousFlow;
      }

      // If not a constant expression, attempt to precompute
      if (!module.isConstExpression(initExpr)) {
        if (isDeclaredConstant) {
          let precomp = module.runExpression(initExpr, ExpressionRunnerFlags.PreserveSideeffects);
          if (precomp) {
            initExpr = precomp;
          } else {
            initializeInStart = true;
          }
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
            if (global.is(CommonFlags.Ambient)) initializeInStart = false;
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
            case <u32>TypeRef.I32: {
              global.constantValueKind = ConstantValueKind.Integer;
              global.constantIntegerValue = i64_new(getConstValueI32(initExpr), 0);
              break;
            }
            case <u32>TypeRef.I64: {
              global.constantValueKind = ConstantValueKind.Integer;
              global.constantIntegerValue = i64_new(
                getConstValueI64Low(initExpr),
                getConstValueI64High(initExpr)
              );
              break;
            }
            case <u32>TypeRef.F32: {
              global.constantValueKind = ConstantValueKind.Float;
              global.constantFloatValue = getConstValueF32(initExpr);
              break;
            }
            case <u32>TypeRef.F64: {
              global.constantValueKind = ConstantValueKind.Float;
              global.constantFloatValue = getConstValueF64(initExpr);
              break;
            }
            default: {
              assert(false);
              global.set(CommonFlags.Errored);
              pendingElements.delete(global);
              return false;
            }
          }
          global.set(CommonFlags.Inlined); // inline the value from now on
        }
      }

    // Initialize to zero if there's no initializer
    } else {
      if (global.is(CommonFlags.Inlined)) {
        initExpr = this.compileInlineConstant(global, global.type, Constraints.PreferStatic);
      } else {
        initExpr = this.makeZero(type);
      }
    }

    let internalName = global.internalName;

    if (initializeInStart) { // initialize to mutable zero and set the actual value in start
      if (isDeclaredInline) {
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          findDecorator(DecoratorKind.Inline, global.decoratorNodes)!.range, "inline"
        );
      }
      module.addGlobal(internalName, typeRef, true, this.makeZero(type));
      this.currentBody.push(
        module.global_set(internalName, initExpr)
      );
    } else if (!isDeclaredInline) { // compile normally
      module.addGlobal(internalName, typeRef, !isDeclaredConstant, initExpr);
    }
    pendingElements.delete(global);
    return true;
  }

  // === Enums ====================================================================================

  /** Compiles an enum. */
  compileEnum(element: Enum): bool {
    if (element.is(CommonFlags.Compiled)) return !element.is(CommonFlags.Errored);
    element.set(CommonFlags.Compiled);

    let pendingElements = this.pendingElements;
    pendingElements.add(element);

    let module = this.module;
    let previousParent = this.currentParent;
    this.currentParent = element;
    let previousValue: EnumValue | null = null;
    let previousValueIsMut = false;
    let isInline = element.is(CommonFlags.Const) || element.hasDecorator(DecoratorFlags.Inline);

    let members = element.members;
    if (members) {
      // TODO: for (let member of element.members.values()) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        if (member.kind != ElementKind.EnumValue) continue; // happens if an enum is also a namespace
        let initInStart = false;
        let enumValue = <EnumValue>member;
        let valueNode = enumValue.valueNode;
        enumValue.set(CommonFlags.Compiled);
        let previousFlow = this.currentFlow;
        if (element.hasDecorator(DecoratorFlags.Lazy)) {
          this.currentFlow = element.file.startFunction.flow;
        }
        let initExpr: ExpressionRef;
        if (valueNode) {
          initExpr = this.compileExpression(valueNode, Type.i32,
            Constraints.ConvImplicit
          );
          if (getExpressionId(initExpr) != ExpressionId.Const) {
            let precomp = module.runExpression(initExpr, ExpressionRunnerFlags.PreserveSideeffects);
            if (precomp) {
              initExpr = precomp;
            } else {
              if (element.is(CommonFlags.Const)) {
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
              module.global_get(previousValue.internalName, TypeRef.I32),
              module.i32(1)
            );
            let precomp = module.runExpression(initExpr, ExpressionRunnerFlags.PreserveSideeffects);
            if (precomp) {
              initExpr = precomp;
            } else {
              if (element.is(CommonFlags.Const)) {
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
          module.addGlobal(enumValue.internalName, TypeRef.I32, true, module.i32(0));
          this.currentBody.push(
            this.makeGlobalAssignment(enumValue, initExpr, Type.i32, false)
          );
          previousValueIsMut = true;
        } else {
          if (isInline) {
            enumValue.setConstantIntegerValue(i64_new(getConstValueI32(initExpr)), Type.i32);
            if (enumValue.is(CommonFlags.ModuleExport)) {
              module.addGlobal(enumValue.internalName, TypeRef.I32, false, initExpr);
            }
          } else {
            module.addGlobal(enumValue.internalName, TypeRef.I32, false, initExpr);
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
    if (instance.is(CommonFlags.Compiled)) return !instance.is(CommonFlags.Errored);

    if (!forceStdAlternative) {
      if (instance.hasDecorator(DecoratorFlags.Builtin)) return true;
      if (instance.hasDecorator(DecoratorFlags.Lazy)) {
        this.lazyFunctions.add(instance);
        return true;
      }
    }

    // ensure the function has no duplicate parameters
    let parameters = instance.prototype.functionTypeNode.parameters;
    let numParameters = parameters.length;
    if (numParameters >= 2) {
      let visited = new Set<string>();
      visited.add(parameters[0].name.text);
      for (let i = 1; i < numParameters; i++) {
        let paramIdentifier = parameters[i].name;
        let paramName = paramIdentifier.text;
        if (!visited.has(paramName)) {
          visited.add(paramName);
        } else {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            paramIdentifier.range, paramName
          );
        }
      }
    }

    instance.set(CommonFlags.Compiled);
    let pendingElements = this.pendingElements;
    pendingElements.add(instance);

    let previousType = this.currentType;
    let module = this.module;
    let signature = instance.signature;
    let bodyNode = instance.prototype.bodyNode;
    let declarationNode = instance.declaration;
    assert(declarationNode.kind == NodeKind.FunctionDeclaration || declarationNode.kind == NodeKind.MethodDeclaration);
    this.checkSignatureSupported(instance.signature, (<FunctionDeclaration>declarationNode).signature);

    let funcRef: FunctionRef = 0;

    // concrete function
    if (bodyNode) {

      // must not be ambient
      if (instance.is(CommonFlags.Ambient)) {
        this.error(
          DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts,
          instance.identifierNode.range
        );
      }

      // cannot have an annotated external name or code
      if (instance.hasAnyDecorator(DecoratorFlags.External | DecoratorFlags.ExternalJs)) {
        let decoratorNodes = instance.decoratorNodes;
        let decorator: DecoratorNode | null;
        if (decorator = findDecorator(DecoratorKind.External, decoratorNodes)) {
          this.error(
            DiagnosticCode.Decorator_0_is_not_valid_here,
            decorator.range, "external"
          );
        }
        if (decorator = findDecorator(DecoratorKind.ExternalJs, decoratorNodes)) {
          this.error(
            DiagnosticCode.Decorator_0_is_not_valid_here,
            decorator.range, "external.js"
          );
        }
      }

      // compile body in this function's context
      let previousFlow = this.currentFlow;
      let flow = instance.flow;
      this.currentFlow = flow;
      let stmts = new Array<ExpressionRef>();

      if (!this.compileFunctionBody(instance, stmts)) {
        stmts.push(module.unreachable());
      }

      this.currentFlow = previousFlow;

      // create the function
      funcRef = module.addFunction(
        instance.internalName,
        signature.paramRefs,
        signature.resultRefs,
        typesToRefs(instance.getNonParameterLocalTypes()),
        module.flatten(stmts, instance.signature.returnType.toRef())
      );

    // imported function
    } else if (instance.is(CommonFlags.Ambient)) {
      mangleImportName(instance, declarationNode); // TODO: check for duplicates
      this.program.markModuleImport(mangleImportName_moduleName, mangleImportName_elementName, instance);
      module.addFunctionImport(
        instance.internalName,
        mangleImportName_moduleName,
        mangleImportName_elementName,
        signature.paramRefs,
        signature.resultRefs
      );
      funcRef = module.getFunction(instance.internalName);
      if (!this.desiresExportRuntime) {
        let thisType = signature.thisType;
        if (
          thisType && liftRequiresExportRuntime(thisType) ||
          lowerRequiresExportRuntime(signature.returnType)
        ) {
          this.desiresExportRuntime = true;
        } else {
          let parameterTypes = signature.parameterTypes;
          for (let i = 0, k = parameterTypes.length; i < k; ++i) {
            if (liftRequiresExportRuntime(parameterTypes[i])) {
              this.desiresExportRuntime = true;
              break;
            }
          }
        }
      }

    // abstract or interface function
    } else if (instance.is(CommonFlags.Abstract) || instance.parent.kind == ElementKind.Interface) {
      funcRef = module.addFunction(
        instance.internalName,
        signature.paramRefs,
        signature.resultRefs,
        null,
        module.unreachable()
      );

    } else {
      // built-in field accessor?
      if (instance.isAny(CommonFlags.Get | CommonFlags.Set)) {
        let propertyName = instance.declaration.name.text;
        let propertyParent = assert(instance.parent.getMember(propertyName));
        assert(propertyParent.kind == ElementKind.PropertyPrototype);
        let propertyInstance = (<PropertyPrototype>propertyParent).instance;
        if (propertyInstance && propertyInstance.isField) {
          funcRef = instance.is(CommonFlags.Get)
            ? this.makeBuiltinFieldGetter(propertyInstance)
            : this.makeBuiltinFieldSetter(propertyInstance);
          assert(instance.is(CommonFlags.Compiled));
        }
      }
      if (!funcRef) {
        this.error(
          DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
          instance.identifierNode.range
        );
        instance.set(CommonFlags.Errored);
      }
    }

    if (instance.is(CommonFlags.Ambient) || instance.is(CommonFlags.Export)) {
      // Verify and print warn if signature has v128 type for imported or exported functions
      let hasVectorValueOperands = signature.hasVectorValueOperands;
      if (hasVectorValueOperands) {
        let range: Range;
        let fnTypeNode = instance.prototype.functionTypeNode;
        if (signature.returnType == Type.v128) {
          range = fnTypeNode.returnType.range;
        } else {
          let firstIndex = signature.getVectorValueOperandIndices()[0];
          range = fnTypeNode.parameters[firstIndex].range;
        }
        this.warning(
          DiagnosticCode.Exchange_of_0_values_is_not_supported_by_all_embeddings,
          range, "v128"
        );
      }
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
    let module = this.module;
    let bodyNode = assert(instance.prototype.bodyNode);
    let returnType = instance.signature.returnType;
    let flow = this.currentFlow;
    let thisLocal = instance.signature.thisType
      ? assert(flow.lookupLocal(CommonNames.this_))
      : null;
    let bodyStartIndex = stmts.length;

    // compile statements
    if (bodyNode.kind == NodeKind.Block) {
      stmts = this.compileStatements((<BlockStatement>bodyNode).statements, stmts);
    } else {
      // must be an expression statement if not a block
      assert(bodyNode.kind == NodeKind.Expression);

      // must be an arrow function
      assert(instance.prototype.arrowKind);

      // none of the following can be an arrow function
      assert(!instance.isAny(CommonFlags.Constructor | CommonFlags.Get | CommonFlags.Set));

      let expr = this.compileExpression((<ExpressionStatement>bodyNode).expression, returnType, Constraints.ConvImplicit);
      if (!flow.canOverflow(expr, returnType)) flow.set(FlowFlags.ReturnsWrapped);
      if (flow.isNonnull(expr, returnType)) flow.set(FlowFlags.ReturnsNonNull);

      if (!stmts) stmts = [ expr ];
      else stmts.push(expr);

      if (!flow.is(FlowFlags.Terminates)) {
        if (!flow.canOverflow(expr, returnType)) flow.set(FlowFlags.ReturnsWrapped);
        if (flow.isNonnull(expr, returnType)) flow.set(FlowFlags.ReturnsNonNull);
        flow.set(FlowFlags.Returns | FlowFlags.Terminates);
      }
    }

    // Make constructors return their instance pointer, and prepend a conditional
    // allocation if any code path accesses `this`.
    if (instance.is(CommonFlags.Constructor)) {
      assert(instance.is(CommonFlags.Instance));
      thisLocal = assert(thisLocal);
      let parent = assert(instance.parent);
      assert(parent.kind == ElementKind.Class);
      let classInstance = <Class>parent;

      if (flow.isAny(FlowFlags.AccessesThis | FlowFlags.ConditionallyAccessesThis) || !flow.is(FlowFlags.Terminates)) {

        // Allocate `this` if not a super call, and initialize fields
        let allocStmts = new Array<ExpressionRef>();
        allocStmts.push(
          this.makeConditionalAllocation(classInstance, thisLocal.index)
        );
        this.makeFieldInitializationInConstructor(classInstance, allocStmts);

        // Insert right before the body
        for (let i = stmts.length - 1; i >= bodyStartIndex; --i) {
          stmts[i + 1] = stmts[i];
        }
        stmts[bodyStartIndex] = module.flatten(allocStmts, TypeRef.None);

        // Just prepended allocation is dropped when returning non-'this'
        if (flow.is(FlowFlags.MayReturnNonThis)) {
          if (this.options.pedantic) {
            this.pedantic(
              DiagnosticCode.Explicitly_returning_constructor_drops_this_allocation,
              instance.identifierNode.range
            );
          }
        }
      }

      // Returning something else than 'this' would break 'super()' calls
      if (flow.is(FlowFlags.MayReturnNonThis) && !classInstance.hasDecorator(DecoratorFlags.Final)) {
        this.error(
          DiagnosticCode.A_class_with_a_constructor_explicitly_returning_something_else_than_this_must_be_final,
          classInstance.identifierNode.range
        );
      }

      // Implicitly return `this` if the flow falls through
      if (!flow.is(FlowFlags.Terminates)) {
        stmts.push(
          module.local_get(thisLocal.index, this.options.sizeTypeRef)
        );
        flow.set(FlowFlags.Returns | FlowFlags.ReturnsNonNull | FlowFlags.Terminates);
      }

      // check that super has been called if this is a derived class
      if (classInstance.base && !classInstance.prototype.implicitlyExtendsObject && !flow.is(FlowFlags.CallsSuper)) {
        this.error(
          DiagnosticCode.Constructors_for_derived_classes_must_contain_a_super_call,
          instance.prototype.declaration.range
        );
      }

    // if this is a normal function, make sure that all branches terminate
    } else if (returnType != Type.void && !flow.is(FlowFlags.Terminates)) {
      this.error(
        DiagnosticCode.A_function_whose_declared_type_is_not_void_must_return_a_value,
        instance.prototype.functionTypeNode.returnType.range
      );
      return false; // not recoverable
    }

    return true;
  }

  /** Makes a built-in getter of a property that is a field. */
  private makeBuiltinFieldGetter(property: Property): FunctionRef {
    let getterInstance = assert(property.getterInstance);
    let module = this.module;
    let valueType = property.type;
    let valueTypeRef = valueType.toRef();
    let thisTypeRef = this.options.sizeTypeRef;
    getterInstance.set(CommonFlags.Compiled);
    let body = module.load(valueType.byteSize, valueType.isSignedIntegerValue,
      module.local_get(0, thisTypeRef),
      valueTypeRef, property.memoryOffset
    );
    let flowBefore = this.currentFlow;
    let flow = getterInstance.flow;
    this.currentFlow = flow;
    if (property.is(CommonFlags.DefinitelyAssigned) && valueType.isReference && !valueType.isNullableReference) {
      body = this.makeRuntimeNonNullCheck(body, valueType, getterInstance.identifierNode);
    }
    this.currentFlow = flowBefore;
    return module.addFunction(
      getterInstance.internalName,
      thisTypeRef,
      valueTypeRef,
      typesToRefs(getterInstance.getNonParameterLocalTypes()),
      body
    );
  }

  /** Makes a built-in setter of a property that is a field. */
  private makeBuiltinFieldSetter(property: Property): FunctionRef {
    let setterInstance = assert(property.setterInstance);
    let module = this.module;
    let valueType = property.type;
    let thisTypeRef = this.options.sizeTypeRef;
    let valueTypeRef = valueType.toRef();
    // void(this.field = value)
    let bodyExpr = module.store(valueType.byteSize,
      module.local_get(0, thisTypeRef),
      module.local_get(1, valueTypeRef),
      valueTypeRef, property.memoryOffset
    );
    if (valueType.isManaged) {
      let parent = setterInstance.parent;
      assert(parent.kind == ElementKind.Class);
      if ((<Class>parent).type.isManaged) {
        let linkInstance = this.program.linkInstance;
        this.compileFunction(linkInstance);
        bodyExpr = module.block(null, [
          bodyExpr,
          module.call(linkInstance.internalName, [
            module.local_get(0, thisTypeRef),
            module.local_get(1, valueTypeRef),
            module.i32(0)
          ], TypeRef.None)
        ], TypeRef.None);
      }
    }
    setterInstance.set(CommonFlags.Compiled);
    return module.addFunction(
      setterInstance.internalName,
      createType([ thisTypeRef, valueTypeRef ]),
      TypeRef.None,
      null,
      bodyExpr
    );
  }

  // === Memory ===================================================================================

  /** Adds a static memory segment with the specified data. */
  addAlignedMemorySegment(buffer: Uint8Array, alignment: i32 = 16): MemorySegment {
    assert(isPowerOf2(alignment));
    let memoryOffset = i64_align(this.memoryOffset, alignment);
    let segment = new MemorySegment(buffer, memoryOffset);
    this.memorySegments.push(segment);
    this.memoryOffset = i64_add(memoryOffset, i64_new(buffer.length));
    return segment;
  }

  /** Adds a static memory segment representing a runtime object. */
  addRuntimeMemorySegment(buffer: Uint8Array): MemorySegment {
    let memoryOffset = this.program.computeBlockStart64(this.memoryOffset);
    let segment = new MemorySegment(buffer, memoryOffset);
    this.memorySegments.push(segment);
    this.memoryOffset = i64_add(memoryOffset, i64_new(buffer.length));
    return segment;
  }

  /** Ensures that a string exists in static memory and returns a pointer expression. Deduplicates. */
  ensureStaticString(stringValue: string): ExpressionRef {
    let ptr = this.ensureStaticStringPtr(stringValue);
    this.currentType = this.program.stringInstance.type;
    return this.module.usize(ptr);
  }

  /** Ensures that a string exists in static memory and returns a pointer to it. Deduplicates. */
  ensureStaticStringPtr(stringValue: string): i64 {
    let program = this.program;
    let totalOverhead = program.totalOverhead;
    let stringInstance = assert(program.stringInstance);
    let stringSegment: MemorySegment;
    let segments = this.stringSegments;
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
    return i64_add(stringSegment.offset, i64_new(totalOverhead));
  }

  /** Writes a series of static values of the specified type to a buffer. */
  writeStaticBuffer(buf: Uint8Array, pos: i32, elementType: Type, values: ExpressionRef[]): i32 {
    let length = values.length;
    let byteSize = elementType.byteSize;
    let elementTypeRef = elementType.toRef();
    switch (<u32>elementTypeRef) {
      case <u32>TypeRef.I32: {
        switch (byteSize) {
          case 1: {
            for (let i = 0; i < length; ++i) {
              let value = values[i];
              assert(getExpressionType(value) == elementTypeRef);
              assert(getExpressionId(value) == ExpressionId.Const);
              writeI8(getConstValueI32(value), buf, pos);
              pos += 1;
            }
            break;
          }
          case 2: {
            for (let i = 0; i < length; ++i) {
              let value = values[i];
              assert(getExpressionType(value) == elementTypeRef);
              assert(getExpressionId(value) == ExpressionId.Const);
              writeI16(getConstValueI32(value), buf, pos);
              pos += 2;
            }
            break;
          }
          case 4: {
            for (let i = 0; i < length; ++i) {
              let value = values[i];
              assert(getExpressionType(value) == elementTypeRef);
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
      case <u32>TypeRef.I64: {
        for (let i = 0; i < length; ++i) {
          let value = values[i];
          assert(getExpressionType(value) == elementTypeRef);
          assert(getExpressionId(value) == ExpressionId.Const);
          writeI64(i64_new(getConstValueI64Low(value), getConstValueI64High(value)), buf, pos);
          pos += 8;
        }
        break;
      }
      case <u32>TypeRef.F32: {
        for (let i = 0; i < length; ++i) {
          let value = values[i];
          assert(getExpressionType(value) == elementTypeRef);
          assert(getExpressionId(value) == ExpressionId.Const);
          writeF32(getConstValueF32(value), buf, pos);
          pos += 4;
        }
        break;
      }
      case <u32>TypeRef.F64: {
        for (let i = 0; i < length; ++i) {
          let value = values[i];
          assert(getExpressionType(value) == elementTypeRef);
          assert(getExpressionId(value) == ExpressionId.Const);
          writeF64(getConstValueF64(value), buf, pos);
          pos += 8;
        }
        break;
      }
      case <u32>TypeRef.V128: {
        for (let i = 0; i < length; ++i) {
          let value = values[i];
          assert(getExpressionType(value) == elementTypeRef);
          assert(getExpressionId(value) == ExpressionId.Const);
          writeV128(getConstValueV128(value), buf, pos);
          pos += 16;
        }
        break;
      }
      case <u32>TypeRef.None: {
        // nothing to write
        break;
      }
      default: assert(false);
    }
    return pos;
  }

  /** Adds a buffer to static memory and returns the created segment. */
  addStaticBuffer(elementType: Type, values: ExpressionRef[], id: u32 = this.program.arrayBufferInstance.id): MemorySegment {
    let program = this.program;
    let arrayBufferInstance = program.arrayBufferInstance;
    let buf = arrayBufferInstance.createBuffer(values.length * elementType.byteSize);
    this.program.OBJECTInstance.writeField("rtId", id, buf, 0); // use specified rtId
    this.writeStaticBuffer(buf, program.totalOverhead, elementType, values);
    return this.addRuntimeMemorySegment(buf);
  }

  /** Adds an array header to static memory and returns the created segment. */
  private addStaticArrayHeader(
    elementType: Type,
    bufferSegment: MemorySegment,
    /** Optional array instance override. */
    arrayInstance: Class | null = null
  ): MemorySegment {
    let program = this.program;
    if (!arrayInstance) {
      arrayInstance = assert(this.resolver.resolveClass(this.program.arrayPrototype, [ elementType ]));
    }
    let bufferLength = readI32(bufferSegment.buffer, program.OBJECTInstance.offsetof("rtSize"));
    let arrayLength = i32(bufferLength / elementType.byteSize);
    let bufferAddress = i64_add(bufferSegment.offset, i64_new(program.totalOverhead));
    let buf = arrayInstance.createBuffer();
    assert(arrayInstance.writeField("buffer", bufferAddress, buf));
    assert(arrayInstance.writeField("dataStart", bufferAddress, buf));
    assert(arrayInstance.writeField("byteLength", bufferLength, buf));
    assert(arrayInstance.writeField("length_", arrayLength, buf));
    return this.addRuntimeMemorySegment(buf);
  }

  // === Table ====================================================================================

  /** Ensures that a runtime counterpart of the specified function exists and returns its address. */
  ensureRuntimeFunction(instance: Function): i64 {
    assert(instance.is(CommonFlags.Compiled) && !instance.is(CommonFlags.Stub));
    let program = this.program;
    let memorySegment = instance.memorySegment;
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
      case NodeKind.ClassDeclaration: {
        let memberStatements = (<ClassDeclaration>statement).members;
        for (let i = 0, k = memberStatements.length; i < k; ++i) {
          this.compileTopLevelStatement(memberStatements[i], body);
        }
        break;
      }
      case NodeKind.EnumDeclaration: {
        let element = this.program.getElementByDeclaration(<EnumDeclaration>statement);
        if (element) {
          assert(element.kind == ElementKind.Enum);
          if (!element.hasDecorator(DecoratorFlags.Lazy)) this.compileEnum(<Enum>element);
        }
        break;
      }
      case NodeKind.NamespaceDeclaration: {
        let declaration = <NamespaceDeclaration>statement;
        let element = this.program.getElementByDeclaration(declaration);
        if (element) {
          // any potential merged element
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
      case NodeKind.Variable: {
        let declarations = (<VariableStatement>statement).declarations;
        for (let i = 0, k = declarations.length; i < k; ++i) {
          let element = this.program.getElementByDeclaration(declarations[i]);
          if (element) {
            assert(element.kind == ElementKind.Global);
            if (
              !element.is(CommonFlags.Ambient) && // delay imports
              !element.hasDecorator(DecoratorFlags.Lazy)
            ) this.compileGlobal(<Global>element);
          }
        }
        break;
      }
      case NodeKind.FieldDeclaration: {
        let element = this.program.getElementByDeclaration(<FieldDeclaration>statement);
        if (element && element.kind == ElementKind.Global) { // static
          if (!element.hasDecorator(DecoratorFlags.Lazy)) this.compileGlobal(<Global>element);
        }
        break;
      }
      case NodeKind.Export: {
        let exportStatement = <ExportStatement>statement;
        let internalPath = exportStatement.internalPath;
        if (internalPath != null) {
          this.compileFileByPath(internalPath, assert(exportStatement.path));
        }
        break;
      }
      case NodeKind.ExportDefault: {
        this.compileTopLevelStatement((<ExportDefaultStatement>statement).declaration, body);
        break;
      }
      case NodeKind.Import: {
        let importStatement = <ImportStatement>statement;
        this.compileFileByPath(importStatement.internalPath, importStatement.path);
        break;
      }
      case NodeKind.FunctionDeclaration:
      case NodeKind.MethodDeclaration:
      case NodeKind.InterfaceDeclaration:
      case NodeKind.IndexSignature:
      case NodeKind.TypeDeclaration: break;
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
    statement: Statement
  ): ExpressionRef {
    let module = this.module;
    let stmt: ExpressionRef;
    switch (statement.kind) {
      case NodeKind.Block: {
        stmt = this.compileBlockStatement(<BlockStatement>statement);
        break;
      }
      case NodeKind.Break: {
        stmt = this.compileBreakStatement(<BreakStatement>statement);
        break;
      }
      case NodeKind.Continue: {
        stmt = this.compileContinueStatement(<ContinueStatement>statement);
        break;
      }
      case NodeKind.Do: {
        stmt = this.compileDoStatement(<DoStatement>statement);
        break;
      }
      case NodeKind.Empty: {
        stmt = this.compileEmptyStatement(<EmptyStatement>statement);
        break;
      }
      case NodeKind.Expression: {
        stmt = this.compileExpressionStatement(<ExpressionStatement>statement);
        break;
      }
      case NodeKind.For: {
        stmt = this.compileForStatement(<ForStatement>statement);
        break;
      }
      case NodeKind.ForOf: {
        stmt = this.compileForOfStatement(<ForOfStatement>statement);
        break;
      }
      case NodeKind.If: {
        stmt = this.compileIfStatement(<IfStatement>statement);
        break;
      }
      case NodeKind.Return: {
        stmt = this.compileReturnStatement(<ReturnStatement>statement);
        break;
      }
      case NodeKind.Switch: {
        stmt = this.compileSwitchStatement(<SwitchStatement>statement);
        break;
      }
      case NodeKind.Throw: {
        stmt = this.compileThrowStatement(<ThrowStatement>statement);
        break;
      }
      case NodeKind.Try: {
        stmt = this.compileTryStatement(<TryStatement>statement);
        break;
      }
      case NodeKind.Variable: {
        stmt = this.compileVariableStatement(<VariableStatement>statement);
        if (!stmt) stmt = module.nop();
        break;
      }
      case NodeKind.Void: {
        stmt = this.compileVoidStatement(<VoidStatement>statement);
        break;
      }
      case NodeKind.While: {
        stmt = this.compileWhileStatement(<WhileStatement>statement);
        break;
      }
      case NodeKind.TypeDeclaration: {
        // TODO: integrate inner type declaration into flow
        this.error(
          DiagnosticCode.Not_implemented_0,
          statement.range,
          "Inner type alias"
        );
        stmt = module.unreachable();
        break;
      }
      case NodeKind.Module: {
        stmt = module.nop();
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
    /** Statements to append to. Also returned, created if omitted. */
    stmts: ExpressionRef[] | null = null
  ): ExpressionRef[] {
    let numStatements = statements.length;
    if (!stmts) {
      stmts = new Array<ExpressionRef>(numStatements);
      stmts.length = 0;
    }
    let flow = this.currentFlow;
    for (let i = 0; i < numStatements; ++i) {
      let stmt = this.compileStatement(statements[i]);
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
      if (flow.isAny(FlowFlags.Terminates | FlowFlags.Breaks)) break;
    }
    return stmts;
  }

  private compileBlockStatement(
    statement: BlockStatement
  ): ExpressionRef {
    let statements = statement.statements;
    let outerFlow = this.currentFlow;
    let innerFlow = outerFlow.fork();
    this.currentFlow = innerFlow;

    let stmts = this.compileStatements(statements);
    outerFlow.inherit(innerFlow);
    this.currentFlow = outerFlow;
    return this.module.flatten(stmts);
  }

  private compileBreakStatement(
    statement: BreakStatement
  ): ExpressionRef {
    let module = this.module;
    let labelNode = statement.label;
    if (labelNode) {
      this.error(
        DiagnosticCode.Not_implemented_0,
        labelNode.range,
        "Break label"
      );
      return module.unreachable();
    }
    let flow = this.currentFlow;
    let breakLabel = flow.breakLabel;
    if (breakLabel == null) {
      this.error(
        DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement,
        statement.range
      );
      return module.unreachable();
    }
    flow.set(FlowFlags.Breaks);
    return module.br(breakLabel);
  }

  private compileContinueStatement(
    statement: ContinueStatement
  ): ExpressionRef {
    let module = this.module;
    let label = statement.label;
    if (label) {
      this.error(
        DiagnosticCode.Not_implemented_0,
        label.range,
        "Continue label"
      );
      return module.unreachable();
    }
    // Check if 'continue' is allowed here
    let flow = this.currentFlow;
    let continueLabel = flow.continueLabel;
    if (continueLabel == null) {
      this.error(
        DiagnosticCode.A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement,
        statement.range
      );
      return module.unreachable();
    }
    flow.set(FlowFlags.Continues | FlowFlags.Terminates);
    return module.br(continueLabel);
  }

  private compileDoStatement(
    /** Statement to compile. */
    statement: DoStatement
  ): ExpressionRef {
    return this.doCompileDoStatement(statement);
  }

  private doCompileDoStatement(
    /** Statement to compile. */
    statement: DoStatement
  ): ExpressionRef {
    let module = this.module;
    let outerFlow = this.currentFlow;
    let numLocalsBefore = outerFlow.targetFunction.localsByIndex.length;

    // (block $break
    //  (loop $loop
    //   (?block $continue
    //    (body)
    //   )
    //   (br_if $loop (condition))
    //  )
    // )

    // Cases of interest:
    // * If the body never falls through or continues, the condition never executes
    // * If the condition is always true and body never breaks, overall flow terminates
    // * If the body terminates with a continue, condition is still reached

    // Compile the body (always executes)
    let flow = outerFlow.fork(/* resetBreakContext */ true);
    let label = flow.pushControlFlowLabel();
    let breakLabel = `do-break|${label}`;
    flow.breakLabel = breakLabel;
    let continueLabel = `do-continue|${label}`;
    flow.continueLabel = continueLabel;
    let loopLabel = `do-loop|${label}`;
    this.currentFlow = flow;
    let bodyStmts = new Array<ExpressionRef>();
    let body = statement.body;
    if (body.kind == NodeKind.Block) {
      this.compileStatements((<BlockStatement>body).statements, bodyStmts);
    } else {
      bodyStmts.push(this.compileStatement(body));
    }
    flow.popControlFlowLabel(label);

    let possiblyContinues = flow.isAny(FlowFlags.Continues | FlowFlags.ConditionallyContinues);
    let possiblyBreaks = flow.isAny(FlowFlags.Breaks | FlowFlags.ConditionallyBreaks);
    let possiblyFallsThrough = !flow.isAny(FlowFlags.Terminates | FlowFlags.Breaks);

    // Shortcut if the condition is never reached
    if (!possiblyFallsThrough && !possiblyContinues) {
      bodyStmts.push(
        module.unreachable()
      );
      outerFlow.inherit(flow);

      // If the body also never breaks, the overall flow terminates
      if (!possiblyBreaks) {
        outerFlow.set(FlowFlags.Terminates);
      }

    // Otherwise compile and evaluate the condition (from here on always executes)
    } else {
      let condExpr = this.compileExpression(statement.condition, Type.bool);
      let condExprTrueish = this.makeIsTrueish(condExpr, this.currentType, statement.condition);
      let condKind = this.evaluateCondition(condExprTrueish);

      // Detect if local flags are incompatible before and after looping, and
      // if so recompile by unifying local flags between iterations. Note that
      // this may be necessary multiple times where locals depend on each other.
      let possiblyLoops = condKind != ConditionKind.False && (possiblyContinues || possiblyFallsThrough);
      if (possiblyLoops && outerFlow.resetIfNeedsRecompile(flow.forkThen(condExpr), numLocalsBefore)) {
        this.currentFlow = outerFlow;
        return this.doCompileDoStatement(statement);
      }

      if (possiblyContinues) {
        bodyStmts[0] = module.block(continueLabel, bodyStmts);
        bodyStmts.length = 1;
        flow.unset(FlowFlags.Terminates); // Continue breaks to condition
      }
      bodyStmts.push(
        module.br(loopLabel,
          condExprTrueish
        )
      );
      outerFlow.inherit(flow);

      // Terminate if the condition is always true and body never breaks
      if (condKind == ConditionKind.True && !possiblyBreaks) {
        outerFlow.set(FlowFlags.Terminates);
      }
    }

    // Finalize and leave everything else to the optimizer
    this.currentFlow = outerFlow;
    let expr = module.loop(loopLabel,
      module.flatten(bodyStmts)
    );
    if (possiblyBreaks) {
      expr = module.block(breakLabel, [
        expr
      ]);
    }
    if (outerFlow.is(FlowFlags.Terminates)) {
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
    return this.compileExpression(statement.expression, Type.void, Constraints.ConvImplicit);
  }

  private compileForStatement(
    /** Statement to compile. */
    statement: ForStatement
  ): ExpressionRef {
    return this.doCompileForStatement(statement);
  }

  private doCompileForStatement(
    /** Statement to compile. */
    statement: ForStatement
  ): ExpressionRef {
    let module = this.module;
    let outerFlow = this.currentFlow;
    let numLocalsBefore = outerFlow.targetFunction.localsByIndex.length;

    // (initializer)          └►┐ flow
    // (?block $break           │ (initializer)
    //  (?loop $loop          ┌◄┤ (condition) shortcut if false ◄┐
    //   (if (condition)        ├►┐ bodyFlow                     │
    //    (then                 │ │ (body)                       │
    //     (?block $continue    │ │ if loops: (incrementor) ─────┘
    //      (body)              │ │           recompile body?
    //     )                    ├◄┘    
    //     (incrementor)      ┌◄┘
    //     (br $loop)
    //    )
    //   )
    //  )
    // )

    // Compile initializer if present. The initializer might introduce scoped
    // locals bound to the for statement, so create a new flow early.
    let flow = outerFlow.fork();
    this.currentFlow = flow;
    let stmts = new Array<ExpressionRef>();
    let initializer = statement.initializer;
    if (initializer) {
      assert(
        initializer.kind == NodeKind.Expression ||
        initializer.kind == NodeKind.Variable
      );
      stmts.push(this.compileStatement(initializer));
    }

    // Precompute the condition if present, or default to `true`
    let condExpr: ExpressionRef;
    let condExprTrueish: ExpressionRef;
    let condKind: ConditionKind;
    let condition = statement.condition;
    if (condition) {
      condExpr = this.compileExpression(condition, Type.bool);
      condExprTrueish = this.makeIsTrueish(condExpr, this.currentType, condition);
      condKind = this.evaluateCondition(condExprTrueish);

      // Shortcut if condition is always false (body never executes)
      if (condKind == ConditionKind.False) {
        stmts.push(
          module.drop(condExprTrueish)
        );
        outerFlow.inherit(flow);
        this.currentFlow = outerFlow;
        return module.flatten(stmts);
      }
    } else {
      condExpr = module.i32(1);
      condExprTrueish = condExpr;
      condKind = ConditionKind.True;
    }
    // From here on condition is either true or unknown

    // Compile the body assuming the condition turned out true
    let bodyFlow = flow.forkThen(condExpr, /* newBreakContext */ true);
    let label = bodyFlow.pushControlFlowLabel();
    let breakLabel = `for-break${label}`;
    bodyFlow.breakLabel = breakLabel;
    let continueLabel = `for-continue|${label}`;
    bodyFlow.continueLabel = continueLabel;
    let loopLabel = `for-loop|${label}`;
    this.currentFlow = bodyFlow;
    let bodyStmts = new Array<ExpressionRef>();
    let body = statement.body;
    if (body.kind == NodeKind.Block) {
      this.compileStatements((<BlockStatement>body).statements, bodyStmts);
    } else {
      bodyStmts.push(this.compileStatement(body));
    }
    bodyFlow.popControlFlowLabel(label);
    bodyFlow.breakLabel = null;
    bodyFlow.continueLabel = null;

    let possiblyFallsThrough = !bodyFlow.isAny(FlowFlags.Terminates | FlowFlags.Breaks);
    let possiblyContinues = bodyFlow.isAny(FlowFlags.Continues | FlowFlags.ConditionallyContinues);
    let possiblyBreaks = bodyFlow.isAny(FlowFlags.Breaks | FlowFlags.ConditionallyBreaks);

    if (possiblyContinues) {
      bodyStmts[0] = module.block(continueLabel, bodyStmts);
      bodyStmts.length = 1;
    }

    // Compile the incrementor if it possibly executes
    let possiblyLoops = possiblyContinues || possiblyFallsThrough;
    if (possiblyLoops) {
      let incrementor = statement.incrementor;
      if (incrementor) {
        bodyStmts.push(
          this.compileExpression(incrementor, Type.void, Constraints.ConvImplicit | Constraints.WillDrop)
        );
      }
      bodyStmts.push(
        module.br(loopLabel)
      );

      // Detect if local flags are incompatible before and after looping, and if
      // so recompile by unifying local flags between iterations. Note that this
      // may be necessary multiple times where locals depend on each other.
      if (outerFlow.resetIfNeedsRecompile(bodyFlow.forkThen(condExpr), numLocalsBefore)) {
        this.currentFlow = outerFlow;
        return this.doCompileForStatement(statement);
      }
    }

    // Body executes at least once
    if (condKind == ConditionKind.True) {
      flow.inherit(bodyFlow);

    // Otherwise executes conditionally
    } else {
      flow.mergeBranch(bodyFlow);
    }

    // Finalize
    outerFlow.inherit(flow);
    this.currentFlow = outerFlow;
    let expr = module.if(condExprTrueish,
      module.flatten(bodyStmts)
    );
    if (possiblyLoops) {
      expr = module.loop(loopLabel, expr);
    }
    if (possiblyBreaks) {
      expr = module.block(breakLabel, [ expr ]);
    }
    stmts.push(expr);
    if (outerFlow.is(FlowFlags.Terminates)) {
      stmts.push(module.unreachable());
    }
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
    let module = this.module;
    let ifTrue = statement.ifTrue;
    let ifFalse = statement.ifFalse;

    // (if (condition)
    //  (then (ifTrue))
    //  (?else (ifFalse))
    // )

    // Cases of interest:
    // * If the condition is always true or false, the other branch is eliminated
    // * If both then and else terminate, the overall flow does as well
    // * Without an else, when then terminates, follow-up flow acts like an else

    // Precompute the condition (always executes)
    let condExpr = this.compileExpression(statement.condition, Type.bool);
    let condExprTrueish = this.makeIsTrueish(
      condExpr,
      this.currentType,
      statement.condition
    );
    let condKind = this.evaluateCondition(condExprTrueish);

    // Shortcut if the condition is constant
    switch (condKind) {
      case ConditionKind.True: {
        return module.block(null, [
          module.drop(condExprTrueish),
          this.compileStatement(ifTrue)
        ]);
      }
      case ConditionKind.False: {
        return ifFalse
          ? module.block(null, [
              module.drop(condExprTrueish),
              this.compileStatement(ifFalse)
            ])
          : module.drop(condExprTrueish);
      }
    }

    // From here on condition is always unknown

    let flow = this.currentFlow;

    // Compile ifTrue assuming the condition turned out true
    let thenStmts = new Array<ExpressionRef>();
    let thenFlow = flow.forkThen(condExpr);
    this.currentFlow = thenFlow;
    if (ifTrue.kind == NodeKind.Block) {
      this.compileStatements((<BlockStatement>ifTrue).statements, thenStmts);
    } else {
      thenStmts.push(this.compileStatement(ifTrue));
    }
    this.currentFlow = flow;

    // Compile ifFalse assuming the condition turned out false, if present
    let elseFlow = flow.forkElse(condExpr);
    if (ifFalse) {
      this.currentFlow = elseFlow;
      let elseStmts = new Array<ExpressionRef>();
      if (ifFalse.kind == NodeKind.Block) {
        this.compileStatements((<BlockStatement>ifFalse).statements, elseStmts);
      } else {
        elseStmts.push(this.compileStatement(ifFalse));
      }
      flow.inheritAlternatives(thenFlow, elseFlow); // terminates if both do
      this.currentFlow = flow;
      return module.if(condExprTrueish,
        module.flatten(thenStmts),
        module.flatten(elseStmts)
      );
    } else {
      if (thenFlow.isAny(FlowFlags.Terminates | FlowFlags.Breaks)) {
        // Only getting past if condition was false (acts like else)
        flow.inherit(elseFlow);
        flow.mergeSideEffects(thenFlow);
      } else {
        // Otherwise getting past conditionally
        flow.inheritAlternatives(thenFlow, elseFlow);
      }
      this.currentFlow = flow;
      return module.if(condExprTrueish,
        module.flatten(thenStmts)
      );
    }
  }

  private compileReturnStatement(
    statement: ReturnStatement
  ): ExpressionRef {
    let module = this.module;
    let expr: ExpressionRef = 0;
    let flow = this.currentFlow;
    let returnType = flow.returnType;

    let valueExpression = statement.value;
    if (valueExpression) {
      let constraints = Constraints.ConvImplicit;
      if (flow.sourceFunction.is(CommonFlags.ModuleExport)) constraints |= Constraints.MustWrap;

      expr = this.compileExpression(valueExpression, returnType, constraints);
      if (!flow.canOverflow(expr, returnType)) flow.set(FlowFlags.ReturnsWrapped);
      if (flow.isNonnull(expr, returnType)) flow.set(FlowFlags.ReturnsNonNull);
      if (flow.sourceFunction.is(CommonFlags.Constructor) && valueExpression.kind != NodeKind.This) {
        flow.set(FlowFlags.MayReturnNonThis);
      }
    } else if (returnType != Type.void) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        statement.range, "void", returnType.toString()
      );
      this.currentType = returnType;
      return module.unreachable();
    }

    // Remember that this flow returns
    flow.set(FlowFlags.Returns | FlowFlags.Terminates);

    // Handle inline return
    if (flow.isInline) {
      let inlineReturnLabel = assert(flow.inlineReturnLabel);
      return expr
        ? this.currentType == Type.void
          ? module.block(null, [ expr, module.br(inlineReturnLabel) ])
          : module.br(inlineReturnLabel, 0, expr)
        : module.br(inlineReturnLabel);
    }

    // Otherwise emit a normal return
    return expr
      ? this.currentType == Type.void
        ? module.block(null, [ expr, module.return() ])
        : module.return(expr)
      : module.return();
  }

  private compileSwitchStatement(
    statement: SwitchStatement
  ): ExpressionRef {
    let module = this.module;
    let cases = statement.cases;
    let numCases = cases.length;

    // Compile the condition (always executes)
    let condExpr = this.compileExpression(statement.condition, Type.u32,
      Constraints.ConvImplicit
    );

    // Shortcut if there are no cases
    if (!numCases) return module.drop(condExpr);
    
    // Assign the condition to a temporary local as we compare it multiple times
    let outerFlow = this.currentFlow;
    let tempLocal = outerFlow.getTempLocal(Type.u32);
    let tempLocalIndex = tempLocal.index;
    let breaks = new Array<ExpressionRef>(1 + numCases);
    breaks[0] = module.local_set(tempLocalIndex, condExpr, false); // u32
    
    // Make one br_if per labeled case and leave it to Binaryen to optimize the
    // sequence of br_ifs to a br_table according to optimization levels
    let breakIndex = 1;
    let defaultIndex = -1;
    let label = outerFlow.pushControlFlowLabel();
    for (let i = 0; i < numCases; ++i) {
      let case_ = cases[i];
      if (case_.isDefault) {
        defaultIndex = i;
        continue;
      }
      breaks[breakIndex++] = module.br(`case${i}|${label}`,
        module.binary(BinaryOp.EqI32,
          module.local_get(tempLocalIndex, TypeRef.I32),
          this.compileExpression(assert(case_.label), Type.u32,
            Constraints.ConvImplicit
          )
        )
      );
    }

    // If there is a default case, break to it, otherwise break out of the switch
    breaks[breakIndex] = module.br(defaultIndex >= 0
      ? `case${defaultIndex}|${label}`
      : `break|${label}`
    );

    // Nest the case blocks in order, to be targeted by the br_if sequence
    let currentBlock = module.block(`case0|${label}`, breaks, TypeRef.None);
    let fallThroughFlow: Flow | null = null;
    let breakingFlowAlternatives: Flow | null = null;
    for (let i = 0; i < numCases; ++i) {
      let case_ = cases[i];
      let statements = case_.statements;
      let numStatements = statements.length;

      // Can get here by matching the case or possibly by fall-through
      let innerFlow = outerFlow.fork(/* newBreakContext */ true, /* newContinueContext */ false);
      if (fallThroughFlow) innerFlow.mergeBranch(fallThroughFlow);
      this.currentFlow = innerFlow;
      let breakLabel = `break|${label}`;
      innerFlow.breakLabel = breakLabel;

      let isLast = i == numCases - 1;
      let nextLabel = isLast ? breakLabel : `case${i + 1}|${label}`;
      let stmts = new Array<ExpressionRef>(1 + numStatements);
      stmts[0] = currentBlock;
      let count = 1;
      let possiblyFallsThrough = true;
      for (let j = 0; j < numStatements; ++j) {
        let stmt = this.compileStatement(statements[j]);
        if (getExpressionId(stmt) != ExpressionId.Nop) {
          stmts[count++] = stmt;
        }
        if (innerFlow.isAny(FlowFlags.Terminates | FlowFlags.Breaks)) {
          possiblyFallsThrough = false;
          break;
        }
      }
      stmts.length = count;
      fallThroughFlow = possiblyFallsThrough ? innerFlow : null;
      let possiblyBreaks = innerFlow.isAny(FlowFlags.Breaks | FlowFlags.ConditionallyBreaks);
      innerFlow.unset(FlowFlags.Breaks | FlowFlags.ConditionallyBreaks); // clear

      // Combine all alternatives that merge again with outer flow
      if (possiblyBreaks || (isLast && possiblyFallsThrough)) {
        if (breakingFlowAlternatives) breakingFlowAlternatives.inheritAlternatives(breakingFlowAlternatives, innerFlow);
        else breakingFlowAlternatives = innerFlow;

      // Otherwise just merge the effects of a non-merging branch
      } else if (!possiblyFallsThrough) {
        outerFlow.mergeSideEffects(innerFlow);
      }

      this.currentFlow = outerFlow;
      currentBlock = module.block(nextLabel, stmts, TypeRef.None); // must be a labeled block
    }
    outerFlow.popControlFlowLabel(label);

    // If the switch has a default, we only get past through any breaking flow
    if (defaultIndex >= 0) {
      if (breakingFlowAlternatives) outerFlow.inherit(breakingFlowAlternatives);
      else outerFlow.set(FlowFlags.Terminates);

    // Otherwise either none or any breaking flow can get past conditionally
    } else if (breakingFlowAlternatives) {
      outerFlow.mergeBranch(breakingFlowAlternatives);
    }

    this.currentFlow = outerFlow;
    return currentBlock;
  }

  private compileThrowStatement(
    statement: ThrowStatement
  ): ExpressionRef {
    // TODO: requires exception-handling spec.
    let flow = this.currentFlow;

    // Remember that this branch throws
    flow.set(FlowFlags.Throws | FlowFlags.Terminates);

    let stmts = new Array<ExpressionRef>();
    let value = statement.value;
    let message: Expression | null = null;
    if (value.kind == NodeKind.New) {
      let newArgs = (<NewExpression>value).args;
      if (newArgs.length) message = newArgs[0]; // FIXME: naively assumes type string
    }
    stmts.push(
      this.makeAbort(message, statement)
    );
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
    let module = this.module;
    let declarations = statement.declarations;
    let numDeclarations = declarations.length;
    let flow = this.currentFlow;
    let initializers = new Array<ExpressionRef>();
    let resolver = this.resolver;

    for (let i = 0; i < numDeclarations; ++i) {
      let declaration = declarations[i];
      let name = declaration.name.text;
      let type: Type | null = null;
      let initExpr: ExpressionRef = 0;
      let initType: Type | null = null;

      if (declaration.is(CommonFlags.DefinitelyAssigned)) {
        this.warning(
          DiagnosticCode.Definitive_assignment_has_no_effect_on_local_variables,
          declaration.name.range
        );
      }

      // Resolve type if annotated
      let typeNode = declaration.type;
      let initializerNode = declaration.initializer;
      if (typeNode) {
        type = resolver.resolveType( // reports
          typeNode,
          flow.sourceFunction,
          cloneMap(flow.contextualTypeArguments)
        );
        if (!type) continue;
        this.program.checkTypeSupported(type, typeNode);

        if (initializerNode) {
          let pendingElements = this.pendingElements;
          let dummy = flow.addScopedDummyLocal(name, type, statement); // pending dummy
          pendingElements.add(dummy);
          initExpr = this.compileExpression(initializerNode, type, // reports
            Constraints.ConvImplicit
          );
          initType = this.currentType;
          pendingElements.delete(dummy);
          flow.freeScopedDummyLocal(name);
        }

      // Otherwise infer type from initializer
      } else if (initializerNode) {
        let pendingElements = this.pendingElements;
        let temp = flow.addScopedDummyLocal(name, Type.auto, statement); // pending dummy
        pendingElements.add(temp);
        initExpr = this.compileExpression(initializerNode, Type.auto); // reports
        initType = this.currentType;
        pendingElements.delete(temp);
        flow.freeScopedDummyLocal(name);

        if (this.currentType == Type.void) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            declaration.range, this.currentType.toString(), "<auto>"
          );
          continue;
        }
        type = initType;

      // Error if there's neither a type nor an initializer
      } else {
        this.error(
          DiagnosticCode.Type_expected,
          declaration.name.range.atEnd
        );
        continue;
      }

      // Handle constants, and try to inline if value is static
      let isConst = declaration.is(CommonFlags.Const);
      let isStatic = false;
      if (isConst) {
        if (initExpr) {
          let precomp = module.runExpression(initExpr, ExpressionRunnerFlags.PreserveSideeffects);
          if (precomp) {
            initExpr = precomp; // always use precomputed initExpr
            let local: Local | null = null;
            switch (<u32>getExpressionType(initExpr)) {
              case <u32>TypeRef.I32: {
                local = new Local(name, -1, type, flow.targetFunction);
                local.setConstantIntegerValue(
                  i64_new(
                    getConstValueI32(initExpr),
                    0
                  ),
                  type
                );
                break;
              }
              case <u32>TypeRef.I64: {
                local = new Local(name, -1, type, flow.targetFunction);
                local.setConstantIntegerValue(
                  i64_new(
                    getConstValueI64Low(initExpr),
                    getConstValueI64High(initExpr)
                  ),
                  type
                );
                break;
              }
              case <u32>TypeRef.F32: {
                local = new Local(name, -1, type, flow.targetFunction);
                local.setConstantFloatValue(<f64>getConstValueF32(initExpr), type);
                break;
              }
              case <u32>TypeRef.F64: {
                local = new Local(name, -1, type, flow.targetFunction);
                local.setConstantFloatValue(getConstValueF64(initExpr), type);
                break;
              }
            }
            if (local) {
              // Add as a dummy local that doesn't actually exist in WebAssembly
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
          declaration.isAny(CommonFlags.Let | CommonFlags.Const) ||
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
          if (isConst) flow.setLocalFlag(local.index, LocalFlags.Constant);
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
          local = flow.targetFunction.addLocal(type, name, declaration);
          flow.unsetLocalFlag(local.index, ~0);
          if (isConst) flow.setLocalFlag(local.index, LocalFlags.Constant);
        }
        if (initExpr) {
          initializers.push(
            this.makeLocalAssignment(local, initExpr, initType ? initType : type, false)
          );
        } else {
          // no need to assign zero
          if (local.type.isShortIntegerValue) {
            flow.setLocalFlag(local.index, LocalFlags.Wrapped);
          }
        }
      }
    }
    this.currentType = Type.void;
    return initializers.length == 0
      ? 0
      : module.flatten(initializers);
  }

  private compileVoidStatement(
    statement: VoidStatement
  ): ExpressionRef {
    return this.compileExpression(statement.expression, Type.void,
      Constraints.ConvExplicit | Constraints.WillDrop
    );
  }

  private compileWhileStatement(
    /** Statement to compile. */
    statement: WhileStatement
  ): ExpressionRef {
    return this.doCompileWhileStatement(statement);
  }

  private doCompileWhileStatement(
    /** Statement to compile. */
    statement: WhileStatement
  ): ExpressionRef {
    let module = this.module;
    let outerFlow = this.currentFlow;
    let numLocalsBefore = outerFlow.targetFunction.localsByIndex.length;

    // (block $break
    //  (loop $continue
    //   (if (condition)
    //    (then
    //     (body)
    //     (br $continue)
    //    )
    //   )
    //  )

    // Cases of interest:
    // * If the condition is always false, eliminate the body as it never runs
    // * If the condition is always true and the body never breaks, terminate
    // * If the body runs but always terminates, continue as if condition was false

    // Compile and evaluate the condition (always executes)
    let condExpr = this.compileExpression(statement.condition, Type.bool);
    let condExprTrueish = this.makeIsTrueish(condExpr, this.currentType, statement.condition);
    let condKind = this.evaluateCondition(condExprTrueish);

    // Shortcut if condition is always false (body never runs)
    if (condKind == ConditionKind.False) {
      return module.drop(condExprTrueish);
    }

    // Compile the body assuming the condition turned out true
    let thenFlow = outerFlow.forkThen(condExpr, /* newBreakContext */ true);
    let label = thenFlow.pushControlFlowLabel();
    let breakLabel = `while-break|${label}`;
    thenFlow.breakLabel = breakLabel;
    let continueLabel = `while-continue|${label}`;
    thenFlow.continueLabel = continueLabel;
    this.currentFlow = thenFlow;
    let bodyStmts = new Array<ExpressionRef>();
    let body = statement.body;
    if (body.kind == NodeKind.Block) {
      this.compileStatements((<BlockStatement>body).statements, bodyStmts);
    } else {
      bodyStmts.push(this.compileStatement(body));
    }
    bodyStmts.push(
      module.br(continueLabel)
    );
    thenFlow.popControlFlowLabel(label);

    let possiblyContinues = thenFlow.isAny(FlowFlags.Continues | FlowFlags.ConditionallyContinues);
    let possiblyBreaks = thenFlow.isAny(FlowFlags.Breaks | FlowFlags.ConditionallyBreaks);
    let possiblyFallsThrough = !thenFlow.isAny(FlowFlags.Terminates | FlowFlags.Breaks);

    // Detect if local flags are incompatible before and after looping, and
    // if so recompile by unifying local flags between iterations. Note that
    // this may be necessary multiple times where locals depend on each other.
    let possiblyLoops = possiblyContinues || possiblyFallsThrough;
    if (possiblyLoops && outerFlow.resetIfNeedsRecompile(thenFlow, numLocalsBefore)) {
      this.currentFlow = outerFlow;
      return this.doCompileWhileStatement(statement);
    }

    // If the condition is always true, the body's effects always happen
    let alwaysTerminates = false;
    if (condKind == ConditionKind.True) {
      outerFlow.inherit(thenFlow);

      // If the body also never breaks, the overall flow terminates
      if (!possiblyBreaks) {
        alwaysTerminates = true;
        outerFlow.set(FlowFlags.Terminates);
      }

    // Otherwise loop conditionally
    } else {
      let elseFlow = outerFlow.forkElse(condExpr);
      if (!possiblyFallsThrough && !possiblyBreaks) {
        // Only getting past if condition was false
        outerFlow.inherit(elseFlow);
        outerFlow.mergeSideEffects(thenFlow);
      } else {
        // Otherwise getting past conditionally
        outerFlow.inheritAlternatives(thenFlow, elseFlow);
      }
    }

    // Finalize and leave everything else to the optimizer
    this.currentFlow = outerFlow;
    let stmts: ExpressionRef[] = [
      module.loop(continueLabel,
        module.if(condExprTrueish,
          module.flatten(bodyStmts)
        )
      )
    ];
    if (alwaysTerminates) stmts.push(module.unreachable());
    return module.block(breakLabel, stmts);
  }

  // === Expressions ==============================================================================

  /** Compiles the value of an inlined constant element. */
  compileInlineConstant(
    element: VariableLikeElement,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    assert(element.is(CommonFlags.Inlined | CommonFlags.Resolved));
    let type = element.type;
    this.currentType = type;
    switch (type.kind) {
      case TypeKind.Bool: {
        return this.module.i32(
          element.constantValueKind == ConstantValueKind.Integer
            // @ts-ignore
            ? <i32>i64_ne(element.constantIntegerValue, i64_zero)
            : 0
        );
      }
      case TypeKind.I8:
      case TypeKind.I16: {
        let shift = type.computeSmallIntegerShift(Type.i32);
        return this.module.i32(
          element.constantValueKind == ConstantValueKind.Integer
            ? i64_low(element.constantIntegerValue) << shift >> shift
            : 0
        ); // recognized by canOverflow
      }
      case TypeKind.U8:
      case TypeKind.U16: {
        let mask = element.type.computeSmallIntegerMask(Type.i32);
        return this.module.i32(
          element.constantValueKind == ConstantValueKind.Integer
            ? i64_low(element.constantIntegerValue) & mask
            : 0
        ); // recognized by canOverflow
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        return this.module.i32(
          element.constantValueKind == ConstantValueKind.Integer
            ? i64_low(element.constantIntegerValue)
            : 0
        );
      }
      case TypeKind.Isize:
      case TypeKind.Usize: {
        if (!element.program.options.isWasm64) {
          return this.module.i32(
            element.constantValueKind == ConstantValueKind.Integer
              ? i64_low(element.constantIntegerValue)
              : 0
          );
        }
        // fall-through
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        return element.constantValueKind == ConstantValueKind.Integer
          ? this.module.i64(
              i64_low(element.constantIntegerValue),
              i64_high(element.constantIntegerValue)
            )
          : this.module.i64(0);
      }
      case TypeKind.F64: {
        // monkey-patch for converting built-in floats to f32 implicitly
        if (!(element.hasDecorator(DecoratorFlags.Builtin) && contextualType == Type.f32)) {
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
    constraints: Constraints = Constraints.None
  ): ExpressionRef {
    while (expression.kind == NodeKind.Parenthesized) { // skip
      expression = (<ParenthesizedExpression>expression).expression;
    }
    this.currentType = contextualType;
    if (contextualType == Type.void) constraints |= Constraints.WillDrop;
    let expr: ExpressionRef;
    switch (expression.kind) {
      case NodeKind.Assertion: {
        expr = this.compileAssertionExpression(<AssertionExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.Binary: {
        expr = this.compileBinaryExpression(<BinaryExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.Call: {
        expr = this.compileCallExpression(<CallExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.Comma: {
        expr = this.compileCommaExpression(<CommaExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.ElementAccess: {
        expr = this.compileElementAccessExpression(<ElementAccessExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.Function: {
        expr = this.compileFunctionExpression(<FunctionExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.Identifier:
      case NodeKind.False:
      case NodeKind.Null:
      case NodeKind.This:
      case NodeKind.Super:
      case NodeKind.True: {
        expr = this.compileIdentifierExpression(<IdentifierExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.InstanceOf: {
        expr = this.compileInstanceOfExpression(<InstanceOfExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.Literal: {
        expr = this.compileLiteralExpression(<LiteralExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.New: {
        expr = this.compileNewExpression(<NewExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.PropertyAccess: {
        expr = this.compilePropertyAccessExpression(<PropertyAccessExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.Ternary: {
        expr = this.compileTernaryExpression(<TernaryExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.UnaryPostfix: {
        expr = this.compileUnaryPostfixExpression(<UnaryPostfixExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.UnaryPrefix: {
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, contextualType, constraints);
        break;
      }
      case NodeKind.Compiled: {
        let compiled = <CompiledExpression>expression;
        expr = compiled.expr;
        this.currentType = compiled.type;
        break;
      }
      case NodeKind.Class: {
        // TODO: compile as class expression
        this.error(
          DiagnosticCode.Not_implemented_0,
          expression.range,
          "Block-scoped class declarations or expressions"
        );
        expr = this.module.unreachable();
        break;
      }
      default: {
        assert(false);
        expr = this.module.unreachable();
      }
    }
    // ensure conversion and wrapping in case the respective function doesn't on its own
    let currentType = this.currentType;
    let wrap = (constraints & Constraints.MustWrap) != 0;
    if (currentType != contextualType.nonNullableType) { // allow assigning non-nullable to nullable
      if (constraints & Constraints.ConvExplicit) {
        expr = this.convertExpression(expr, currentType, contextualType, true, expression);
        this.currentType = currentType = contextualType;
      } else if (constraints & Constraints.ConvImplicit) {
        expr = this.convertExpression(expr, currentType, contextualType, false, expression);
        this.currentType = currentType = contextualType;
      }
    }
    if (wrap) expr = this.ensureSmallIntegerWrap(expr, currentType);
    // debug location is added here so the caller doesn't have to. means: compilation of an expression
    // must go through this function, with the respective per-kind functions not being used directly.
    if (this.options.sourceMap) this.addDebugLocation(expr, expression.range);
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
    let module = this.module;

    if (fromType.kind == TypeKind.Void) {
      if (toType.kind == TypeKind.Void) {
        // void to void: Can happen as a result of a foregoing error. Since we
        // have an `expr` here that is already supposed to be void, return it.
        return expr;
      }
      // void to any
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        reportNode.range, fromType.toString(), toType.toString()
      );
      return module.unreachable();
    }

    // any to void
    if (toType.kind == TypeKind.Void) return module.drop(expr);

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
      if (fromType.isAssignableTo(toType)) { // upcast or same
        assert(toType.isExternalReference || fromType.kind == toType.kind);
        this.currentType = toType;
        return expr;
      }
      if (explicit && toType.nonNullableType.isAssignableTo(fromType)) { // downcast
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
          expr = this.makeRuntimeDowncastCheck(expr, fromType, toType, reportNode);
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

    // Early return if we have same types
    if (toType.kind == fromType.kind) {
      this.currentType = toType;
      return expr;
    }

    // v128 to any / any to v128
    // except v128 to bool
    //
    // NOTE:In case we would have more conversions to and from v128 type it's better
    // to make these checks more individual and integrate in below flow.
    if (
      !toType.isBooleanValue &&
      (toType.isVectorValue || fromType.isVectorValue)
    ) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        reportNode.range, fromType.toString(), toType.toString()
      );
      return module.unreachable();
    }

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
            expr = module.unary(UnaryOp.PromoteF32ToF64, expr);
          }

          // otherwise f32 to f32

        // f64 to f32
        } else if (toType.kind == TypeKind.F32) {
          expr = module.unary(UnaryOp.DemoteF64ToF32, expr);
        }

        // otherwise f64 to f64

      // float to int
      } else if (toType.isIntegerValue) {

        // f32 to int
        if (fromType.kind == TypeKind.F32) {
          if (toType.isBooleanValue) {
            expr = this.makeIsTrueish(expr, Type.f32, reportNode);
          } else if (toType.isSignedIntegerValue) {
            let saturating = this.options.hasFeature(Feature.NontrappingF2I);
            if (toType.isLongIntegerValue) {
              expr = module.unary(saturating ? UnaryOp.TruncSatF32ToI64 : UnaryOp.TruncF32ToI64, expr);
            } else {
              expr = module.unary(saturating ? UnaryOp.TruncSatF32ToI32 : UnaryOp.TruncF32ToI32, expr);
            }
          } else {
            let saturating = this.options.hasFeature(Feature.NontrappingF2I);
            if (toType.isLongIntegerValue) {
              expr = module.unary(saturating ? UnaryOp.TruncSatF32ToU64 : UnaryOp.TruncF32ToU64, expr);
            } else {
              expr = module.unary(saturating ? UnaryOp.TruncSatF32ToU32 : UnaryOp.TruncF32ToU32, expr);
            }
          }

        // f64 to int
        } else {
          if (toType.isBooleanValue) {
            expr = this.makeIsTrueish(expr, Type.f64, reportNode);
          } else if (toType.isSignedIntegerValue) {
            let saturating = this.options.hasFeature(Feature.NontrappingF2I);
            if (toType.isLongIntegerValue) {
              expr = module.unary(saturating ? UnaryOp.TruncSatF64ToI64 : UnaryOp.TruncF64ToI64, expr);
            } else {
              expr = module.unary(saturating ? UnaryOp.TruncSatF64ToI32 : UnaryOp.TruncF64ToI32, expr);
            }
          } else {
            let saturating = this.options.hasFeature(Feature.NontrappingF2I);
            if (toType.isLongIntegerValue) {
              expr = module.unary(saturating ? UnaryOp.TruncSatF64ToU64 : UnaryOp.TruncF64ToU64, expr);
            } else {
              expr = module.unary(saturating ? UnaryOp.TruncSatF64ToU32 : UnaryOp.TruncF64ToU32, expr);
            }
          }
        }

      // float to void
      } else {
        assert(toType.flags == TypeFlags.None, "void type expected");
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

    // v128 to bool
    } else if (fromType == Type.v128 && toType.isBooleanValue) {
      expr = this.makeIsTrueish(expr, Type.v128, reportNode);

    // int to int
    } else {
      // i64 to ...
      if (fromType.isLongIntegerValue) {

        // i64 to i32 or smaller
        if (toType.isBooleanValue) {
          expr = module.binary(BinaryOp.NeI64, expr, module.i64(0));
        } else if (!toType.isLongIntegerValue) {
          expr = module.unary(UnaryOp.WrapI64ToI32, expr); // discards upper bits
        }

      // i32 or smaller to i64
      } else if (toType.isLongIntegerValue) {
        expr = module.unary(
          fromType.isSignedIntegerValue ? UnaryOp.ExtendI32ToI64 : UnaryOp.ExtendU32ToU64,
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
    let inheritedConstraints = constraints & ~(Constraints.ConvImplicit | Constraints.ConvExplicit);
    switch (expression.assertionKind) {
      case AssertionKind.Prefix:
      case AssertionKind.As: {
        let flow = this.currentFlow;
        let toType = this.resolver.resolveType( // reports
          assert(expression.toType),
          flow.sourceFunction,
          cloneMap(flow.contextualTypeArguments)
        );
        if (!toType) return this.module.unreachable();
        return this.compileExpression(expression.expression, toType, inheritedConstraints | Constraints.ConvExplicit);
      }
      case AssertionKind.NonNull: {
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
      case AssertionKind.Const: {
        // TODO: decide on the layout of ReadonlyArray first
        // let operand = expression.expression;
        // if (operand.kind == NodeKind.Literal && (<LiteralExpression>operand).literalKind == LiteralKind.Array) {
        //   let element = this.resolver.lookupExpression(expression /* ! */, this.currentFlow, contextualType);
        //   if (!element) return this.module.unreachable();
        //   if (element.kind == ElementKind.Class) {
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
    let module = this.module;
    let left = expression.left;
    let right = expression.right;

    let leftExpr: ExpressionRef;
    let leftType: Type;
    let rightExpr: ExpressionRef;
    let rightType: Type;
    let commonType: Type | null;

    let expr: ExpressionRef;
    let compound = false;

    let operator = expression.operator;
    switch (operator) {
      case Token.LessThan: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Lt);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonType(leftType, rightType, contextualType, true);
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
      case Token.GreaterThan: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Gt);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonType(leftType, rightType, contextualType, true);
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
      case Token.LessThan_Equals: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Le);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonType(leftType, rightType, contextualType, true);
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
      case Token.GreaterThan_Equals: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Ge);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonType(leftType, rightType, contextualType, true);
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

      case Token.Equals_Equals_Equals:
      case Token.Equals_Equals: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Eq);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonType(leftType, rightType, contextualType);
        if (!commonType) {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, operatorTokenToString(expression.operator), leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.unreachable();
        }
        if (commonType.isFloatValue) {
          if (
            isConstExpressionNaN(module, rightExpr) ||
            isConstExpressionNaN(module, leftExpr)
          ) {
            this.warning(
              DiagnosticCode._NaN_does_not_compare_equal_to_any_other_value_including_itself_Use_isNaN_x_instead,
              expression.range
            );
          }
          if (isConstNegZero(rightExpr) || isConstNegZero(leftExpr)) {
            this.warning(
              DiagnosticCode.Comparison_with_0_0_is_sign_insensitive_Use_Object_is_x_0_0_if_the_sign_matters,
              expression.range
            );
          }
        }
        leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
        leftType = commonType;
        rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
        rightType = commonType;

        expr = this.makeEq(leftExpr, rightExpr, commonType, expression);
        this.currentType = Type.bool;
        break;
      }
      case Token.Exclamation_Equals_Equals:
      case Token.Exclamation_Equals: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClass();
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Ne);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
            break;
          }
        }

        rightExpr = this.compileExpression(right, leftType);
        rightType = this.currentType;
        commonType = Type.commonType(leftType, rightType, contextualType);
        if (!commonType) {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, operatorTokenToString(expression.operator), leftType.toString(), rightType.toString()
          );
          this.currentType = contextualType;
          return module.unreachable();
        }
        if (commonType.isFloatValue) {
          if (
            isConstExpressionNaN(module, rightExpr) ||
            isConstExpressionNaN(module, leftExpr)
          ) {
            this.warning(
              DiagnosticCode._NaN_does_not_compare_equal_to_any_other_value_including_itself_Use_isNaN_x_instead,
              expression.range
            );
          }
          if (isConstNegZero(rightExpr) || isConstNegZero(leftExpr)) {
            this.warning(
              DiagnosticCode.Comparison_with_0_0_is_sign_insensitive_Use_Object_is_x_0_0_if_the_sign_matters,
              expression.range
            );
          }
        }
        leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
        leftType = commonType;
        rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
        rightType = commonType;

        expr = this.makeNe(leftExpr, rightExpr, commonType, expression);
        this.currentType = Type.bool;
        break;
      }
      case Token.Equals: {
        return this.compileAssignment(left, right, contextualType);
      }
      case Token.Plus_Equals: compound = true;
      case Token.Plus: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Add);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
          rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
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
      case Token.Minus_Equals: compound = true;
      case Token.Minus: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Sub);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
          rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
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
      case Token.Asterisk_Equals: compound = true;
      case Token.Asterisk: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Mul);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
          rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
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
      case Token.Asterisk_Asterisk_Equals: compound = true;
      case Token.Asterisk_Asterisk: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Pow);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
          rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
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
      case Token.Slash_Equals: compound = true;
      case Token.Slash: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Div);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
          rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
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
      case Token.Percent_Equals: compound = true;
      case Token.Percent: {
        leftExpr = this.compileExpression(left, contextualType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Rem);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
          rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
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
      case Token.LessThan_LessThan_Equals: compound = true;
      case Token.LessThan_LessThan: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BitwiseShl);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
        rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
        rightType = this.currentType;

        expr = this.makeShl(leftExpr, rightExpr, rightType);
        break;
      }
      case Token.GreaterThan_GreaterThan_Equals: compound = true;
      case Token.GreaterThan_GreaterThan: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BitwiseShr);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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

        rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
        rightType = this.currentType;

        expr = this.makeShr(leftExpr, rightExpr, rightType);
        break;
      }
      case Token.GreaterThan_GreaterThan_GreaterThan_Equals: compound = true;
      case Token.GreaterThan_GreaterThan_GreaterThan: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BitwiseShrU);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
        rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
        rightType = this.currentType;

        expr = this.makeShru(leftExpr, rightExpr, rightType);
        break;
      }
      case Token.Ampersand_Equals: compound = true;
      case Token.Ampersand: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BitwiseAnd);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
          rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
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
      case Token.Bar_Equals: compound = true;
      case Token.Bar: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BitwiseOr);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
          rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
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
      case Token.Caret_Equals: compound = true;
      case Token.Caret: {
        leftExpr = this.compileExpression(left, contextualType.intType);
        leftType = this.currentType;

        // check operator overload
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BitwiseXor);
          if (overload) {
            expr = this.compileBinaryOverload(overload, left, leftExpr, leftType, right, expression);
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
          rightExpr = this.compileExpression(right, leftType, Constraints.ConvImplicit);
          rightType = commonType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
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

      case Token.Ampersand_Ampersand: { // left && right -> (t = left) ? right : t
        let flow = this.currentFlow;
        let inheritedConstraints = constraints & Constraints.MustWrap;
        leftExpr = this.compileExpression(left, contextualType.exceptVoid, inheritedConstraints);
        leftType = this.currentType;

        let rightFlow = flow.forkThen(leftExpr);
        this.currentFlow = rightFlow;

        // simplify if only interested in true or false
        if (contextualType == Type.bool || contextualType == Type.void) {
          leftExpr = this.makeIsTrueish(leftExpr, leftType, left);

          // shortcut if lhs is always false
          let condKind = this.evaluateCondition(leftExpr);
          if (condKind == ConditionKind.False) {
            expr = leftExpr;
            // RHS is not compiled
          } else {
            rightExpr = this.compileExpression(right, leftType, inheritedConstraints);
            rightType = this.currentType;
            rightExpr = this.makeIsTrueish(rightExpr, rightType, right);

            // simplify if lhs is always true
            if (condKind == ConditionKind.True) {
              expr = rightExpr;
              flow.inherit(rightFlow); // true && RHS -> RHS always executes
            } else {
              expr = module.if(leftExpr, rightExpr, module.i32(0));
              flow.mergeBranch(rightFlow); // LHS && RHS -> RHS conditionally executes
              flow.noteThen(expr, rightFlow); // LHS && RHS == true -> RHS always executes
            }
          }
          this.currentFlow = flow;
          this.currentType = Type.bool;

        } else {
          rightExpr = this.compileExpression(right, leftType, inheritedConstraints);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
          if (!commonType) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "&&", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;

          // simplify if copying left is trivial
          if (expr = module.tryCopyTrivialExpression(leftExpr)) {
            expr = module.if(
              this.makeIsTrueish(leftExpr, this.currentType, left),
              rightExpr,
              expr
            );

          // if not possible, tee left to a temp
          } else {
            let tempLocal = flow.getTempLocal(leftType);
            if (!flow.canOverflow(leftExpr, leftType)) flow.setLocalFlag(tempLocal.index, LocalFlags.Wrapped);
            if (flow.isNonnull(leftExpr, leftType)) flow.setLocalFlag(tempLocal.index, LocalFlags.NonNull);
            expr = module.if(
              this.makeIsTrueish(module.local_tee(tempLocal.index, leftExpr, leftType.isManaged), leftType, left),
              rightExpr,
              module.local_get(tempLocal.index, leftType.toRef())
            );
          }
          flow.mergeBranch(rightFlow); // LHS && RHS -> RHS conditionally executes
          flow.noteThen(expr, rightFlow); // LHS && RHS == true -> RHS always executes
          this.currentFlow = flow;
          this.currentType = commonType;
        }
        break;
      }
      case Token.Bar_Bar: { // left || right -> ((t = left) ? t : right)
        let flow = this.currentFlow;
        let inheritedConstraints = constraints & Constraints.MustWrap;
        leftExpr = this.compileExpression(left, contextualType.exceptVoid, inheritedConstraints);
        leftType = this.currentType;

        let rightFlow = flow.forkElse(leftExpr);
        this.currentFlow = rightFlow;

        // simplify if only interested in true or false
        if (contextualType == Type.bool || contextualType == Type.void) {
          leftExpr = this.makeIsTrueish(leftExpr, leftType, left);

          // shortcut if lhs is always true
          let condKind = this.evaluateCondition(leftExpr);
          if (condKind == ConditionKind.True) {
            expr = leftExpr;
            // RHS is not compiled
          } else {
            rightExpr = this.compileExpression(right, leftType, inheritedConstraints);
            rightType = this.currentType;
            rightExpr = this.makeIsTrueish(rightExpr, rightType, right);

            // simplify if lhs is always false
            if (condKind == ConditionKind.False) {
              expr = rightExpr;
              flow.inherit(rightFlow); // false || RHS -> RHS always executes
            } else {
              expr = module.if(leftExpr, module.i32(1), rightExpr);
              flow.mergeBranch(rightFlow); // LHS || RHS -> RHS conditionally executes
              flow.noteElse(expr, rightFlow); // LHS || RHS == false -> RHS always executes
            }
          }
          this.currentFlow = flow;
          this.currentType = Type.bool;

        } else {
          rightExpr = this.compileExpression(right, leftType, inheritedConstraints);
          rightType = this.currentType;
          commonType = Type.commonType(leftType, rightType, contextualType);
          if (!commonType) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              expression.range, "||", leftType.toString(), rightType.toString()
            );
            this.currentType = contextualType;
            return module.unreachable();
          }
          let possiblyNull = leftType.is(TypeFlags.Nullable) && rightType.is(TypeFlags.Nullable);
          leftExpr = this.convertExpression(leftExpr, leftType, commonType, false, left);
          leftType = commonType;
          rightExpr = this.convertExpression(rightExpr, rightType, commonType, false, right);
          rightType = commonType;

          // simplify if copying left is trivial
          if (expr = module.tryCopyTrivialExpression(leftExpr)) {
            expr = module.if(
              this.makeIsTrueish(leftExpr, leftType, left),
              expr,
              rightExpr
            );

          // if not possible, tee left to a temp. local
          } else {
            let temp = flow.getTempLocal(leftType);
            let tempIndex = temp.index;
            if (!flow.canOverflow(leftExpr, leftType)) flow.setLocalFlag(tempIndex, LocalFlags.Wrapped);
            if (flow.isNonnull(leftExpr, leftType)) flow.setLocalFlag(tempIndex, LocalFlags.NonNull);
            expr = module.if(
              this.makeIsTrueish(module.local_tee(tempIndex, leftExpr, leftType.isManaged), leftType, left),
              module.local_get(tempIndex, leftType.toRef()),
              rightExpr
            );
          }
          flow.mergeBranch(rightFlow); // LHS || RHS -> RHS conditionally executes
          flow.noteElse(expr, rightFlow); // LHS || RHS == false -> RHS always executes
          this.currentFlow = flow;
          this.currentType = possiblyNull
            ? commonType
            : commonType.nonNullableType;
        }
        break;
      }
      case Token.In: {
        this.error(
          DiagnosticCode.Not_implemented_0,
          expression.range, "'in' operator"
        );
        this.currentType = Type.bool;
        return module.unreachable();
      }
      default: {
        assert(false);
        expr = this.module.unreachable();
      }
    }
    if (!compound) return expr;
    let resolver = this.resolver;
    let target = resolver.lookupExpression(left, this.currentFlow);
    if (!target) return module.unreachable();
    let targetType = resolver.getTypeOfElement(target);
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
      expr,
      this.currentType,
      right,
      resolver.currentThisExpression,
      resolver.currentElementExpression,
      contextualType != Type.void
    );
  }

  makeLt(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits and signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: return module.binary(BinaryOp.LtI32, leftExpr, rightExpr);
      case TypeKind.I64: return module.binary(BinaryOp.LtI64, leftExpr, rightExpr);
      case TypeKind.Isize: return module.binary(BinaryOp.LtISize, leftExpr, rightExpr);
      case TypeKind.Bool:
      case TypeKind.U8:
      case TypeKind.U16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: return module.binary(BinaryOp.LtU32, leftExpr, rightExpr);
      case TypeKind.U64: return module.binary(BinaryOp.LtU64, leftExpr, rightExpr);
      case TypeKind.Usize: return module.binary(BinaryOp.LtUSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.LtF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.LtF64, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeGt(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits and signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: return module.binary(BinaryOp.GtI32, leftExpr, rightExpr);
      case TypeKind.I64: return module.binary(BinaryOp.GtI64, leftExpr, rightExpr);
      case TypeKind.Isize: return module.binary(BinaryOp.GtISize, leftExpr, rightExpr);
      case TypeKind.Bool:
      case TypeKind.U8:
      case TypeKind.U16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: return module.binary(BinaryOp.GtU32, leftExpr, rightExpr);
      case TypeKind.U64: return module.binary(BinaryOp.GtU64, leftExpr, rightExpr);
      case TypeKind.Usize: return module.binary(BinaryOp.GtUSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.GtF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.GtF64, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeLe(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits and signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: return module.binary(BinaryOp.LeI32, leftExpr, rightExpr);
      case TypeKind.I64: return module.binary(BinaryOp.LeI64, leftExpr, rightExpr);
      case TypeKind.Isize: return module.binary(BinaryOp.LeISize, leftExpr, rightExpr);
      case TypeKind.Bool:
      case TypeKind.U8:
      case TypeKind.U16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: return module.binary(BinaryOp.LeU32, leftExpr, rightExpr);
      case TypeKind.U64: return module.binary(BinaryOp.LeU64, leftExpr, rightExpr);
      case TypeKind.Usize: return module.binary(BinaryOp.LeUSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.LeF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.LeF64, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeGe(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits and signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: return module.binary(BinaryOp.GeI32, leftExpr, rightExpr);
      case TypeKind.I64: return module.binary(BinaryOp.GeI64, leftExpr, rightExpr);
      case TypeKind.Isize: return module.binary(BinaryOp.GeISize, leftExpr, rightExpr);
      case TypeKind.Bool:
      case TypeKind.U8:
      case TypeKind.U16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: return module.binary(BinaryOp.GeU32, leftExpr, rightExpr);
      case TypeKind.U64: return module.binary(BinaryOp.GeU64, leftExpr, rightExpr);
      case TypeKind.Usize: return module.binary(BinaryOp.GeUSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.GeF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.GeF64, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeEq(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    // Cares about garbage bits
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32:
      case TypeKind.U32: return module.binary(BinaryOp.EqI32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.EqI64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.EqSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.EqF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.EqF64, leftExpr, rightExpr);
      case TypeKind.V128: {
        return module.unary(UnaryOp.AllTrueI8x16,
          module.binary(BinaryOp.EqI8x16, leftExpr, rightExpr)
        );
      }
      case TypeKind.Eqref:
      case TypeKind.Structref:
      case TypeKind.Arrayref:
      case TypeKind.I31ref: return module.ref_eq(leftExpr, rightExpr);
      case TypeKind.Stringref: return module.string_eq(leftExpr, rightExpr);
      case TypeKind.StringviewWTF8:
      case TypeKind.StringviewWTF16:
      case TypeKind.StringviewIter:
      case TypeKind.Funcref:
      case TypeKind.Externref:
      case TypeKind.Anyref: {
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
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32:
      case TypeKind.U32: return module.binary(BinaryOp.NeI32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.NeI64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.NeSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.NeF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.NeF64, leftExpr, rightExpr);
      case TypeKind.V128: {
        return module.unary(UnaryOp.AnyTrueV128,
          module.binary(BinaryOp.NeI8x16, leftExpr, rightExpr)
        );
      }
      case TypeKind.Eqref:
      case TypeKind.Structref:
      case TypeKind.Arrayref:
      case TypeKind.I31ref: {
        return module.unary(UnaryOp.EqzI32,
          module.ref_eq(leftExpr, rightExpr)
        );
      }
      case TypeKind.Stringref: {
        return module.unary(UnaryOp.EqzI32,
          module.string_eq(leftExpr, rightExpr)
        );
      }
      case TypeKind.StringviewWTF8:
      case TypeKind.StringviewWTF16:
      case TypeKind.StringviewIter:
      case TypeKind.Funcref:
      case TypeKind.Externref:
      case TypeKind.Anyref: {
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
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.I32:
      case TypeKind.U32: return module.binary(BinaryOp.AddI32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.AddI64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.AddSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.AddF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.AddF64, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeSub(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.I32:
      case TypeKind.U32: return module.binary(BinaryOp.SubI32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.SubI64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.SubSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.SubF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.SubF64, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeMul(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.I32:
      case TypeKind.U32: return module.binary(BinaryOp.MulI32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.MulI64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.MulSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.MulF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.MulF64, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makePow(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    // Cares about garbage bits
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool: {
        return module.select(
          module.i32(1),
          module.binary(BinaryOp.EqI32, rightExpr, module.i32(0)),
          leftExpr,
          TypeRef.I32
        );
      }
      case TypeKind.I8:
      case TypeKind.U8:
      case TypeKind.I16:
      case TypeKind.U16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32:
      case TypeKind.U32: {
        if (this.options.willOptimize) {
          // Precompute power if LHS and RHS constants
          // TODO: move this optimization to AIR
          if (
            getExpressionId(leftExpr)  == ExpressionId.Const &&
            getExpressionId(rightExpr) == ExpressionId.Const
          ) {
            let leftValue  = getConstValueI32(leftExpr);
            let rightValue = getConstValueI32(rightExpr);
            this.currentType = type;
            return module.i32(i64_low(i64_pow(
              i64_new(leftValue),
              i64_new(rightValue)
            )));
          }
        }
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
          assert(prototype.kind == ElementKind.FunctionPrototype);
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
        if (this.options.willOptimize) {
          // Precompute power if LHS and RHS constants
          // TODO: move this optimization to AIR
          if (
            getExpressionId(leftExpr) == ExpressionId.Const &&
            getExpressionId(rightExpr) == ExpressionId.Const
          ) {
            let leftValue = i64_new(getConstValueI64Low(leftExpr), getConstValueI64High(leftExpr));
            let rightValue = i64_new(getConstValueI64Low(rightExpr), getConstValueI64High(rightExpr));
            let result = i64_pow(leftValue, rightValue);
            this.currentType = type;
            return module.i64(i64_low(result), i64_high(result));
          }
        }
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
          assert(prototype.kind == ElementKind.FunctionPrototype);
          this.i64PowInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
        }
        if (!instance || !this.compileFunction(instance)) {
          return module.unreachable();
        }
        return this.makeCallDirect(instance, [ leftExpr, rightExpr ], reportNode);
      }
      case TypeKind.Isize:
      case TypeKind.Usize: {
        let isWasm64 = this.options.isWasm64;
        if (this.options.willOptimize) {
          // Precompute power if LHS and RHS constants
          // TODO: move this optimization to AIR
          if (
            getExpressionId(leftExpr) == ExpressionId.Const &&
            getExpressionId(rightExpr) == ExpressionId.Const
          ) {
            if (isWasm64) {
              let leftValue  = i64_new(getConstValueI64Low(leftExpr), getConstValueI64High(leftExpr));
              let rightValue = i64_new(getConstValueI64Low(rightExpr), getConstValueI64High(rightExpr));
              let result = i64_pow(leftValue, rightValue);
              this.currentType = type;
              return module.i64(i64_low(result), i64_high(result));
            } else {
              let leftValue  = getConstValueI32(leftExpr);
              let rightValue = getConstValueI32(rightExpr);
              this.currentType = type;
              return module.i32(i64_low(i64_pow(
                i64_new(leftValue),
                i64_new(rightValue)
              )));
            }
          }
        }
        let instance = isWasm64
          ? this.i64PowInstance
          : this.i32PowInstance;
        if (!instance) {
          let prototype = this.program.lookup(isWasm64
            ? CommonNames.ipow64
            : CommonNames.ipow32
          );
          if (!prototype) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, isWasm64 ? "ipow64" : "ipow32"
            );
            return module.unreachable();
          }
          assert(prototype.kind == ElementKind.FunctionPrototype);
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
        if (this.options.willOptimize) {
          // Precompute power if LHS and RHS constants
          // TODO: move this optimization to AIR
          if (
            getExpressionId(leftExpr)  == ExpressionId.Const &&
            getExpressionId(rightExpr) == ExpressionId.Const
          ) {
            let leftValue  = getConstValueF32(leftExpr);
            let rightValue = getConstValueF32(rightExpr);
            this.currentType = type;
            return module.f32(f32(accuratePow64(leftValue, rightValue)));
          }
        }
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
          let prototype = namespace.getMember(CommonNames.pow);
          if (!prototype) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Mathf.pow"
            );
            return module.unreachable();
          }
          assert(prototype.kind == ElementKind.FunctionPrototype);
          this.f32PowInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
        }
        if (!instance || !this.compileFunction(instance)) {
          return module.unreachable();
        }
        return this.makeCallDirect(instance, [ leftExpr, rightExpr ], reportNode);
      }
      // Math.pow otherwise (result is f64)
      case TypeKind.F64: {
        if (this.options.willOptimize) {
          // Precompute power if LHS and RHS constants
          // TODO: move this optimization to AIR
          if (
            getExpressionId(leftExpr)  == ExpressionId.Const &&
            getExpressionId(rightExpr) == ExpressionId.Const
          ) {
            let leftValue  = getConstValueF64(leftExpr);
            let rightValue = getConstValueF64(rightExpr);
            this.currentType = type;
            return module.f64(accuratePow64(leftValue, rightValue));
          }
        }
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
          let prototype = namespace.getMember(CommonNames.pow);
          if (!prototype) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Math.pow"
            );
            return module.unreachable();
          }
          assert(prototype.kind == ElementKind.FunctionPrototype);
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
    let module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: return module.binary(BinaryOp.DivI32, leftExpr, rightExpr);
      case TypeKind.I64: return module.binary(BinaryOp.DivI64, leftExpr, rightExpr);
      case TypeKind.Isize: return module.binary(BinaryOp.DivISize, leftExpr, rightExpr);
      case TypeKind.Bool:
      case TypeKind.U8:
      case TypeKind.U16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: return module.binary(BinaryOp.DivU32, leftExpr, rightExpr);
      case TypeKind.U64: return module.binary(BinaryOp.DivU64, leftExpr, rightExpr);
      case TypeKind.Usize: return module.binary(BinaryOp.DivUSize, leftExpr, rightExpr);
      case TypeKind.F32: return module.binary(BinaryOp.DivF32, leftExpr, rightExpr);
      case TypeKind.F64: return module.binary(BinaryOp.DivF64, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeRem(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    // Cares about garbage bits and signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.I32: return module.binary(BinaryOp.RemI32, leftExpr, rightExpr);
      case TypeKind.I64: return module.binary(BinaryOp.RemI64, leftExpr, rightExpr);
      case TypeKind.Isize: return module.binary(BinaryOp.RemISize, leftExpr, rightExpr);
      case TypeKind.Bool:
      case TypeKind.U8:
      case TypeKind.U16: {
        leftExpr  = this.ensureSmallIntegerWrap(leftExpr, type);
        rightExpr = this.ensureSmallIntegerWrap(rightExpr, type);
        // falls through
      }
      case TypeKind.U32: return module.binary(BinaryOp.RemU32, leftExpr, rightExpr);
      case TypeKind.U64: return module.binary(BinaryOp.RemU64, leftExpr, rightExpr);
      case TypeKind.Usize: return module.binary(BinaryOp.RemUSize, leftExpr, rightExpr);
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
          let prototype = namespace.getMember(CommonNames.mod);
          if (!prototype) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Mathf.mod"
            );
            return module.unreachable();
          }
          assert(prototype.kind == ElementKind.FunctionPrototype);
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
          let prototype = namespace.getMember(CommonNames.mod);
          if (!prototype) {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              reportNode.range, "Math.mod"
            );
            return module.unreachable();
          }
          assert(prototype.kind == ElementKind.FunctionPrototype);
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
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool: return leftExpr;
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        // leftExpr << (rightExpr & (7|15))
        return module.binary(
          BinaryOp.ShlI32,
          leftExpr,
          module.binary(
            BinaryOp.AndI32,
            rightExpr,
            module.i32(type.size - 1)
          )
        );
      }
      case TypeKind.I32:
      case TypeKind.U32: return module.binary(BinaryOp.ShlI32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.ShlI64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.ShlSize, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeShr(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits on the LHS, but on the RHS only for types smaller than 5 bits,
    // and signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool: return leftExpr;
      case TypeKind.I8:
      case TypeKind.I16: {
        // leftExpr >> (rightExpr & (7|15))
        return module.binary(
          BinaryOp.ShrI32,
          this.ensureSmallIntegerWrap(leftExpr, type),
          module.binary(
            BinaryOp.AndI32,
            rightExpr,
            module.i32(type.size - 1)
          )
        );
      }
      case TypeKind.U8:
      case TypeKind.U16: {
        // leftExpr >>> (rightExpr & (7|15))
        return module.binary(
          BinaryOp.ShrU32,
          this.ensureSmallIntegerWrap(leftExpr, type),
          module.binary(
            BinaryOp.AndI32,
            rightExpr,
            module.i32(type.size - 1)
          )
        );
      }
      case TypeKind.I32: return module.binary(BinaryOp.ShrI32, leftExpr, rightExpr);
      case TypeKind.I64: return module.binary(BinaryOp.ShrI64, leftExpr, rightExpr);
      case TypeKind.Isize: return module.binary(BinaryOp.ShrISize, leftExpr, rightExpr);
      case TypeKind.U32: return module.binary(BinaryOp.ShrU32, leftExpr, rightExpr);
      case TypeKind.U64: return module.binary(BinaryOp.ShrU64, leftExpr, rightExpr);
      case TypeKind.Usize: return module.binary(BinaryOp.ShrUSize, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeShru(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Cares about garbage bits on the LHS, but on the RHS only for types smaller than 5 bits
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool: return leftExpr;
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        // leftExpr >>> (rightExpr & (7|15))
        return module.binary(
          BinaryOp.ShrU32,
          this.ensureSmallIntegerWrap(leftExpr, type),
          module.binary(
            BinaryOp.AndI32,
            rightExpr,
            module.i32(type.size - 1)
          )
        );
      }
      case TypeKind.I32:
      case TypeKind.U32: return module.binary(BinaryOp.ShrU32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.ShrU64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.ShrUSize, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeAnd(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32: return module.binary(BinaryOp.AndI32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.AndI64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.AndSize, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeOr(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: return module.binary(BinaryOp.OrI32, leftExpr, rightExpr);
      case TypeKind.I32:
      case TypeKind.U32: return module.binary(BinaryOp.OrI32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.OrI64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.OrSize, leftExpr, rightExpr);
    }
    assert(false);
    return module.unreachable();
  }

  makeXor(leftExpr: ExpressionRef, rightExpr: ExpressionRef, type: Type): ExpressionRef {
    // Does not care about garbage bits or signedness
    let module = this.module;
    switch (type.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: return module.binary(BinaryOp.XorI32, leftExpr, rightExpr);
      case TypeKind.I32:
      case TypeKind.U32: return module.binary(BinaryOp.XorI32, leftExpr, rightExpr);
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.XorI64, leftExpr, rightExpr);
      case TypeKind.Isize:
      case TypeKind.Usize: return module.binary(BinaryOp.XorSize, leftExpr, rightExpr);
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
    leftType: Type,
    right: Expression,
    reportNode: Node
  ): ExpressionRef {
    let rightType: Type;
    let signature = operatorInstance.signature;
    let parameterTypes = signature.parameterTypes;
    if (operatorInstance.is(CommonFlags.Instance)) {
      leftExpr = this.convertExpression(leftExpr, leftType, assert(signature.thisType), false, left);
      rightType = parameterTypes[0];
    } else {
      leftExpr = this.convertExpression(leftExpr, leftType, parameterTypes[0], false, left);
      rightType = parameterTypes[1];
    }
    let rightExpr = this.compileExpression(right, rightType, Constraints.ConvImplicit);
    return this.makeCallDirect(operatorInstance, [ leftExpr, rightExpr ], reportNode);
  }

  private compileAssignment(
    expression: Expression,
    valueExpression: Expression,
    contextualType: Type
  ): ExpressionRef {
    let program = this.program;
    let resolver = program.resolver;
    let flow = this.currentFlow;
    let target = resolver.lookupExpression(expression, flow); // reports
    if (!target) return this.module.unreachable();
    let thisExpression = resolver.currentThisExpression;
    let elementExpression = resolver.currentElementExpression;

    // to compile just the value, we need to know the target's type
    let targetType: Type;
    switch (target.kind) {
      case ElementKind.Global: {
        if (!this.compileGlobalLazy(<Global>target, expression)) {
          return this.module.unreachable();
        }
        // fall-through
      }
      case ElementKind.Local: {
        if (this.pendingElements.has(target)) {
          this.error(
            DiagnosticCode.Variable_0_used_before_its_declaration,
            expression.range,
            target.internalName
          );
          return this.module.unreachable();
        }
        targetType = (<VariableLikeElement>target).type;
        if (target.hasDecorator(DecoratorFlags.Unsafe)) this.checkUnsafe(expression);
        break;
      }
      case ElementKind.PropertyPrototype: {
        let propertyPrototype = <PropertyPrototype>target;
        let propertyInstance = resolver.resolveProperty(propertyPrototype);
        if (!propertyInstance) return this.module.unreachable();
        target = propertyInstance;
        // fall-through
      }
      case ElementKind.Property: {
        let propertyInstance = <Property>target;
        if (propertyInstance.isField) {
          if (this.pendingElements.has(target)) {
            this.error(
              DiagnosticCode.Variable_0_used_before_its_declaration,
              expression.range,
              target.internalName
            );
            return this.module.unreachable();
          }
        }
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
        if (setterInstance.hasDecorator(DecoratorFlags.Unsafe)) this.checkUnsafe(expression);
        break;
      }
      case ElementKind.IndexSignature: {
        let parent = (<IndexSignature>target).parent;
        assert(parent.kind == ElementKind.Class);
        let classInstance = <Class>parent;
        let isUnchecked = flow.is(FlowFlags.UncheckedContext);
        let indexedSet = classInstance.lookupOverload(OperatorKind.IndexedSet, isUnchecked);
        if (!indexedSet) {
          let indexedGet = classInstance.lookupOverload(OperatorKind.IndexedGet, isUnchecked);
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
        let parameterTypes = indexedSet.signature.parameterTypes;

        assert(parameterTypes.length == 2); // parser must guarantee this
        targetType = parameterTypes[1];     // 2nd parameter is the element

        if (indexedSet.hasDecorator(DecoratorFlags.Unsafe)) this.checkUnsafe(expression);
        if (!isUnchecked && this.options.pedantic) {
          this.pedantic(
            DiagnosticCode.Indexed_access_may_involve_bounds_checking,
            expression.range
          );
        }
        break;
      }
      default: {
        this.error(
          DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
          expression.range, target.internalName
        );
        return this.module.unreachable();
      }
    }

    // compile the value and do the assignment
    assert(targetType != Type.void);
    let valueExpr = this.compileExpression(valueExpression, targetType);
    let valueType = this.currentType;
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
    let module = this.module;
    let flow = this.currentFlow;

    switch (target.kind) {
      case ElementKind.Local: {
        let local = <Local>target;
        if (flow.isLocalFlag(local.index, LocalFlags.Constant, true)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, target.internalName
          );
          this.currentType = tee ? local.type : Type.void;
          return module.unreachable();
        }
        return this.makeLocalAssignment(local, valueExpr, valueType, tee);
      }
      case ElementKind.Global: {
        let global = <Global>target;
        if (!this.compileGlobalLazy(global, valueExpression)) {
          return module.unreachable();
        }
        if (target.isAny(CommonFlags.Const | CommonFlags.Readonly)) {
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
      case ElementKind.PropertyPrototype: {
        let propertyInstance = this.resolver.resolveProperty(<PropertyPrototype>target);
        if (!propertyInstance) return module.unreachable();
        target = propertyInstance;
        // fall-through
      }
      case ElementKind.Property: {
        let propertyInstance = <Property>target;
        if (propertyInstance.isField) {
          // Cannot assign to readonly fields except in constructors if there's no initializer
          let isConstructor = flow.sourceFunction.is(CommonFlags.Constructor);
          if (propertyInstance.is(CommonFlags.Readonly)) {
            let initializerNode = propertyInstance.initializerNode;
            if (!isConstructor || initializerNode) {
              this.error(
                DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
                valueExpression.range, propertyInstance.internalName
              );
              return module.unreachable();
            }
          }
          // Mark initialized fields in constructors
          thisExpression = assert(thisExpression);
          if (isConstructor && thisExpression.kind == NodeKind.This) {
            flow.setThisFieldFlag(propertyInstance, FieldFlags.Initialized);
          }
        }
        let setterInstance = propertyInstance.setterInstance;
        if (!setterInstance) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, target.internalName
          );
          return module.unreachable();
        }
        assert(setterInstance.signature.parameterTypes.length == 1);
        if (propertyInstance.is(CommonFlags.Instance)) {
          let thisType = assert(setterInstance.signature.thisType);
          let thisExpr = this.compileExpression(
            assert(thisExpression),
            thisType,
            Constraints.ConvImplicit | Constraints.IsThis
          );
          if (!tee) return this.makeCallDirect(setterInstance, [ thisExpr, valueExpr ], valueExpression);
          let getterInstance = assert((<Property>target).getterInstance);
          assert(getterInstance.signature.thisType == thisType);
          let returnType = getterInstance.signature.returnType;
          let returnTypeRef = returnType.toRef();
          let tempThis = flow.getTempLocal(returnType);
          let ret = module.block(null, [
            this.makeCallDirect(setterInstance, [
              module.local_tee(tempThis.index, thisExpr, returnType.isManaged),
              valueExpr
            ], valueExpression),
            this.makeCallDirect(getterInstance, [
              module.local_get(tempThis.index, returnTypeRef)
            ], valueExpression)
          ], returnTypeRef);
          return ret;
        } else {
          if (!tee) return this.makeCallDirect(setterInstance, [ valueExpr ], valueExpression);
          let getterInstance = assert((<Property>target).getterInstance);
          return module.block(null, [
            this.makeCallDirect(setterInstance, [ valueExpr ], valueExpression),
            this.makeCallDirect(getterInstance, null, valueExpression)
          ], getterInstance.signature.returnType.toRef());
        }
      }
      case ElementKind.IndexSignature: {
        let indexSignature = <IndexSignature>target;
        let parent = indexSignature.parent;
        assert(parent.kind == ElementKind.Class);
        let classInstance = <Class>parent;
        assert(classInstance.kind == ElementKind.Class);
        let isUnchecked = flow.is(FlowFlags.UncheckedContext);
        let getterInstance = classInstance.lookupOverload(OperatorKind.IndexedGet, isUnchecked);
        if (!getterInstance) {
          this.error(
            DiagnosticCode.Index_signature_is_missing_in_type_0,
            valueExpression.range, classInstance.internalName
          );
          return module.unreachable();
        }
        let setterInstance = classInstance.lookupOverload(OperatorKind.IndexedSet, isUnchecked);
        if (!setterInstance) {
          this.error(
            DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
            valueExpression.range, classInstance.internalName
          );
          this.currentType = tee ? getterInstance.signature.returnType : Type.void;
          return module.unreachable();
        }
        assert(setterInstance.signature.parameterTypes.length == 2);
        let thisType = classInstance.type;
        let thisExpr = this.compileExpression(
          assert(thisExpression),
          thisType,
          Constraints.ConvImplicit | Constraints.IsThis
        );
        let setterIndexType = setterInstance.signature.parameterTypes[0];
        let getterIndexType = getterInstance.signature.parameterTypes[0];
        if (!setterIndexType.equals(getterIndexType)) {
          this.errorRelated(
            DiagnosticCode.Index_signature_accessors_in_type_0_differ_in_types,
            getterInstance.identifierAndSignatureRange,
            setterInstance.identifierAndSignatureRange,
            classInstance.internalName,
          );
          this.currentType = tee ? getterInstance.signature.returnType : Type.void;
          return module.unreachable();
        }
        let elementExpr = this.compileExpression(assert(indexExpression), setterIndexType, Constraints.ConvImplicit);
        let elementType = this.currentType;
        if (tee) {
          let tempTarget = flow.getTempLocal(thisType);
          let tempElement = flow.getTempLocal(elementType);
          let returnType = getterInstance.signature.returnType;
          let ret = module.block(null, [
            this.makeCallDirect(setterInstance, [
              module.local_tee(tempTarget.index, thisExpr, thisType.isManaged),
              module.local_tee(tempElement.index, elementExpr, elementType.isManaged),
              valueExpr
            ], valueExpression),
            this.makeCallDirect(getterInstance, [
              module.local_get(tempTarget.index, tempTarget.type.toRef()),
              module.local_get(tempElement.index, tempElement.type.toRef())
            ], valueExpression)
          ], returnType.toRef());
          return ret;
        } else {
          return this.makeCallDirect(setterInstance, [
            thisExpr,
            elementExpr,
            valueExpr
          ], valueExpression);
        }
      }
      default: {
        this.error(
          DiagnosticCode.The_target_of_an_assignment_must_be_a_variable_or_a_property_access,
          valueExpression.range
        );
      }
    }
    return module.unreachable();
  }

  /** Makes an assignment to a local, keeping track of wrap and null states. */
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
    let module = this.module;
    let flow = this.currentFlow;
    let type = local.type;
    assert(type != Type.void);
    let localIndex = local.index;

    if (type.isNullableReference) {
      if (!valueType.isNullableReference || flow.isNonnull(valueExpr, type)) flow.setLocalFlag(localIndex, LocalFlags.NonNull);
      else flow.unsetLocalFlag(localIndex, LocalFlags.NonNull);
    }
    flow.setLocalFlag(localIndex, LocalFlags.Initialized);
    if (type.isShortIntegerValue) {
      if (!flow.canOverflow(valueExpr, type)) flow.setLocalFlag(localIndex, LocalFlags.Wrapped);
      else flow.unsetLocalFlag(localIndex, LocalFlags.Wrapped);
    }
    if (tee) { // local = value
      this.currentType = type;
      return module.local_tee(localIndex, valueExpr, type.isManaged);
    } else { // void(local = value)
      this.currentType = Type.void;
      return module.local_set(localIndex, valueExpr, type.isManaged);
    }
  }

  /** Makes an assignment to a global. */
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
    let module = this.module;
    let type = global.type;
    assert(type != Type.void);
    let typeRef = type.toRef();

    valueExpr = this.ensureSmallIntegerWrap(valueExpr, type); // globals must be wrapped
    if (tee) { // (global = value), global
      this.currentType = type;
      return module.block(null, [
        module.global_set(global.internalName, valueExpr),
        module.global_get(global.internalName, typeRef) // known to be assigned now
      ], typeRef);
    } else { // global = value
      this.currentType = Type.void;
      return module.global_set(global.internalName,
        valueExpr
      );
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

    let module = this.module;
    let flow = this.currentFlow;

    // handle call to super
    if (expression.expression.kind == NodeKind.Super) {
      let flow = this.currentFlow;
      let sourceFunction = flow.sourceFunction;
      if (!sourceFunction.is(CommonFlags.Constructor)) {
        this.error(
          DiagnosticCode.Super_calls_are_not_permitted_outside_constructors_or_in_nested_functions_inside_constructors,
          expression.range
        );
        return module.unreachable();
      }

      let parent = assert(sourceFunction.parent);
      assert(parent.kind == ElementKind.Class);
      let classInstance = <Class>parent;
      let baseClassInstance = classInstance.base;
      if (!baseClassInstance || classInstance.prototype.implicitlyExtendsObject) {
        this.error(
          DiagnosticCode._super_can_only_be_referenced_in_a_derived_class,
          expression.expression.range
        );
        return module.unreachable();
      }
      let thisLocal = assert(flow.lookupLocal(CommonNames.this_));
      let sizeTypeRef = this.options.sizeTypeRef;

      let baseCtorInstance = this.ensureConstructor(baseClassInstance, expression);
      this.checkFieldInitialization(baseClassInstance, expression);
      let superCall = this.compileCallDirect(
        baseCtorInstance,
        expression.args,
        expression,
        module.local_get(thisLocal.index, sizeTypeRef)
      );

      // check that super had been called before accessing `this`
      if (flow.isAny(
        FlowFlags.AccessesThis |
        FlowFlags.ConditionallyAccessesThis
      )) {
        this.error(
          DiagnosticCode._super_must_be_called_before_accessing_this_in_the_constructor_of_a_derived_class,
          expression.range
        );
        return module.unreachable();
      }
      flow.set(FlowFlags.AccessesThis | FlowFlags.CallsSuper);
      this.currentType = Type.void;
      return module.local_set(thisLocal.index, superCall, classInstance.type.isManaged);
    }

    // otherwise resolve normally
    let target = this.resolver.lookupExpression(expression.expression, flow); // reports
    if (!target) return module.unreachable();
    let thisExpression = this.resolver.currentThisExpression;

    // handle direct call
    switch (target.kind) {
      case ElementKind.FunctionPrototype: {
        let functionPrototype = <FunctionPrototype>target;
        if (functionPrototype.hasDecorator(DecoratorFlags.Builtin)) {
          // builtins handle present respectively omitted type arguments on their own
          return this.compileCallExpressionBuiltin(functionPrototype, expression, contextualType);
        }
        let functionInstance = this.resolver.maybeInferCall(expression, functionPrototype, flow);
        if (!functionInstance) return this.module.unreachable();
        target = functionInstance;
        // fall-through
      }
      case ElementKind.Function: {
        let functionInstance = <Function>target;
        let thisArg: ExpressionRef = 0;
        if (functionInstance.is(CommonFlags.Instance)) {
          thisArg = this.compileExpression(
            assert(thisExpression),
            assert(functionInstance.signature.thisType),
            Constraints.ConvImplicit | Constraints.IsThis
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
    }

    // handle indirect call
    let functionArg = this.compileExpression(expression.expression, Type.auto);
    let signature = this.currentType.getSignature();
    if (signature) {
      return this.compileCallIndirect(
        signature,
        functionArg,
        expression.args,
        expression,
        0,
        contextualType == Type.void
      );
    }
    this.error(
      DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
      expression.range, this.currentType.toString()
    );
    if (target.kind == ElementKind.PropertyPrototype) {
      let getterPrototype = (<PropertyPrototype>target).getterPrototype;
      if (getterPrototype) {
        this.infoRelated(
          DiagnosticCode.This_expression_is_not_callable_because_it_is_a_get_accessor_Did_you_mean_to_use_it_without,
          expression.range, getterPrototype.identifierNode.range
        );
      }
    }
    return module.unreachable();
  }

  /** Compiles the given arguments like a call expression according to the specified context. */
  private compileCallExpressionLike(
    /** Called expression. */
    expression: Expression,
    /** Call type arguments. */
    typeArguments: TypeNode[] | null,
    /** Call arguments. */
    args: Expression[],
    /** Diagnostic range. */
    range: Range,
    /** Contextual type indicating the return type the caller expects, if any. */
    contextualType: Type,
    /** Constraints indicating contextual conditions. */
    constraints: Constraints = Constraints.None
  ): ExpressionRef {
    // Desugaring like this can happen many times. Let's cache the intermediate allocation.
    let call = this._reusableCallExpression;
    if (call) {
      call.expression = expression;
      call.typeArguments = typeArguments;
      call.args = args;
      call.range = range;
    } else {
      this._reusableCallExpression = call = Node.createCallExpression(expression, typeArguments, args, range);
    }
    return this.compileCallExpression(call, contextualType, constraints);
  }
  private _reusableCallExpression: CallExpression | null = null;

  private compileCallExpressionBuiltin(
    prototype: FunctionPrototype,
    expression: CallExpression,
    contextualType: Type
  ): ExpressionRef {
    if (prototype.hasDecorator(DecoratorFlags.Unsafe)) this.checkUnsafe(expression);

    let typeArguments: Type[] | null = null;

    // builtins handle omitted type arguments on their own. if present, however, resolve them here
    // and pass them to the builtin, even if it's still up to the builtin how to handle them.
    let typeParameterNodes = prototype.typeParameterNodes;
    let typeArgumentNodes = expression.typeArguments;
    if (expression.typeArguments) {
      if (!prototype.is(CommonFlags.Generic)) {
        this.error(
          DiagnosticCode.Type_0_is_not_generic,
          expression.range, prototype.internalName
        );
      }
      typeArguments = this.resolver.resolveTypeArguments(
        assert(typeParameterNodes),
        typeArgumentNodes,
        this.currentFlow.sourceFunction.parent,
        cloneMap(this.currentFlow.contextualTypeArguments), // don't update
        expression
      );
    }
    let callee = expression.expression;
    let ctx = new BuiltinContext(
      this,
      prototype,
      typeArguments,
      expression.args,
      callee.kind == NodeKind.PropertyAccess
        ? (<PropertyAccessExpression>callee).expression
        : null,
      contextualType,
      expression,
      false
    );
    // global builtins
    let internalName = prototype.internalName;
    if (builtins.has(internalName)) {
      let fn = assert(builtins.get(internalName));
      return fn(ctx);
    }
    // class builtins
    let parent = prototype.parent;
    if (parent.kind == ElementKind.Class) {
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
    let thisType = signature.thisType;
    if (hasThis != (thisType != null)) {
      this.error(
        DiagnosticCode.The_this_types_of_each_signature_are_incompatible,
        reportNode.range
      );
      return false;
    }

    // not yet implemented (TODO: maybe some sort of an unmanaged/lightweight array?)
    let hasRest = signature.hasRest;
    if (hasRest) {
      this.error(
        DiagnosticCode.Not_implemented_0,
        reportNode.range, "Rest parameters"
      );
      return false;
    }

    let minimum = signature.requiredParameters;
    let maximum = signature.parameterTypes.length;

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
    constraints: Constraints = Constraints.None
  ): ExpressionRef {
    let numArguments = argumentExpressions.length;
    let signature = instance.signature;
    if (!this.checkCallSignature( // reports
      signature,
      numArguments,
      thisArg != 0,
      reportNode
    )) {
      this.currentType = signature.returnType;
      return this.module.unreachable();
    }
    if (instance.hasDecorator(DecoratorFlags.Unsafe)) this.checkUnsafe(reportNode);

    // handle call on `this` in constructors
    let sourceFunction = this.currentFlow.sourceFunction;
    if (sourceFunction.is(CommonFlags.Constructor) && reportNode.isAccessOnThis) {
      let parent = sourceFunction.parent;
      assert(parent.kind == ElementKind.Class);
      this.checkFieldInitialization(<Class>parent, reportNode);
    }

    // Inline if explicitly requested
    if (instance.hasDecorator(DecoratorFlags.Inline) && (!instance.is(CommonFlags.Overridden) || reportNode.isAccessOnSuper)) {
      assert(!instance.is(CommonFlags.Stub)); // doesn't make sense
      let inlineStack = this.inlineStack;
      if (inlineStack.includes(instance)) {
        this.warning(
          DiagnosticCode.Function_0_cannot_be_inlined_into_itself,
          reportNode.range, instance.internalName
        );
      } else {
        let parameterTypes = signature.parameterTypes;
        assert(numArguments <= parameterTypes.length);
        // compile argument expressions *before* pushing to the inline stack
        // otherwise, the arguments may not be inlined, e.g. `abc(abc(123))`
        let args = new Array<ExpressionRef>(numArguments);
        for (let i = 0; i < numArguments; ++i) {
          args[i] = this.compileExpression(argumentExpressions[i], parameterTypes[i], Constraints.ConvImplicit);
        }
        // make the inlined call
        inlineStack.push(instance);
        let expr = this.makeCallInline(instance, args, thisArg, (constraints & Constraints.WillDrop) != 0);
        inlineStack.pop();
        return expr;
      }
    }

    // Otherwise compile to just a call
    let numArgumentsInclThis = thisArg ? numArguments + 1 : numArguments;
    let operands = new Array<ExpressionRef>(numArgumentsInclThis);
    let index = 0;
    if (thisArg) {
      operands[0] = thisArg;
      index = 1;
    }
    let parameterTypes = signature.parameterTypes;
    for (let i = 0; i < numArguments; ++i, ++index) {
      let paramType = parameterTypes[i];
      let paramExpr = this.compileExpression(argumentExpressions[i], paramType, Constraints.ConvImplicit);
      operands[index] = paramExpr;
    }
    assert(index == numArgumentsInclThis);
    return this.makeCallDirect(instance, operands, reportNode, (constraints & Constraints.WillDrop) != 0);
  }

  makeCallInline(
    instance: Function,
    operands: ExpressionRef[] | null,
    thisArg: ExpressionRef = 0,
    immediatelyDropped: bool = false
  ): ExpressionRef {
    let module = this.module;
    let numArguments = operands ? operands.length : 0;
    let signature = instance.signature;
    let parameterTypes = signature.parameterTypes;
    let numParameters = parameterTypes.length;

    // Create a new inline flow and use it to compile the function as a block
    let previousFlow = this.currentFlow;
    let flow = Flow.createInline(previousFlow.targetFunction, instance);
    let body = [];

    if (thisArg) {
      let parent = assert(instance.parent);
      assert(parent.kind == ElementKind.Class);
      let classInstance = <Class>parent;
      let thisType = assert(instance.signature.thisType);
      let thisLocal = flow.addScopedLocal(CommonNames.this_, thisType);
      body.push(
        module.local_set(thisLocal.index, thisArg, thisType.isManaged)
      );
      flow.setLocalFlag(thisLocal.index, LocalFlags.Initialized);
      let base = classInstance.base;
      if (base) flow.addScopedAlias(CommonNames.super_, base.type, thisLocal.index);
    } else {
      assert(!instance.signature.thisType);
    }
    for (let i = 0; i < numArguments; ++i) {
      let paramExpr = operands![i];
      let paramType = parameterTypes[i];
      let argumentLocal = flow.addScopedLocal(instance.getParameterName(i), paramType);
      // inlining is aware of wrap/nonnull states:
      if (!previousFlow.canOverflow(paramExpr, paramType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.Wrapped);
      if (flow.isNonnull(paramExpr, paramType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.NonNull);
      body.push(
        module.local_set(argumentLocal.index, paramExpr, paramType.isManaged)
      );
      flow.setLocalFlag(argumentLocal.index, LocalFlags.Initialized);
    }

    // Compile omitted arguments with final argument locals blocked. Doesn't need to take care of
    // side-effects within earlier expressions because these already happened on set.
    this.currentFlow = flow;
    let isConstructor = instance.is(CommonFlags.Constructor);
    if (isConstructor) flow.set(FlowFlags.CtorParamContext);
    for (let i = numArguments; i < numParameters; ++i) {
      let initType = parameterTypes[i];
      let initExpr = this.compileExpression(
        assert(instance.prototype.functionTypeNode.parameters[i].initializer),
        initType,
        Constraints.ConvImplicit
      );
      let argumentLocal = flow.addScopedLocal(instance.getParameterName(i), initType);
      body.push(
        this.makeLocalAssignment(argumentLocal, initExpr, initType, false)
      );
    }
    flow.unset(FlowFlags.CtorParamContext);

    // Compile the called function's body in the scope of the inlined flow
    this.compileFunctionBody(instance, body);

    // If a constructor, perform field init checks on its flow directly
    if (isConstructor) {
      let parent = instance.parent;
      assert(parent.kind == ElementKind.Class);
      this.checkFieldInitializationInFlow(<Class>parent, flow);
    }

    // Free any new scoped locals and reset to the original flow
    let returnType = flow.returnType;
    this.currentFlow = previousFlow;

    // Create an outer block that we can break to when returning a value out of order
    this.currentType = returnType;
    return module.block(flow.inlineReturnLabel, body, returnType.toRef());
  }

  /** Makes sure that the arguments length helper global is present. */
  ensureArgumentsLength(): string {
    let name = BuiltinNames.argumentsLength;
    if (!this.builtinArgumentsLength) {
      let module = this.module;
      this.builtinArgumentsLength = module.addGlobal(name, TypeRef.I32, true, module.i32(0));
    }
    return name;
  }

  /** Ensures compilation of the varargs stub for the specified function. */
  ensureVarargsStub(original: Function): Function {
    // A varargs stub is a function called with omitted arguments being zeroed,
    // reading the `argumentsLength` helper global to decide which initializers
    // to inject before calling the original function. It is typically attempted
    // to circumvent the varargs stub where possible, for example where omitted
    // arguments are constants and can be inlined into the original call.
    let stub = original.varargsStub;
    if (stub) return stub;

    let originalSignature = original.signature;
    let originalParameterTypes = originalSignature.parameterTypes;
    let originalParameterDeclarations = original.prototype.functionTypeNode.parameters;
    let returnType = originalSignature.returnType;
    let isInstance = original.is(CommonFlags.Instance);

    // arguments excl. `this`, operands incl. `this`
    let minArguments = originalSignature.requiredParameters;
    let minOperands = minArguments;
    let maxArguments = originalParameterTypes.length;
    let maxOperands = maxArguments;
    if (isInstance) {
      ++minOperands;
      ++maxOperands;
    }
    let numOptional = assert(maxOperands - minOperands);

    let forwardedOperands = new Array<ExpressionRef>(minOperands);
    let operandIndex = 0;
    let stmts = new Array<ExpressionRef>();

    // forward `this` if applicable
    let module = this.module;
    let thisType = originalSignature.thisType;
    if (thisType) {
      forwardedOperands[0] = module.local_get(0, thisType.toRef());
      operandIndex = 1;
    }

    // forward required arguments
    for (let i = 0; i < minArguments; ++i, ++operandIndex) {
      let paramType = originalParameterTypes[i];
      forwardedOperands[operandIndex] = module.local_get(operandIndex, paramType.toRef());
    }
    assert(operandIndex == minOperands);

    // create the varargs stub
    stub = original.newStub("varargs", maxArguments);

    original.varargsStub = stub;

    // compile initializers of omitted arguments in the scope of the stub,
    // accounting for additional locals and a proper `this` context.
    let previousFlow = this.currentFlow;
    let flow = stub.flow;
    if (original.is(CommonFlags.Constructor)) flow.set(FlowFlags.CtorParamContext);
    this.currentFlow = flow;

    // create a br_table switching over the number of optional parameters provided
    let numNames = numOptional + 1; // incl. outer block
    let names = new Array<string>(numNames);
    let ofN = `of${numOptional}`;
    for (let i = 0; i < numNames; ++i) {
      names[i] = `${i}${ofN}`;
    }
    let argumentsLength = this.ensureArgumentsLength();
    let table = module.block(names[0], [
      module.block("outOfRange", [
        module.switch(names, "outOfRange",
          // condition is number of provided optional arguments, so subtract required arguments
          minArguments
            ? module.binary(
                BinaryOp.SubI32,
                module.global_get(argumentsLength, TypeRef.I32),
                module.i32(minArguments)
              )
            : module.global_get(argumentsLength, TypeRef.I32)
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
        initExpr = this.compileExpression(
          initializer,
          type,
          Constraints.ConvImplicit
        );
        initExpr = module.local_set(operandIndex, initExpr, type.isManaged);
      } else {
        this.error(
          DiagnosticCode.Optional_parameter_must_have_an_initializer,
          declaration.range
        );
        initExpr = module.unreachable();
      }
      table = module.block(names[i + 1], [
        table,
        initExpr,
      ]);
      forwardedOperands[operandIndex] = module.local_get(operandIndex, type.toRef());
    }
    assert(operandIndex == maxOperands);

    stmts.push(
      table
    );
    stmts.push(
      // assume this will always succeed (can just use name as the reportNode)
      this.makeCallDirect(original, forwardedOperands, original.declaration.name)
    );
    this.currentFlow = previousFlow;

    let funcRef = module.addFunction(
      stub.internalName,
      stub.signature.paramRefs,
      stub.signature.resultRefs,
      typesToRefs(stub.getNonParameterLocalTypes()),
      module.flatten(stmts, returnType.toRef())
    );
    stub.set(CommonFlags.Compiled);
    stub.finalize(module, funcRef);
    return stub;
  }

  /** Ensures compilation of the override stub for the specified function. */
  ensureOverrideStub(original: Function): Function {
    // An override stub is a function redirecting virtual calls to the actual
    // override targeted by the call. It utilizes varargs stubs where necessary
    // and as such has the same semantics as one. Here, we only make sure that
    // a placeholder exist, with actual code being generated as a finalization
    // step once module compilation is otherwise complete.
    let stub = original.overrideStub;
    if (stub) return stub;
    stub = original.newStub("override");
    original.overrideStub = stub;
    let module = this.module;
    stub.ref = module.addFunction(
      stub.internalName,
      stub.signature.paramRefs,
      stub.signature.resultRefs,
      null,
      module.unreachable()
    );
    this.overrideStubs.add(original);
    return stub;
  }

  /** Finalizes the override stub of the specified function. */
  private finalizeOverrideStub(instance: Function): void {
    let stub = this.ensureOverrideStub(instance);
    if (stub.is(CommonFlags.Compiled)) return;

    assert(instance.parent.kind == ElementKind.Class || instance.parent.kind == ElementKind.Interface);
    let module = this.module;
    let usizeType = this.options.usizeType;
    let sizeTypeRef = usizeType.toRef();
    let parameterTypes = instance.signature.parameterTypes;
    let returnType = instance.signature.returnType;
    let numParameters = parameterTypes.length;
    let tempIndex = 1 + parameterTypes.length; // incl. `this`

    // Switch over this's rtId and map it to the respective overload
    let builder = new SwitchBuilder(this.module,
      module.load(4, false,
        module.binary(
          sizeTypeRef == TypeRef.I64
            ? BinaryOp.SubI64
            : BinaryOp.SubI32,
          module.local_get(0, sizeTypeRef),
          sizeTypeRef == TypeRef.I64
            ? module.i64(8) // rtId offset = -8
            : module.i32(8)
        ),
        TypeRef.I32
      )
    );
    let overrideInstances = this.resolver.resolveOverrides(instance);
    if (overrideInstances) {
      for (let i = 0, k = overrideInstances.length; i < k; ++i) {
        let overrideInstance = overrideInstances[i];
        if (!overrideInstance.is(CommonFlags.Compiled)) continue; // errored
        let overrideType = overrideInstance.type;
        let originalType = instance.type;
        if (!overrideType.isAssignableTo(originalType)) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            overrideInstance.identifierNode.range, overrideType.toString(), originalType.toString()
          );
          continue;
        }
        // TODO: additional optional parameters are not permitted by `isAssignableTo` yet
        let overrideSignature = overrideInstance.signature;
        let overrideParameterTypes = overrideSignature.parameterTypes;
        let overrideNumParameters = overrideParameterTypes.length;
        let paramExprs = new Array<ExpressionRef>(1 + overrideNumParameters);
        paramExprs[0] = module.local_get(0, sizeTypeRef); // this
        for (let n = 1; n <= numParameters; ++n) {
          paramExprs[n] = module.local_get(n, parameterTypes[n - 1].toRef());
        }
        let needsVarargsStub = false;
        for (let n = numParameters; n < overrideNumParameters; ++n) {
          // TODO: inline constant initializers and skip varargs stub
          paramExprs[1 + n] = this.makeZero(overrideParameterTypes[n]);
          needsVarargsStub = true;
        }
        let calledName = needsVarargsStub
          ? this.ensureVarargsStub(overrideInstance).internalName
          : overrideInstance.internalName;
        let returnTypeRef = overrideSignature.returnType.toRef();
        let stmts = new Array<ExpressionRef>();
        if (needsVarargsStub) {
          // Safe to prepend since paramExprs are local.get's
          stmts.push(module.global_set(this.ensureArgumentsLength(), module.i32(numParameters)));
        }
        if (returnType == Type.void) {
          stmts.push(
            module.call(calledName, paramExprs, returnTypeRef)
          );
          stmts.push(
            module.return()
          );
        } else {
          stmts.push(
            module.return(
              module.call(calledName, paramExprs, returnTypeRef)
            )
          );
        }
        let classInstance = assert(overrideInstance.getBoundClassOrInterface());
        builder.addCase(classInstance.id, stmts);
        // Also alias each extender inheriting this exact overload
        let extenders = classInstance.extenders;
        if (extenders) {
          for (let _values = Set_values(extenders), i = 0, k = _values.length; i < k; ++i) {
            let extender = _values[i];
            let instanceMembers = extender.prototype.instanceMembers;
            if (instanceMembers && instanceMembers.has(instance.declaration.name.text)) {
              continue; // skip those not inheriting
            }
            builder.addCase(extender.id, stmts);
          }
        }
      }
    }

    // Call the original function if no other id matches and the method is not
    // abstract or part of an interface. Note that doing so will not catch an
    // invalid id, but can reduce code size significantly since we also don't
    // have to add branches for extenders inheriting the original function.
    let body: ExpressionRef;
    let instanceClass = instance.getBoundClassOrInterface();
    if (!instance.is(CommonFlags.Abstract) && !(instanceClass && instanceClass.kind == ElementKind.Interface)) {
      let paramExprs = new Array<ExpressionRef>(numParameters);
      paramExprs[0] = module.local_get(0, sizeTypeRef); // this
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        paramExprs[1 + i] = module.local_get(1 + i, parameterTypes[i].toRef());
      }
      body = module.call(instance.internalName, paramExprs, returnType.toRef());

    // Otherwise trap
    } else {
      body = module.unreachable();
    }

    // Create the stub function
    let ref = stub.ref;
    if (ref) module.removeFunction(stub.internalName);
    stub.ref = module.addFunction(
      stub.internalName,
      stub.signature.paramRefs,
      stub.signature.resultRefs,
      [ TypeRef.I32 ],
      module.block(null, [
        builder.render(tempIndex),
        body
      ], returnType.toRef())
    );
    stub.set(CommonFlags.Compiled);
  }

  /** Marks managed call operands for the shadow stack. */
  private operandsTostack(signature: Signature, operands: ExpressionRef[]): void {
    if (!this.options.stackSize) return;
    let module = this.module;
    let operandIndex = 0;
    let thisType = signature.thisType;
    if (thisType) {
      if (thisType.isManaged) {
        let operand = operands[0];
        let precomp = module.runExpression(operand, ExpressionRunnerFlags.Default);
        if (!isConstZero(precomp)) { // otherwise unnecessary
          operands[operandIndex] = module.tostack(operand);
        }
      }
      ++operandIndex;
    }
    let parameterIndex = 0;
    let parameterTypes = signature.parameterTypes;
    assert(parameterTypes.length >= operands.length - operandIndex);
    while (operandIndex < operands.length) {
      let paramType = parameterTypes[parameterIndex];
      if (paramType.isManaged) {
        let operand = operands[operandIndex];
        let precomp = module.runExpression(operand, ExpressionRunnerFlags.Default);
        if (!isConstZero(precomp)) { // otherwise unnecessary
          operands[operandIndex] = module.tostack(operand);
        }
      }
      ++operandIndex;
      ++parameterIndex;
    }
  }

  /** Creates a direct call to the specified function. */
  makeCallDirect(
    instance: Function,
    operands: ExpressionRef[] | null,
    reportNode: Node,
    immediatelyDropped: bool = false
  ): ExpressionRef {
    if (instance.hasDecorator(DecoratorFlags.Inline)) {
      if (!instance.is(CommonFlags.Overridden)) {
        assert(!instance.is(CommonFlags.Stub)); // doesn't make sense
        let inlineStack = this.inlineStack;
        if (inlineStack.includes(instance)) {
          this.warning(
            DiagnosticCode.Function_0_cannot_be_inlined_into_itself,
            reportNode.range, instance.internalName
          );
        } else {
          inlineStack.push(instance);
          let expr: ExpressionRef;
          if (instance.is(CommonFlags.Instance)) {
            let theOperands = assert(operands);
            assert(theOperands.length);
            expr = this.makeCallInline(instance, theOperands.slice(1), theOperands[0], immediatelyDropped);
          } else {
            expr = this.makeCallInline(instance, operands, 0, immediatelyDropped);
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
    let module = this.module;
    let numOperands = operands ? operands.length : 0;
    let numArguments = numOperands;
    let minArguments = instance.signature.requiredParameters;
    let minOperands = minArguments;
    let parameterTypes = instance.signature.parameterTypes;
    let maxArguments = parameterTypes.length;
    let maxOperands = maxArguments;
    if (instance.is(CommonFlags.Instance)) {
      ++minOperands;
      ++maxOperands;
      --numArguments;
    }
    assert(numOperands >= minOperands);

    if (!this.compileFunction(instance)) return module.unreachable();
    let returnType = instance.signature.returnType;

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
              Constraints.ConvImplicit
            ));
            continue;
          }
          let resolved = this.resolver.lookupExpression(initializer, instance.flow, parameterTypes[i], ReportMode.Swallow);
          if (resolved && resolved.kind == ElementKind.Global) {
            let global = <Global>resolved;
            if (this.compileGlobalLazy(global, initializer) && global.is(CommonFlags.Inlined)) {
              operands.push(
                this.compileInlineConstant(global, parameterTypes[i], Constraints.ConvImplicit)
              );
              continue;
            }
          }
        }
        operands.push(this.makeZero(parameterTypes[i]));
        allOptionalsAreConstant = false;
      }
      if (!allOptionalsAreConstant && !instance.is(CommonFlags.ModuleImport)) {
        let original = instance;
        instance = this.ensureVarargsStub(instance);
        if (!this.compileFunction(instance)) return module.unreachable();
        instance.flow.flags = original.flow.flags;
        let returnTypeRef = returnType.toRef();
        // We know the last operand is optional and omitted, so inject setting
        // ~argumentsLength into that operand, which is always safe.
        let lastOperand = operands[maxOperands - 1];
        assert(!(getSideEffects(lastOperand, module.ref) & SideEffects.WritesGlobal));
        let lastOperandType = parameterTypes[maxArguments - 1];
        operands[maxOperands - 1] = module.block(null, [
          module.global_set(this.ensureArgumentsLength(), module.i32(numArguments)),
          lastOperand
        ], lastOperandType.toRef());
        this.operandsTostack(instance.signature, operands);
        let expr = module.call(instance.internalName, operands, returnTypeRef);
        if (returnType != Type.void && immediatelyDropped) {
          expr = module.drop(expr);
          this.currentType = Type.void;
        } else {
          this.currentType = returnType;
        }
        return expr;
      }
    }

    // Call the override stub if the function has overloads
    if (instance.is(CommonFlags.Overridden) && !reportNode.isAccessOnSuper) {
      instance = this.ensureOverrideStub(instance);
    }

    if (operands) this.operandsTostack(instance.signature, operands);
    let expr = module.call(instance.internalName, operands, returnType.toRef());
    this.currentType = returnType;
    return expr;
  }

  /** Compiles an indirect call to a first-class function. */
  compileCallIndirect(
    signature: Signature,
    functionArg: ExpressionRef,
    argumentExpressions: Expression[],
    reportNode: Node,
    thisArg: ExpressionRef = 0,
    immediatelyDropped: bool = false
  ): ExpressionRef {
    let numArguments = argumentExpressions.length;

    if (!this.checkCallSignature( // reports
      signature,
      numArguments,
      thisArg != 0,
      reportNode
    )) {
      return this.module.unreachable();
    }

    let numArgumentsInclThis = thisArg ? numArguments + 1 : numArguments;
    let operands = new Array<ExpressionRef>(numArgumentsInclThis);
    let index = 0;
    if (thisArg) {
      operands[0] = thisArg;
      index = 1;
    }
    let parameterTypes = signature.parameterTypes;
    for (let i = 0; i < numArguments; ++i, ++index) {
      operands[index] = this.compileExpression(argumentExpressions[i], parameterTypes[i],
        Constraints.ConvImplicit
      );
    }
    assert(index == numArgumentsInclThis);
    return this.makeCallIndirect(signature, functionArg, reportNode, operands, immediatelyDropped);
  }

  /** Creates an indirect call to a first-class function. */
  makeCallIndirect(
    signature: Signature,
    functionArg: ExpressionRef,
    reportNode: Node,
    operands: ExpressionRef[] | null = null,
    immediatelyDropped: bool = false,
  ): ExpressionRef {
    let module = this.module;
    let numOperands = operands ? operands.length : 0;
    let numArguments = numOperands;
    let minArguments = signature.requiredParameters;
    let minOperands = minArguments;
    let parameterTypes = signature.parameterTypes;
    let returnType = signature.returnType;
    let maxArguments = parameterTypes.length;
    let maxOperands = maxArguments;
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
        operands.push(this.makeZero(parameterTypes[i]));
      }
    }

    // We might be calling a varargs stub here, even if all operands have been
    // provided, so we must set `argumentsLength` in any case. Inject setting it
    // into the index argument, which becomes executed last after any operands.
    let argumentsLength = this.ensureArgumentsLength();
    let sizeTypeRef = this.options.sizeTypeRef;
    if (getSideEffects(functionArg, module.ref) & SideEffects.WritesGlobal) {
      let flow = this.currentFlow;
      let temp = flow.getTempLocal(this.options.usizeType);
      let tempIndex = temp.index;
      functionArg = module.block(null, [
        module.local_set(tempIndex, functionArg, true), // Function
        module.global_set(argumentsLength, module.i32(numArguments)),
        module.local_get(tempIndex, sizeTypeRef)
      ], sizeTypeRef);
    } else { // simplify
      functionArg = module.block(null, [
        module.global_set(argumentsLength, module.i32(numArguments)),
        functionArg
      ], sizeTypeRef);
    }
    if (operands) this.operandsTostack(signature, operands);
    let expr = module.call_indirect(
      null, // TODO: handle multiple tables
      module.load(4, false, functionArg, TypeRef.I32), // ._index
      operands,
      signature.paramRefs,
      signature.resultRefs
    );
    this.currentType = returnType;
    return expr;
  }

  private compileCommaExpression(
    expression: CommaExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let expressions = expression.expressions;
    let numExpressions = expressions.length;
    let exprs = new Array<ExpressionRef>(numExpressions--);
    for (let i = 0; i < numExpressions; ++i) {
      exprs[i] = this.compileExpression(expressions[i], Type.void, // drop all except last
        Constraints.ConvImplicit | Constraints.WillDrop
      );
    }
    exprs[numExpressions] = this.compileExpression(expressions[numExpressions], contextualType, constraints);
    return this.module.flatten(exprs, this.currentType.toRef());
  }

  private compileElementAccessExpression(
    expression: ElementAccessExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let module = this.module;
    let targetExpression = expression.expression;
    let targetType = this.resolver.resolveExpression(targetExpression, this.currentFlow); // reports
    if (targetType) {
      let classReference = targetType.getClassOrWrapper(this.program);
      if (classReference) {
        let isUnchecked = this.currentFlow.is(FlowFlags.UncheckedContext);
        let indexedGet = classReference.lookupOverload(OperatorKind.IndexedGet, isUnchecked);
        if (indexedGet) {
          let thisType = assert(indexedGet.signature.thisType);
          let thisArg = this.compileExpression(targetExpression, thisType,
            Constraints.ConvImplicit
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
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let declaration = expression.declaration.clone(); // generic contexts can have multiple
    assert(!declaration.typeParameters); // function expression cannot be generic
    let flow = this.currentFlow;
    let sourceFunction = flow.sourceFunction;
    let isNamed = declaration.name.text.length > 0;
    let isSemanticallyAnonymous = !isNamed || contextualType != Type.void;
    let prototype = new FunctionPrototype(
      isSemanticallyAnonymous
        ? `${isNamed ? declaration.name.text : "anonymous"}|${sourceFunction.nextAnonymousId++}`
        : declaration.name.text,
      sourceFunction,
      declaration,
      DecoratorFlags.None
    );
    let instance: Function | null;
    let contextualTypeArguments = cloneMap(flow.contextualTypeArguments);
    let module = this.module;

    // compile according to context. this differs from a normal function in that omitted parameter
    // and return types can be inferred and omitted arguments can be replaced with dummies.
    let contextualSignature = contextualType.signatureReference;
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
        return module.unreachable();
      }

      // check non-omitted parameter types
      for (let i = 0; i < numPresentParameters; ++i) {
        let parameterNode = parameterNodes[i];
        if (!isTypeOmitted(parameterNode.type)) {
          let resolvedType = this.resolver.resolveType(
            parameterNode.type,
            sourceFunction.parent,
            contextualTypeArguments
          );
          if (!resolvedType) return module.unreachable();
          if (!parameterTypes[i].isStrictlyAssignableTo(resolvedType)) {
            this.error(
              DiagnosticCode.Type_0_is_not_assignable_to_type_1,
              parameterNode.range, parameterTypes[i].toString(), resolvedType.toString()
            );
            return module.unreachable();
          }
        }
        // any unused parameters are inherited but ignored
      }

      // check non-omitted return type
      let returnType = contextualSignature.returnType;
      if (!isTypeOmitted(signatureNode.returnType)) {
        let resolvedType = this.resolver.resolveType(
          signatureNode.returnType,
          sourceFunction.parent,
          contextualTypeArguments
        );
        if (!resolvedType) return module.unreachable();
        if (
          returnType == Type.void
            ? resolvedType != Type.void
            : !resolvedType.isStrictlyAssignableTo(returnType)
        ) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            signatureNode.returnType.range, resolvedType.toString(), returnType.toString()
          );
          return module.unreachable();
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
          return module.unreachable();
        }
        let resolvedType = this.resolver.resolveType(
          thisTypeNode,
          sourceFunction.parent,
          contextualTypeArguments
        );
        if (!resolvedType) return module.unreachable();
        if (!thisType.isStrictlyAssignableTo(resolvedType)) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            thisTypeNode.range, thisType.toString(), resolvedType.toString()
          );
          return module.unreachable();
        }
      }

      let signature = Signature.create(this.program, parameterTypes, returnType, thisType, numParameters);
      instance = new Function(
        prototype.name,
        prototype,
        null,
        signature,
        contextualTypeArguments
      );
      instance.flow.outer = flow;
      let worked = this.compileFunction(instance);
      this.currentType = contextualSignature.type;
      if (!worked) return module.unreachable();

    // otherwise compile like a normal function
    } else {
      instance = this.resolver.resolveFunction(prototype, null, contextualTypeArguments);
      if (!instance) return this.module.unreachable();
      instance.flow.outer = flow;
      let worked = this.compileFunction(instance);
      this.currentType = instance.signature.type;
      if (!worked) return module.unreachable();
    }

    let offset = this.ensureRuntimeFunction(instance); // reports
    let expr = this.options.isWasm64
      ? module.i64(i64_low(offset), i64_high(offset))
      : module.i32(i64_low(offset));

    // add a constant local referring to the function if applicable
    if (!isSemanticallyAnonymous) {
      let fname = instance.name;
      let existingLocal = flow.getScopedLocal(fname);
      if (existingLocal) {
        if (!existingLocal.declaration.range.source.isNative) {
          this.errorRelated(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range,
            existingLocal.declaration.name.range,
            fname
          );
        } else { // scoped locals are shared temps that don't track declarations
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, fname
          );
        }
      } else {
        let ftype = instance.type;
        let local = flow.addScopedLocal(instance.name, ftype);
        flow.setLocalFlag(local.index, LocalFlags.Constant | LocalFlags.Initialized);
        expr = module.local_tee(local.index, expr, ftype.isManaged);
      }
    }

    return expr;
  }

  /** Makes sure the enclosing source file of the specified expression has been compiled. */
  private maybeCompileEnclosingSource(expression: Expression): void {
    let internalPath = expression.range.source.internalPath;
    let filesByName = this.program.filesByName;
    assert(filesByName.has(internalPath));
    let enclosingFile = assert(filesByName.get(internalPath));
    if (!enclosingFile.is(CommonFlags.Compiled)) {
      this.compileFileByPath(internalPath, expression);
    }
  }

  private compileIdentifierExpression(
    expression: IdentifierExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let module = this.module;
    let flow = this.currentFlow;
    let sourceFunction = flow.sourceFunction;

    // check special keywords first
    switch (expression.kind) {
      case NodeKind.Null: {
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
          return this.makeZero(contextualType);
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
      case NodeKind.True: {
        this.currentType = Type.bool;
        return module.i32(1);
      }
      case NodeKind.False: {
        this.currentType = Type.bool;
        return module.i32(0);
      }
      case NodeKind.This: {
        let thisType = sourceFunction.signature.thisType;
        if (!thisType) {
          this.error(
            DiagnosticCode._this_cannot_be_referenced_in_current_location,
            expression.range
          );
          this.currentType = this.options.usizeType;
          return module.unreachable();
        }
        if (sourceFunction.is(CommonFlags.Constructor)) {
          if (flow.is(FlowFlags.CtorParamContext)) {
            this.error(
              DiagnosticCode._this_cannot_be_referenced_in_constructor_arguments,
              expression.range
            );
          }
          if (!(constraints & Constraints.IsThis)) {
            let parent = sourceFunction.parent;
            assert(parent.kind == ElementKind.Class);
            this.checkFieldInitialization(<Class>parent, expression);
          }
        }
        let thisLocal = assert(flow.lookupLocal(CommonNames.this_));
        flow.set(FlowFlags.AccessesThis);
        this.currentType = thisType;
        return module.local_get(thisLocal.index, thisType.toRef());
      }
      case NodeKind.Super: {
        if (sourceFunction.is(CommonFlags.Constructor)) {
          if (flow.is(FlowFlags.CtorParamContext)) {
            this.error(
              DiagnosticCode._super_cannot_be_referenced_in_constructor_arguments,
              expression.range
            );
          } else if (!flow.is(FlowFlags.CallsSuper)) {
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
              return module.local_get(scopedThis.index, base.type.toRef());
            }
          }
        }
        if (sourceFunction.is(CommonFlags.Instance)) {
          let parent = assert(sourceFunction.parent);
          assert(parent.kind == ElementKind.Class);
          let classInstance = <Class>parent;
          let baseClassInstance = classInstance.base;
          if (baseClassInstance) {
            let superType = baseClassInstance.type;
            this.currentType = superType;
            return module.local_get(0, superType.toRef());
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
    let currentParent = this.currentParent;
    if (!currentParent) currentParent = sourceFunction;
    let target = this.resolver.lookupIdentifierExpression( // reports
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
      case ElementKind.Local: {
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
        if (local.is(CommonFlags.Inlined)) {
          return this.compileInlineConstant(local, contextualType, constraints);
        }
        let localIndex = local.index;
        if (!flow.isLocalFlag(localIndex, LocalFlags.Initialized)) {
          this.error(
            DiagnosticCode.Variable_0_is_used_before_being_assigned,
            expression.range, local.name
          );
        }
        assert(localIndex >= 0);
        if (localType.isNullableReference && flow.isLocalFlag(localIndex, LocalFlags.NonNull, false)) {
          localType = localType.nonNullableType;
        }
        this.currentType = localType;

        if (target.parent != flow.targetFunction) {
          // TODO: closures
          this.error(
            DiagnosticCode.Not_implemented_0,
            expression.range,
            "Closures"
          );
          return module.unreachable();
        }
        return module.local_get(localIndex, localType.toRef());
      }
      case ElementKind.Global: {
        let global = <Global>target;
        if (!this.compileGlobalLazy(global, expression)) {
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
        if (global.is(CommonFlags.Inlined)) {
          return this.compileInlineConstant(global, contextualType, constraints);
        }
        let expr = module.global_get(global.internalName, globalType.toRef());
        if (global.is(CommonFlags.DefinitelyAssigned) && globalType.isReference && !globalType.isNullableReference) {
          expr = this.makeRuntimeNonNullCheck(expr, globalType, expression);
        }
        this.currentType = globalType;
        return expr;
      }
      case ElementKind.EnumValue: { // here: if referenced from within the same enum
        let enumValue = <EnumValue>target;
        if (!target.is(CommonFlags.Compiled)) {
          this.error(
            DiagnosticCode.A_member_initializer_in_a_enum_declaration_cannot_reference_members_declared_after_it_including_members_defined_in_other_enums,
            expression.range
          );
          this.currentType = Type.i32;
          return module.unreachable();
        }
        this.currentType = Type.i32;
        if (enumValue.is(CommonFlags.Inlined)) {
          assert(enumValue.constantValueKind == ConstantValueKind.Integer);
          return module.i32(i64_low(enumValue.constantIntegerValue));
        }
        return module.global_get(enumValue.internalName, TypeRef.I32);
      }
      case ElementKind.FunctionPrototype: {
        let functionPrototype = <FunctionPrototype>target;
        let typeParameterNodes = functionPrototype.typeParameterNodes;

        if (typeParameterNodes && typeParameterNodes.length != 0) {
          this.error(
            DiagnosticCode.Type_argument_expected,
            expression.range
          );
          break; // also diagnose 'not a value at runtime'
        }

        let functionInstance = this.resolver.resolveFunction(
          functionPrototype,
          null,
          cloneMap(flow.contextualTypeArguments)
        );
        if (!functionInstance || !this.compileFunction(functionInstance)) return module.unreachable();
        if (functionInstance.hasDecorator(DecoratorFlags.Builtin)) {
          this.error(
            DiagnosticCode.Not_implemented_0,
            expression.range, "First-class built-ins"
          );
          this.currentType = functionInstance.type;
          return module.unreachable();
        }
        if (contextualType.isExternalReference) {
          // TODO: Concrete function types currently map to first class functions implemented in
          // linear memory (on top of `usize`), leaving only generic `funcref` for use here. In the
          // future, once functions become Wasm GC objects, the actual signature type can be used.
          this.currentType = Type.funcref;
          return module.ref_func(functionInstance.internalName, ensureType(functionInstance.type));
        }
        let offset = this.ensureRuntimeFunction(functionInstance);
        this.currentType = functionInstance.signature.type;
        return this.options.isWasm64
          ? module.i64(i64_low(offset), i64_high(offset))
          : module.i32(i64_low(offset));
      }
    }
    this.error(
      DiagnosticCode.Expression_does_not_compile_to_a_value_at_runtime,
      expression.range
    );
    return module.unreachable();
  }

  private compileInstanceOfExpression(
    expression: InstanceOfExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let flow = this.currentFlow;
    let isType = expression.isType;

    // Mimic `instanceof CLASS`
    if (isType.kind == NodeKind.NamedType) {
      let namedType = <NamedTypeNode>isType;
      if (!(namedType.isNullable || namedType.hasTypeArguments)) {
        let element = this.resolver.resolveTypeName(namedType.name, flow.sourceFunction, ReportMode.Swallow);
        if (element && element.kind == ElementKind.ClassPrototype) {
          let prototype = <ClassPrototype>element;
          if (prototype.is(CommonFlags.Generic)) {
            return this.makeInstanceofClass(expression, prototype);
          }
        }
      }
    }

    // Fall back to `instanceof TYPE`
    let expectedType = this.resolver.resolveType(
      expression.isType,
      flow.sourceFunction,
      cloneMap(flow.contextualTypeArguments)
    );
    if (!expectedType) {
      this.currentType = Type.bool;
      return this.module.unreachable();
    }
    return this.makeInstanceofType(expression, expectedType);
  }

  private makeInstanceofType(expression: InstanceOfExpression, expectedType: Type): ExpressionRef {
    let module = this.module;
    let flow = this.currentFlow;
    let expr = this.compileExpression(expression.expression, expectedType);
    let actualType = this.currentType;
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
    let sizeTypeRef = actualType.toRef();

    // <nullable> instanceof <nonNullable> - LHS must be != 0
    if (actualType.isNullableReference && !expectedType.isNullableReference) {

      // same or upcast - check statically
      if (actualType.nonNullableType.isAssignableTo(expectedType)) {
        return module.binary(
          sizeTypeRef == TypeRef.I64
            ? BinaryOp.NeI64
            : BinaryOp.NeI32,
          expr,
          this.makeZero(actualType)
        );
      }

      // potential downcast - check dynamically
      if (actualType.nonNullableType.hasSubtypeAssignableTo(expectedType)) {
        if (!(actualType.isUnmanaged || expectedType.isUnmanaged)) {
          if (this.options.pedantic) {
            this.pedantic(
              DiagnosticCode.Expression_compiles_to_a_dynamic_check_at_runtime,
              expression.range
            );
          }
          let temp = flow.getTempLocal(actualType);
          let tempIndex = temp.index;
          return module.if(
            module.unary(
              sizeTypeRef == TypeRef.I64
                ? UnaryOp.EqzI64
                : UnaryOp.EqzI32,
              module.local_tee(tempIndex, expr, actualType.isManaged),
            ),
            module.i32(0),
            module.call(this.prepareInstanceOf(expectedType.classReference!), [
              module.local_get(tempIndex, sizeTypeRef)
            ], TypeRef.I32)
          );
        } else {
          this.error(
            DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
            expression.range, "instanceof", actualType.toString(), expectedType.toString()
          );
        }
      }

    // either none or both nullable
    } else {

      // same or upcast - check statically
      if (actualType.isAssignableTo(expectedType)) {
        return module.maybeDropCondition(expr, module.i32(1));
      }

      // potential downcast - check dynamically
      if (actualType.hasSubtypeAssignableTo(expectedType)) {
        if (!(actualType.isUnmanaged || expectedType.isUnmanaged)) {
          let temp = flow.getTempLocal(actualType);
          let tempIndex = temp.index;
          return module.if(
            module.unary(
              sizeTypeRef == TypeRef.I64
                ? UnaryOp.EqzI64
                : UnaryOp.EqzI32,
              module.local_tee(tempIndex, expr, actualType.isManaged),
            ),
            module.i32(0),
            module.call(this.prepareInstanceOf(expectedType.classReference!), [
              module.local_get(tempIndex, sizeTypeRef)
            ], TypeRef.I32)
          );
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

  /** Prepares the instanceof helper for the given class or interface instance. */
  private prepareInstanceOf(instance: Class): string {
    let name = `~instanceof|${instance.internalName}`;
    let pending = this.pendingInstanceOf;
    if (pending.has(instance)) return assert(pending.get(instance));
    pending.set(instance, name);
    let module = this.module;
    module.addFunction(name, this.options.sizeTypeRef, TypeRef.I32, null,
      module.unreachable()
    );
    return name;
  }

  /** Finalizes the instanceof helper of the given class or interface instance. */
  private finalizeInstanceOf(
    /** Class to finalize the helper for. */
    instance: Class,
    /** Name of the helper function. */
    name: string
  ): void {
    let program = this.program;
    let module = this.module;
    let sizeType = this.options.sizeTypeRef;
    let stmts = new Array<ExpressionRef>();
    // (block $is_instance
    //  (local.set $1 (i32.load (...))) ;; class id
    //  (br_if $is_instance (i32.eq (local.get $1) (ID)))
    //  ...
    //  (return (i32.const 0))
    // )
    // (i32.const 1)
    stmts.push(
      module.local_set(1,
        module.load(4, false,
          module.binary(
            sizeType == TypeRef.I64
              ? BinaryOp.SubI64
              : BinaryOp.SubI32,
            module.local_get(0, sizeType),
            module.i32(
              program.totalOverhead - program.OBJECTInstance.offsetof("rtId")
            )
          ),
          TypeRef.I32
        ), false // managedness is irrelevant here, isn't interrupted
      )
    );
    let allInstances: Set<Class> | null;
    if (instance.isInterface) {
      allInstances = instance.implementers;
    } else {
      allInstances = new Set();
      allInstances.add(instance);
      let extenders = instance.extenders;
      if (extenders) {
        for (let _values = Set_values(extenders), i = 0, k = _values.length; i < k; ++i) {
          let extender = _values[i];
          allInstances.add(extender);
        }
      }
    }
    if (allInstances) {
      for (let _values = Set_values(allInstances), i = 0, k = _values.length; i < k; ++i) {
        let instance = _values[i];
        stmts.push(
          module.br("is_instance",
            module.binary(BinaryOp.EqI32,
              module.local_get(1, TypeRef.I32),
              module.i32(instance.id)
            )
          )
        );
      }
    }
    stmts.push(
      module.return(
        module.i32(0)
      )
    );
    stmts[0] = module.block("is_instance", stmts, TypeRef.None);
    stmts.length = 1;
    stmts.push(
      module.i32(1)
    ); 
    module.removeFunction(name);
    module.addFunction(name, sizeType, TypeRef.I32, [ TypeRef.I32 ], module.block(null, stmts, TypeRef.I32));
  }

  private makeInstanceofClass(expression: InstanceOfExpression, prototype: ClassPrototype): ExpressionRef {
    let module = this.module;
    let expr = this.compileExpression(expression.expression, Type.auto);
    let actualType = this.currentType;
    let sizeTypeRef = actualType.toRef();

    this.currentType = Type.bool;

    // exclusively interested in class references here
    let classReference = actualType.getClass();
    if (classReference) {

      // static check
      if (classReference.extendsPrototype(prototype)) {

        // <nullable> instanceof <PROTOTYPE> - LHS must be != 0
        if (actualType.isNullableReference) {
          return module.binary(
            sizeTypeRef == TypeRef.I64
              ? BinaryOp.NeI64
              : BinaryOp.NeI32,
            expr,
            this.makeZero(actualType)
          );

        // <nonNullable> is just `true`
        } else {
          return module.maybeDropCondition(expr, module.i32(1));
        }

      // dynamic check against all possible concrete ids
      } else if (prototype.extends(classReference.prototype)) {
        let flow = this.currentFlow;
        let temp = flow.getTempLocal(actualType);
        let tempIndex = temp.index;
        // !(t = expr) ? 0 : anyinstanceof(t)
        return module.if(
          module.unary(
            sizeTypeRef == TypeRef.I64
              ? UnaryOp.EqzI64
              : UnaryOp.EqzI32,
            module.local_tee(tempIndex, expr, actualType.isManaged),
          ),
          module.i32(0),
          module.call(this.prepareAnyInstanceOf(prototype), [
            module.local_get(tempIndex, sizeTypeRef)
          ], TypeRef.I32)
        );
      }
    }

    // false
    return module.maybeDropCondition(expr, module.i32(0));
  }

  /** Prepares the instanceof helper for the given class or interface prototype. */
  private prepareAnyInstanceOf(prototype: ClassPrototype): string {
    let name = `~anyinstanceof|${prototype.internalName}`;
    let pending = this.pendingInstanceOf;
    if (pending.has(prototype)) return assert(pending.get(prototype));
    pending.set(prototype, name);
    let module = this.module;
    module.addFunction(name, this.options.sizeTypeRef, TypeRef.I32, null,
      module.unreachable()
    );
    return name;
  }

  /** Finalizes the instanceof helper of the given class prototype. */
  private finalizeAnyInstanceOf(prototype: ClassPrototype, name: string): void {
    let module = this.module;
    let sizeType = this.options.sizeTypeRef;
    let stmts = new Array<ExpressionRef>();
    let instances = prototype.instances;
    // (block $is_instance
    //  (local.set $1 (i32.load(...)))
    //  (br_if $is_instance (i32.eq (local.get $1) (ID))
    //  ...
    //  (return (i32.const 0))
    // )
    // (i32.const 1)
    if (instances) {
      let program = this.program;
      stmts.push(
        module.local_set(1,
          module.load(4, false,
            module.binary(
              sizeType == TypeRef.I64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              module.local_get(0, sizeType),
              module.i32(
                program.totalOverhead - program.OBJECTInstance.offsetof("rtId")
              )
            ),
            TypeRef.I32
          ), false // managedness is irrelevant here, isn't interrupted
        )
      );
      let allInstances = new Set<Class>();
      for (let _values = Map_values(instances), i = 0, k = _values.length; i < k; ++i) {
        let instance = _values[i];
        if (instance.isInterface) {
          let implementers = instance.implementers;
          if (implementers) {
            for (let _values = Set_values(implementers), i = 0, k = _values.length; i < k; ++i) {
              let implementer = _values[i];
              allInstances.add(implementer);
            }
          }
        } else {
          allInstances.add(instance);
          let extenders = instance.extenders;
          if (extenders) {
            for (let _values = Set_values(extenders), i = 0, k = _values.length; i < k; ++i) {
              let extender = _values[i];
              allInstances.add(extender);
            }
          }
        }
      }
      for (let _values = Set_values(allInstances), i = 0, k = _values.length; i < k; ++i) {
        let instance = _values[i];
        stmts.push(
          module.br("is_instance",
            module.binary(BinaryOp.EqI32,
              module.local_get(1, TypeRef.I32),
              module.i32(instance.id)
            )
          )
        );
      }
    }
    stmts.push(
      module.return(
        module.i32(0)
      )
    );
    stmts[0] = module.block("is_instance", stmts, TypeRef.None);
    stmts.length = 1;
    stmts.push(
      module.i32(1)
    );
    module.removeFunction(name);
    module.addFunction(name, sizeType, TypeRef.I32, [ TypeRef.I32 ], module.block(null, stmts, TypeRef.I32));
  }

  private compileLiteralExpression(
    expression: LiteralExpression,
    contextualType: Type,
    constraints: Constraints,
    implicitlyNegate: bool = false
  ): ExpressionRef {
    let module = this.module;
    switch (expression.literalKind) {
      case LiteralKind.Array: {
        assert(!implicitlyNegate);
        return this.compileArrayLiteral(
          <ArrayLiteralExpression>expression,
          contextualType,
          constraints
        );
      }
      case LiteralKind.Float: {
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
      case LiteralKind.Integer: {
        let expr = <IntegerLiteralExpression>expression;
        let type = this.resolver.determineIntegerLiteralType(expr, implicitlyNegate, contextualType);
        this.currentType = type;
        let intValue = expr.value;
        let sign = 1.0; // should multiply for float literals
        if (implicitlyNegate) {
          if (type.isFloatValue) {
            sign = -1.0;
          } else {
            intValue = i64_neg(intValue);
          }
        }
        switch (type.kind) {
          case TypeKind.Isize: if (!this.options.isWasm64) return module.i32(i64_low(intValue));
          case TypeKind.I64: return module.i64(i64_low(intValue), i64_high(intValue));
          case TypeKind.Usize: if (!this.options.isWasm64) return module.i32(i64_low(intValue));
          case TypeKind.U64: return module.i64(i64_low(intValue), i64_high(intValue));
          case TypeKind.F32: return module.f32(<f32>sign * i64_to_f32(intValue));
          case TypeKind.F64: return module.f64(sign * i64_to_f64(intValue));
          default: return module.i32(i64_low(intValue));
        }
      }
      case LiteralKind.String: {
        assert(!implicitlyNegate);
        return this.compileStringLiteral(<StringLiteralExpression>expression, constraints);
      }
      case LiteralKind.Template: {
        assert(!implicitlyNegate);
        return this.compileTemplateLiteral(<TemplateLiteralExpression>expression, constraints);
      }
      case LiteralKind.Object: {
        assert(!implicitlyNegate);
        return this.compileObjectLiteral(<ObjectLiteralExpression>expression, contextualType);
      }
      case LiteralKind.RegExp: {
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
    return this.ensureStaticString(expression.value);
  }

  private compileTemplateLiteral(
    expression: TemplateLiteralExpression,
    constraints: Constraints
  ): ExpressionRef {
    let tag = expression.tag;
    let parts = expression.parts;
    let numParts = parts.length;
    let expressions = expression.expressions;
    let numExpressions = expressions.length;
    assert(numExpressions == numParts - 1);

    let module = this.module;
    let stringInstance = this.program.stringInstance;
    let stringType = stringInstance.type;

    if (!tag) {
      // Shortcut if just a (multi-line) string
      if (numParts == 1) {
        return this.ensureStaticString(parts[0]);
      }

      // Shortcut for `${expr}`, `<prefix>${expr}`, `${expr}<suffix>`
      if (numParts == 2) {
        let expression = expressions[0];
        let lhsLen = parts[0].length;
        let rhsLen = parts[1].length;
        // Shortcut for `${expr}`  ->   expr.toString()
        if (!lhsLen && !rhsLen) {
          return this.makeToString(
            this.compileExpression(expression, stringType),
            this.currentType, expression
          );
        }
        // Shortcuts for
        // `<prefix>${expr}`  ->  "<prefix>" + expr.toString()
        // `${expr}<suffix>`  ->  expr.toString() + "<suffix>"
        let hasPrefix = lhsLen != 0;
        // @ts-ignore: cast
        if (hasPrefix ^ (rhsLen != 0)) {
          let lhs: ExpressionRef;
          let rhs: ExpressionRef;
          let expr = this.makeToString(
            this.compileExpression(expression, stringType),
            this.currentType, expression
          );
          if (hasPrefix) {
            lhs = this.ensureStaticString(parts[0]);
            rhs = expr;
          } else {
            // suffix
            lhs = expr;
            rhs = this.ensureStaticString(parts[1]);
          }
          let concatMethod = assert(stringInstance.getMethod("concat"));
          return this.makeCallDirect(concatMethod, [ lhs, rhs ], expression);
        }
      }

      // Shortcut for `${exprA}${exprB}`  ->  exprA.toString() + exprB.toString()
      if (numParts == 3 && !parts[0].length && !parts[1].length && !parts[2].length) {
        let exprA = expressions[0];
        let exprB = expressions[1];

        let lhs = this.makeToString(
          this.compileExpression(exprA, stringType),
          this.currentType, exprA
        );
        let rhs = this.makeToString(
          this.compileExpression(exprB, stringType),
          this.currentType, exprB
        );
        let concatMethod = assert(stringInstance.getMethod("concat"));
        return this.makeCallDirect(concatMethod, [ lhs, rhs ], expression);
      }

      // Compile to a `StaticArray<string>#join("") in the general case
      let expressionPositions = new Array<i32>(numExpressions);
      let values = new Array<usize>();
      if (parts[0].length > 0) values.push(this.ensureStaticString(parts[0]));
      for (let i = 1; i < numParts; ++i) {
        expressionPositions[i - 1] = values.length;
        values.push(module.usize(0));
        if (parts[i].length > 0) values.push(this.ensureStaticString(parts[i]));
      }
      let arrayInstance = assert(this.resolver.resolveClass(this.program.staticArrayPrototype, [ stringType ]));
      let segment = this.addStaticBuffer(stringType, values, arrayInstance.id);
      this.program.OBJECTInstance.writeField("gcInfo", 3, segment.buffer, 0); // use transparent gcinfo
      let offset = i64_add(segment.offset, i64_new(this.program.totalOverhead));
      let joinInstance = assert(arrayInstance.getMethod("join"));
      let indexedSetInstance = assert(arrayInstance.lookupOverload(OperatorKind.IndexedSet, true));
      let stmts = new Array<ExpressionRef>(2 * numExpressions + 1);
      // Use one local per toString'ed subexpression, since otherwise recursion on the same
      // static array would overwrite already prepared parts. Avoids a temporary array.
      let temps = new Array<Local>(numExpressions);
      let flow = this.currentFlow;
      for (let i = 0; i < numExpressions; ++i) {
        let expression = expressions[i];
        let temp = flow.getTempLocal(stringType);
        temps[i] = temp;
        stmts[i] = module.local_set(temp.index,
          this.makeToString(
            this.compileExpression(expression, stringType),
            this.currentType, expression
          ),
          true
        );
      }
      // Populate the static array with the toString'ed subexpressions and call .join("")
      for (let i = 0; i < numExpressions; ++i) {
        stmts[numExpressions + i] = this.makeCallDirect(indexedSetInstance, [
          module.usize(offset),
          module.i32(expressionPositions[i]),
          module.local_get(temps[i].index, stringType.toRef())
        ], expression);
      }
      stmts[2 * numExpressions] = this.makeCallDirect(joinInstance, [
        module.usize(offset),
        this.ensureStaticString("")
      ], expression);
      return module.flatten(stmts, stringType.toRef());
    }

    // Try to find out whether the template function takes a full-blown TemplateStringsArray or if
    // it is sufficient to compile to a normal array. While technically incorrect, this allows us
    // to avoid generating unnecessary static data that is not explicitly signaled to be used.
    let tsaArrayInstance = this.program.templateStringsArrayInstance;
    let arrayInstance = tsaArrayInstance;
    let target = this.resolver.lookupExpression(tag, this.currentFlow, Type.auto, ReportMode.Swallow);
    if (target) {
      switch (target.kind) {
        case ElementKind.FunctionPrototype: {
          let instance = this.resolver.resolveFunction(
            <FunctionPrototype>target,
            null,
            new Map(),
            ReportMode.Swallow
          );
          if (!instance) break;
          target = instance;
          // fall-through
        }
        case ElementKind.Function: {
          let instance = <Function>target;
          let parameterTypes = instance.signature.parameterTypes;
          if (parameterTypes.length) {
            let first = parameterTypes[0].getClass();
            if (first && !first.extendsPrototype(tsaArrayInstance.prototype)) {
              arrayInstance = assert(this.resolver.resolveClass(this.program.arrayPrototype, [ stringType ]));
            }
          }
          break;
        }
      }
    }

    // Compile to a call to the tag function
    let rawParts = expression.rawParts;
    assert(rawParts.length == numParts);
    let partExprs = new Array<ExpressionRef>(numParts);
    for (let i = 0; i < numParts; ++i) {
      partExprs[i] = this.ensureStaticString(parts[i]);
    }
    let arraySegment: MemorySegment;
    if (arrayInstance == tsaArrayInstance) {
      let rawExprs = new Array<ExpressionRef>(numParts);
      for (let i = 0; i < numParts; ++i) {
        rawExprs[i] = this.ensureStaticString(rawParts[i]);
      }
      arraySegment = this.addStaticArrayHeader(stringType,
        this.addStaticBuffer(this.options.usizeType, partExprs),
        arrayInstance
      );
      let rawHeaderSegment = this.addStaticArrayHeader(stringType,
        this.addStaticBuffer(this.options.usizeType, rawExprs)
      );
      arrayInstance.writeField("raw",
        i64_add(rawHeaderSegment.offset, i64_new(this.program.totalOverhead)),
        arraySegment.buffer
      );
    } else {
      arraySegment = this.addStaticArrayHeader(stringType,
        this.addStaticBuffer(this.options.usizeType, partExprs),
        arrayInstance
      );
    }

    // Desugar to compileCallExpression
    let args = expressions.slice();
    args.unshift(
      Node.createCompiledExpression(
        module.usize(i64_add(arraySegment.offset, i64_new(this.program.totalOverhead))),
        arrayInstance.type,
        Source.native.range
      )
    );
    // TODO: Requires ReadonlyArray to be safe
    this.error(
      DiagnosticCode.Not_implemented_0,
      expression.range, "Tagged template literals"
    );
    return this.compileCallExpressionLike(tag, null, args, expression.range, stringType);
  }

  private compileArrayLiteral(
    expression: ArrayLiteralExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let module = this.module;
    let flow = this.currentFlow;
    let program = this.program;

    // handle static arrays
    let contextualClass = contextualType.getClass();
    if (contextualClass && contextualClass.extendsPrototype(program.staticArrayPrototype)) {
      return this.compileStaticArrayLiteral(expression, contextualType, constraints);
    }

    // handle normal arrays
    let element = this.resolver.lookupExpression(expression, flow, this.currentType);
    if (!element) return module.unreachable();
    assert(element.kind == ElementKind.Class);
    let arrayInstance = <Class>element;
    let arrayType = arrayInstance.type;
    let elementType = arrayInstance.getTypeArgumentsTo(program.arrayPrototype)![0];
    let arrayBufferInstance = assert(program.arrayBufferInstance);

    // block those here so compiling expressions doesn't conflict
    let tempThis = flow.getTempLocal(this.options.usizeType);
    let tempDataStart = flow.getTempLocal(arrayBufferInstance.type);

    // compile value expressions and find out whether all are constant
    let expressions = expression.elementExpressions;
    let length = expressions.length;
    let values = new Array<ExpressionRef>(length);
    let isStatic = !elementType.isExternalReference;
    for (let i = 0; i < length; ++i) {
      let elementExpression = expressions[i];
      if (elementExpression.kind != NodeKind.Omitted) {
        let expr = this.compileExpression(<Expression>elementExpression, elementType, Constraints.ConvImplicit);
        if (getExpressionType(expr) != elementType.toRef()) {
          isStatic = false;
        } else {
          let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
          if (precomp) {
            expr = precomp;
          } else {
            isStatic = false;
          }
        }
        values[i] = expr;
      } else {
        values[i] = this.makeZero(elementType);
      }
    }

    // if the array is static, make a static arraybuffer segment
    if (isStatic) {
      let totalOverhead = program.totalOverhead;
      let bufferSegment = this.addStaticBuffer(elementType, values);
      let bufferAddress = i64_add(bufferSegment.offset, i64_new(totalOverhead));

      // make both the buffer and array header static if assigned to a global. this can't be done
      // if inside of a function because each invocation must create a new array reference then.
      if (constraints & Constraints.PreferStatic) {
        let arraySegment = this.addStaticArrayHeader(elementType, bufferSegment);
        let arrayAddress = i64_add(arraySegment.offset, i64_new(totalOverhead));
        this.currentType = arrayType;
        return program.options.isWasm64
          ? this.module.i64(i64_low(arrayAddress), i64_high(arrayAddress))
          : this.module.i32(i64_low(arrayAddress));

      // otherwise allocate a new array header and make it wrap a copy of the static buffer
      } else {
        return this.makeNewArray(arrayInstance, length, bufferAddress, expression);
      }
    }

    // otherwise compile an explicit instantiation with indexed sets
    let indexedSet = arrayInstance.lookupOverload(OperatorKind.IndexedSet, true);
    if (!indexedSet) {
      this.error(
        DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
        expression.range, arrayInstance.internalName
      );
      this.currentType = arrayType;
      return module.unreachable();
    }
    let arrayTypeRef = arrayType.toRef();

    let stmts = new Array<ExpressionRef>();
    // tempThis = __newArray(length, alignLog2, classId, source = 0)
    stmts.push(
      module.local_set(tempThis.index,
        this.makeNewArray(arrayInstance, length, i64_new(0), expression),
        arrayType.isManaged
      )
    );
    // tempData = tempThis.dataStart
    let dataStartMember = assert(arrayInstance.getMember("dataStart"));
    assert(dataStartMember.kind == ElementKind.PropertyPrototype);
    // is a field, so should have been resolved during class finalization
    let dataStartProperty = (<PropertyPrototype>dataStartMember).instance;
    if (!dataStartProperty) return module.unreachable();
    assert(dataStartProperty.isField && dataStartProperty.memoryOffset >= 0);
    stmts.push(
      module.local_set(tempDataStart.index,
        module.load(arrayType.byteSize, false,
          module.local_get(tempThis.index, arrayTypeRef),
          arrayTypeRef,
          dataStartProperty.memoryOffset
        ),
        true // ArrayBuffer
      )
    );
    for (let i = 0; i < length; ++i) {
      // this[i] = value
      stmts.push(
        module.call(indexedSet.internalName, [
          module.local_get(tempThis.index, arrayTypeRef),
          module.i32(i),
          values[i]
        ], TypeRef.None)
      );
    }
    // -> tempThis
    stmts.push(
      module.local_get(tempThis.index, arrayTypeRef)
    );
    if (length) this.compileFunction(indexedSet);
    this.currentType = arrayType;
    return module.flatten(stmts, arrayTypeRef);
  }

  /** Makes a new array instance from a static buffer segment. */
  private makeNewArray(
    /** Concrete array class. */
    arrayInstance: Class,
    /** Length of the array. */
    length: i32,
    /** Source address to copy from. Array is zeroed if `0`. */
    source: i64,
    /** Report node. */
    reportNode: Node
  ): ExpressionRef {
    let program = this.program;
    let module = this.module;
    assert(!arrayInstance.extendsPrototype(program.staticArrayPrototype));
    let elementType = arrayInstance.getArrayValueType(); // asserts

    // __newArray(length, alignLog2, classId, staticBuffer)
    let expr = this.makeCallDirect(program.newArrayInstance, [
      module.i32(length),
      program.options.isWasm64
        ? module.i64(elementType.alignLog2)
        : module.i32(elementType.alignLog2),
      module.i32(arrayInstance.id),
      program.options.isWasm64
        ? module.i64(i64_low(source), i64_high(source))
        : module.i32(i64_low(source))
    ], reportNode);
    this.currentType = arrayInstance.type;
    return expr;
  }

  /** Compiles a special `fixed` array literal. */
  private compileStaticArrayLiteral(
    expression: ArrayLiteralExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let module = this.module;
    let flow = this.currentFlow;
    let program = this.program;

    // make sure this method is only called with a valid contextualType
    let arrayInstance = assert(contextualType.getClass());
    let arrayType = arrayInstance.type;
    let typeArguments = assert(arrayInstance.getTypeArgumentsTo(program.staticArrayPrototype));
    let elementType = typeArguments[0];

    // block those here so compiling expressions doesn't conflict
    let tempThis = flow.getTempLocal(this.options.usizeType);

    // compile value expressions and check if all are compile-time constants
    let expressions = expression.elementExpressions;
    let length = expressions.length;
    let values = new Array<ExpressionRef>(length);
    let isStatic = !elementType.isExternalReference;
    for (let i = 0; i < length; ++i) {
      let elementExpression = expressions[i];
      if (elementExpression.kind != NodeKind.Omitted) {
        let expr = this.compileExpression(elementExpression, elementType, Constraints.ConvImplicit);
        let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
        if (precomp) {
          expr = precomp;
        } else {
          isStatic = false;
        }
        values[i] = expr;
      } else {
        values[i] = this.makeZero(elementType);
      }
    }

    let isWasm64 = this.options.isWasm64;
    let bufferSize = values.length << elementType.alignLog2;

    // if the array is static, make a static arraybuffer segment
    if (isStatic) {
      let bufferSegment = this.addStaticBuffer(elementType, values, arrayInstance.id);
      let bufferAddress = i64_add(bufferSegment.offset, i64_new(program.totalOverhead));

      // return the static buffer directly if assigned to a global
      if (constraints & Constraints.PreferStatic) {
        let expr = this.options.isWasm64
          ? module.i64(i64_low(bufferAddress), i64_high(bufferAddress))
          : module.i32(i64_low(bufferAddress));
        this.currentType = arrayType;
        return expr;

      // otherwise allocate a new chunk of memory and return a copy of the buffer
      } else {
        // __newBuffer(bufferSize, id, buffer)
        let expr = this.makeCallDirect(program.newBufferInstance, [
          isWasm64
            ? module.i64(bufferSize)
            : module.i32(bufferSize),
          module.i32(arrayInstance.id),
          isWasm64
            ? module.i64(i64_low(bufferAddress), i64_high(bufferAddress))
            : module.i32(i64_low(bufferAddress))
        ], expression);
        this.currentType = arrayType;
        return expr;
      }
    }

    // otherwise compile an explicit instantiation with indexed sets
    let indexedSet = arrayInstance.lookupOverload(OperatorKind.IndexedSet, true);
    if (!indexedSet) {
      this.error(
        DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
        expression.range, arrayInstance.internalName
      );
      this.currentType = arrayType;
      return module.unreachable();
    }
    let arrayTypeRef = arrayType.toRef();

    let stmts = new Array<ExpressionRef>();
    // tempThis = __newBuffer(bufferSize, classId)
    stmts.push(
      module.local_set(tempThis.index,
        this.makeCallDirect(program.newBufferInstance, [
          isWasm64
            ? module.i64(bufferSize)
            : module.i32(bufferSize),
          module.i32(arrayInstance.id)
        ], expression),
        arrayType.isManaged
      )
    );
    for (let i = 0; i < length; ++i) {
      // array[i] = value
      stmts.push(
        module.call(indexedSet.internalName, [
          module.local_get(tempThis.index, arrayTypeRef),
          module.i32(i),
          values[i]
        ], TypeRef.None)
      );
    }
    // -> tempThis
    stmts.push(
      module.local_get(tempThis.index, arrayTypeRef)
    );
    if (length) this.compileFunction(indexedSet);
    this.currentType = arrayType;
    return module.flatten(stmts, arrayTypeRef);
  }

  private compileObjectLiteral(expression: ObjectLiteralExpression, contextualType: Type): ExpressionRef {
    let module = this.module;

    // Check that contextual type is a class (TODO: hidden class for interfaces?)
    let classReference = contextualType.getClass();
    if (!classReference) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        expression.range, "<object>", contextualType.toString()
      );
      return module.unreachable();
    }
    let classType = classReference.type;
    this.currentType = classType.nonNullableType;
    if (classReference.kind == ElementKind.Interface) {
      this.error(
        DiagnosticCode.Not_implemented_0,
        expression.range, "Interface hidden classes"
      );
      return module.unreachable();
    }
    if (classReference.is(CommonFlags.Abstract)) {
      this.error(
        DiagnosticCode.Cannot_create_an_instance_of_an_abstract_class,
        expression.range
      );
      return module.unreachable();
    }

    // Check that the class is compatible with object literals
    let ctorPrototype = classReference.prototype.constructorPrototype;
    if (ctorPrototype) {
      this.errorRelated(
        DiagnosticCode.Class_0_cannot_declare_a_constructor_when_instantiated_from_an_object_literal,
        expression.range, ctorPrototype.identifierNode.range, classType.toString()
      );
      return module.unreachable();
    }

    let isManaged = classType.isManaged;
    if (!isManaged) {
      this.checkUnsafe(expression, findDecorator(DecoratorKind.Unmanaged, classReference.decoratorNodes));
    }

    // check and compile field values
    let names = expression.names;
    let numNames = names.length;
    let values = expression.values;
    let members = classReference.members;
    let hasErrors = false;
    let exprs = new Array<ExpressionRef>();
    let flow = this.currentFlow;
    let tempLocal = flow.getTempLocal(classType);
    let classTypeRef = classType.toRef();
    assert(numNames == values.length);

    // Assume all class fields will be omitted, and add them to our omitted list
    let omittedFields = new Set<Property>();
    if (members) {
      for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
        let memberKey = _keys[i];
        let member = assert(members.get(memberKey));
        if (member && member.kind == ElementKind.PropertyPrototype) {
          // only interested in fields (resolved during class finalization)
          let property = (<PropertyPrototype>member).instance;
          if (property && property.isField) {
            omittedFields.add(property); // incl. private/protected
          }
        }
      }
    }

    // Iterate through the members defined in our expression
    let deferredProperties = new Array<Property>();
    for (let i = 0; i < numNames; ++i) {
      let memberName = names[i].text;
      let member = classReference.getMember(memberName);
      if (!member || member.kind != ElementKind.PropertyPrototype) {
        this.error(
          DiagnosticCode.Property_0_does_not_exist_on_type_1,
          names[i].range, memberName, classType.toString()
        );
        hasErrors = true;
        continue;
      }
      if (member.is(CommonFlags.Private)) {
        this.error(
          DiagnosticCode.Property_0_is_private_and_only_accessible_within_class_1,
          names[i].range, memberName, classType.toString()
        );
        hasErrors = true;
        continue;
      }
      if (member.is(CommonFlags.Protected)) {
        this.error(
          DiagnosticCode.Property_0_is_protected_and_only_accessible_within_class_1_and_its_subclasses,
          names[i].range, memberName, classType.toString()
        );
        hasErrors = true;
        continue;
      }
      let propertyInstance = this.resolver.resolveProperty(<PropertyPrototype>member);
      if (!propertyInstance) continue;
      let setterInstance = propertyInstance.setterInstance;
      if (!setterInstance) {
        this.error(
          DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
          names[i].range, memberName, classType.toString()
        );
        hasErrors = true;
        continue;
      }

      // This member is no longer omitted, so delete from our omitted fields
      omittedFields.delete(propertyInstance);

      // Defer real properties to be set after fields are initialized
      if (!propertyInstance.isField) {
        deferredProperties.push(propertyInstance);
        continue;
      }

      let propertyType = propertyInstance.type;
      let expr = this.makeCallDirect(setterInstance, [
        module.local_get(tempLocal.index, classTypeRef),
        this.compileExpression(values[i], propertyType, Constraints.ConvImplicit),
      ], setterInstance.identifierNode, true);
      if (this.currentType != Type.void) { // in case
        expr = module.drop(expr);
      }
      exprs.push(expr);
    }

    // Call deferred real property setters after
    for (let i = 0, k = deferredProperties.length; i < k; ++i) {
      let propertyInstance = deferredProperties[i];
      let setterInstance = assert(propertyInstance.setterInstance);
      exprs.push(
        this.makeCallDirect(setterInstance, [
          module.local_get(tempLocal.index, classTypeRef),
          this.compileExpression(values[i], propertyInstance.type, Constraints.ConvImplicit)
        ], setterInstance.identifierNode)
      );
    }

    this.currentType = classType.nonNullableType;
    if (hasErrors) return module.unreachable();

    // Check remaining omitted fields
    for (let _values = Set_values(omittedFields), j = 0, l = _values.length; j < l; ++j) {
      let propertyInstance = _values[j];
      assert(propertyInstance.isField);
      let propertyType = propertyInstance.type;

      if (propertyInstance.initializerNode) {
        continue; // set by generated ctor
      }

      if (propertyType.isReference) {
        if (!propertyType.isNullableReference) {
          this.error(
            DiagnosticCode.Property_0_is_missing_in_type_1_but_required_in_type_2,
            expression.range, propertyInstance.name, "<object>", classType.toString()
          );
          hasErrors = true;
          continue;
        }
      }

      switch (propertyType.kind) {
        // Number Types (and Number alias types)
        case TypeKind.Bool:
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32:
        case TypeKind.I64:
        case TypeKind.Isize:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.Usize:
        case TypeKind.F32:
        case TypeKind.F64: {
          // Can store zeroes directly (no need to __link)
          exprs.push(
            module.store(
              propertyType.byteSize,
              module.local_get(tempLocal.index, classTypeRef),
              this.makeZero(propertyType),
              propertyType.toRef(),
              propertyInstance.memoryOffset
            )
          );
          continue;
        }
      }

      // Otherwise error
      this.error(
        DiagnosticCode.Property_0_is_missing_in_type_1_but_required_in_type_2,
        expression.range, propertyInstance.name, "<object>", classType.toString()
      );
      hasErrors = true;
    }
    if (hasErrors) return module.unreachable();

    // generate the default constructor
    let ctor = this.ensureConstructor(classReference, expression);
    // note that this is not checking field initialization within the ctor, but
    // instead checks conditions above with provided fields taken into account.

    // allocate a new instance first and assign 'this' to the temp. local
    exprs.unshift(
      module.local_set(tempLocal.index,
        this.compileInstantiate(ctor, [], Constraints.None, expression),
        classType.isManaged
      )
    );

    // once all field values have been set, return 'this'
    exprs.push(
      module.local_get(tempLocal.index, classTypeRef)
    );

    this.currentType = classType.nonNullableType;
    return module.flatten(exprs, classTypeRef);
  }

  private compileNewExpression(
    expression: NewExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let module = this.module;
    let flow = this.currentFlow;

    // obtain the class being instantiated
    let target = this.resolver.resolveTypeName(expression.typeName, flow.sourceFunction);
    if (!target) return module.unreachable();
    if (target.kind != ElementKind.ClassPrototype) {
      this.error(
        DiagnosticCode.This_expression_is_not_constructable,
        expression.typeName.range
      );
      return this.module.unreachable();
    }
    if (target.is(CommonFlags.Abstract)) {
      this.error(
        DiagnosticCode.Cannot_create_an_instance_of_an_abstract_class,
        expression.typeName.range
      );
      return this.module.unreachable();
    }
    let classPrototype = <ClassPrototype>target;
    let classInstance: Class | null = null;
    let typeArguments = expression.typeArguments;
    let classReference: Class | null;
    if (
      !typeArguments &&
      (classReference = contextualType.classReference) &&
      classReference.prototype == classPrototype &&
      classReference.is(CommonFlags.Generic)
    ) {
      // e.g. `arr: Array<T> = new Array()`
      classInstance = this.resolver.resolveClass(
        classPrototype,
        classReference.typeArguments,
        cloneMap(flow.contextualTypeArguments)
      );
    } else {
      classInstance = this.resolver.resolveClassInclTypeArguments(
        classPrototype,
        typeArguments,
        flow.sourceFunction.parent, // relative to caller
        cloneMap(flow.contextualTypeArguments),
        expression
      );
    }
    if (!classInstance) return module.unreachable();
    if (contextualType == Type.void) constraints |= Constraints.WillDrop;
    let ctor = this.ensureConstructor(classInstance, expression);
    if (!ctor.hasDecorator(DecoratorFlags.Inline)) {
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
    let instance = classInstance.constructorInstance;
    if (instance) {
      // shortcut if already compiled
      if (instance.is(CommonFlags.Compiled)) return instance;
      // do not attempt to compile if inlined anyway
      if (!instance.hasDecorator(DecoratorFlags.Inline)) this.compileFunction(instance);
    } else {
      // clone base constructor if a derived class. note that we cannot just
      // call the base ctor since the derived class may have additional fields.
      let baseClass = classInstance.base;
      let contextualTypeArguments = cloneMap(classInstance.contextualTypeArguments);
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
              CommonFlags.Instance | CommonFlags.Constructor
            )
          ),
          null,
          Signature.create(this.program, [], classInstance.type, classInstance.type),
          contextualTypeArguments
        );
      }

      instance.set(CommonFlags.Compiled);
      instance.prototype.setResolvedInstance("", instance);
      if (classInstance.is(CommonFlags.ModuleExport)) {
        instance.set(CommonFlags.ModuleExport);
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
      let sizeTypeRef = this.options.sizeTypeRef;
      let stmts = new Array<ExpressionRef>();

      // {
      //   this = <COND_ALLOC>
      //   IF_DERIVED: this = super(this, ...args)
      //   this.a = X
      //   this.b = Y
      //   return this
      // }
      stmts.push(
        this.makeConditionalAllocation(classInstance, 0)
      );
      if (baseClass) {
        let parameterTypes = signature.parameterTypes;
        let numParameters = parameterTypes.length;
        let operands = new Array<ExpressionRef>(1 + numParameters);
        operands[0] = module.local_get(0, sizeTypeRef);
        for (let i = 1; i <= numParameters; ++i) {
          operands[i] = module.local_get(i, parameterTypes[i - 1].toRef());
        }
        stmts.push(
          module.local_set(0,
            this.makeCallDirect(assert(baseClass.constructorInstance), operands, reportNode, false),
            baseClass.type.isManaged
          )
        );
      }
      this.makeFieldInitializationInConstructor(classInstance, stmts);
      stmts.push(
        module.local_get(0, sizeTypeRef)
      );
      this.currentFlow = previousFlow;

      // make the function
      let locals = instance.localsByIndex;
      let varTypes = new Array<TypeRef>(); // of temp. vars added while compiling initializers
      let numOperands = 1 + signature.parameterTypes.length;
      let numLocals = locals.length;
      if (numLocals > numOperands) {
        for (let i = numOperands; i < numLocals; ++i) varTypes.push(locals[i].type.toRef());
      }
      let funcRef = module.addFunction(
        instance.internalName,
        signature.paramRefs,
        signature.resultRefs,
        varTypes,
        module.flatten(stmts, sizeTypeRef)
      );
      instance.finalize(module, funcRef);
    }

    return instance;
  }

  /** Checks that all class fields have been initialized. */
  checkFieldInitialization(classInstance: Class, relatedNode: Node | null = null): void {
    if (classInstance.didCheckFieldInitialization) return;
    classInstance.didCheckFieldInitialization = true;
    let ctor = assert(classInstance.constructorInstance);
    this.checkFieldInitializationInFlow(classInstance, ctor.flow, relatedNode);
  }

  /** Checks that all class fields have been initialized in the specified flow. */
  checkFieldInitializationInFlow(classInstance: Class, flow: Flow, relatedNode: Node | null = null): void {
    let members = classInstance.members;
    if (members) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let element = _values[i];
        if (element.kind != ElementKind.PropertyPrototype || element.parent != classInstance) continue;
        // only interested in fields (resolved during class finalization)
        let property = (<PropertyPrototype>element).instance;
        if (!property || !property.isField) continue;
        if (!property.initializerNode && !flow.isThisFieldFlag(property, FieldFlags.Initialized)) {
          if (!property.is(CommonFlags.DefinitelyAssigned)) {
            if (relatedNode) {
              this.errorRelated(
                DiagnosticCode.Property_0_has_no_initializer_and_is_not_assigned_in_the_constructor_before_this_is_used_or_returned,
                property.declaration.name.range,
                relatedNode.range,
                property.internalName
              );
            } else {
              this.error(
                DiagnosticCode.Property_0_has_no_initializer_and_is_not_assigned_in_the_constructor_before_this_is_used_or_returned,
                property.declaration.name.range,
                property.internalName
              );
            }
          }
        } else if (property.is(CommonFlags.DefinitelyAssigned)) {
          if (property.type.isReference) {
            this.warning( // involves a runtime check
              DiagnosticCode.Property_0_is_always_assigned_before_being_used,
              property.identifierNode.range,
              property.internalName
            );
          } else {
            this.pedantic( // is a nop anyway
              DiagnosticCode.Unnecessary_definite_assignment,
              property.identifierNode.range
            );
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
    assert(ctorInstance.is(CommonFlags.Constructor));
    let parent = ctorInstance.parent;
    assert(parent.kind == ElementKind.Class);
    let classInstance = <Class>parent;
    if (classInstance.type.isUnmanaged || ctorInstance.hasDecorator(DecoratorFlags.Unsafe)) this.checkUnsafe(reportNode);
    let expr = this.compileCallDirect(
      ctorInstance,
      argumentExpressions,
      reportNode,
      this.makeZero(this.options.usizeType),
      constraints
    );
    if (getExpressionType(expr) != TypeRef.None) { // possibly WILL_DROP
      this.currentType = classInstance.type; // important because a super ctor could be called
    }
    return expr;
  }

  private compilePropertyAccessExpression(
    expression: PropertyAccessExpression,
    ctxType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let module = this.module;
    let flow = this.currentFlow;

    this.maybeCompileEnclosingSource(expression);

    let resolver = this.resolver;
    let target = resolver.lookupExpression(expression, flow, ctxType); // reports
    if (!target) return module.unreachable();
    let thisExpression = resolver.currentThisExpression;
    if (target.hasDecorator(DecoratorFlags.Unsafe)) this.checkUnsafe(expression);

    switch (target.kind) {
      case ElementKind.Global: { // static field
        let global = <Global>target;
        if (!this.compileGlobalLazy(global, expression)) {
          return module.unreachable();
        }
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
        if (global.is(CommonFlags.Inlined)) {
          return this.compileInlineConstant(global, ctxType, constraints);
        }
        let expr = module.global_get(global.internalName, globalType.toRef());
        if (global.is(CommonFlags.DefinitelyAssigned) && globalType.isReference && !globalType.isNullableReference) {
          expr = this.makeRuntimeNonNullCheck(expr, globalType, expression);
        }
        this.currentType = globalType;
        return expr;
      }
      case ElementKind.EnumValue: { // enum value
        let enumValue = <EnumValue>target;
        let parent = assert(enumValue.parent);
        assert(parent.kind == ElementKind.Enum);
        let parentEnum = <Enum>parent;
        if (!this.compileEnum(parentEnum)) {
          this.currentType = Type.i32;
          return this.module.unreachable();
        }
        this.currentType = Type.i32;
        if (enumValue.is(CommonFlags.Inlined)) {
          assert(enumValue.constantValueKind == ConstantValueKind.Integer);
          return this.compileInlineConstant(enumValue, ctxType, constraints);
        }
        assert(enumValue.type == Type.i32);
        return module.global_get(enumValue.internalName, TypeRef.I32);
      }
      case ElementKind.PropertyPrototype: {
        let propertyPrototype = <PropertyPrototype>target;
        let propertyInstance = this.resolver.resolveProperty(propertyPrototype);
        if (!propertyInstance) return module.unreachable();
        target = propertyInstance;
        // fall-through
      }
      case ElementKind.Property: {
        let propertyInstance = <Property>target;
        if (propertyInstance.isField) {
          if (
            flow.sourceFunction.is(CommonFlags.Constructor) &&
            assert(thisExpression).kind == NodeKind.This &&
            !flow.isThisFieldFlag(propertyInstance, FieldFlags.Initialized) &&
            !propertyInstance.is(CommonFlags.DefinitelyAssigned)
          ) {
            this.errorRelated(
              DiagnosticCode.Property_0_is_used_before_being_assigned,
              expression.range,
              propertyInstance.identifierNode.range,
              propertyInstance.internalName
            );
          }
        }
        let getterInstance = propertyInstance.getterInstance;
        if (!getterInstance) return module.unreachable(); // failed earlier
        let thisArg: ExpressionRef = 0;
        if (getterInstance.is(CommonFlags.Instance)) {
          thisArg = this.compileExpression(
            assert(thisExpression),
            assert(getterInstance.signature.thisType),
            Constraints.ConvImplicit | Constraints.IsThis
          );
        }
        return this.compileCallDirect(getterInstance, [], expression, thisArg);
      }
      case ElementKind.FunctionPrototype: {
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
    this.error(
      DiagnosticCode.Expression_does_not_compile_to_a_value_at_runtime,
      expression.range
    );
    return this.module.unreachable();
  }

  private compileTernaryExpression(
    expression: TernaryExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let module = this.module;
    let ifThen = expression.ifThen;
    let ifElse = expression.ifElse;

    let condExpr = this.compileExpression(expression.condition, Type.bool);
    let condExprTrueish = this.makeIsTrueish(condExpr, this.currentType, expression.condition);
    // Try to eliminate unnecesssary branches if the condition is constant
    // FIXME: skips common denominator, inconsistently picking branch type
    let condKind = this.evaluateCondition(condExprTrueish);
    if (condKind == ConditionKind.True) {
      return module.maybeDropCondition(condExprTrueish, this.compileExpression(ifThen, contextualType));
    }
    if (condKind == ConditionKind.False) {
      return module.maybeDropCondition(condExprTrueish, this.compileExpression(ifElse, contextualType));
    }

    let outerFlow = this.currentFlow;
    let ifThenFlow = outerFlow.forkThen(condExpr);
    this.currentFlow = ifThenFlow;
    let ifThenExpr = this.compileExpression(ifThen, contextualType);
    let ifThenType = this.currentType;

    let ifElseFlow = outerFlow.forkElse(condExpr);
    this.currentFlow = ifElseFlow;
    let ifElseExpr = this.compileExpression(ifElse, contextualType == Type.auto ? ifThenType : contextualType);
    let ifElseType = this.currentType;

    if (contextualType == Type.void) { // values, including type mismatch, are irrelevant
      if (ifThenType != Type.void) {
        ifThenExpr = module.drop(ifThenExpr);
        ifThenType = Type.void;
      }
      if (ifElseType != Type.void) {
        ifElseExpr = module.drop(ifElseExpr);
        ifElseType = Type.void;
      }
      this.currentType = Type.void;
    } else {
      let commonType = Type.commonType(ifThenType, ifElseType, contextualType);
      if (!commonType) {
        this.error(
          DiagnosticCode.Type_0_is_not_assignable_to_type_1,
          ifElse.range, ifElseType.toString(), ifThenType.toString()
        );
        this.currentType = contextualType;
        return module.unreachable();
      }
      ifThenExpr = this.convertExpression(ifThenExpr, ifThenType, commonType, false, ifThen);
      ifThenType = commonType;
      ifElseExpr = this.convertExpression(ifElseExpr, ifElseType, commonType, false, ifElse);
      ifElseType = commonType;
      this.currentType = commonType;
    }

    outerFlow.inheritAlternatives(ifThenFlow, ifElseFlow);
    this.currentFlow = outerFlow;

    return module.if(condExprTrueish, ifThenExpr, ifElseExpr);
  }

  private compileUnaryPostfixExpression(
    expression: UnaryPostfixExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let module = this.module;
    let flow = this.currentFlow;

    // make a getter for the expression (also obtains the type)
    let getValue = this.compileExpression( // reports
      expression.operand,
      contextualType.exceptVoid,
      Constraints.None
    );

    // if the value isn't dropped, a temp. local is required to remember the original value,
    // except if a static overload is found, which reverses the use of a temp. (see below)
    let tempLocal: Local | null = null;
    if (contextualType != Type.void) {
      tempLocal = flow.getTempLocal(this.currentType);
      getValue = module.local_tee(
        tempLocal.index,
        getValue,
        this.currentType.isManaged
      );
    }

    let expr: ExpressionRef;

    switch (expression.operator) {
      case Token.Plus_Plus: {

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.PostfixInc);
          if (overload) {
            let isInstance = overload.is(CommonFlags.Instance);
            if (tempLocal && !isInstance) { // revert: static overload simply returns
              getValue = getLocalSetValue(getValue);
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
          return module.unreachable();
        }

        switch (this.currentType.kind) {
          case TypeKind.Bool:
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32: {
            expr = module.binary(
              BinaryOp.AddI32,
              getValue,
              module.i32(1)
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
          case TypeKind.Isize:
          case TypeKind.Usize: {
            expr = module.binary(
              BinaryOp.AddSize,
              getValue,
              this.makeOne(this.currentType)
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
      case Token.Minus_Minus: {

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.PostfixDec);
          if (overload) {
            let isInstance = overload.is(CommonFlags.Instance);
            if (tempLocal && !isInstance) { // revert: static overload simply returns
              getValue = getLocalSetValue(getValue);
              tempLocal = null;
            }
            expr = this.compileUnaryOverload(overload, expression.operand, getValue, expression);
            if (overload.is(CommonFlags.Instance)) break;
            return expr; // here
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
          case TypeKind.Bool:
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32: {
            expr = module.binary(
              BinaryOp.SubI32,
              getValue,
              module.i32(1)
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
          case TypeKind.Isize:
          case TypeKind.Usize: {
            expr = module.binary(
              BinaryOp.SubSize,
              getValue,
              this.makeOne(this.currentType)
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

    let resolver = this.resolver;
    let target = resolver.lookupExpression(expression.operand, flow); // reports
    if (!target) {
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
    let setValue = this.makeAssignment(
      target,
      expr, // includes a tee of getValue to tempLocal
      this.currentType,
      expression.operand,
      resolver.currentThisExpression,
      resolver.currentElementExpression,
      false
    );

    this.currentType = tempLocal.type;
    let typeRef = tempLocal.type.toRef();

    return module.block(null, [
      setValue,
      module.local_get(tempLocal.index, typeRef)
    ], typeRef); // result of 'x++' / 'x--' might overflow
  }

  private compileUnaryPrefixExpression(
    expression: UnaryPrefixExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    let module = this.module;
    let compound = false;
    let expr: ExpressionRef;

    switch (expression.operator) {
      case Token.Plus: {
        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.None
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Plus);
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
      case Token.Minus: {
        let operand = expression.operand;
        if (operand.isNumericLiteral) {
          // implicitly negate integer and float literals. also enables proper checking of literal ranges.
          expr = this.compileLiteralExpression(<LiteralExpression>operand, contextualType, Constraints.None, true);
          // compileExpression normally does this:
          if (this.options.sourceMap) this.addDebugLocation(expr, expression.range);
          break;
        }

        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.None
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Minus);
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
          case TypeKind.Bool:
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.SubI32, module.i32(0), expr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.SubI64, module.i64(0), expr);
            break;
          }
          case TypeKind.Isize:
          case TypeKind.Usize: {
            expr = module.binary(
              BinaryOp.SubSize,
              this.makeZero(this.currentType),
              expr
            );
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
      case Token.Plus_Plus: {
        compound = true;
        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.None
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.PrefixInc);
          if (overload) {
            expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
            if (overload.is(CommonFlags.Instance)) break; // re-assign
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
          case TypeKind.Bool:
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.AddI32, expr, this.module.i32(1));
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.AddI64, expr, module.i64(1));
            break;
          }
          case TypeKind.Isize:
          case TypeKind.Usize: {
            expr = module.binary(
              BinaryOp.AddSize,
              expr,
              this.makeOne(this.currentType)
            );
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
      case Token.Minus_Minus: {
        compound = true;
        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.None
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.PrefixDec);
          if (overload) {
            expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
            if (overload.is(CommonFlags.Instance)) break; // re-assign
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
          case TypeKind.Bool:
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.SubI32, expr, module.i32(1));
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.SubI64, expr, module.i64(1));
            break;
          }
          case TypeKind.Isize:
          case TypeKind.Usize: {
            expr = module.binary(
              BinaryOp.SubSize,
              expr,
              this.makeOne(this.currentType)
            );
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
      case Token.Exclamation: {
        expr = this.compileExpression(
          expression.operand,
          contextualType.exceptVoid,
          Constraints.None
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Not);
          if (overload) return this.compileUnaryOverload(overload, expression.operand, expr, expression);
          // fall back to compare by value
        }

        expr = module.unary(UnaryOp.EqzI32, this.makeIsTrueish(expr, this.currentType, expression.operand));
        this.currentType = Type.bool;
        break;
      }
      case Token.Tilde: {
        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType.isFloatValue
              ? Type.i64
              : contextualType,
          Constraints.None
        );

        // check operator overload
        let classReference = this.currentType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BitwiseNot);
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
          case TypeKind.Bool:
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.XorI32, expr, module.i32(-1));
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.XorI64, expr, module.i64(-1, -1));
            break;
          }
          case TypeKind.Isize:
          case TypeKind.Usize: {
            expr = module.binary(
              BinaryOp.XorSize,
              expr,
              this.makeNegOne(this.currentType)
            );
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
      case Token.TypeOf: {
        return this.compileTypeof(expression, contextualType, constraints);
      }
      case Token.Dot_Dot_Dot: {
        this.error(
          DiagnosticCode.Not_implemented_0,
          expression.range, "Spread operator"
        );
        return module.unreachable();
      }
      default: {
        assert(false);
        return module.unreachable();
      }
    }
    if (!compound) return expr;
    let resolver = this.resolver;
    let target = resolver.lookupExpression(expression.operand, this.currentFlow);
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
    let operand = expression.operand;
    let expr: ExpressionRef = 0;
    let stringInstance = this.program.stringInstance;
    let typeString: string;
    if (operand.kind == NodeKind.Null) {
      typeString = "object"; // special since `null` without type context is usize
    } else {
      let element = this.resolver.lookupExpression(operand, this.currentFlow, Type.auto, ReportMode.Swallow);
      if (!element) {
        switch (operand.kind) {
          case NodeKind.Identifier: break; // ignore error: typeof doesntExist -> undefined
          case NodeKind.PropertyAccess:
          case NodeKind.ElementAccess: {
            operand = operand.kind == NodeKind.PropertyAccess
              ? (<PropertyAccessExpression>operand).expression
              : (<ElementAccessExpression>operand).expression;
            let targetType = this.resolver.resolveExpression(operand, this.currentFlow, Type.auto, ReportMode.Report);
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
          case ElementKind.ClassPrototype:
          case ElementKind.Namespace:
          case ElementKind.Enum: {
            typeString = "object";
            break;
          }
          case ElementKind.FunctionPrototype: {
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
                  if (classReference.prototype == stringInstance.prototype) {
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
      ? this.module.block(null, [ expr, this.ensureStaticString(typeString) ], this.options.sizeTypeRef)
      : this.ensureStaticString(typeString);
  }

  /** Makes sure that a 32-bit integer value is wrapped to a valid value of the specified type. */
  ensureSmallIntegerWrap(expr: ExpressionRef, type: Type): ExpressionRef {
    let module = this.module;
    let flow = this.currentFlow;
    switch (type.kind) {
      case TypeKind.Bool: {
        if (flow.canOverflow(expr, type)) {
          // bool is special in that it compares to 0 instead of masking with 0x1
          expr = module.binary(BinaryOp.NeI32,
            expr,
            module.i32(0)
          );
        }
        break;
      }
      case TypeKind.I8: {
        if (flow.canOverflow(expr, type)) {
          expr = this.options.hasFeature(Feature.SignExtension)
            ? module.unary(UnaryOp.Extend8I32, expr)
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
          expr = this.options.hasFeature(Feature.SignExtension)
            ? module.unary(UnaryOp.Extend16I32, expr)
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
    }
    return expr;
  }

  /** Adds the debug location of the specified expression at the specified range to the source map. */
  addDebugLocation(expr: ExpressionRef, range: Range): void {
    let targetFunction = this.currentFlow.targetFunction;
    let source = range.source;
    if (source.debugInfoIndex < 0) source.debugInfoIndex = this.module.addDebugInfoFile(source.normalizedPath);
    range.debugInfoRef = expr;
    targetFunction.debugLocations.push(range);
  }

  /** Checks whether a particular function signature is supported. */
  checkSignatureSupported(signature: Signature, reportNode: FunctionTypeNode): bool {
    let supported = true;
    let explicitThisType = reportNode.explicitThisType;
    if (explicitThisType) {
      if (!this.program.checkTypeSupported(assert(signature.thisType), explicitThisType)) {
        supported = false;
      }
    }
    let parameterTypes = signature.parameterTypes;
    let parameterNodes = reportNode.parameters;
    for (let i = 0, k = parameterTypes.length; i < k; ++i) {
      let parameterReportNode: Node;
      if (parameterNodes.length > i) parameterReportNode = parameterNodes[i];
      else parameterReportNode = reportNode;
      if (!this.program.checkTypeSupported(parameterTypes[i], parameterReportNode)) {
        supported = false;
      }
    }
    if (!this.program.checkTypeSupported(signature.returnType, reportNode.returnType)) {
      supported = false;
    }
    return supported;
  }

  /** Evaluates a boolean condition, determining whether it is TRUE, FALSE or UNKNOWN. */
  evaluateCondition(expr: ExpressionRef): ConditionKind {
    let type = getExpressionType(expr);
    if (type == TypeRef.Unreachable)
      return ConditionKind.Unknown;

    assert(type == TypeRef.I32);
    let module = this.module;
    let evaled = module.runExpression(expr, ExpressionRunnerFlags.Default);
    if (evaled) {
      return getConstValueI32(evaled)
        ? ConditionKind.True
        : ConditionKind.False;
    }
    return ConditionKind.Unknown;
  }

  // === Specialized code generation ==============================================================

  /** Makes a constant zero of the specified type. */
  makeZero(type: Type): ExpressionRef {
    let module = this.module;
    switch (type.kind) {
      default: assert(false);
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32: return module.i32(0);
      case TypeKind.Isize:
      case TypeKind.Usize: if (type.size != 64) return module.i32(0);
      case TypeKind.I64:
      case TypeKind.U64: return module.i64(0);
      case TypeKind.F32: return module.f32(0);
      case TypeKind.F64: return module.f64(0);
      case TypeKind.V128: return module.v128(v128_zero);
      case TypeKind.Funcref:
      case TypeKind.Externref:
      case TypeKind.Anyref:
      case TypeKind.Eqref:
      case TypeKind.Structref:
      case TypeKind.Arrayref:
      case TypeKind.Stringref:
      case TypeKind.StringviewWTF8:
      case TypeKind.StringviewWTF16:
      case TypeKind.StringviewIter: {
        // TODO: what if not nullable?
        return module.ref_null(type.toRef());
      }
      case TypeKind.I31ref: {
        if (type.is(TypeFlags.Nullable)) return module.ref_null(type.toRef());
        return module.i31_new(module.i32(0));
      }
    }
  }

  /** Makes a constant one of the specified type. */
  makeOne(type: Type): ExpressionRef {
    let module = this.module;
    switch (type.kind) {
      default: assert(false);
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32: return module.i32(1);
      case TypeKind.Isize:
      case TypeKind.Usize: if (type.size != 64) return module.i32(1);
      case TypeKind.I64:
      case TypeKind.U64: return module.i64(1);
      case TypeKind.F32: return module.f32(1);
      case TypeKind.F64: return module.f64(1);
      case TypeKind.I31ref: return module.i31_new(module.i32(1));
    }
  }

  /** Makes a constant negative one of the specified type. */
  makeNegOne(type: Type): ExpressionRef {
    let module = this.module;
    switch (type.kind) {
      default: assert(false);
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32: return module.i32(-1);
      case TypeKind.Isize:
      case TypeKind.Usize: if (type.size != 64) return module.i32(-1);
      case TypeKind.I64:
      case TypeKind.U64: return module.i64(-1, -1);
      case TypeKind.F32: return module.f32(-1);
      case TypeKind.F64: return module.f64(-1);
      case TypeKind.V128: return module.v128(v128_ones);
      case TypeKind.I31ref: return module.i31_new(module.i32(-1));
    }
  }

  /** Creates a comparison whether an expression is 'true' in a broader sense. */
  makeIsTrueish(expr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    let module = this.module;
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        expr = this.ensureSmallIntegerWrap(expr, type);
        // fall-through
      }
      case TypeKind.Bool: // not a mask, just != 0
      case TypeKind.I32:
      case TypeKind.U32: return expr;
      case TypeKind.I64:
      case TypeKind.U64: return module.binary(BinaryOp.NeI64, expr, module.i64(0));
      case TypeKind.Isize:
      case TypeKind.Usize: {
        return type.size == 64
          ? module.binary(BinaryOp.NeI64, expr, module.i64(0))
          : expr;
      }
      case TypeKind.F32: {
        let options = this.options;
        if (
          options.shrinkLevelHint > 1 &&
          options.hasFeature(Feature.NontrappingF2I)
        ) {
          // Use more compact but slower 5-byte (3 bytes in best case) approach
          // !!(i32.trunc_sat_f32_u(f32.ceil(f32.abs(x))))
          return module.unary(UnaryOp.EqzI32,
            module.unary(UnaryOp.EqzI32,
              module.unary(UnaryOp.TruncSatF32ToU32,
                module.unary(UnaryOp.CeilF32,
                  module.unary(UnaryOp.AbsF32, expr)
                )
              )
            )
          );
        } else {
          // 0 < abs(bitCast(x)) <= bitCast(Infinity) or
          // (reinterpret<u32>(x) & 0x7FFFFFFF) - 1 <= 0x7F800000 - 1
          //
          // and finally:
          // (reinterpret<u32>(x) << 1) - (1 << 1) <= ((0x7F800000 - 1) << 1)
          return module.binary(BinaryOp.LeU32,
            module.binary(BinaryOp.SubI32,
              module.binary(BinaryOp.ShlI32,
                module.unary(UnaryOp.ReinterpretF32ToI32, expr),
                module.i32(1)
              ),
              module.i32(2) // 1 << 1
            ),
            module.i32(0xFEFFFFFE) // (0x7F800000 - 1) << 1
          );
        }
      }
      case TypeKind.F64: {
        let options = this.options;
        if (
          options.shrinkLevelHint > 1 &&
          options.hasFeature(Feature.NontrappingF2I)
        ) {
          // Use more compact but slower 5-byte (3 bytes in best case) approach
          // !!(i32.trunc_sat_f64_u(f64.ceil(f64.abs(x))))
          return module.unary(UnaryOp.EqzI32,
            module.unary(UnaryOp.EqzI32,
              module.unary(UnaryOp.TruncSatF64ToU32,
                module.unary(UnaryOp.CeilF64,
                  module.unary(UnaryOp.AbsF64, expr)
                )
              )
            )
          );
        } else {
          // 0 < abs(bitCast(x)) <= bitCast(Infinity) or
          // (reinterpret<u64>(x) & 0x7FFFFFFFFFFFFFFF) - 1 <= 0x7FF0000000000000 - 1
          //
          // and finally:
          // (reinterpret<u64>(x) << 1) - (1 << 1) <= ((0x7FF0000000000000 - 1) << 1)
          return module.binary(BinaryOp.LeU64,
            module.binary(BinaryOp.SubI64,
              module.binary(BinaryOp.ShlI64,
                module.unary(UnaryOp.ReinterpretF64ToI64, expr),
                module.i64(1)
              ),
              module.i64(2) // 1 << 1
            ),
            module.i64(0xFFFFFFFE, 0xFFDFFFFF) // (0x7FF0000000000000 - 1) << 1
          );
        }
      }
      case TypeKind.V128: {
        return module.unary(UnaryOp.AnyTrueV128, expr);
      }
      case TypeKind.Funcref:
      case TypeKind.Externref:
      case TypeKind.Anyref:
      case TypeKind.Eqref:
      case TypeKind.Structref:
      case TypeKind.Arrayref:
      case TypeKind.I31ref:
      case TypeKind.Stringref:
      case TypeKind.StringviewWTF8:
      case TypeKind.StringviewWTF16:
      case TypeKind.StringviewIter: {
        // Needs to be true (i.e. not zero) when the ref is _not_ null,
        // which means `ref.is_null` returns false (i.e. zero).
        return module.unary(UnaryOp.EqzI32, module.ref_is_null(expr));
      }
      case TypeKind.Void:
      default: {
        this.error(
          DiagnosticCode.An_expression_of_type_0_cannot_be_tested_for_truthiness,
          reportNode.range, type.toString()
        );
        return module.i32(0);
      }
    }
  }

  /** Makes a string conversion of the given expression. */
  makeToString(expr: ExpressionRef, type: Type, reportNode: Node): ExpressionRef {
    let stringType = this.program.stringInstance.type;
    if (type == stringType) {
      return expr;
    }
    let classType = type.getClassOrWrapper(this.program);
    if (classType) {
      let toStringInstance = classType.getMethod("toString");
      if (toStringInstance) {
        let toStringSignature = toStringInstance.signature;
        if (!this.checkCallSignature( // reports
          toStringSignature,
          0,
          true,
          reportNode
        )) {
          this.currentType = stringType;
          return this.module.unreachable();
        }
        if (!type.isStrictlyAssignableTo(assert(toStringSignature.thisType))) {
          this.errorRelated(
            DiagnosticCode.The_this_types_of_each_signature_are_incompatible,
            reportNode.range, toStringInstance.identifierAndSignatureRange
          );
          this.currentType = stringType;
          return this.module.unreachable();
        }
        let toStringReturnType = toStringSignature.returnType;
        if (!toStringReturnType.isStrictlyAssignableTo(stringType)) {
          this.errorRelated(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            reportNode.range, toStringInstance.identifierAndSignatureRange, toStringReturnType.toString(), stringType.toString()
          );
          this.currentType = stringType;
          return this.module.unreachable();
        }
        return this.makeCallDirect(toStringInstance, [ expr ], reportNode);
      }
    }
    this.error(
      DiagnosticCode.Type_0_is_not_assignable_to_type_1,
      reportNode.range, type.toString(), stringType.toString()
    );
    this.currentType = stringType;
    return this.module.unreachable();
  }

  /** Makes an allocation suitable to hold the data of an instance of the given class. */
  makeAllocation(
    classInstance: Class
  ): ExpressionRef {
    let program = this.program;
    assert(classInstance.program == program);
    let module = this.module;
    let options = this.options;
    this.currentType = classInstance.type;
    if (classInstance.hasDecorator(DecoratorFlags.Unmanaged)) {
      let allocInstance = program.allocInstance;
      this.compileFunction(allocInstance);
      return module.call(allocInstance.internalName, [
        options.isWasm64
          ? module.i64(classInstance.nextMemoryOffset)
          : module.i32(classInstance.nextMemoryOffset)
      ], options.sizeTypeRef);
    } else {
      let newInstance = program.newInstance;
      this.compileFunction(newInstance);
      return module.call(newInstance.internalName, [
        options.isWasm64
          ? module.i64(classInstance.nextMemoryOffset)
          : module.i32(classInstance.nextMemoryOffset),
        module.i32(classInstance.id)
      ], options.sizeTypeRef);
    }
  }

  /** Makes a conditional allocation where `this` might not have been initialized yet. */
  makeConditionalAllocation(
    classInstance: Class,
    thisIndex: i32
  ): ExpressionRef {
    let module = this.module;
    let classType = classInstance.type;
    let classTypeRef = classType.toRef();
    assert(classTypeRef == this.options.sizeTypeRef);
    return module.if(
      module.unary(classTypeRef == TypeRef.I64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
        module.local_get(thisIndex, classTypeRef)
      ),
      module.local_set(thisIndex,
        this.makeAllocation(classInstance),
        classInstance.type.isManaged
      )
    );
  }

  /** Makes the initializers for a class's fields within the constructor. */
  makeFieldInitializationInConstructor(
    /** Class being initialized. */
    classInstance: Class,
    /** Statements to append to also being returned. Created if omitted. */
    stmts: ExpressionRef[] = []
  ): ExpressionRef[] {
    let members = classInstance.members;
    if (!members) return stmts;

    let module = this.module;
    let flow = this.currentFlow;
    let isInline = flow.isInline;
    let thisLocalIndex = isInline ? flow.lookupLocal(CommonNames.this_)!.index : 0;
    let sizeTypeRef = this.options.sizeTypeRef;
    let nonParameterFields: Property[] | null = null;

    // TODO: for (let member of members.values()) {
    for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
      let member = unchecked(_values[i]);
      if (member.kind != ElementKind.PropertyPrototype) continue;
      // only interested in fields (resolved during class finalization)
      let property = (<PropertyPrototype>member).instance;
      if (!property || !property.isField || property.getBoundClassOrInterface() != classInstance) continue;
      assert(!property.isAny(CommonFlags.Const));
      let fieldPrototype = property.prototype;
      let parameterIndex = fieldPrototype.parameterIndex;

      // Defer non-parameter fields until parameter fields are initialized
      if (parameterIndex < 0) {
        if (!nonParameterFields) nonParameterFields = new Array();
        nonParameterFields.push(property);
        continue;
      }

      // Initialize constructor parameter field
      let fieldType = property.type;
      let fieldTypeRef = fieldType.toRef();
      assert(!fieldPrototype.initializerNode);
      let setterInstance = assert(property.setterInstance);
      let expr = this.makeCallDirect(setterInstance, [
        module.local_get(thisLocalIndex, sizeTypeRef),
        module.local_get(
          isInline
            ? flow.lookupLocal(property.name)!.index
            : 1 + parameterIndex, // `this` is local 0
          fieldTypeRef
        )
      ], setterInstance.identifierNode, true);
      if (this.currentType != Type.void) { // in case
        expr = module.drop(expr);
      }
      stmts.push(expr);
    }

    // Initialize deferred non-parameter fields
    if (nonParameterFields) {
      for (let i = 0, k = nonParameterFields.length; i < k; ++i) {
        let field = unchecked(nonParameterFields[i]);
        let fieldType = field.type;
        let fieldPrototype = field.prototype;
        let initializerNode = fieldPrototype.initializerNode;
        assert(fieldPrototype.parameterIndex < 0);
        let setterInstance = assert(field.setterInstance);
        let expr = this.makeCallDirect(setterInstance, [
          module.local_get(thisLocalIndex, sizeTypeRef),
          initializerNode // use initializer if present, otherwise initialize with zero
            ? this.compileExpression(initializerNode, fieldType, Constraints.ConvImplicit)
            : this.makeZero(fieldType)
        ], field.identifierNode, true);
        if (this.currentType != Type.void) { // in case
          expr = module.drop(expr);
        }
        stmts.push(expr);
      }
    }

    this.currentType = Type.void;
    return stmts;
  }

  /** Makes a call to `abort`, if present, otherwise creates a trap. */
  makeAbort(
    /** Message argument of type string, if any. */
    message: Expression | null,
    /** Code location to report when aborting. */
    codeLocation: Node
  ): ExpressionRef {
    let program = this.program;
    let abortInstance = program.abortInstance;
    if (!abortInstance || !this.compileFunction(abortInstance)) return this.module.unreachable();

    let stringInstance = program.stringInstance;
    let messageArg: ExpressionRef;
    if (message) {
      messageArg = this.compileExpression(message, stringInstance.type, Constraints.ConvImplicit);
    } else {
      messageArg = this.makeZero(stringInstance.type);
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
    let program = this.program;
    let module = this.module;
    let abortInstance = program.abortInstance;
    if (!abortInstance || !this.compileFunction(abortInstance)) return module.unreachable();

    let filenameExpr = this.ensureStaticString(codeLocation.range.source.normalizedPath);
    let range = codeLocation.range;
    let source = range.source;
    return module.block(null, [
      module.call(
        abortInstance.internalName, [
          messageExpr,
          filenameExpr,
          module.i32(source.lineAt(range.start)),
          module.i32(source.columnAt())
        ],
        TypeRef.None
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
    let module = this.module;
    let flow = this.currentFlow;
    let temp = flow.getTempLocal(type);
    let tempIndex = temp.index;
    if (!flow.canOverflow(expr, type)) flow.setLocalFlag(tempIndex, LocalFlags.Wrapped);
    flow.setLocalFlag(tempIndex, LocalFlags.NonNull);

    let staticAbortCallExpr = this.makeStaticAbort(
      this.ensureStaticString("Unexpected 'null' (not assigned or failed cast)"),
      reportNode
    ); // TODO: throw

    if (type.isExternalReference) {
      let nonNullExpr = module.local_get(tempIndex, type.toRef());
      if (this.options.hasFeature(Feature.GC)) {
        nonNullExpr = module.ref_as_nonnull(nonNullExpr);
      }
      expr = module.if(
        module.ref_is_null(
          module.local_tee(tempIndex, expr, false)
        ),
        staticAbortCallExpr,
        nonNullExpr
      );
    } else {
      expr = module.if(
        module.local_tee(tempIndex, expr, type.isManaged),
        module.local_get(tempIndex, type.toRef()),
        staticAbortCallExpr
      );
    }
    this.currentType = type.nonNullableType;
    return expr;
  }

  /** Makes a runtime downcast check, e.g. on `<Child>parent`. */
  makeRuntimeDowncastCheck(
    /** Expression being downcast. */
    expr: ExpressionRef,
    /** Type of the expression. */
    type: Type,
    /** Type casting to. */
    toType: Type,
    /** Report node. */
    reportNode: Node
  ): ExpressionRef {
    assert(toType.isReference && toType.nonNullableType.isAssignableTo(type));
    let module = this.module;
    let flow = this.currentFlow;
    let temp = flow.getTempLocal(type);
    let tempIndex = temp.index;

    let staticAbortCallExpr = this.makeStaticAbort(
      this.ensureStaticString("invalid downcast"),
      reportNode
    ); // TODO: throw

    if (!toType.isNullableReference || flow.isNonnull(expr, type)) {
      // Simplify if the value cannot be `null`. If toType is non-nullable, a
      // null-check would have been emitted separately so is not necessary here.
      // instanceof(t = expr) ? t : abort()
      expr = module.if(
        module.call(this.prepareInstanceOf(toType.classReference!), [
          module.local_tee(tempIndex, expr, type.isManaged)
        ], TypeRef.I32),
        module.local_get(tempIndex, type.toRef()),
        staticAbortCallExpr
      );
    } else {
      // !(t = expr) ? 0 : instanceof(t) ? t : abort()
      expr = module.if(
        module.unary(
          UnaryOp.EqzI32,
          module.local_tee(tempIndex, expr, type.isManaged)
        ),
        module.usize(0),
        module.if(
          module.call(this.prepareInstanceOf(toType.classReference!), [
            module.local_get(tempIndex, type.toRef()),
          ], TypeRef.I32),
          module.local_get(tempIndex, type.toRef()),
          staticAbortCallExpr
        )
      );
    }
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
    element.name, element.parent, element.is(CommonFlags.Instance), true
  );
  // override module name if a `module` statement is present
  let overriddenModuleName = declaration.overriddenModuleName;
  if (overriddenModuleName) mangleImportName_moduleName = overriddenModuleName;

  if (!element.hasDecorator(DecoratorFlags.External)) return;

  let program = element.program;
  let decorator = assert(findDecorator(DecoratorKind.External, declaration.decorators));
  let args = decorator.args;
  if (args && args.length > 0) {
    let arg = args[0];
    // if one argument is given, override just the element name
    // if two arguments are given, override both module and element name
    if (arg.isLiteralKind(LiteralKind.String)) {
      mangleImportName_elementName = (<StringLiteralExpression>arg).value;
      if (args.length >= 2) {
        arg = args[1];
        if (arg.isLiteralKind(LiteralKind.String)) {
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

let mangleImportName_moduleName: string = "";
let mangleImportName_elementName: string = "";
