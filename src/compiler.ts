/**
 * The AssemblyScript compiler.
 * @module compiler
 *//***/

import {
  BuiltinSymbols,
  compileCall as compileBuiltinCall,
  compileAbort,
  compileVisitGlobals,
  compileVisitMembers,
  compileRTTI,
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
  getBlockChildCount,
  getBlockChild,
  getBlockName,
  needsExplicitUnreachable,
  getGetLocalIndex,
  FeatureFlags,
  isTeeLocal,
  getSetLocalIndex
} from "./module";

import {
  CommonFlags,
  INSTANCE_DELIMITER,
  STATIC_DELIMITER,
  GETTER_PREFIX,
  SETTER_PREFIX,
  CommonSymbols,
  INDEX_SUFFIX,
  Feature,
  Target
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
  EnumValue,
  Property,
  VariableLikeElement,
  ConstantValueKind,
  OperatorKind,
  DecoratorFlags,
  PropertyPrototype,
  File,
  mangleInternalName
} from "./program";

import {
  FlowFlags,
  Flow,
  LocalFlags
} from "./flow";

import {
  Resolver, ReportMode
} from "./resolver";

import {
  Token,
  operatorTokenToString
} from "./tokenizer";

import {
  Node,
  NodeKind,
  TypeNode,
  Range,
  DecoratorKind,
  AssertionKind,

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
  FieldDeclaration,
  ForStatement,
  FunctionDeclaration,
  IfStatement,
  ImportStatement,
  InstanceOfExpression,
  InterfaceDeclaration,
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

  nodeIsConstantValue,
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
  makeMap
} from "./util";

/** Compiler options. */
export class Options {

  /** WebAssembly target. Defaults to {@link Target.WASM32}. */
  target: Target = Target.WASM32;
  /** If true, replaces assertions with nops. */
  noAssert: bool = false;
  /** If true, imports the memory provided by the embedder. */
  importMemory: bool = false;
  /** If greater than zero, declare memory as shared by setting max memory to sharedMemory. */
  sharedMemory: i32 = 0;
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

/** Requests or indicates compilation conditions of statements and expressions. */
export const enum ContextualFlags {
  NONE = 0,

  /** Implicit conversion required. */
  IMPLICIT = 1 << 0,
  /** Explicit conversion required. */
  EXPLICIT = 1 << 1,
  /** Small integer wrap required. */
  WRAP = 1 << 2,

  /** Value is known to be immediately dropped. */
  WILL_DROP = 1 << 3,
  /** Value is known to be immediately assigned to a retaining target.  */
  SKIP_AUTORELEASE = 1 << 4,
  /** Is the last statement in a function body. */
  LAST_IN_BODY = 1 << 5,
  /** Data can be compiled statically. */
  STATIC_CAPABLE = 1 << 6
}

/** Runtime features to be activated by the compiler. */
export const enum RuntimeFeatures {
  NONE = 0,
  /** Requires HEAP_BASE and heap setup. */
  HEAP = 1 << 0,
  /** Requires RTTI_BASE and RTTI setup. */
  RTTI = 1 << 1,
  /** Requires the alloc function. */
  alloc = 1 << 2,
  /** Requires the realloc function. */
  realloc = 1 << 3,
  /** Requires the free function. */
  free = 1 << 4,
  /** Requires the retain function. */
  retain = 1 << 5,
  /** Requires the retainRelease functino. */
  retainRelease = 1 << 6,
  /** Requires the release function. */
  release = 1 << 7,
  /** Requires the collect function. */
  collect = 1 << 8,
  /** Requires the visit function. */
  visit = 1 << 9,
  /** Requires the built-in globals visitor. */
  visitGlobals = 1 << 10,
  /** Requires the built-in members visitor. */
  visitMembers = 1 << 11
}

/** Compiler interface. */
export class Compiler extends DiagnosticEmitter {

  /** Program reference. */
  program: Program;
  /** Resolver reference. */
  resolver: Resolver;
  /** Provided options. */
  options: Options;
  /** Module instance being compiled. */
  module: Module;
  /** Current control flow. */
  currentFlow: Flow;
  /** Current inline functions stack. */
  currentInlineFunctions: Function[] = [];
  /** Current enum in compilation. */
  currentEnum: Enum | null = null;
  /** Current type in compilation. */
  currentType: Type = Type.void;
  /** Start function statements. */
  currentBody: ExpressionRef[];
  /** Counting memory offset. */
  memoryOffset: I64;
  /** Memory segments being compiled. */
  memorySegments: MemorySegment[] = [];
  /** Map of already compiled static string segments. */
  stringSegments: Map<string,MemorySegment> = new Map();
  /** Function table being compiled. */
  functionTable: string[] = [ "null" ];
  /** Argument count helper global. */
  argcVar: GlobalRef = 0;
  /** Argument count helper setter. */
  argcSet: FunctionRef = 0;
  /** Requires runtime features. */
  runtimeFeatures: RuntimeFeatures = RuntimeFeatures.NONE;
  /** Expressions known to have skipped an autorelease. Usually function returns. */
  skippedAutoreleases: Set<ExpressionRef> = new Set();

  /** Compiles a {@link Program} to a {@link Module} using the specified options. */
  static compile(program: Program, options: Options | null = null): Module {
    return new Compiler(program, options).compile();
  }

  /** Constructs a new compiler for a {@link Program} using the specified options. */
  constructor(program: Program, options: Options | null = null) {
    super(program.diagnostics);
    this.program = program;
    this.resolver = program.resolver;
    if (!options) options = new Options();
    this.options = options;
    this.memoryOffset = i64_new(
      // leave space for `null`. also functions as a sentinel for erroneous stores at offset 0.
      // note that Binaryen's asm.js output utilizes the first 8 bytes for reinterpretations (#1547)
      max(options.memoryBase, 8)
    );
    this.module = Module.create();
    var featureFlags: BinaryenFeatureFlags = 0;
    if (this.options.hasFeature(Feature.THREADS)) featureFlags |= FeatureFlags.Atomics;
    if (this.options.hasFeature(Feature.MUTABLE_GLOBAL)) featureFlags |= FeatureFlags.MutableGloabls;
    // if (this.options.hasFeature(Feature.TRUNC_SAT)) featureFlags |= FeatureFlags.NontrappingFPToInt;
    if (this.options.hasFeature(Feature.SIMD)) featureFlags |= FeatureFlags.SIMD128;
    if (this.options.hasFeature(Feature.BULK_MEMORY)) featureFlags |= FeatureFlags.BulkMemory;
    if (this.options.hasFeature(Feature.SIGN_EXTENSION)) featureFlags |= FeatureFlags.SignExt;
    // if (this.options.hasFeature(Feature.EXCEPTION_HANDLING)) featureFlags |= FeatureFlags.ExceptionHandling;
    this.module.setFeatures(featureFlags);
  }

  /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
  compile(): Module {
    var options = this.options;
    var module = this.module;
    var program = this.program;

    // initialize lookup maps, built-ins, imports, exports, etc.
    program.initialize(options);

    // set up the main start function
    var startFunctionInstance = program.makeNativeFunction("start", new Signature([], Type.void));
    startFunctionInstance.internalName = "start";
    var startFunctionBody = new Array<ExpressionRef>();
    this.currentFlow = startFunctionInstance.flow;
    this.currentBody = startFunctionBody;

    // add a mutable heap and rtti base dummies
    if (options.isWasm64) {
      module.addGlobal(BuiltinSymbols.HEAP_BASE, NativeType.I64, true, module.createI64(0));
      module.addGlobal(BuiltinSymbols.RTTI_BASE, NativeType.I64, true, module.createI64(0));
    } else {
      module.addGlobal(BuiltinSymbols.HEAP_BASE, NativeType.I32, true, module.createI32(0));
      module.addGlobal(BuiltinSymbols.RTTI_BASE, NativeType.I32, true, module.createI32(0));
    }

    // compile entry file(s) while traversing reachable elements
    var files = program.filesByName;
    for (let file of files.values()) {
      if (file.source.isEntry) {
        this.compileFile(file);
        this.compileExports(file);
      }
    }

    // compile the start function if not empty or called by main
    var explicitStartFunction = program.explicitStartFunction;
    if (startFunctionBody.length || explicitStartFunction) {
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
      if (!explicitStartFunction) module.setStart(funcRef);
    }

    // compile runtime implementation (after actual code). note that these may modify features and order is important.
    if (this.runtimeFeatures & RuntimeFeatures.visit) this.compileFunction(program.visitInstance);
    if (this.runtimeFeatures & RuntimeFeatures.retain) this.compileFunction(program.retainInstance);
    if (this.runtimeFeatures & RuntimeFeatures.retainRelease) this.compileFunction(program.retainReleaseInstance);
    if (this.runtimeFeatures & RuntimeFeatures.release) this.compileFunction(program.releaseInstance);
    if (this.runtimeFeatures & RuntimeFeatures.collect) this.compileFunction(program.collectInstance);
    if (this.runtimeFeatures & RuntimeFeatures.visitGlobals) compileVisitGlobals(this);
    if (this.runtimeFeatures & RuntimeFeatures.visitMembers) compileVisitMembers(this); // called by release
    if (this.runtimeFeatures & RuntimeFeatures.realloc) this.compileFunction(program.reallocInstance);
    if (this.runtimeFeatures & RuntimeFeatures.alloc) this.compileFunction(program.allocInstance);
    if (this.runtimeFeatures & RuntimeFeatures.free) this.compileFunction(program.freeInstance);

    // compile runtime type information
    module.removeGlobal(BuiltinSymbols.RTTI_BASE);
    if (this.runtimeFeatures & RuntimeFeatures.RTTI) compileRTTI(this);

    // update the heap base pointer
    var memoryOffset = this.memoryOffset;
    memoryOffset = i64_align(memoryOffset, options.usizeType.byteSize);
    this.memoryOffset = memoryOffset;
    module.removeGlobal(BuiltinSymbols.HEAP_BASE);
    if (this.runtimeFeatures & RuntimeFeatures.HEAP) {
      if (options.isWasm64) {
        module.addGlobal(
          BuiltinSymbols.HEAP_BASE,
          NativeType.I64,
          false,
          module.createI64(i64_low(memoryOffset), i64_high(memoryOffset))
        );
      } else {
        module.addGlobal(
          BuiltinSymbols.HEAP_BASE,
          NativeType.I32,
          false,
          module.createI32(i64_low(memoryOffset))
        );
      }
    }

    // set up memory
    var isSharedMemory = options.hasFeature(Feature.THREADS) && options.sharedMemory > 0;
    module.setMemory(
      this.options.memoryBase /* is specified */ || this.memorySegments.length
        ? i64_low(i64_shr_u(i64_align(memoryOffset, 0x10000), i64_new(16, 0)))
        : 0,
      isSharedMemory ? options.sharedMemory : Module.UNLIMITED_MEMORY,
      this.memorySegments,
      options.target,
      "memory",
      isSharedMemory
    );

    // import memory if requested (default memory is named '0' by Binaryen)
    if (options.importMemory) module.addMemoryImport("0", "env", "memory", isSharedMemory);

    // set up function table
    var functionTable = this.functionTable;
    module.setFunctionTable(functionTable.length, 0xffffffff, functionTable);
    module.addFunction("null", this.ensureFunctionType(null, Type.void), null, module.createBlock(null, []));

    // import table if requested (default table is named '0' by Binaryen)
    if (options.importTable) module.addTableImport("0", "env", "table");

    // set up module exports
    for (let file of this.program.filesByName.values()) {
      if (file.source.isEntry) this.ensureModuleExports(file);
    }
    return module;
  }

  /** Applies the respective module exports for the specified file. */
  private ensureModuleExports(file: File): void {
    var members = file.exports;
    if (members) for (let [name, member] of members) this.ensureModuleExport(name, member);
    var exportsStar = file.exportsStar;
    if (exportsStar)  {
      for (let i = 0, k = exportsStar.length; i < k; ++i) this.ensureModuleExports(exportsStar[i]);
    }
  }

  /** Applies the respective module export(s) for the specified element. */
  private ensureModuleExport(name: string, element: Element, prefix: string = ""): void {
    switch (element.kind) {

      // traverse instances
      case ElementKind.FUNCTION_PROTOTYPE: {
        let instances = (<FunctionPrototype>element).instances;
        if (instances) {
          for (let instance of instances.values()) {
            let instanceName = name;
            if (instance.is(CommonFlags.GENERIC)) {
              let fullName = instance.internalName;
              instanceName += fullName.substring(fullName.lastIndexOf("<"));
            }
            this.ensureModuleExport(instanceName, instance, prefix);
          }
        }
        break;
      }
      case ElementKind.CLASS_PROTOTYPE: {
        let instances = (<ClassPrototype>element).instances;
        if (instances) {
          for (let instance of instances.values()) {
            let instanceName = name;
            if (instance.is(CommonFlags.GENERIC)) {
              let fullName = instance.internalName;
              instanceName += fullName.substring(fullName.lastIndexOf("<"));
            }
            this.ensureModuleExport(instanceName, instance, prefix);
          }
        }
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let getter = (<PropertyPrototype>element).getterPrototype;
        let setter = (<PropertyPrototype>element).setterPrototype;
        if (getter) this.ensureModuleExport(GETTER_PREFIX + name, getter, prefix);
        if (setter) this.ensureModuleExport(SETTER_PREFIX + name, setter, prefix);
        break;
      }

      // export concrete elements
      case ElementKind.GLOBAL: {
        let isConst = element.is(CommonFlags.CONST) || element.is(CommonFlags.STATIC | CommonFlags.READONLY);
        if (!isConst && !this.options.hasFeature(Feature.MUTABLE_GLOBAL)) {
          this.error(
            DiagnosticCode.Cannot_export_a_mutable_global,
            (<Global>element).identifierNode.range
          );
        } else {
          this.module.addGlobalExport(element.internalName, prefix + name);
        }
        break;
      }
      case ElementKind.ENUMVALUE: {
        if (!(<EnumValue>element).isImmutable && !this.options.hasFeature(Feature.MUTABLE_GLOBAL)) {
          this.error(
            DiagnosticCode.Cannot_export_a_mutable_global,
            (<EnumValue>element).identifierNode.range
          );
        } else {
          this.module.addGlobalExport(element.internalName, prefix + name);
        }
        break;
      }
      case ElementKind.FUNCTION: {
        let instance = <Function>element;
        let signature = instance.signature;
        if (signature.requiredParameters < signature.parameterTypes.length) {
          // utilize trampoline to fill in omitted arguments
          instance = this.ensureTrampoline(instance);
          this.ensureArgcSet();
        }
        if (instance.is(CommonFlags.COMPILED)) this.module.addFunctionExport(instance.internalName, prefix + name);
        break;
      }
      case ElementKind.PROPERTY: {
        let getter = (<Property>element).getterInstance;
        if (getter) this.ensureModuleExport(GETTER_PREFIX + name, getter, prefix);
        let setter = (<Property>element).setterInstance;
        if (setter) this.ensureModuleExport(SETTER_PREFIX + name, setter, prefix);
        break;
      }
      case ElementKind.FIELD: {
        this.ensureModuleFieldGetter(prefix + GETTER_PREFIX + name, <Field>element);
        if (!element.is(CommonFlags.READONLY)) {
          this.ensureModuleFieldSetter(prefix + SETTER_PREFIX + name, <Field>element);
        }
        break;
      }
      case ElementKind.CLASS: {
        // make the class name itself represent its runtime id
        if (!(<Class>element).type.isUnmanaged) {
          let module = this.module;
          let internalName = (<Class>element).internalName;
          module.addGlobal(internalName, NativeType.I32, false, module.createI32((<Class>element).id));
          module.addGlobalExport(internalName, prefix + name);
        }
        break;
      }

      // just traverse members below
      case ElementKind.ENUM:
      case ElementKind.NAMESPACE:
      case ElementKind.FILE:
      case ElementKind.TYPEDEFINITION: break;

      default: assert(false); // unexpected module export
    }

    // traverse members
    var members = element.members;
    if (members) {
      let subPrefix = prefix + name + (element.kind == ElementKind.CLASS
        ? INSTANCE_DELIMITER
        : STATIC_DELIMITER
      );
      if (
        element.kind == ElementKind.NAMESPACE ||
        element.kind == ElementKind.FILE
      ) {
        for (let member of members.values()) {
          if (!member.is(CommonFlags.EXPORT)) continue;
          this.ensureModuleExport(member.name, member, subPrefix);
        }
      } else {
        for (let member of members.values()) {
          if (member.is(CommonFlags.PRIVATE)) continue;
          this.ensureModuleExport(member.name, member, subPrefix);
        }
      }
    }
  }

  /** Makes a function to get the value of a field of an exported class. */
  private ensureModuleFieldGetter(name: string, field: Field): void {
    var module = this.module;
    var type = field.type;
    var usizeType = this.options.usizeType;
    var loadExpr = module.createLoad(type.byteSize, type.is(TypeFlags.SIGNED),
      module.createGetLocal(0, usizeType.toNativeType()),
      type.toNativeType(), field.memoryOffset
    );
    // a user-defined getter would return a retained value, so:
    if (type.isManaged) loadExpr = this.makeRetain(loadExpr);
    module.addFunction(
      name,
      this.ensureFunctionType(null, type, usizeType),
      null,
      loadExpr
    );
    module.addFunctionExport(name, name);
  }

  /** Makes a function to set the value of a field of an exported class. */
  private ensureModuleFieldSetter(name: string, field: Field): void {
    var module = this.module;
    var type = field.type;
    var nativeType = type.toNativeType();
    var usizeType = this.options.usizeType;
    var nativeSizeType = usizeType.toNativeType();
    var valueExpr = module.createGetLocal(1, nativeType);
    if (type.isManaged) {
      valueExpr = this.makeRetainRelease(
        valueExpr, // newRef
        module.createLoad(type.byteSize, false, // oldRef
          module.createGetLocal(0, nativeSizeType),
          nativeType, field.memoryOffset
        )
      );
    }
    module.addFunction(
      name,
      this.ensureFunctionType([ type ], Type.void, usizeType),
      null,
      module.createStore(
        type.byteSize,
        module.createGetLocal(0, nativeSizeType),
        valueExpr,
        nativeType,
        field.memoryOffset
      )
    );
    module.addFunctionExport(name, name);
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
          this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, []);
        }
        break;
      }
      case ElementKind.CLASS_PROTOTYPE: {
        if (!element.is(CommonFlags.GENERIC)) {
          this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
        }
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let getterPrototype = (<PropertyPrototype>element).getterPrototype;
        if (getterPrototype) {
          this.compileFunctionUsingTypeArguments(getterPrototype, []);
        }
        let setterPrototype = (<PropertyPrototype>element).setterPrototype;
        if (setterPrototype) {
          this.compileFunctionUsingTypeArguments(setterPrototype, []);
        }
        break;
      }
      case ElementKind.NAMESPACE:
      case ElementKind.TYPEDEFINITION:
      case ElementKind.ENUMVALUE: break;
      default: assert(false, ElementKind[element.kind]);
    }
    if (compileMembers) this.compileMembers(element);
  }

  /** Compiles an element's members. */
  compileMembers(element: Element): void {
    var members = element.members;
    if (members) for (let element of members.values()) this.compileElement(element);
  }

  /** Compiles a file's exports. */
  compileExports(file: File): void {
    var exports = file.exports;
    if (exports) for (let element of exports.values()) this.compileElement(element);
    var exportsStar = file.exportsStar;
    if (exportsStar) {
      for (let exportStar of exportsStar) {
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
      file = filesByName.get(normalizedPathWithoutExtension)!;
    } else if (filesByName.has(pathWithIndex = normalizedPathWithoutExtension + INDEX_SUFFIX)) {
      file = filesByName.get(pathWithIndex)!;
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
        this.ensureFunctionType(startFunction.signature.parameterTypes, startFunction.signature.returnType),
        varTypes,
        startFunctionBody.length > 1
          ? module.createBlock(null, startFunctionBody)
          : startFunctionBody[0]
      );
      previousBody.push(
        module.createCall(startFunction.internalName, null, NativeType.None)
      );
    }
  }

  // === Globals ==================================================================================

  compileGlobal(global: Global): bool {
    if (global.is(CommonFlags.COMPILED)) return true;
    global.set(CommonFlags.COMPILED);

    var module = this.module;
    var initExpr: ExpressionRef = 0;
    var initAutoreleaseSkipped: bool = false;
    var typeNode = global.typeNode;
    var initializerNode = global.initializerNode;

    if (!global.is(CommonFlags.RESOLVED)) {

      // resolve now if annotated
      if (typeNode) {
        let resolvedType = this.resolver.resolveType(typeNode, global.parent); // reports
        if (!resolvedType) return false;
        if (resolvedType == Type.void) {
          this.error(
            DiagnosticCode.Type_expected,
            typeNode.range
          );
          return false;
        }
        global.setType(resolvedType);

      // infer from initializer if not annotated
      } else if (initializerNode) { // infer type using void/NONE for literal inference
        let previousFlow = this.currentFlow;
        if (global.hasDecorator(DecoratorFlags.LAZY)) {
          this.currentFlow = global.file.startFunction.flow;
        }
        initExpr = this.compileExpression(initializerNode, Type.i32, // reports
          ContextualFlags.WRAP | ContextualFlags.SKIP_AUTORELEASE
        );
        if (this.skippedAutoreleases.has(initExpr)) initAutoreleaseSkipped = true;
        this.currentFlow = previousFlow;
        if (this.currentType == Type.void) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            initializerNode.range, this.currentType.toString(), "<auto>"
          );
          return false;
        }
        global.setType(this.currentType);

      // must either be annotated or have an initializer
      } else {
        this.error(
          DiagnosticCode.Type_expected,
          global.identifierNode.range.atEnd
        );
        return false;
      }
    }

    // ambient builtins like 'HEAP_BASE' need to be resolved but are added explicitly
    if (global.is(CommonFlags.AMBIENT) && global.hasDecorator(DecoratorFlags.BUILTIN)) {
      if (global.internalName == BuiltinSymbols.HEAP_BASE) this.runtimeFeatures |= RuntimeFeatures.HEAP;
      else if (global.internalName == BuiltinSymbols.RTTI_BASE) this.runtimeFeatures |= RuntimeFeatures.RTTI;
      return true;
    }

    var type = global.type;
    var nativeType = type.toNativeType();
    var isDeclaredConstant = global.is(CommonFlags.CONST) || global.is(CommonFlags.STATIC | CommonFlags.READONLY);

    // handle imports
    if (global.is(CommonFlags.AMBIENT)) {

      // constant global
      if (isDeclaredConstant || this.options.hasFeature(Feature.MUTABLE_GLOBAL)) {
        global.set(CommonFlags.MODULE_IMPORT);
        mangleImportName(global, global.declaration);
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
          global.declaration.range
        );
      }
      return false;
    }

    // the MVP does not yet support initializer expressions other than constant values (and constant
    // get_globals), hence such initializations must be performed in the start function for now.
    var initializeInStart = false;

    // evaluate initializer if present
    if (initializerNode) {
      if (!initExpr) {
        let previousFlow = this.currentFlow;
        if (global.hasDecorator(DecoratorFlags.LAZY)) {
          this.currentFlow = global.file.startFunction.flow;
        }
        initExpr = this.compileExpression(initializerNode, type,
          ContextualFlags.IMPLICIT | ContextualFlags.WRAP | ContextualFlags.SKIP_AUTORELEASE | ContextualFlags.STATIC_CAPABLE
        );
        if (this.skippedAutoreleases.has(initExpr)) initAutoreleaseSkipped = true;
        this.currentFlow = previousFlow;
      }

      if (getExpressionId(initExpr) != ExpressionId.Const) {
        if (isDeclaredConstant) {
          initExpr = module.precomputeExpression(initExpr);
          if (getExpressionId(initExpr) != ExpressionId.Const) {
            this.warning(
              DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable,
              initializerNode.range
            );
            initializeInStart = true;
          }
        } else {
          initializeInStart = true;
        }
      }

      // explicitly inline if annotated
      if (global.hasDecorator(DecoratorFlags.INLINE)) {
        if (!initializeInStart) { // reported above
          assert(getExpressionId(initExpr) == ExpressionId.Const);
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
        }
      }

    // initialize to zero if there's no initializer
    } else {
      initExpr = type.toNativeZero(module);
    }

    var internalName = global.internalName;

    if (initializeInStart) { // initialize to mutable zero and set the actual value in start
      if (global.hasDecorator(DecoratorFlags.INLINE)) {
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          assert(findDecorator(DecoratorKind.INLINE, global.decoratorNodes)).range, "inline"
        );
      }
      module.addGlobal(internalName, nativeType, true, type.toNativeZero(module));
      if (type.isManaged && !initAutoreleaseSkipped) initExpr = this.makeRetain(initExpr);
      this.currentBody.push(
        module.createSetGlobal(internalName, initExpr)
      );
    } else if (!global.hasDecorator(DecoratorFlags.INLINE)) { // compile normally
      module.addGlobal(internalName, nativeType, !isDeclaredConstant, initExpr);
    }
    return true;
  }

  // === Enums ====================================================================================

  compileEnum(element: Enum): bool {
    if (element.is(CommonFlags.COMPILED)) return true;
    element.set(CommonFlags.COMPILED);

    var module = this.module;
    this.currentEnum = element;
    var previousValue: EnumValue | null = null;
    var previousValueIsMut = false;
    var isInline = element.is(CommonFlags.CONST) || element.hasDecorator(DecoratorFlags.INLINE);

    if (element.members) {
      for (let member of element.members.values()) {
        if (member.kind != ElementKind.ENUMVALUE) continue; // happens if an enum is also a namespace
        let initInStart = false;
        let val = <EnumValue>member;
        let valueNode = val.valueNode;
        val.set(CommonFlags.COMPILED);
        let previousFlow = this.currentFlow;
        if (element.hasDecorator(DecoratorFlags.LAZY)) {
          this.currentFlow = element.file.startFunction.flow;
        }
        let initExpr: ExpressionRef;
        if (valueNode) {
          initExpr = this.compileExpression(valueNode, Type.i32,
            ContextualFlags.IMPLICIT // autorelease is not applicable in i32 context
          );
          if (getExpressionId(initExpr) != ExpressionId.Const) {
            initExpr = module.precomputeExpression(initExpr);
            if (getExpressionId(initExpr) != ExpressionId.Const) {
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
          initExpr = module.createI32(0);
        } else {
          if (previousValueIsMut) {
            this.error(
              DiagnosticCode.Enum_member_must_have_initializer,
              (<EnumValue>member).identifierNode.range.atEnd
            );
          }
          initExpr = module.createBinary(BinaryOp.AddI32,
            module.createGetGlobal(previousValue.internalName, NativeType.I32),
            module.createI32(1)
          );
          initExpr = module.precomputeExpression(initExpr);
          if (getExpressionId(initExpr) != ExpressionId.Const) {
            if (element.is(CommonFlags.CONST)) {
              this.error(
                DiagnosticCode.In_const_enum_declarations_member_initializer_must_be_constant_expression,
                member.declaration.range
              );
            }
            initInStart = true;
          }
        }
        this.currentFlow = previousFlow;
        if (initInStart) {
          module.addGlobal(val.internalName, NativeType.I32, true, module.createI32(0));
          this.currentBody.push(
            this.makeGlobalAssignment(val, initExpr, false)
          );
          previousValueIsMut = true;
        } else {
          if (isInline) {
            val.setConstantIntegerValue(i64_new(getConstValueI32(initExpr)), Type.i32);
            if (val.is(CommonFlags.MODULE_EXPORT)) {
              module.addGlobal(val.internalName, NativeType.I32, false, initExpr);
            }
          } else {
            module.addGlobal(val.internalName, NativeType.I32, false, initExpr);
          }
          val.isImmutable = true;
          previousValueIsMut = false;
        }
        previousValue = <EnumValue>val;
      }
    }
    this.currentEnum = null;
    return true;
  }

  // === Functions ================================================================================

  /** Resolves the specified type arguments prior to compiling the resulting function instance. */
  compileFunctionUsingTypeArguments(
    prototype: FunctionPrototype,
    typeArguments: TypeNode[],
    contextualTypeArguments: Map<string,Type> = makeMap(),
    alternativeReportNode: Node | null = null
  ): Function | null {
    if (prototype.hasDecorator(DecoratorFlags.BUILTIN)) return null;
    var instance = this.resolver.resolveFunctionInclTypeArguments(
      prototype,
      typeArguments,
      prototype.parent, // relative to itself
      contextualTypeArguments,
      alternativeReportNode || prototype.declaration
    );
    if (!instance) return null;
    if (!this.compileFunction(instance)) return null; // reports
    return instance;
  }

  /** Either reuses or creates the function type matching the specified signature. */
  ensureFunctionType(
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

  /** Compiles the body of a function within the specified flow. */
  compileFunctionBody(
    /** Function to compile. */
    instance: Function,
    /** Target array of statements. */
    stmts: ExpressionRef[] | null = null
  ): ExpressionRef[] {
    var module = this.module;
    var bodyNode = assert(instance.prototype.bodyNode);
    var returnType = instance.signature.returnType;
    var flow = this.currentFlow;

    // compile statements
    if (bodyNode.kind == NodeKind.BLOCK) {
      stmts = this.compileStatements((<BlockStatement>bodyNode).statements, true, stmts);
    } else {
      // must be an expression statement if not a block
      assert(bodyNode.kind == NodeKind.EXPRESSION);

      // must be an arrow function
      assert(instance.prototype.arrowKind);

      // none of the following can be an arrow function
      assert(!instance.isAny(CommonFlags.CONSTRUCTOR | CommonFlags.GET | CommonFlags.SET | CommonFlags.MAIN));

      let expr = this.compileExpression((<ExpressionStatement>bodyNode).expression, returnType,
        ContextualFlags.IMPLICIT
      );
      if (!stmts) stmts = [ expr ];
      else stmts.push(expr);
      if (!flow.isAny(FlowFlags.ANY_TERMINATING)) { // TODO: detect if returning an AUTORELEASE local
        let indexBefore = stmts.length;
        this.performAutoreleases(flow, stmts);
        this.finishAutoreleases(flow, stmts);
        let canOverflow = flow.canOverflow(expr, returnType);
        if (stmts.length > indexBefore) {
          let temp = flow.getAndFreeTempLocal(returnType, !canOverflow);
          stmts[indexBefore - 1] = module.createSetLocal(temp.index, expr);
          stmts.push(module.createGetLocal(temp.index, returnType.toNativeType()));
        }
        if (!canOverflow) flow.set(FlowFlags.RETURNS_WRAPPED);
        flow.set(FlowFlags.RETURNS); // now is terminating
      }
    }

    // make the main function call `start` implicitly, but only once
    if (instance.prototype == this.program.explicitStartFunction) {
      module.addGlobal(BuiltinSymbols.started, NativeType.I32, true, module.createI32(0));
      stmts.unshift(
        module.createIf(
          module.createUnary(
            UnaryOp.EqzI32,
            module.createGetGlobal(BuiltinSymbols.started, NativeType.I32)
          ),
          module.createBlock(null, [
            module.createCall("start", null, NativeType.None),
            module.createSetGlobal(BuiltinSymbols.started, module.createI32(1))
          ])
        )
      );
    }

    // make constructors return their instance pointer
    if (instance.is(CommonFlags.CONSTRUCTOR)) {
      let nativeSizeType = this.options.nativeSizeType;
      assert(instance.is(CommonFlags.INSTANCE));
      let classInstance = assert(instance.parent); assert(classInstance.kind == ElementKind.CLASS);

      if (!flow.isAny(FlowFlags.ANY_TERMINATING)) {
        let thisLocalIndex = flow.is(FlowFlags.INLINE_CONTEXT)
          ? assert(flow.lookupLocal(CommonSymbols.this_)).index
          : 0;

        // if `this` wasn't accessed before, allocate if necessary and initialize `this`
        if (!flow.is(FlowFlags.ALLOCATES)) {
          // {
          //   if (!this) this = <ALLOC>
          //   this.a = X
          //   this.b = Y
          // }
          stmts.push(
            module.createIf(
              module.createUnary(nativeSizeType == NativeType.I64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
                module.createGetLocal(thisLocalIndex, nativeSizeType)
              ),
              module.createSetLocal(thisLocalIndex,
                this.makeRetain(
                  this.makeAllocation(<Class>classInstance)
                ),
              )
            )
          );
          this.makeFieldInitialization(<Class>classInstance, stmts);
        }

        // implicitly return `this`. unlike for normal functions, retaining the value isn't
        // necessary because the allocation (constructor call) already did (RC=1)
        stmts.push(
          module.createGetLocal(thisLocalIndex, nativeSizeType)
        );
        flow.set(FlowFlags.RETURNS);
      }

      // check that super has been called if this is a derived class
      if ((<Class>classInstance).base && !flow.is(FlowFlags.CALLS_SUPER)) {
        this.error(
          DiagnosticCode.Constructors_for_derived_classes_must_contain_a_super_call,
          instance.prototype.declaration.range
        );
      }

    // if this is a normal function, make sure that all branches return
    } else if (returnType != Type.void && !flow.is(FlowFlags.RETURNS)) {
      this.error(
        DiagnosticCode.A_function_whose_declared_type_is_not_void_must_return_a_value,
        instance.prototype.signatureNode.returnType.range
      );
    }

    return stmts;
  }

  /** Compiles a readily resolved function instance. */
  compileFunction(instance: Function): bool {
    if (instance.is(CommonFlags.COMPILED)) return true;
    assert(!(instance.is(CommonFlags.AMBIENT) && instance.hasDecorator(DecoratorFlags.BUILTIN)));

    instance.set(CommonFlags.COMPILED);

    var module = this.module;
    var signature = instance.signature;
    var bodyNode = instance.prototype.bodyNode;

    var typeRef = this.ensureFunctionType(signature.parameterTypes, signature.returnType, signature.thisType);
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
          DiagnosticCode.Operation_not_supported,
          decorator.range
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
        // No need to retain `this` as it can't be reassigned and thus can't become prematurely released
        ++index;
      }
      let parameterTypes = signature.parameterTypes;
      for (let i = 0, k = parameterTypes.length; i < k; ++i, ++index) {
        let type = parameterTypes[i];
        if (type.isManaged) {
          stmts.push(
            module.createDrop(
              this.makeRetain(
                module.createGetLocal(index, type.toNativeType())
              )
            )
          );
          flow.setLocalFlag(index, LocalFlags.RETAINED);
        }
      }

      this.compileFunctionBody(instance, stmts);
      if (!flow.isAny(FlowFlags.ANY_TERMINATING)) {
        this.performAutoreleases(flow, stmts);
        this.finishAutoreleases(flow, stmts);
      }
      this.currentFlow = previousFlow;

      // create the function
      funcRef = module.addFunction(
        instance.internalName,
        typeRef,
        typesToNativeTypes(instance.additionalLocals),
        flatten(module, stmts, instance.signature.returnType.toNativeType())
      );

    // imported function
    } else {
      if (!instance.is(CommonFlags.AMBIENT)) {
        this.error(
          DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
          instance.identifierNode.range
        );
      }

      instance.set(CommonFlags.MODULE_IMPORT);
      mangleImportName(instance, instance.declaration); // TODO: check for duplicates

      // create the import
      funcRef = module.addFunctionImport(
        instance.internalName,
        mangleImportName_moduleName,
        mangleImportName_elementName,
        typeRef
      );
    }

    instance.finalize(module, funcRef);
    return true;
  }

  // === Classes ==================================================================================

  compileClassUsingTypeArguments(
    prototype: ClassPrototype,
    typeArguments: TypeNode[],
    contextualTypeArguments: Map<string,Type> = makeMap(),
    alternativeReportNode: Node | null = null
  ): void {
    var instance = this.resolver.resolveClassInclTypeArguments(
      prototype,
      typeArguments,
      prototype.parent, // relative to itself
      contextualTypeArguments,
      alternativeReportNode || prototype.declaration
    );
    if (!instance) return;
    this.compileClass(instance);
  }

  compileClass(instance: Class): bool {
    if (instance.is(CommonFlags.COMPILED)) return true;
    instance.set(CommonFlags.COMPILED);
    var prototype = instance.prototype;
    var staticMembers = (<ClassPrototype>prototype).members;
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
                [],
                makeMap<string,Type>(),
                (<FunctionPrototype>element).identifierNode
              );
            }
            break;
          }
          case ElementKind.PROPERTY_PROTOTYPE: {
            let getter = (<PropertyPrototype>element).getterPrototype;
            if (getter) {
              this.compileFunctionUsingTypeArguments(
                getter,
                [],
                makeMap<string,Type>(),
                getter.identifierNode
              );
            }
            let setter = (<PropertyPrototype>element).setterPrototype;
            if (setter) {
              this.compileFunctionUsingTypeArguments(
                setter,
                [],
                makeMap<string,Type>(),
                setter.identifierNode
              );
            }
            break;
          }
          case ElementKind.PROPERTY: {
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
                makeMap<string,Type>(instance.contextualTypeArguments),
                (<FunctionPrototype>element).declaration.name
              );
            }
            break;
          }
          case ElementKind.FIELD_PROTOTYPE: {
            element.set(CommonFlags.COMPILED);
            break;
          }
          case ElementKind.PROPERTY: {
            let getter = (<Property>element).getterInstance;
            if (getter) this.compileFunction(getter);
            let setter = (<Property>element).setterInstance;
            if (setter) this.compileFunction(setter);
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

  // === Memory ===================================================================================

  /** Adds a static memory segment with the specified data. */
  addMemorySegment(buffer: Uint8Array, alignment: i32 = 8): MemorySegment {
    var memoryOffset = i64_align(this.memoryOffset, alignment);
    var segment = MemorySegment.create(buffer, memoryOffset);
    this.memorySegments.push(segment);
    this.memoryOffset = i64_add(memoryOffset, i64_new(buffer.length, 0));
    return segment;
  }

  /** Ensures that the specified string exists in static memory and returns a pointer to it. */
  ensureStaticString(stringValue: string): ExpressionRef {
    var program = this.program;
    var rtHeaderSize = program.runtimeHeaderSize;
    var stringInstance = assert(program.stringInstance);
    var stringSegment: MemorySegment;
    var segments = this.stringSegments;
    if (segments.has(stringValue)) {
      stringSegment = segments.get(stringValue)!; // reuse
    } else {
      let length = stringValue.length;
      let buffer = new Uint8Array(rtHeaderSize + (length << 1));
      program.writeRuntimeHeader(buffer, 0, stringInstance, length << 1);
      for (let i = 0; i < length; ++i) {
        writeI16(stringValue.charCodeAt(i), buffer, rtHeaderSize + (i << 1));
      }
      stringSegment = this.addMemorySegment(buffer);
      segments.set(stringValue, stringSegment);
    }
    var ref = i64_add(stringSegment.offset, i64_new(rtHeaderSize));
    this.currentType = stringInstance.type;
    if (this.options.isWasm64) {
      return this.module.createI64(i64_low(ref), i64_high(ref));
    } else {
      assert(i64_is_u32(ref));
      return this.module.createI32(i64_low(ref));
    }
  }

  ensureStaticArrayBuffer(elementType: Type, values: ExpressionRef[]): MemorySegment {
    var program = this.program;
    var length = values.length;
    var byteSize = elementType.byteSize;
    var byteLength = length * byteSize;
    var bufferInstance = assert(program.arrayBufferInstance);
    var runtimeHeaderSize = program.runtimeHeaderSize;

    var buf = new Uint8Array(runtimeHeaderSize + byteLength);
    program.writeRuntimeHeader(buf, 0, bufferInstance, byteLength);
    var pos = runtimeHeaderSize;
    var nativeType = elementType.toNativeType();
    switch (nativeType) {
      case NativeType.I32: {
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
      case NativeType.I64: {
        for (let i = 0; i < length; ++i) {
          let value = values[i];
          assert(getExpressionType(value) == nativeType);
          assert(getExpressionId(value) == ExpressionId.Const);
          writeI64(i64_new(getConstValueI64Low(value), getConstValueI64High(value)), buf, pos);
          pos += 8;
        }
        break;
      }
      case NativeType.F32: {
        for (let i = 0; i < length; ++i) {
          let value = values[i];
          assert(getExpressionType(value) == nativeType);
          assert(getExpressionId(value) == ExpressionId.Const);
          writeF32(getConstValueF32(value), buf, pos);
          pos += 4;
        }
        break;
      }
      case NativeType.F64: {
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
    assert(pos == buf.length);

    return this.addMemorySegment(buf);
  }

  ensureStaticArrayHeader(elementType: Type, bufferSegment: MemorySegment): MemorySegment {
    var program = this.program;
    var runtimeHeaderSize = program.runtimeHeaderSize;
    var arrayPrototype = assert(program.arrayPrototype);
    var arrayInstance = assert(this.resolver.resolveClass(arrayPrototype, [ elementType ]));
    var arrayInstanceSize = arrayInstance.currentMemoryOffset;
    var bufferLength = bufferSegment.buffer.length - runtimeHeaderSize;
    var arrayLength = i32(bufferLength / elementType.byteSize);

    var buf = new Uint8Array(runtimeHeaderSize + arrayInstanceSize);
    program.writeRuntimeHeader(buf, 0, arrayInstance, arrayInstanceSize);

    var bufferAddress32 = i64_low(bufferSegment.offset) + runtimeHeaderSize;
    assert(!program.options.isWasm64); // TODO
    assert(arrayInstance.writeField("data", bufferAddress32, buf, runtimeHeaderSize));
    assert(arrayInstance.writeField("dataStart", bufferAddress32, buf, runtimeHeaderSize));
    assert(arrayInstance.writeField("dataLength", bufferLength, buf, runtimeHeaderSize));
    assert(arrayInstance.writeField("length_", arrayLength, buf, runtimeHeaderSize));

    return this.addMemorySegment(buf);
  }

  // === Table ====================================================================================

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
    functionTable.push(func.internalName);
    func.functionTableIndex = index;
    return index;
  }

  // === Statements ===============================================================================

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
        assert(element.kind == ElementKind.ENUM);
        if (!element.hasDecorator(DecoratorFlags.LAZY)) this.compileEnum(<Enum>element);
        break;
      }
      case NodeKind.NAMESPACEDECLARATION: {
        let memberStatements = (<NamespaceDeclaration>statement).members;
        for (let i = 0, k = memberStatements.length; i < k; ++i) {
          this.compileTopLevelStatement(memberStatements[i], body);
        }
        break;
      }
      case NodeKind.VARIABLE: {
        let declarations = (<VariableStatement>statement).declarations;
        for (let i = 0, k = declarations.length; i < k; ++i) {
          let element = this.program.getElementByDeclaration(declarations[i]);
          assert(element.kind == ElementKind.GLOBAL);
          if (
            !element.is(CommonFlags.AMBIENT) && // delay imports
            !element.hasDecorator(DecoratorFlags.LAZY)
          ) this.compileGlobal(<Global>element);
        }
        break;
      }
      case NodeKind.FIELDDECLARATION: {
        let element = this.program.getElementByDeclaration(<FieldDeclaration>statement);
        if (element.kind == ElementKind.GLOBAL) { // static
          if (!element.hasDecorator(DecoratorFlags.LAZY)) this.compileGlobal(<Global>element);
        }
        break;
      }
      case NodeKind.EXPORT: {
        if ((<ExportStatement>statement).normalizedPath != null) {
          this.compileFileByPath(
            <string>(<ExportStatement>statement).normalizedPath,
            <StringLiteralExpression>(<ExportStatement>statement).path
          );
        }
        break;
      }
      case NodeKind.IMPORT: {
        this.compileFileByPath(
          (<ImportStatement>statement).normalizedPath,
          (<ImportStatement>statement).path
        );
        break;
      }
      case NodeKind.FUNCTIONDECLARATION:
      case NodeKind.METHODDECLARATION:
      case NodeKind.INTERFACEDECLARATION:
      case NodeKind.INDEXSIGNATUREDECLARATION:
      case NodeKind.TYPEDECLARATION: break;
      default: { // otherwise a top-level statement that is part of the start function's body
        let stmt = this.compileStatement(statement);
        if (getExpressionId(stmt) != ExpressionId.Nop) body.push(stmt);
        break;
      }
    }
  }

  compileStatement(
    statement: Statement,
    contextualFlags: ContextualFlags = ContextualFlags.NONE
  ): ExpressionRef {
    var module = this.module;
    var stmt: ExpressionRef;
    switch (statement.kind) {
      case NodeKind.BLOCK: {
        stmt = this.compileBlockStatement(<BlockStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.BREAK: {
        stmt = this.compileBreakStatement(<BreakStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.CONTINUE: {
        stmt = this.compileContinueStatement(<ContinueStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.DO: {
        stmt = this.compileDoStatement(<DoStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.EMPTY: {
        stmt = this.compileEmptyStatement(<EmptyStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.EXPRESSION: {
        stmt = this.compileExpressionStatement(<ExpressionStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.FOR: {
        stmt = this.compileForStatement(<ForStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.IF: {
        stmt = this.compileIfStatement(<IfStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.RETURN: {
        stmt = this.compileReturnStatement(<ReturnStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.SWITCH: {
        stmt = this.compileSwitchStatement(<SwitchStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.THROW: {
        stmt = this.compileThrowStatement(<ThrowStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.TRY: {
        stmt = this.compileTryStatement(<TryStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.VARIABLE: {
        stmt = this.compileVariableStatement(<VariableStatement>statement, contextualFlags);
        if (!stmt) stmt = module.createNop();
        break;
      }
      case NodeKind.VOID: {
        stmt = this.compileVoidStatement(<VoidStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.WHILE: {
        stmt = this.compileWhileStatement(<WhileStatement>statement, contextualFlags);
        break;
      }
      case NodeKind.TYPEDECLARATION: {
        // TODO: integrate inner type declaration into flow
        this.error(
          DiagnosticCode.Operation_not_supported,
          statement.range
        );
        stmt = module.createUnreachable();
        break;
      }
      default: {
        assert(false);
        stmt = module.createUnreachable();
      }
    }
    if (this.options.sourceMap) this.addDebugLocation(stmt, statement.range);
    return stmt;
  }

  compileStatements(
    statements: Statement[],
    isBody: bool = false,
    stmts: ExpressionRef[] | null = null
  ): ExpressionRef[] {
    var numStatements = statements.length;
    if (!stmts) {
      stmts = new Array<ExpressionRef>(numStatements);
      stmts.length = 0;
    }
    var flow = this.currentFlow;
    for (let i = 0; i < numStatements; ++i) {
      let stmt = this.compileStatement(statements[i],
        isBody && i == numStatements - 1
          ? ContextualFlags.LAST_IN_BODY
          : ContextualFlags.NONE
      );
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
      if (flow.isAny(FlowFlags.ANY_TERMINATING)) {
        if (needsExplicitUnreachable(stmt)) stmts.push(this.module.createUnreachable());
        break;
      }
    }
    return stmts;
  }

  compileBlockStatement(
    statement: BlockStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var statements = statement.statements;
    var outerFlow = this.currentFlow;
    var innerFlow = outerFlow.fork();
    this.currentFlow = innerFlow;

    var stmts = this.compileStatements(statements);
    if (!innerFlow.isAny(FlowFlags.ANY_TERMINATING)) this.performAutoreleases(innerFlow, stmts);
    innerFlow.freeScopedLocals();
    outerFlow.inherit(innerFlow); // TODO: only if not terminated?
    this.currentFlow = outerFlow;
    return flatten(this.module, stmts, NativeType.None);
  }

  compileBreakStatement(
    statement: BreakStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var module = this.module;
    if (statement.label) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        statement.label.range
      );
      return module.createUnreachable();
    }
    var flow = this.currentFlow;
    var breakLabel = flow.breakLabel;
    if (breakLabel == null) {
      this.error(
        DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement,
        statement.range
      );
      return module.createUnreachable();
    }
    var stmts = new Array<ExpressionRef>();
    this.performAutoreleases(flow, stmts);
    var current: Flow | null = flow.parent;
    while (current && current.breakLabel === breakLabel) {
      this.performAutoreleases(current, stmts, /* clearFlags */ false);
      current = current.parent;
    }
    flow.freeScopedLocals();
    stmts.push(module.createBreak(breakLabel));
    flow.set(FlowFlags.BREAKS);
    return flatten(module, stmts, NativeType.None);
  }

  compileContinueStatement(
    statement: ContinueStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
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
    var flow = this.currentFlow;
    var continueLabel = flow.continueLabel;
    if (continueLabel == null) {
      this.error(
        DiagnosticCode.A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement,
        statement.range
      );
      return module.createUnreachable();
    }
    flow.set(FlowFlags.CONTINUES);
    var stmts = new Array<ExpressionRef>();
    this.performAutoreleases(flow, stmts);
    var current: Flow | null = flow.parent;
    while (current && current.continueLabel === continueLabel) {
      this.performAutoreleases(current, stmts, /* clearFlags */ false);
      current = current.parent;
    }
    flow.freeScopedLocals();
    stmts.push(module.createBreak(continueLabel));
    return flatten(module, stmts, NativeType.None);
  }

  compileDoStatement(
    statement: DoStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var module = this.module;

    var outerFlow = this.currentFlow;
    var label = outerFlow.pushBreakLabel();
    var innerFlow = outerFlow.fork();
    this.currentFlow = innerFlow;
    var breakLabel = "break|" + label;
    innerFlow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    innerFlow.continueLabel = continueLabel;

    var stmts = new Array<ExpressionRef>();
    if (statement.statement.kind == NodeKind.BLOCK) {
      this.compileStatements((<BlockStatement>statement.statement).statements, false, stmts);
    } else {
      stmts.push(
        this.compileStatement(statement.statement)
      );
    }
    var condExpr = this.makeIsTrueish(
      this.compileExpression(statement.condition, Type.i32),
      this.currentType
    );
    // TODO: check if condition is always false and if so, omit it (just a block)

    // Switch back to the parent flow
    var terminated = innerFlow.isAny(FlowFlags.ANY_TERMINATING);
    if (!terminated) this.performAutoreleases(innerFlow, stmts);
    innerFlow.freeScopedLocals();
    outerFlow.popBreakLabel();
    this.currentFlow = outerFlow;
    innerFlow.unset(
      FlowFlags.BREAKS |
      FlowFlags.CONDITIONALLY_BREAKS |
      FlowFlags.CONTINUES |
      FlowFlags.CONDITIONALLY_CONTINUES
    );
    outerFlow.inherit(innerFlow);

    var block: ExpressionRef[] = [
      module.createLoop(continueLabel,
        terminated
          ? flatten(module, stmts, NativeType.None) // skip trailing continue if unnecessary
          : module.createBlock(null, [
              flatten(module, stmts, NativeType.None),
              module.createBreak(continueLabel, condExpr)
            ], NativeType.None)
      )
    ];
    if (terminated) block.push(module.createUnreachable());
    return module.createBlock(breakLabel, block);
  }

  compileEmptyStatement(
    statement: EmptyStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    return this.module.createNop();
  }

  compileExpressionStatement(
    statement: ExpressionStatement,
    contextualFlags: ContextualFlags,
  ): ExpressionRef {
    return this.compileExpression(statement.expression, Type.void,
      contextualFlags | ContextualFlags.EXPLICIT | ContextualFlags.WILL_DROP
    );
  }

  compileForStatement(
    statement: ForStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    // A for statement initiates a new branch with its own scoped variables
    // possibly declared in its initializer, and break context.
    var outerFlow = this.currentFlow;
    var label = outerFlow.pushBreakLabel();
    var innerFlow = outerFlow.fork();
    this.currentFlow = innerFlow;
    var breakLabel = innerFlow.breakLabel = "break|" + label;
    innerFlow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    innerFlow.continueLabel = continueLabel;
    var repeatLabel = "repeat|" + label;

    // Compile in correct order
    var module = this.module;
    var initExpr = statement.initializer
      ? this.compileStatement(<Statement>statement.initializer)
      : 0;
    var condExpr: ExpressionRef = 0;
    var alwaysTrue = false;
    if (statement.condition) {
      condExpr = module.precomputeExpression(
        this.makeIsTrueish(
          this.compileExpressionRetainType(<Expression>statement.condition, Type.bool),
          this.currentType
        )
      );
      // check if the condition is always true
      if (getExpressionId(condExpr) == ExpressionId.Const) {
        assert(getExpressionType(condExpr) == NativeType.I32);
        if (getConstValueI32(condExpr) != 0) alwaysTrue = true;
        // TODO: could skip compilation if the condition is always false here, but beware that the
        // initializer could still declare new 'var's that are used later on.
      }
    } else {
      // omitted condition is always true
      condExpr = module.createI32(1);
      alwaysTrue = true;
    }
    innerFlow.inheritNonnullIfTrue(condExpr);
    var incrExpr = statement.incrementor
      ? this.compileExpression(<Expression>statement.incrementor, Type.void,
          ContextualFlags.IMPLICIT | ContextualFlags.WILL_DROP
        )
      :  0;
    var bodyStatement = statement.statement;
    var stmts = new Array<ExpressionRef>();
    if (bodyStatement.kind == NodeKind.BLOCK) {
      this.compileStatements((<BlockStatement>bodyStatement).statements, false, stmts);
    } else {
      stmts.push(
        this.compileStatement(bodyStatement)
      );
    }
    if (!innerFlow.isAny(FlowFlags.ANY_TERMINATING)) this.performAutoreleases(innerFlow, stmts);

    // Switch back to the parent flow
    innerFlow.freeScopedLocals();
    outerFlow.popBreakLabel();
    this.currentFlow = outerFlow;
    var usesContinue = innerFlow.isAny(FlowFlags.CONTINUES | FlowFlags.CONDITIONALLY_CONTINUES);
    innerFlow.unset(
      FlowFlags.BREAKS |
      FlowFlags.CONDITIONALLY_BREAKS |
      FlowFlags.CONTINUES |
      FlowFlags.CONDITIONALLY_CONTINUES
    );
    if (alwaysTrue) outerFlow.inherit(innerFlow);
    else outerFlow.inheritConditional(innerFlow);

    var breakBlock = new Array<ExpressionRef>(); // outer 'break' block
    if (initExpr) breakBlock.push(initExpr);

    var repeatBlock = new Array<ExpressionRef>(); // block repeating the loop
    if (usesContinue) {
      stmts.unshift(
        module.createBreak(breakLabel, module.createUnary(UnaryOp.EqzI32, condExpr))
      );
      repeatBlock.push(
        module.createBlock(continueLabel, stmts, NativeType.None)
      );
    } else { // can omit the 'continue' block
      repeatBlock.push(
        module.createBreak(breakLabel, module.createUnary(UnaryOp.EqzI32, condExpr))
      );
      for (let i = 0, k = stmts.length; i < k; ++i) {
        repeatBlock.push(stmts[i]);
      }
    }
    if (incrExpr) repeatBlock.push(incrExpr);
    repeatBlock.push(
      module.createBreak(repeatLabel)
    );

    breakBlock.push(
      module.createLoop(repeatLabel, module.createBlock(null, repeatBlock, NativeType.None))
    );

    return module.createBlock(breakLabel, breakBlock);
  }

  compileIfStatement(
    statement: IfStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var module = this.module;
    var ifTrue = statement.ifTrue;
    var ifFalse = statement.ifFalse;
    var outerFlow = this.currentFlow;

    // The condition doesn't initiate a branch yet
    var condExpr = module.precomputeExpression(
      this.makeIsTrueish(
        this.compileExpressionRetainType(statement.condition, Type.bool),
        this.currentType
      )
    );

    // Try to eliminate unnecesssary branches if the condition is constant
    if (
      getExpressionId(condExpr) == ExpressionId.Const &&
      getExpressionType(condExpr) == NativeType.I32
    ) {
      return getConstValueI32(condExpr)
        ? this.compileStatement(ifTrue)
        : ifFalse
          ? this.compileStatement(ifFalse)
          : module.createNop();
    }

    // Each arm initiates a branch
    var ifTrueStmts = new Array<ExpressionRef>();
    var ifTrueFlow = outerFlow.fork();
    this.currentFlow = ifTrueFlow;
    ifTrueFlow.inheritNonnullIfTrue(condExpr);
    if (ifTrue.kind == NodeKind.BLOCK) {
      this.compileStatements((<BlockStatement>ifTrue).statements, false, ifTrueStmts);
    } else {
      ifTrueStmts.push(this.compileStatement(ifTrue));
    }
    if (!ifTrueFlow.isAny(FlowFlags.ANY_TERMINATING)) this.performAutoreleases(ifTrueFlow, ifTrueStmts);
    ifTrueFlow.freeScopedLocals();
    this.currentFlow = outerFlow;

    if (ifFalse) {
      let ifFalseFlow = outerFlow.fork();
      this.currentFlow = ifFalseFlow;
      ifFalseFlow.inheritNonnullIfFalse(condExpr);
      let ifFalseStmts = new Array<ExpressionRef>();
      if (ifFalse.kind == NodeKind.BLOCK) {
        this.compileStatements((<BlockStatement>ifFalse).statements, false, ifFalseStmts);
      } else {
        ifFalseStmts.push(this.compileStatement(ifFalse));
      }
      if (!ifFalseFlow.isAny(FlowFlags.ANY_TERMINATING)) this.performAutoreleases(ifFalseFlow, ifFalseStmts);
      ifFalseFlow.freeScopedLocals();
      this.currentFlow = outerFlow;
      outerFlow.inheritMutual(ifTrueFlow, ifFalseFlow);
      return module.createIf(condExpr,
        flatten(module, ifTrueStmts, NativeType.None),
        flatten(module, ifFalseStmts, NativeType.None)
      );
    } else {
      outerFlow.inheritConditional(ifTrueFlow);
      if (ifTrueFlow.isAny(FlowFlags.ANY_TERMINATING)) {
        outerFlow.inheritNonnullIfFalse(condExpr);
      }
      return module.createIf(condExpr,
        flatten(module, ifTrueStmts, NativeType.None)
      );
    }
  }

  compileReturnStatement(
    statement: ReturnStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var module = this.module;
    var expr: ExpressionRef = 0;
    var flow = this.currentFlow;
    var returnType = flow.returnType;

    // Remember that this flow returns
    flow.set(FlowFlags.RETURNS);

    var valueExpression = statement.value;
    if (valueExpression) {
      if (returnType == Type.void) {
        this.error(
          DiagnosticCode.Type_0_is_not_assignable_to_type_1,
          valueExpression.range, this.currentType.toString(), returnType.toString()
        );
        this.currentType = Type.void;
        return module.createUnreachable();
      }
      let contextualFlags = ContextualFlags.IMPLICIT;
      if (flow.actualFunction.is(CommonFlags.MODULE_EXPORT)) contextualFlags |= ContextualFlags.WRAP;
      expr = this.compileExpression(valueExpression, returnType, contextualFlags | ContextualFlags.SKIP_AUTORELEASE);

      // when returning a local, and it is already retained, skip the final set
      // of retaining it as the return value and releasing it as a variable
      if (!this.skippedAutoreleases.has(expr)) {
        if (returnType.isManaged) {
          if (getExpressionId(expr) == ExpressionId.GetLocal) {
            if (flow.isAnyLocalFlag(getGetLocalIndex(expr), LocalFlags.ANY_RETAINED)) {
              flow.unsetLocalFlag(getGetLocalIndex(expr), LocalFlags.ANY_RETAINED);
              this.skippedAutoreleases.add(expr);
            }
          }
        }
      }

      // Remember whether returning a properly wrapped value
      if (!flow.canOverflow(expr, returnType)) flow.set(FlowFlags.RETURNS_WRAPPED);

    } else if (returnType != Type.void) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        statement.range, "void", returnType.toString()
      );
      expr = module.createUnreachable();
    }

    var stmts = new Array<ExpressionRef>();
    this.performAutoreleases(flow, stmts);
    this.finishAutoreleases(flow, stmts);

    // Make sure that the return value is retained for the caller
    if (returnType.isManaged && !this.skippedAutoreleases.has(expr)) expr = this.makeRetain(expr);

    if (stmts.length) {
      let temp = flow.getAndFreeTempLocal(returnType, false);
      stmts.unshift(
        module.createSetLocal(temp.index, expr)
      );
      expr = module.createGetLocal(temp.index, returnType.toNativeType());
    }
    flow.freeScopedLocals();

    // If the last statement anyway, make it the block's return value
    if ((contextualFlags & ContextualFlags.LAST_IN_BODY) != 0 && expr && returnType != Type.void) {
      if (!stmts.length) return expr;
      stmts.push(expr);
      return module.createBlock(null, stmts, returnType.toNativeType());
    }

    // When inlining, break to the end of the inlined function's block (no need to wrap)
    if (flow.is(FlowFlags.INLINE_CONTEXT)) {
      if (!stmts.length) return module.createBreak(assert(flow.inlineReturnLabel), 0, expr);
      stmts.push(module.createBreak(assert(flow.inlineReturnLabel), 0, expr));
      // stmts.push(module.createUnreachable());
      return module.createBlock(null, stmts);
    }

    // Otherwise emit a normal return
    if (!stmts.length) return module.createReturn(expr);
    stmts.push(module.createReturn(expr));
    return module.createBlock(null, stmts);
  }

  compileSwitchStatement(statement: SwitchStatement, contextualFlags: ContextualFlags): ExpressionRef {
    var module = this.module;

    var cases = statement.cases;
    var numCases = cases.length;
    if (!numCases) {
      return this.compileExpression(statement.condition, Type.void,
        ContextualFlags.IMPLICIT
      );
    }

    // Everything within a switch uses the same break context
    var outerFlow = this.currentFlow;
    var context = outerFlow.pushBreakLabel();

    // introduce a local for evaluating the condition (exactly once)
    var tempLocal = outerFlow.getTempLocal(Type.u32, false);
    var tempLocalIndex = tempLocal.index;

    // Prepend initializer to inner block. Does not initiate a new branch, yet.
    var breaks = new Array<ExpressionRef>(1 + numCases);
    breaks[0] = module.createSetLocal( // initializer
      tempLocalIndex,
      this.compileExpression(statement.condition, Type.u32,
        ContextualFlags.IMPLICIT
      )
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
            this.compileExpression(label, Type.u32,
              ContextualFlags.IMPLICIT
            )
          )
        );
      } else {
        defaultIndex = i;
      }
    }

    outerFlow.freeTempLocal(tempLocal);

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
      let innerFlow = outerFlow.fork();
      this.currentFlow = innerFlow;
      let breakLabel = "break|" + context;
      innerFlow.breakLabel = breakLabel;

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
          if (innerFlow.isAny(FlowFlags.ANY_TERMINATING)) {
            terminated = true;
            break;
          }
        }
      }
      stmts.length = count;
      if (terminated || isLast) {
        if (!innerFlow.is(FlowFlags.RETURNS)) alwaysReturns = false;
        if (!innerFlow.is(FlowFlags.RETURNS_WRAPPED)) alwaysReturnsWrapped = false;
        if (!innerFlow.is(FlowFlags.THROWS)) alwaysThrows = false;
        if (!innerFlow.is(FlowFlags.ALLOCATES)) alwaysAllocates = false;
      }

      // Switch back to the parent flow
      if (!innerFlow.isAny(FlowFlags.ANY_TERMINATING)) this.performAutoreleases(innerFlow, stmts);
      innerFlow.unset(
        FlowFlags.BREAKS |
        FlowFlags.CONDITIONALLY_BREAKS
      );
      innerFlow.freeScopedLocals();
      this.currentFlow = outerFlow;
      currentBlock = module.createBlock(nextLabel, stmts, NativeType.None); // must be a labeled block
    }
    outerFlow.popBreakLabel();

    // If the switch has a default (guaranteed to handle any value), propagate common flags
    if (defaultIndex >= 0) {
      if (alwaysReturns) outerFlow.set(FlowFlags.RETURNS);
      if (alwaysReturnsWrapped) outerFlow.set(FlowFlags.RETURNS_WRAPPED);
      if (alwaysThrows) outerFlow.set(FlowFlags.THROWS);
      if (alwaysAllocates) outerFlow.set(FlowFlags.ALLOCATES);
    }
    return currentBlock;
  }

  compileThrowStatement(
    statement: ThrowStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var flow = this.currentFlow;

    // Remember that this branch throws
    flow.set(FlowFlags.THROWS);

    // FIXME: without try-catch it is safe to assume RETURNS as well for now
    flow.set(FlowFlags.RETURNS);

    var stmts = new Array<ExpressionRef>();
    this.finishAutoreleases(flow, stmts);

    // TODO: requires exception-handling spec.
    var value = statement.value;
    var message: Expression | null = null;
    if (value.kind == NodeKind.NEW) {
      let newArgs = (<NewExpression>value).arguments;
      if (newArgs.length) message = newArgs[0]; // FIXME: naively assumes type string
    }
    stmts.push(compileAbort(this, message, statement));

    return flatten(this.module, stmts, NativeType.None);
  }

  compileTryStatement(
    statement: TryStatement,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    // TODO: can't yet support something like: try { return ... } finally { ... }
    // worthwhile to investigate lowering returns to block results (here)?
    this.error(
      DiagnosticCode.Operation_not_supported,
      statement.range
    );
    return this.module.createUnreachable();
  }

  /** Compiles a variable statement. Returns `0` if an initializer is not necessary. */
  compileVariableStatement(statement: VariableStatement, contextualFlags: ContextualFlags): ExpressionRef {
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
      if (declaration.type) {
        type = resolver.resolveType( // reports
          declaration.type,
          flow.actualFunction,
          flow.contextualTypeArguments
        );
        if (!type) continue;
        if (declaration.initializer) {
          initExpr = this.compileExpression(declaration.initializer, type, // reports
            ContextualFlags.IMPLICIT | ContextualFlags.SKIP_AUTORELEASE
          );
          initAutoreleaseSkipped = this.skippedAutoreleases.has(initExpr);
        }
      } else if (declaration.initializer) { // infer type using void/NONE for proper literal inference
        initExpr = this.compileExpressionRetainType(declaration.initializer, Type.void,
          ContextualFlags.SKIP_AUTORELEASE
        ); // reports
        initAutoreleaseSkipped = this.skippedAutoreleases.has(initExpr);
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
          initExpr = module.precomputeExpression(initExpr);
          if (getExpressionId(initExpr) == ExpressionId.Const) {
            let local = new Local(name, -1, type, flow.parentFunction);
            switch (getExpressionType(initExpr)) {
              case NativeType.I32: {
                local.setConstantIntegerValue(
                  i64_new(
                    getConstValueI32(initExpr),
                    0
                  ),
                  type
                );
                break;
              }
              case NativeType.I64: {
                local.setConstantIntegerValue(
                  i64_new(
                    getConstValueI64Low(initExpr),
                    getConstValueI64High(initExpr)
                  ),
                  type
                );
                break;
              }
              case NativeType.F32: {
                local.setConstantFloatValue(<f64>getConstValueF32(initExpr), type);
                break;
              }
              case NativeType.F64: {
                local.setConstantFloatValue(getConstValueF64(initExpr), type);
                break;
              }
              default: {
                assert(false);
                return module.createUnreachable();
              }
            }
            // Create a virtual local that doesn't actually exist in WebAssembly
            let scopedLocals = flow.scopedLocals;
            if (!scopedLocals) flow.scopedLocals = scopedLocals = new Map();
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
          local = flow.addScopedLocal(name, type, false, declaration.name); // reports if duplicate
        } else {
          if (flow.lookupLocal(name)) {
            this.error(
              DiagnosticCode.Duplicate_identifier_0,
              declaration.name.range, name
            );
            continue;
          }
          local = flow.parentFunction.addLocal(type, name, declaration);
        }
        let isManaged = type.isManaged;
        if (initExpr) {
          if (isManaged) {
            flow.setLocalFlag(local.index, LocalFlags.RETAINED);
            initializers.push(
              module.createSetLocal(local.index,
                initAutoreleaseSkipped
                  ? initExpr
                  : this.makeRetain(initExpr)
              )
            );
          } else {
            initializers.push(
              module.createSetLocal(local.index, initExpr)
            );
            if (local.type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
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
              module.createSetLocal(local.index,
                type.toNativeZero(module)
              )
            );
            flow.setLocalFlag(local.index, LocalFlags.CONDITIONALLY_RETAINED);
          } else if (local.type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
            flow.setLocalFlag(local.index, LocalFlags.WRAPPED);
          }
        }
      }
    }
    return initializers.length == 0
      ? 0
      : flatten(module, initializers, NativeType.None);
  }

  compileVoidStatement(statement: VoidStatement, contextualFlags: ContextualFlags): ExpressionRef {
    return this.compileExpression(statement.expression, Type.void,
      ContextualFlags.EXPLICIT | ContextualFlags.WILL_DROP
    );
  }

  compileWhileStatement(statement: WhileStatement, contextualFlags: ContextualFlags): ExpressionRef {
    var module = this.module;
    var outerFlow = this.currentFlow;

    // The condition does not yet initialize a branch
    var condExpr = module.precomputeExpression(
      this.makeIsTrueish(
        this.compileExpressionRetainType(statement.condition, Type.bool),
        this.currentType
      )
    );

    // Try to eliminate unnecesssary loops if the condition is constant
    if (
      getExpressionId(condExpr) == ExpressionId.Const &&
      getExpressionType(condExpr) == NativeType.I32
    ) {
      if (!getConstValueI32(condExpr)) return module.createNop();
    }

    // Statements initiate a new branch with its own break context
    var label = outerFlow.pushBreakLabel();
    var innerFlow = outerFlow.fork();
    this.currentFlow = innerFlow;
    var breakLabel = "break|" + label;
    innerFlow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    innerFlow.continueLabel = continueLabel;

    innerFlow.inheritNonnullIfTrue(condExpr);
    var stmts = new Array<ExpressionRef>();
    if (statement.statement.kind == NodeKind.BLOCK) {
      this.compileStatements((<BlockStatement>statement.statement).statements, false, stmts);
    } else {
      stmts.push(this.compileStatement(statement.statement));
    }
    var alwaysTrue = false; // TODO
    var terminated = innerFlow.isAny(FlowFlags.ANY_TERMINATING);
    if (!terminated) {
      this.performAutoreleases(innerFlow, stmts);
      stmts.push(module.createBreak(continueLabel));
    }
    innerFlow.freeScopedLocals();

    // Switch back to the parent flow
    outerFlow.popBreakLabel();
    this.currentFlow = outerFlow;
    innerFlow.unset(
      FlowFlags.BREAKS |
      FlowFlags.CONDITIONALLY_BREAKS |
      FlowFlags.CONTINUES |
      FlowFlags.CONDITIONALLY_CONTINUES
    );
    if (alwaysTrue) outerFlow.inherit(innerFlow);
    else outerFlow.inheritConditional(innerFlow);

    return module.createBlock(breakLabel, [
      module.createLoop(continueLabel,
        module.createIf(condExpr,
          flatten(module, stmts, NativeType.None)
        )
      )
    ]);
  }

  // === Expressions ==============================================================================

  /**
   * Compiles the value of an inlined constant element.
   * @param retainType If true, the annotated type of the constant is retained. Otherwise, the value
   *  is precomputed according to context.
   */
  compileInlineConstant(
    element: VariableLikeElement,
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    assert(element.is(CommonFlags.INLINED));
    var type = element.type;
    switch (
      !(contextualFlags & (ContextualFlags.IMPLICIT | ContextualFlags.EXPLICIT)) &&
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
        // monkey-patch for converting built-in floats to f32 implicitly
        if (!(element.hasDecorator(DecoratorFlags.BUILTIN) && contextualType == Type.f32)) {
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
    contextualFlags: ContextualFlags = ContextualFlags.NONE
  ): ExpressionRef {
    this.currentType = contextualType;
    var expr: ExpressionRef;
    if (contextualType == Type.void) contextualFlags |= ContextualFlags.WILL_DROP;
    switch (expression.kind) {
      case NodeKind.ASSERTION: {
        expr = this.compileAssertionExpression(<AssertionExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.BINARY: {
        expr = this.compileBinaryExpression(<BinaryExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.CALL: {
        expr = this.compileCallExpression(<CallExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.COMMA: {
        expr = this.compileCommaExpression(<CommaExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.ELEMENTACCESS: {
        expr = this.compileElementAccessExpression(<ElementAccessExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.FUNCTION: {
        expr = this.compileFunctionExpression(<FunctionExpression>expression, contextualType.signatureReference, contextualFlags);
        break;
      }
      case NodeKind.IDENTIFIER:
      case NodeKind.FALSE:
      case NodeKind.NULL:
      case NodeKind.THIS:
      case NodeKind.SUPER:
      case NodeKind.TRUE: {
        expr = this.compileIdentifierExpression(<IdentifierExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.INSTANCEOF: {
        expr = this.compileInstanceOfExpression(<InstanceOfExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.LITERAL: {
        expr = this.compileLiteralExpression(<LiteralExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.NEW: {
        expr = this.compileNewExpression(<NewExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.PARENTHESIZED: {
        expr = this.compileExpression((<ParenthesizedExpression>expression).expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.PROPERTYACCESS: {
        expr = this.compilePropertyAccessExpression(<PropertyAccessExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.TERNARY: {
        expr = this.compileTernaryExpression(<TernaryExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.UNARYPOSTFIX: {
        expr = this.compileUnaryPostfixExpression(<UnaryPostfixExpression>expression, contextualType, contextualFlags);
        break;
      }
      case NodeKind.UNARYPREFIX: {
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, contextualType, contextualFlags);
        break;
      }
      default: {
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        expr = this.module.createUnreachable();
      }
    }
    // ensure conversion and wrapping in case the respective function doesn't on its own
    var currentType = this.currentType;
    var wrap = (contextualFlags & ContextualFlags.WRAP) != 0;
    if (currentType != contextualType) {
      if (contextualFlags & ContextualFlags.EXPLICIT) {
        expr = this.convertExpression(expr, currentType, contextualType, true, wrap, expression);
        wrap = false;
        this.currentType = contextualType;
      } else if (contextualFlags & ContextualFlags.IMPLICIT) {
        expr = this.convertExpression(expr, currentType, contextualType, false, wrap, expression);
        wrap = false;
        this.currentType = contextualType;
      }
    }
    if (wrap) expr = this.ensureSmallIntegerWrap(expr, currentType);
    // debug location is added here so the caller doesn't have to. means: compilation of an expression
    // must go through this function, with the respective per-kind functions not being used directly.
    if (this.options.sourceMap) this.addDebugLocation(expr, expression.range);
    return expr;
  }

  /** Compiles an expression while retaining the type, that is not void, it ultimately compiles to. */
  compileExpressionRetainType(
    expression: Expression,
    contextualType: Type,
    contextualFlags: ContextualFlags = ContextualFlags.NONE
  ): ExpressionRef {
    return this.compileExpression(expression,
      contextualType == Type.void
        ? Type.i32 // default to i32
        : contextualType,
      (contextualFlags & ~(ContextualFlags.IMPLICIT | ContextualFlags.EXPLICIT))
    );
  }

  /** Compiles and precomputes an expression, possibly yielding a costant value. */
  precomputeExpression(
    expression: Expression,
    contextualType: Type,
    contextualFlags: ContextualFlags = ContextualFlags.NONE
  ): ExpressionRef {
    return this.module.precomputeExpression(
      this.compileExpression(expression, contextualType, contextualFlags)
    );
  }

  convertExpression(
    expr: ExpressionRef,
    /** Original type. */
    fromType: Type,
    /** New type. */
    toType: Type,
    /** Whether the conversion is explicit.*/
    explicit: bool,
    /** Whether the result should be wrapped, if a small integer. */
    wrap: bool,
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
      return module.createUnreachable();
    }

    // any to void
    if (toType.kind == TypeKind.VOID) return module.createDrop(expr);

    if (!fromType.isAssignableTo(toType)) {
      if (!explicit) {
        if (fromType.nonNullableType == toType) {
          this.error(
            DiagnosticCode.Object_is_possibly_null,
            reportNode.range
          ); // recoverable
        } else {
          this.error(
            DiagnosticCode.Conversion_from_type_0_to_1_requires_an_explicit_cast,
            reportNode.range, fromType.toString(), toType.toString()
          ); // recoverable
        }
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
          if (toType == Type.bool) {
            expr = module.createBinary(BinaryOp.NeF32, expr, module.createF32(0));
            wrap = false;
          } else if (toType.is(TypeFlags.SIGNED)) {
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
          if (toType == Type.bool) {
            expr = module.createBinary(BinaryOp.NeF64, expr, module.createF64(0));
            wrap = false;
          } else if (toType.is(TypeFlags.SIGNED)) {
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
        if (toType == Type.bool) {
          expr = module.createBinary(BinaryOp.NeI64, expr, module.createI64(0));
          wrap = false;
        } else if (!toType.is(TypeFlags.LONG)) {
          expr = module.createUnary(UnaryOp.WrapI64, expr); // discards upper bits
        }

      // i32 or smaller to i64
      } else if (toType.is(TypeFlags.LONG)) {
        expr = module.createUnary(
          fromType.is(TypeFlags.SIGNED) ? UnaryOp.ExtendI32 : UnaryOp.ExtendU32,
          this.ensureSmallIntegerWrap(expr, fromType) // must clear garbage bits
        );
        wrap = false;

      // i32 to i32
      } else {
        // small i32 to ...
        if (fromType.is(TypeFlags.SHORT)) {
          // small i32 to larger i32
          if (fromType.size < toType.size) {
            expr = this.ensureSmallIntegerWrap(expr, fromType); // must clear garbage bits
            wrap = false;
          }
        }
      }
    }

    this.currentType = toType;
    return wrap
      ? this.ensureSmallIntegerWrap(expr, toType)
      : expr;
  }

  compileAssertionExpression(
    expression: AssertionExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    switch (expression.assertionKind) {
      case AssertionKind.PREFIX:
      case AssertionKind.AS: {
        let flow = this.currentFlow;
        let toType = this.resolver.resolveType( // reports
          assert(expression.toType),
          flow.actualFunction,
          flow.contextualTypeArguments
        );
        if (!toType) return this.module.createUnreachable();
        return this.compileExpression(expression.expression, toType,
          contextualFlags | ContextualFlags.EXPLICIT
        );
      }
      case AssertionKind.NONNULL: {
        assert(!expression.toType);
        let expr = this.compileExpressionRetainType(expression.expression, contextualType);
        let type = this.currentType;
        if (!type.is(TypeFlags.NULLABLE | TypeFlags.REFERENCE) || this.currentFlow.isNonnull(type, expr)) {
          this.info(
            DiagnosticCode.Expression_is_never_null,
            expression.expression.range
          );
        } else if (!this.options.noAssert) {
          let module = this.module;
          let flow = this.currentFlow;
          let tempIndex = flow.getAndFreeTempLocal(type, !flow.canOverflow(expr, type)).index;
          expr = module.createIf(
            module.createTeeLocal(tempIndex, expr),
            module.createGetLocal(tempIndex, type.toNativeType()),
            module.createUnreachable()
          );
        }
        this.currentType = this.currentType.nonNullableType;
        return expr;
      }
      default: assert(false);
    }
    return this.module.createUnreachable();
  }

  private f32ModInstance: Function | null = null;
  private f64ModInstance: Function | null = null;
  private f32PowInstance: Function | null = null;
  private f64PowInstance: Function | null = null;

  compileBinaryExpression(
    expression: BinaryExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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

        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonDenominator(leftType, rightType, true)) {
          leftExpr = this.convertExpression(leftExpr,
            leftType, leftType = commonType,
            false, true, // !
            left
          );
          rightExpr = this.convertExpression(rightExpr,
            rightType, rightType = commonType,
            false, true, // !
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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

        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonDenominator(leftType, rightType, true)) {
          leftExpr = this.convertExpression(leftExpr,
            leftType, leftType = commonType,
            false, true, // !
            left
          );
          rightExpr = this.convertExpression(rightExpr,
            rightType, rightType = commonType,
            false, true, // !
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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

        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonDenominator(leftType, rightType, true)) {
          leftExpr = this.convertExpression(leftExpr,
            leftType, leftType = commonType,
            false, true, // !
            left
          );
          rightExpr = this.convertExpression(rightExpr,
            rightType, rightType = commonType,
            false, true, // !
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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

        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonDenominator(leftType, rightType, true)) {
          leftExpr = this.convertExpression(leftExpr,
            leftType, leftType = commonType,
            false, true, // !
            left
          );
          rightExpr = this.convertExpression(rightExpr,
            rightType, rightType = commonType,
            false, true, // !
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

        leftExpr = this.compileExpressionRetainType(left, contextualType);
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

        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonDenominator(leftType, rightType, false)) {
          leftExpr = this.convertExpression(leftExpr,
            leftType, leftType = commonType,
            false, true, // !
            left
          );
          rightExpr = this.convertExpression(rightExpr,
            rightType, rightType = commonType,
            false, true, // !
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
          case TypeKind.V128: {
            expr = module.createUnary(UnaryOp.AllTrueVecI8x16,
              module.createBinary(BinaryOp.EqVecI8x16, leftExpr, rightExpr)
            );
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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

        rightExpr = this.compileExpressionRetainType(right, leftType);
        rightType = this.currentType;
        if (commonType = Type.commonDenominator(leftType, rightType, false)) {
          leftExpr = this.convertExpression(leftExpr,
            leftType, leftType = commonType,
            false, true, // !
            left
          );
          rightExpr = this.convertExpression(rightExpr,
            rightType, rightType = commonType,
            false, true, // !
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
          case TypeKind.V128: {
            expr = module.createUnary(UnaryOp.AnyTrueVecI8x16,
              module.createBinary(BinaryOp.NeVecI8x16, leftExpr, rightExpr)
            );
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType);
          rightType = this.currentType;
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr,
              leftType, leftType = commonType,
              false, false,
              left
            );
            rightExpr = this.convertExpression(rightExpr,
              rightType, rightType = commonType,
              false, false,
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType);
          rightType = this.currentType;
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr,
              leftType, leftType = commonType,
              false, false,
              left
            );
            rightExpr = this.convertExpression(rightExpr,
              rightType, rightType = commonType,
              false, false,
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType);
          rightType = this.currentType;
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr,
              leftType, leftType = commonType,
              false, false,
              left
            );
            rightExpr = this.convertExpression(rightExpr,
              rightType, rightType = commonType,
              false, false,
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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
          rightExpr = this.compileExpression(right, Type.f32, ContextualFlags.IMPLICIT);
          rightType = this.currentType;
          if (!(instance = this.f32PowInstance)) {
            let namespace = this.program.lookupGlobal(CommonSymbols.Mathf);
            if (!namespace) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Mathf"
              );
              expr = module.createUnreachable();
              break;
            }
            let prototype = namespace.members ? namespace.members.get(CommonSymbols.pow) : null;
            if (!prototype) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Mathf.pow"
              );
              expr = module.createUnreachable();
              break;
            }
            assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
            this.f32PowInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
          }

        // Math.pow otherwise (result is f64)
        // TODO: should the result be converted back?
        } else {
          leftExpr = this.convertExpression(leftExpr,
            this.currentType, Type.f64,
            false, false,
            left
          );
          leftType = this.currentType;
          rightExpr = this.compileExpression(right, Type.f64, ContextualFlags.IMPLICIT);
          rightType = this.currentType;
          if (!(instance = this.f64PowInstance)) {
            let namespace = this.program.lookupGlobal(CommonSymbols.Math);
            if (!namespace) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Math"
              );
              expr = module.createUnreachable();
              break;
            }
            let prototype = namespace.members ? namespace.members.get(CommonSymbols.pow) : null;
            if (!prototype) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Math.pow"
              );
              expr = module.createUnreachable();
              break;
            }
            assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
            this.f64PowInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
          }
        }
        if (!(instance && this.compileFunction(instance))) {
          expr = module.createUnreachable();
        } else {
          expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ], expression);
        }
        break;
      }
      case Token.SLASH_EQUALS: compound = true;
      case Token.SLASH: {
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType);
          rightType = this.currentType;
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr,
              leftType, leftType = commonType,
              false, true, // !
              left
            );
            rightExpr = this.convertExpression(rightExpr,
              rightType, rightType = commonType,
              false, true, // !
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
        leftExpr = this.compileExpressionRetainType(left, contextualType);
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
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType);
          rightType = this.currentType;
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr,
              leftType, leftType = commonType,
              false, true, // !
              left
            );
            rightExpr = this.convertExpression(rightExpr,
              rightType, rightType = commonType,
              false, true, // !
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
              let namespace = this.program.lookupGlobal(CommonSymbols.Mathf);
              if (!namespace) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Mathf"
                );
                expr = module.createUnreachable();
                break;
              }
              let prototype = namespace.members ? namespace.members.get(CommonSymbols.mod) : null;
              if (!prototype) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Mathf.mod"
                );
                expr = module.createUnreachable();
                break;
              }
              assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
              this.f32ModInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
            }
            if (!(instance && this.compileFunction(instance))) {
              expr = module.createUnreachable();
            } else {
              expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ], expression);
            }
            break;
          }
          case TypeKind.F64: {
            let instance = this.f64ModInstance;
            if (!instance) {
              let namespace = this.program.lookupGlobal(CommonSymbols.Math);
              if (!namespace) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Math"
                );
                expr = module.createUnreachable();
                break;
              }
              let prototype = namespace.members ? namespace.members.get(CommonSymbols.mod) : null;
              if (!prototype) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Math.mod"
                );
                expr = module.createUnreachable();
                break;
              }
              assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
              this.f64ModInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
            }
            if (!(instance && this.compileFunction(instance))) {
              expr = module.createUnreachable();
            } else {
              expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ], expression);
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
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType);
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

        rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
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
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType);
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
        rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
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
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType);
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
        rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
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
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType);
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
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType);
          rightType = this.currentType;
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr,
              leftType, leftType = commonType,
              false, false,
              left
            );
            rightExpr = this.convertExpression(rightExpr,
              rightType, rightType = commonType,
              false, false,
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
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType);
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
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType);
          rightType = this.currentType;
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr,
              leftType, leftType = commonType,
              false, false,
              left
            );
            rightExpr = this.convertExpression(rightExpr,
              rightType, rightType = commonType,
              false, false,
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
        leftExpr = this.compileExpressionRetainType(left, contextualType.intType);
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
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpressionRetainType(right, leftType);
          rightType = this.currentType;
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
            leftExpr = this.convertExpression(leftExpr,
              leftType, leftType = commonType,
              false, false,
              left
            );
            rightExpr = this.convertExpression(rightExpr,
              rightType, rightType = commonType,
              false, false,
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

      case Token.AMPERSAND_AMPERSAND: { // left && right -> (t = left) ? right : t
        let flow = this.currentFlow;
        leftExpr = this.compileExpressionRetainType(left, contextualType, contextualFlags);
        leftType = this.currentType;

        // references must properly retain and release, with the same outcome independent of the branch taken
        if (leftType.isManaged) {

          let leftAutoreleaseSkipped = this.skippedAutoreleases.has(leftExpr);
          let tempLocal = flow.getTempLocal(leftType, false);
          leftExpr = module.createTeeLocal(tempLocal.index, leftExpr);

          let rightFlow = flow.fork();
          this.currentFlow = rightFlow;
          rightFlow.inheritNonnullIfTrue(leftExpr);
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT | contextualFlags);
          rightType = leftType;
          let rightAutoreleaseSkipped = this.skippedAutoreleases.has(rightExpr);

          // instead of retaining left and releasing it again in right when right
          // is taken, we can also just retain left if right is not taken
          let retainLeftInElse = false;
          if (leftAutoreleaseSkipped != rightAutoreleaseSkipped) { // xor
            if (!leftAutoreleaseSkipped) {
              retainLeftInElse = true;
            } else {
              rightExpr = this.makeRetain(rightExpr);
              rightAutoreleaseSkipped = true;
            }
          } else if (!(contextualFlags & ContextualFlags.SKIP_AUTORELEASE)) { // otherwise keep right alive a little longer
            rightExpr = this.moveAutorelease(rightExpr, rightFlow, flow);
          }

          let rightStmts = new Array<ExpressionRef>();
          if (leftAutoreleaseSkipped) { // left turned out to be true'ish and is dropped
            rightStmts.unshift(
              this.makeRelease(
                module.createGetLocal(tempLocal.index, leftType.toNativeType())
              )
            );
          }
          rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType, rightStmts);
          rightFlow.freeScopedLocals();
          this.currentFlow = flow;

          expr = module.createIf(
            this.makeIsTrueish(leftExpr, leftType),
            rightExpr,
            retainLeftInElse
              ? this.makeRetain(
                  module.createGetLocal(tempLocal.index, leftType.toNativeType())
                )
              : module.createGetLocal(tempLocal.index, leftType.toNativeType())
          );
          if (leftAutoreleaseSkipped || rightAutoreleaseSkipped) this.skippedAutoreleases.add(expr);
          if (tempLocal) flow.freeTempLocal(tempLocal);

        // basic values can use more aggressive optimizations
        } else {

          let rightFlow = flow.fork();
          this.currentFlow = rightFlow;
          rightFlow.inheritNonnullIfTrue(leftExpr);
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT | contextualFlags);
          rightType = leftType;
          rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType);
          rightFlow.freeScopedLocals();
          this.currentFlow = flow;

          // simplify if only interested in true or false
          if (contextualType == Type.bool || contextualType == Type.void) {
            this.currentType = Type.bool;
            expr = module.createIf(
              this.makeIsTrueish(leftExpr, leftType),
              this.makeIsTrueish(rightExpr, rightType),
              module.createI32(0)
            );

          // simplify if cloning left without side effects is possible
          } else if (expr = module.cloneExpression(leftExpr, true, 0)) {
            expr = module.createIf(
              this.makeIsTrueish(leftExpr, this.currentType),
              rightExpr,
              expr
            );

          // if not possible, tee left to a temp
          } else {
            let tempLocal = flow.getTempLocal(leftType, !flow.canOverflow(leftExpr, leftType));
            expr = module.createIf(
              this.makeIsTrueish(module.createTeeLocal(tempLocal.index, leftExpr), leftType),
              rightExpr,
              module.createGetLocal(tempLocal.index, leftType.toNativeType())
            );
          }
        }
        break;
      }
      case Token.BAR_BAR: { // left || right -> ((t = left) ? t : right)
        let flow = this.currentFlow;
        leftExpr = this.compileExpressionRetainType(left, contextualType, contextualFlags);
        leftType = this.currentType;

        // references must properly retain and release, with the same outcome independent of the branch taken
        if (leftType.isManaged) {

          let leftAutoreleaseSkipped = this.skippedAutoreleases.has(leftExpr);
          let tempLocal = flow.getTempLocal(leftType, false);
          leftExpr = module.createTeeLocal(tempLocal.index, leftExpr);

          let rightFlow = flow.fork();
          this.currentFlow = rightFlow;
          rightFlow.inheritNonnullIfFalse(leftExpr);
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT | contextualFlags);
          rightType = leftType;
          let rightAutoreleaseSkipped = this.skippedAutoreleases.has(rightExpr);

          // instead of retaining left and releasing it again in right when right
          // is taken, we can also just retain left if right is not taken
          let retainLeftInThen = false;
          if (leftAutoreleaseSkipped != rightAutoreleaseSkipped) { // xor
            if (!leftAutoreleaseSkipped) {
              retainLeftInThen = true;
            } else {
              rightExpr = this.makeRetain(rightExpr);
              rightAutoreleaseSkipped = true;
            }
          } else if (!(contextualFlags & ContextualFlags.SKIP_AUTORELEASE)) { // otherwise keep right alive a little longer
            rightExpr = this.moveAutorelease(rightExpr, rightFlow, flow);
          }

          let rightStmts = new Array<ExpressionRef>();
          if (leftAutoreleaseSkipped) { // left turned out to be false'ish and is dropped
            // TODO: usually, false'ish means left is null, but this might not hold
            // once implicit conversion with strings is performed and left is "", so:
            rightStmts.unshift(
              this.makeRelease(
                module.createGetLocal(tempLocal.index, leftType.toNativeType())
              )
            );
          }
          rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType, rightStmts);
          rightFlow.freeScopedLocals();
          this.currentFlow = flow;

          expr = module.createIf(
            this.makeIsTrueish(leftExpr, leftType),
            retainLeftInThen
              ? this.makeRetain(
                  module.createGetLocal(tempLocal.index, leftType.toNativeType())
                )
              : module.createGetLocal(tempLocal.index, leftType.toNativeType()),
            rightExpr
          );
          if (leftAutoreleaseSkipped || rightAutoreleaseSkipped) this.skippedAutoreleases.add(expr);
          if (tempLocal) flow.freeTempLocal(tempLocal);

        // basic values can use more aggressive optimizations
        } else {

          let rightFlow = flow.fork();
          this.currentFlow = rightFlow;
          rightFlow.inheritNonnullIfFalse(leftExpr);
          rightExpr = this.compileExpression(right, leftType, ContextualFlags.IMPLICIT | contextualFlags);
          rightType = leftType;
          rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType);
          rightFlow.freeScopedLocals();
          this.currentFlow = flow;

          // simplify if only interested in true or false
          if (contextualType == Type.bool || contextualType == Type.void) {
            this.currentType = Type.bool;
            expr = module.createIf(
              this.makeIsTrueish(leftExpr, leftType),
              module.createI32(1),
              this.makeIsTrueish(rightExpr, rightType)
            );

          // simplify if cloning left without side effects is possible
          } else if (expr = module.cloneExpression(leftExpr, true, 0)) {
            expr = module.createIf(
              this.makeIsTrueish(leftExpr, this.currentType),
              expr,
              rightExpr
            );

          // if not possible, tee left to a temp. local
          } else {
            let tempLocal = flow.getAndFreeTempLocal(this.currentType, !flow.canOverflow(leftExpr, this.currentType));
            expr = module.createIf(
              this.makeIsTrueish(module.createTeeLocal(tempLocal.index, leftExpr), this.currentType),
              module.createGetLocal(tempLocal.index, this.currentType.toNativeType()),
              rightExpr
            );
          }
        }
        break;
      }
      default: {
        assert(false);
        expr = this.module.createUnreachable();
      }
    }
    if (!compound) return expr;
    var resolver = this.resolver;
    var target = this.resolver.resolveExpression(left, this.currentFlow);
    if (!target) return module.createUnreachable();
    return this.makeAssignment(
      target,
      expr, // TODO: delay release above if possible?
      left,
      resolver.currentThisExpression,
      resolver.currentElementExpression,
      contextualType != Type.void
    );
  }

  compileUnaryOverload(
    operatorInstance: Function,
    value: Expression,
    valueExpr: ExpressionRef,
    reportNode: Node
  ): ExpressionRef {
    // FIXME: see comment in compileBinaryOverload below why recompiling on type mismatch
    // is a bad idea currently. so this assumes that the type matches.
    return this.makeCallDirect(operatorInstance, [ valueExpr ], reportNode, false);
  }

  compileBinaryOverload(
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
    var rightExpr = this.compileExpression(right, rightType, ContextualFlags.IMPLICIT);
    return this.makeCallDirect(operatorInstance, [ leftExpr, rightExpr ], reportNode);
  }

  compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): ExpressionRef {
    var program = this.program;
    var resolver = program.resolver;
    var flow = this.currentFlow;
    var target = resolver.resolveExpression(expression, flow); // reports
    if (!target) return this.module.createUnreachable();
    var thisExpression = resolver.currentThisExpression;
    var elementExpression = resolver.currentElementExpression;

    // to compile just the value, we need to know the target's type
    var targetType: Type;
    switch (target.kind) {
      case ElementKind.GLOBAL: {
        // not yet compiled if a static field compiled as a global
        if (!this.compileGlobal(<Global>target)) return this.module.createUnreachable(); // reports
        // fall-through
      }
      case ElementKind.FIELD: {
        targetType = (<VariableLikeElement>target).type;
        break;
      }
      case ElementKind.LOCAL: {
        targetType = (<VariableLikeElement>target).type;
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: { // static property
        let setterPrototype = (<PropertyPrototype>target).setterPrototype;
        if (!setterPrototype) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, (<Property>target).internalName
          );
          return this.module.createUnreachable();
        }
        let setterInstance = this.resolver.resolveFunction(setterPrototype, null, makeMap(), ReportMode.REPORT);
        if (!setterInstance) return this.module.createUnreachable();
        assert(setterInstance.signature.parameterTypes.length == 1); // parser must guarantee this
        targetType = setterInstance.signature.parameterTypes[0];
        break;
      }
      case ElementKind.PROPERTY: { // instance property
        let setterInstance = (<Property>target).setterInstance;
        if (!setterInstance) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, (<Property>target).internalName
          );
          return this.module.createUnreachable();
        }
        assert(setterInstance.signature.parameterTypes.length == 1); // parser must guarantee this
        targetType = setterInstance.signature.parameterTypes[0];
        break;
      }
      case ElementKind.CLASS: {
        if (elementExpression) { // indexed access
          let isUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
          // if (isUnchecked) {
          //   let arrayType = this.program.determineBuiltinArrayType(<Class>target);
          //   if (arrayType) {
          //     return compileBuiltinArraySet(
          //       this,
          //       <Class>target,
          //       assert(this.resolver.currentThisExpression),
          //       elementExpression,
          //       valueExpression,
          //       contextualType
          //     );
          //   }
          // }
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
          targetType = indexedSet.signature.parameterTypes[1];     // 2nd parameter is the element
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
    return this.makeAssignment(
      target,
      this.compileExpression(valueExpression, targetType, ContextualFlags.IMPLICIT | ContextualFlags.SKIP_AUTORELEASE),
      expression,
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
        if (target.is(CommonFlags.CONST)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, target.internalName
          );
          this.currentType = tee ? (<Local>target).type : Type.void;
          return module.createUnreachable();
        }
        return this.makeLocalAssignment(<Local>target, valueExpr, tee, !flow.isNonnull(this.currentType, valueExpr));
      }
      case ElementKind.GLOBAL: {
        if (!this.compileGlobal(<Global>target)) return module.createUnreachable();
        if (target.is(CommonFlags.CONST)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range,
            target.internalName
          );
          this.currentType = tee ? (<Global>target).type : Type.void;
          return module.createUnreachable();
        }
        return this.makeGlobalAssignment(<Global>target, valueExpr, tee);
      }
      case ElementKind.FIELD: {
        let initializerNode = (<Field>target).initializerNode;
        if (
          (<Field>target).is(CommonFlags.READONLY) &&
          !(
            flow.actualFunction.is(CommonFlags.CONSTRUCTOR) ||
            initializerNode
          )
        ) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, (<Field>target).internalName
          );
          return module.createUnreachable();
        }
        return this.makeFieldAssignment(<Field>target,
          valueExpr,
          this.compileExpressionRetainType(
            assert(thisExpression),
            // FIXME: explicit type (currently fails due to missing null checking)
            this.options.usizeType
          ),
          tee
        );
      }
      case ElementKind.PROPERTY_PROTOTYPE: { // static property
        if (this.skippedAutoreleases.has(valueExpr)) valueExpr = this.makeAutorelease(valueExpr, flow); // (*)
        let setterPrototype = (<PropertyPrototype>target).setterPrototype;
        if (!setterPrototype) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, target.internalName
          );
          return module.createUnreachable();
        }
        let setterInstance = this.resolver.resolveFunction(setterPrototype, null, makeMap(), ReportMode.REPORT);
        if (!setterInstance) return module.createUnreachable();
        // call just the setter if the return value isn't of interest
        if (!tee) return this.makeCallDirect(setterInstance, [ valueExpr ], valueExpression);
        // otherwise call the setter first, then the getter
        let getterPrototype = assert((<PropertyPrototype>target).getterPrototype); // must be present
        let getterInstance = this.resolver.resolveFunction(getterPrototype, null, makeMap(), ReportMode.REPORT);
        if (!getterInstance) return module.createUnreachable();
        let returnType = getterInstance.signature.returnType;
        let nativeReturnType = returnType.toNativeType();
        return module.createBlock(null, [
          this.makeCallDirect(setterInstance, [ valueExpr ], valueExpression),
          this.makeCallDirect(getterInstance, null, valueExpression) // sets currentType
        ], nativeReturnType);
      }
      case ElementKind.PROPERTY: { // instance property
        if (this.skippedAutoreleases.has(valueExpr)) valueExpr = this.makeAutorelease(valueExpr, flow); // (*)
        let setterInstance = (<Property>target).setterInstance;
        if (!setterInstance) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, target.internalName
          );
          return module.createUnreachable();
        }
        // call just the setter if the return value isn't of interest
        if (!tee) {
          let thisExpr = this.compileExpressionRetainType(
            assert(thisExpression),
            this.options.usizeType
          );
          return this.makeCallDirect(setterInstance, [ thisExpr, valueExpr ], valueExpression);
        }
        // otherwise call the setter first, then the getter
        let getterInstance = assert((<Property>target).getterInstance); // must be present
        let returnType = getterInstance.signature.returnType;
        let nativeReturnType = returnType.toNativeType();
        let thisExpr = this.compileExpressionRetainType(
          assert(thisExpression),
          this.options.usizeType
        );
        let tempLocal = flow.getAndFreeTempLocal(returnType, false);
        let tempLocalIndex = tempLocal.index;
        return module.createBlock(null, [
          this.makeCallDirect(setterInstance, [ // set and remember the target
            module.createTeeLocal(tempLocalIndex, thisExpr),
            valueExpr
          ], valueExpression),
          this.makeCallDirect(getterInstance, [ // get from remembered target
            module.createGetLocal(tempLocalIndex, nativeReturnType)
          ], valueExpression)
        ], nativeReturnType);
      }
      case ElementKind.CLASS: {
        if (this.skippedAutoreleases.has(valueExpr)) valueExpr = this.makeAutorelease(valueExpr, flow); // (*)
        if (indexExpression) {
          let isUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
          let indexedGet = (<Class>target).lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
          if (!indexedGet) {
            this.error(
              DiagnosticCode.Index_signature_is_missing_in_type_0,
              valueExpression.range, target.internalName
            );
            return module.createUnreachable();
          }
          let indexedSet = (<Class>target).lookupOverload(OperatorKind.INDEXED_SET, isUnchecked);
          if (!indexedSet) {
            this.error(
              DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
              valueExpression.range, target.internalName
            );
            this.currentType = tee ? indexedGet.signature.returnType : Type.void;
            return module.createUnreachable();
          }
          let targetType = (<Class>target).type;
          let thisExpr = this.compileExpressionRetainType(
            assert(thisExpression),
            this.options.usizeType
          );
          let elementExpr = this.compileExpression(indexExpression, Type.i32, ContextualFlags.IMPLICIT);
          if (tee) {
            let tempLocalTarget = flow.getTempLocal(targetType, false);
            let tempLocalElement = flow.getAndFreeTempLocal(this.currentType, false);
            let returnType = indexedGet.signature.returnType;
            flow.freeTempLocal(tempLocalTarget);
            return module.createBlock(null, [
              this.makeCallDirect(indexedSet, [
                module.createTeeLocal(tempLocalTarget.index, thisExpr),
                module.createTeeLocal(tempLocalElement.index, elementExpr),
                valueExpr
              ], valueExpression),
              this.makeCallDirect(indexedGet, [
                module.createGetLocal(tempLocalTarget.index, tempLocalTarget.type.toNativeType()),
                module.createGetLocal(tempLocalElement.index, tempLocalElement.type.toNativeType())
              ], valueExpression)
            ], returnType.toNativeType());
          } else {
            return this.makeCallDirect(indexedSet, [
              thisExpr,
              elementExpr,
              valueExpr
            ], valueExpression);
          }
        }
        // fall-through
      }
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      valueExpression.range
    );
    return module.createUnreachable();
  }

  /** Makes an assignment to a local, possibly retaining and releasing affected references and keeping track of wrap and null states. */
  private makeLocalAssignment(
    /** The local to assign to. */
    local: Local,
    /** The value to assign. */
    valueExpr: ExpressionRef,
    /** Whether to tee the value. */
    tee: bool,
    /** Whether the value is possibly null. */
    possiblyNull: bool
  ): ExpressionRef {
    var type = local.type;
    assert(type != Type.void);
    var flow = this.currentFlow;
    var localIndex = local.index;

    if (type.is(TypeFlags.NULLABLE)) {
      if (possiblyNull) flow.unsetLocalFlag(localIndex, LocalFlags.NONNULL);
      else flow.setLocalFlag(localIndex, LocalFlags.NONNULL);
    }

    if (type.isManaged) {
      let module = this.module;
      let nativeType = type.toNativeType();

      if (flow.isAnyLocalFlag(localIndex, LocalFlags.ANY_RETAINED)) {
        if (this.skippedAutoreleases.has(valueExpr)) {
          if (tee) { // TEE(local = { __release(local), value })
            this.currentType = type;
            return module.createTeeLocal(localIndex,
              module.createBlock(null, [
                this.makeRelease(module.createGetLocal(localIndex, nativeType)),
                valueExpr
              ], nativeType)
            );
          } else { // local = { __release(local), value }
            this.currentType = Type.void;
            return module.createSetLocal(localIndex,
              module.createBlock(null, [
                this.makeRelease(module.createGetLocal(localIndex, nativeType)),
                valueExpr
              ], nativeType)
            );
          }
        } else {
          if (tee) { // TEE(local = {__retainRelease(value, local))
            this.currentType = type;
            return module.createTeeLocal(localIndex,
              this.makeRetainRelease(valueExpr, module.createGetLocal(localIndex, nativeType))
            );
          } else { // local = __retainRelease(value, local)
            this.currentType = Type.void;
            return module.createSetLocal(localIndex,
              this.makeRetainRelease(valueExpr, module.createGetLocal(localIndex, nativeType))
            );
          }
        }
      } else {
        flow.unsetLocalFlag(localIndex, LocalFlags.CONDITIONALLY_RETAINED);
        flow.setLocalFlag(localIndex, LocalFlags.RETAINED);
        if (tee) { // TEE(local = __retain(value, local))
          this.currentType = type;
          return module.createTeeLocal(localIndex,
            this.skippedAutoreleases.has(valueExpr)
              ? valueExpr
              : this.makeRetain(valueExpr)
          );
        } else { // local = __retain(value, local)
          this.currentType = Type.void;
          return module.createSetLocal(localIndex,
            this.skippedAutoreleases.has(valueExpr)
              ? valueExpr
              : this.makeRetain(valueExpr)
          );
        }
      }
    } else {
      if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
        if (!flow.canOverflow(valueExpr, type)) flow.setLocalFlag(localIndex, LocalFlags.WRAPPED);
        else flow.unsetLocalFlag(localIndex, LocalFlags.WRAPPED);
      }
      if (tee) { // TEE(local = value)
        this.currentType = type;
        return this.module.createTeeLocal(localIndex, valueExpr);
      } else { // local = value
        this.currentType = Type.void;
        return this.module.createSetLocal(localIndex, valueExpr);
      }
    }
  }

  /** Makes an assignment to a global, possibly retaining and releasing affected references. */
  private makeGlobalAssignment(
    /** The global to assign to. */
    global: Global,
    /** The value to assign. */
    valueExpr: ExpressionRef,
    /** Whether to tee the value. */
    tee: bool
  ): ExpressionRef {
    var module = this.module;
    var type = global.type;
    assert(type != Type.void);
    var nativeType = type.toNativeType();

    if (type.isManaged) {
      if (this.skippedAutoreleases.has(valueExpr)) {
        if (tee) { // (global = (__release(global), t1 = value)), t1
          let tempValue = this.currentFlow.getAndFreeTempLocal(type, true); // globals are wrapped
          this.currentType = type;
          return module.createBlock(null, [
            module.createSetGlobal(global.internalName,
              module.createBlock(null, [
                this.makeRelease(module.createGetGlobal(global.internalName, nativeType)),
                module.createTeeLocal(tempValue.index, valueExpr)
              ], nativeType)
            ),
            module.createGetLocal(tempValue.index, nativeType)
          ], nativeType);
        } else { // global = (__release(global), value)
          this.currentType = Type.void;
          return module.createSetGlobal(global.internalName,
            module.createBlock(null, [
              this.makeRelease(module.createGetGlobal(global.internalName, nativeType)),
              valueExpr
            ], nativeType)
          );
        }
      } else {
        if (tee) { // (global = __retainRelease(t1 = value, global)), t1
          let tempValue = this.currentFlow.getAndFreeTempLocal(type, true); // globals are wrapped
          this.currentType = type;
          return module.createBlock(null, [
            module.createSetGlobal(global.internalName,
              this.makeRetainRelease(
                module.createTeeLocal(tempValue.index, valueExpr),
                module.createGetGlobal(global.internalName, nativeType)
              )
            ),
            module.createGetLocal(tempValue.index, nativeType)
          ], nativeType);
        } else { // global = __retainRelease(value, global)
          this.currentType = Type.void;
          return module.createSetGlobal(global.internalName,
            this.makeRetainRelease(
              valueExpr,
              module.createGetGlobal(global.internalName, nativeType)
            )
          );
        }
      }
    } else {
      valueExpr = this.ensureSmallIntegerWrap(valueExpr, type); // globals must be wrapped
      if (tee) { // (global = (t1 = value)), t1
        let tempValue = this.currentFlow.getAndFreeTempLocal(type, true);
        this.currentType = type;
        return module.createBlock(null, [
          module.createSetGlobal(global.internalName,
            module.createTeeLocal(tempValue.index, valueExpr)
          ),
          module.createGetLocal(tempValue.index, nativeType)
        ], nativeType);
      } else { // global = value
        this.currentType = Type.void;
        return module.createSetGlobal(global.internalName,
          valueExpr
        );
      }
    }
  }

  /** Makes an assignment to a field, possibly retaining and releasing affected references. */
  makeFieldAssignment(
    /** The field to assign to. */
    field: Field,
    /** The value to assign. */
    valueExpr: ExpressionRef,
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

    if (fieldType.isManaged && thisType.isManaged) {
      let tempThis = flow.getTempLocal(thisType, false);
      if (this.skippedAutoreleases.has(valueExpr)) {
        if (tee) { // ((t1 = this).field = (__release(t1.field), t2 = value)), t2
          let tempValue = flow.getAndFreeTempLocal(fieldType, !flow.canOverflow(valueExpr, fieldType));
          flow.freeTempLocal(tempThis);
          this.currentType = fieldType;
          return module.createBlock(null, [
            module.createStore(fieldType.byteSize,
              module.createTeeLocal(tempThis.index, thisExpr),
              module.createBlock(null, [
                this.makeRelease(
                  module.createLoad(fieldType.byteSize, fieldType.is(TypeFlags.SIGNED), // oldRef
                    module.createGetLocal(tempThis.index, nativeThisType),
                    nativeFieldType, field.memoryOffset
                  )
                ),
                module.createTeeLocal(tempValue.index, valueExpr)
              ], nativeFieldType),
              nativeFieldType, field.memoryOffset
            ),
            module.createGetLocal(tempValue.index, nativeFieldType)
          ], nativeFieldType);
        } else { // (t1 = this).field = (__release(t1.field), value)
          flow.freeTempLocal(tempThis);
          this.currentType = Type.void;
          return module.createStore(fieldType.byteSize,
            module.createTeeLocal(tempThis.index, thisExpr),
            module.createBlock(null, [
              this.makeRelease(
                module.createLoad(fieldType.byteSize, fieldType.is(TypeFlags.SIGNED), // oldRef
                  module.createGetLocal(tempThis.index, nativeThisType),
                  nativeFieldType, field.memoryOffset
                )
              ),
              valueExpr
            ], nativeFieldType),
            nativeFieldType, field.memoryOffset
          );
        }
      } else {
        if (tee) { // ((t1 = this).field = __retainRelease(t2 = value, t1.field)), t2
          let tempValue = flow.getAndFreeTempLocal(fieldType, !flow.canOverflow(valueExpr, fieldType));
          flow.freeTempLocal(tempThis);
          this.currentType = fieldType;
          return module.createBlock(null, [
            module.createStore(fieldType.byteSize,
              module.createTeeLocal(tempThis.index, thisExpr),
              this.makeRetainRelease(
                module.createTeeLocal(tempValue.index, valueExpr), // newRef
                module.createLoad(fieldType.byteSize, fieldType.is(TypeFlags.SIGNED), // oldRef
                  module.createGetLocal(tempThis.index, nativeThisType),
                  nativeFieldType, field.memoryOffset
                )
              ),
              nativeFieldType, field.memoryOffset
            ),
            module.createGetLocal(tempValue.index, nativeFieldType)
          ], nativeFieldType);
        } else { // (t1 = this).field = __retainRelease(value, t1.field)
          flow.freeTempLocal(tempThis);
          this.currentType = Type.void;
          return module.createStore(fieldType.byteSize,
            module.createTeeLocal(tempThis.index, thisExpr),
            this.makeRetainRelease(
              valueExpr, // newRef
              module.createLoad(fieldType.byteSize, fieldType.is(TypeFlags.SIGNED), // oldRef
                module.createGetLocal(tempThis.index, nativeThisType),
                nativeFieldType, field.memoryOffset
              )
            ),
            nativeFieldType, field.memoryOffset
          );
        }
      }
    } else {
      if (tee) { // (this.field = (t1 = value)), t1
        let tempValue = flow.getAndFreeTempLocal(fieldType, !flow.canOverflow(valueExpr, fieldType));
        this.currentType = fieldType;
        return module.createBlock(null, [
          module.createStore(fieldType.byteSize,
            thisExpr,
            module.createTeeLocal(tempValue.index, valueExpr),
            nativeFieldType, field.memoryOffset
          ),
          module.createGetLocal(tempValue.index, nativeFieldType)
        ], nativeFieldType);
      } else { // this.field = value
        this.currentType = Type.void;
        return module.createStore(fieldType.byteSize,
          thisExpr,
          valueExpr,
          nativeFieldType, field.memoryOffset
        );
      }
    }
  }

  /** Compiles a call expression according to the specified context. */
  compileCallExpression(
    /** Call expression to compile. */
    expression: CallExpression,
    /** Contextual type indicating the return type the caller expects, if any. */
    contextualType: Type,
    /** Contextual flags indicating contextual conditions. */
    contextualFlags: ContextualFlags
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
        return module.createUnreachable();
      }

      let classInstance = assert(actualFunction.parent); assert(classInstance.kind == ElementKind.CLASS);
      let baseClassInstance = assert((<Class>classInstance).base);
      let thisLocal = assert(flow.lookupLocal(CommonSymbols.this_));
      let nativeSizeType = this.options.nativeSizeType;

      // {
      //   this = super(this || <ALLOC>, ...args)
      //   this.a = X
      //   this.b = Y
      // }
      let stmts: ExpressionRef[] = [
        module.createSetLocal(thisLocal.index,
          this.compileCallDirect(
            this.ensureConstructor(baseClassInstance, expression),
            expression.arguments,
            expression,
            module.createIf(
              module.createGetLocal(thisLocal.index, nativeSizeType),
              module.createGetLocal(thisLocal.index, nativeSizeType),
              this.makeRetain(
                this.makeAllocation(<Class>classInstance)
              )
            )
          )
        )
      ];
      this.makeFieldInitialization(<Class>classInstance, stmts);

      // check that super had been called before accessing allocating `this`
      if (flow.isAny(
        FlowFlags.ALLOCATES |
        FlowFlags.CONDITIONALLY_ALLOCATES
      )) {
        this.error(
          DiagnosticCode._super_must_be_called_before_accessing_this_in_the_constructor_of_a_derived_class,
          expression.range
        );
        return module.createUnreachable();
      }
      flow.set(FlowFlags.ALLOCATES | FlowFlags.CALLS_SUPER);
      this.currentType = Type.void;
      return module.createBlock(null, stmts);
    }

    // otherwise resolve normally
    var target = this.resolver.resolveExpression(expression.expression, flow); // reports
    if (!target) return module.createUnreachable();

    var signature: Signature | null;
    var indexArg: ExpressionRef;
    switch (target.kind) {

      // direct call: concrete function
      case ElementKind.FUNCTION_PROTOTYPE: {
        let prototype = <FunctionPrototype>target;
        let typeArguments = expression.typeArguments;

        // builtins handle present respectively omitted type arguments on their own
        if (prototype.hasDecorator(DecoratorFlags.BUILTIN)) {
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
          instance = this.resolver.resolveFunctionInclTypeArguments(
            prototype,
            typeArguments,
            flow.actualFunction.parent, // relative to caller
            makeMap<string,Type>(flow.contextualTypeArguments),
            expression
          );

        // infer generic call if type arguments have been omitted
        } else if (prototype.is(CommonFlags.GENERIC)) {
          let inferredTypes = new Map<string,Type | null>();
          let typeParameterNodes = assert(prototype.typeParameterNodes);
          let numTypeParameters = typeParameterNodes.length;
          for (let i = 0; i < numTypeParameters; ++i) {
            inferredTypes.set(typeParameterNodes[i].name.text, null);
          }
          // let numInferred = 0;
          let parameterNodes = prototype.signatureNode.parameters;
          let numParameters = parameterNodes.length;
          let argumentNodes = expression.arguments;
          let numArguments = argumentNodes.length;
          let argumentExprs = new Array<ExpressionRef>(numArguments);
          for (let i = 0; i < numParameters; ++i) {
            let typeNode = parameterNodes[i].type;
            let templateName = typeNode.kind == NodeKind.TYPE && !(<TypeNode>typeNode).name.next
              ? (<TypeNode>typeNode).name.identifier.text
              : null;
            let argumentExpression = i < numArguments
              ? argumentNodes[i]
              : parameterNodes[i].initializer;
            if (!argumentExpression) { // missing initializer -> too few arguments
              this.error(
                DiagnosticCode.Expected_0_arguments_but_got_1,
                expression.range, numParameters.toString(10), numArguments.toString(10)
              );
              return module.createUnreachable();
            }
            if (templateName !== null && inferredTypes.has(templateName)) {
              let inferredType = inferredTypes.get(templateName);
              if (inferredType) {
                argumentExprs[i] = this.compileExpressionRetainType(argumentExpression, inferredType);
                let commonType: Type | null;
                if (!(commonType = Type.commonDenominator(inferredType, this.currentType, true))) {
                  if (!(commonType = Type.commonDenominator(inferredType, this.currentType, false))) {
                    this.error(
                      DiagnosticCode.Type_0_is_not_assignable_to_type_1,
                      parameterNodes[i].type.range, this.currentType.toString(), inferredType.toString()
                    );
                    return module.createUnreachable();
                  }
                }
                inferredType = commonType;
              } else {
                argumentExprs[i] = this.compileExpressionRetainType(argumentExpression, Type.i32);
                inferredType = this.currentType;
                // ++numInferred;
              }
              inferredTypes.set(templateName, inferredType);
            } else {
              let concreteType = this.resolver.resolveType(
                parameterNodes[i].type,
                flow.actualFunction,
                flow.contextualTypeArguments
              );
              if (!concreteType) return module.createUnreachable();
              argumentExprs[i] = this.compileExpression(argumentExpression, concreteType, ContextualFlags.IMPLICIT);
            }
          }
          let resolvedTypeArguments = new Array<Type>(numTypeParameters);
          for (let i = 0; i < numTypeParameters; ++i) {
            let inferredType = assert(inferredTypes.get(typeParameterNodes[i].name.text)); // TODO
            resolvedTypeArguments[i] = inferredType;
          }
          instance = this.resolver.resolveFunction(
            prototype,
            resolvedTypeArguments,
            makeMap<string,Type>(flow.contextualTypeArguments)
          );
          if (!instance) return this.module.createUnreachable();
          return this.makeCallDirect(instance, argumentExprs, expression, contextualType == Type.void);
          // TODO: this skips inlining because inlining requires compiling its temporary locals in
          // the scope of the inlined flow. might need another mechanism to lock temp. locals early,
          // so inlining can be performed in `makeCallDirect` instead?

        // otherwise resolve the non-generic call as usual
        } else {
          instance = this.resolver.resolveFunction(prototype, null);
        }
        if (!instance) return this.module.createUnreachable();

        // compile 'this' expression if an instance method
        let thisExpr: ExpressionRef = 0;
        if (instance.is(CommonFlags.INSTANCE)) {
          thisExpr = this.compileExpressionRetainType(
            assert(this.resolver.currentThisExpression),
            this.options.usizeType
          );
        }

        return this.compileCallDirect(
          instance,
          expression.arguments,
          expression,
          thisExpr,
          false,
          contextualFlags
        );
      }

      // indirect call: index argument with signature (non-generic, can't be inlined)
      case ElementKind.LOCAL: {
        if (signature = (<Local>target).type.signatureReference) {
          if ((<Local>target).is(CommonFlags.INLINED)) {
            indexArg = module.createI32(i64_low((<Local>target).constantIntegerValue));
          } else {
            indexArg = module.createGetLocal((<Local>target).index, NativeType.I32);
          }
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
          let thisExpression = assert(this.resolver.currentThisExpression);
          let thisExpr = this.compileExpressionRetainType(
            thisExpression,
            this.options.usizeType
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
            expression.range, type.toString()
          );
          return module.createUnreachable();
        }
      }
      case ElementKind.FUNCTION_TARGET: {
        signature = (<FunctionTarget>target).signature;
        indexArg = this.compileExpression(expression.expression, (<FunctionTarget>target).type, ContextualFlags.IMPLICIT);
        break;
      }

      case ElementKind.PROPERTY_PROTOTYPE: { // static property
        let getterPrototype = assert((<PropertyPrototype>target).getterPrototype);
        let getterInstance = this.resolver.resolveFunction(getterPrototype, null);
        if (!getterInstance) return module.createUnreachable();
        indexArg = this.compileCallDirect(getterInstance, [], expression.expression);
        signature = this.currentType.signatureReference;
        if (!signature) {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, this.currentType.toString()
          );
          return module.createUnreachable();
        }
        break;
      }
      case ElementKind.PROPERTY: { // instance property
        let getterInstance = assert((<Property>target).getterInstance);
        indexArg = this.compileCallDirect(getterInstance, [], expression.expression,
          this.compileExpressionRetainType(
            assert(this.resolver.currentThisExpression),
            this.options.usizeType
          )
        );
        signature = this.currentType.signatureReference;
        if (!signature) {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, this.currentType.toString()
          );
          return module.createUnreachable();
        }
        break;
      }

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
        makeMap<string,Type>(this.currentFlow.contextualTypeArguments),
        expression
      );
    }

    // now compile the builtin, which usually returns a block of code that replaces the call.
    var expr = compileBuiltinCall(
      this,
      prototype,
      typeArguments,
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
    inlineCanAlias: bool = false,
    contextualFlags: ContextualFlags = ContextualFlags.NONE
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
      return this.module.createUnreachable();
    }

    // Inline if explicitly requested
    if (instance.hasDecorator(DecoratorFlags.INLINE)) {
      assert(!instance.is(CommonFlags.TRAMPOLINE)); // doesn't make sense
      if (this.currentInlineFunctions.includes(instance)) {
        this.warning(
          DiagnosticCode.Function_0_cannot_be_inlined_into_itself,
          reportNode.range, instance.internalName
        );
      } else {
        this.currentInlineFunctions.push(instance);
        let expr = this.compileCallInlinePrechecked(instance, argumentExpressions, thisArg, inlineCanAlias, (contextualFlags & ContextualFlags.WILL_DROP) != 0);
        this.currentInlineFunctions.pop();
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
        ContextualFlags.IMPLICIT
      );
    }
    assert(index == numArgumentsInclThis);
    if (signature.returnType.isManaged) {
      if (contextualFlags & ContextualFlags.WILL_DROP) {
        // Skip autorelease and simply release
        return this.makeCallDirect(instance, operands, reportNode, true);
      } else if (contextualFlags & ContextualFlags.SKIP_AUTORELEASE) {
        // Skip autorelease and remember
        let expr = this.makeCallDirect(instance, operands, reportNode, false, true);
        this.skippedAutoreleases.add(expr);
        return expr;
      } else {
        return this.makeCallDirect(instance, operands, reportNode, false, false);
      }
    }
    return this.makeCallDirect(instance, operands, reportNode,
      (contextualFlags & ContextualFlags.WILL_DROP) != 0
    );
  }

  compileCallInline(
    instance: Function,
    argumentExpressions: Expression[],
    thisArg: ExpressionRef,
    reportNode: Node,
    canAlias: bool = false
  ): ExpressionRef {
    var numArguments = argumentExpressions.length;
    var signature = instance.signature;
    if (!this.checkCallSignature( // reports
      signature,
      numArguments,
      thisArg != 0,
      reportNode
    )) {
      this.currentType = instance.signature.returnType;
      return this.module.createUnreachable();
    }
    return this.compileCallInlinePrechecked(instance, argumentExpressions, thisArg, canAlias);
  }

  private compileCallInlinePrechecked(
    instance: Function,
    argumentExpressions: Expression[],
    thisArg: ExpressionRef = 0,
    canAlias: bool = false,
    immediatelyDropped: bool = false
  ): ExpressionRef {
    var numArguments = argumentExpressions.length;
    var signature = instance.signature;
    var parameterTypes = signature.parameterTypes;
    assert(numArguments <= parameterTypes.length);
    var args = new Array<ExpressionRef>(numArguments);
    var flow = this.currentFlow;

    // compile arguments possibly using their own temp locals
    var temps = flow.blockLocalsBeforeInlining(instance);
    for (let i = 0; i < numArguments; ++i) {
      args[i] = this.compileExpression(argumentExpressions[i], parameterTypes[i],
        ContextualFlags.IMPLICIT
      );
    }
    flow.unblockLocals(temps);

    return this.makeCallInlinePrechecked(instance, args, thisArg, canAlias, immediatelyDropped);
  }

  makeCallInlinePrechecked(
    instance: Function,
    args: ExpressionRef[],
    thisArg: ExpressionRef = 0,
    canAlias: bool = false,
    immediatelyDropped: bool = false
  ): ExpressionRef {

    // CAUTION: Imagine a call like `theCall(a, b)`. Unless canAlias, inlining needs a temporary local for
    // each argument, looking something like `BLOCK { t1 = a, t2 = b, inlinedTheCall }`. Now, if argument b,
    // which is compiled beforehand, itself required a temporary local, it is likely that it did pick `t1`
    // for this, making it something like `BLOCK { t1 = a, t2 = (t1 = c, t1), inlinedTheCall }`, which is
    // overwriting t1. Hence, whenever makeCallInline is used, this condition must be taken into account.
    // Flows provide the helpers Flow#blockLocalsBeforeInlining and Flow#unblockLocals for this.

    var module = this.module;

    // Create a new inline flow and use it to compile the function as a block
    var previousFlow = this.currentFlow;
    var flow = Flow.createInline(previousFlow.parentFunction, instance);
    var body = [];

    // Convert provided call arguments to temporary locals
    if (thisArg) {
      let classInstance = assert(instance.parent); assert(classInstance.kind == ElementKind.CLASS);
      let thisType = assert(instance.signature.thisType);
      if (canAlias && getExpressionId(thisArg) == ExpressionId.GetLocal) {
        flow.addScopedAlias(CommonSymbols.this_, thisType, getGetLocalIndex(thisArg));
        let baseInstance = (<Class>classInstance).base;
        if (baseInstance) flow.addScopedAlias(CommonSymbols.super_, baseInstance.type, getGetLocalIndex(thisArg));
      } else {
        let thisLocal = flow.addScopedLocal(CommonSymbols.this_, thisType, false);
        // No need to retain `this` as it can't be reassigned and thus can't become prematurely released
        body.push(
          module.createSetLocal(thisLocal.index, thisArg)
        );
        let baseInstance = (<Class>classInstance).base;
        if (baseInstance) flow.addScopedAlias(CommonSymbols.super_, baseInstance.type, thisLocal.index);
      }
    } else {
      assert(!instance.signature.thisType);
    }
    var numArguments = args.length;
    var signature = instance.signature;
    var parameterTypes = signature.parameterTypes;
    for (let i = 0; i < numArguments; ++i) {
      let paramExpr = args[i];
      let paramType = parameterTypes[i];
      if (canAlias && getExpressionId(paramExpr) == ExpressionId.GetLocal) {
        flow.addScopedAlias(signature.getParameterName(i), paramType, getGetLocalIndex(paramExpr));
      } else {
        let argumentLocal = flow.addScopedLocal(
          signature.getParameterName(i),
          paramType,
          !previousFlow.canOverflow(paramExpr, paramType)
        );
        if (paramType.isManaged) {
          flow.setLocalFlag(argumentLocal.index, LocalFlags.RETAINED);
          body.push(
            module.createSetLocal(argumentLocal.index,
              this.makeRetain(paramExpr)
            )
          );
        } else {
          body.push(
            module.createSetLocal(argumentLocal.index, paramExpr)
          );
        }
      }
    }

    // Compile optional parameter initializers in the scope of the inlined flow
    this.currentFlow = flow;
    var numParameters = signature.parameterTypes.length;
    for (let i = numArguments; i < numParameters; ++i) {
      let initType = parameterTypes[i];
      let initExpr = this.compileExpression(
        assert(instance.prototype.signatureNode.parameters[i].initializer),
        initType,
        ContextualFlags.IMPLICIT
      );
      if (canAlias && getExpressionId(initExpr) == ExpressionId.GetLocal) {
        flow.addScopedAlias(signature.getParameterName(i), initType, getGetLocalIndex(initExpr));
      } else {
        let argumentLocal = flow.addScopedLocal(
          signature.getParameterName(i),
          initType,
          !flow.canOverflow(initExpr, initType)
        );
        if (initType.isManaged) {
          flow.setLocalFlag(argumentLocal.index, LocalFlags.RETAINED);
          body.push(
            module.createSetLocal(argumentLocal.index,
              this.makeRetain(initExpr)
            )
          );
        } else {
          body.push(
            module.createSetLocal(argumentLocal.index, initExpr)
          );
        }
      }
    }

    // Compile the called function's body in the scope of the inlined flow
    this.compileFunctionBody(instance, body);

    // Free any new scoped locals and reset to the original flow
    if (!flow.isAny(FlowFlags.ANY_TERMINATING)) this.performAutoreleases(flow, body);
    flow.freeScopedLocals();
    var returnType = flow.returnType;
    this.currentFlow = previousFlow;

    // Create an outer block that we can break to when returning a value out of order
    var expr = module.createBlock(flow.inlineReturnLabel, body, returnType.toNativeType());
    this.currentType = returnType;
    if (returnType.isManaged) {
      if (immediatelyDropped) {
        expr = this.makeRelease(expr);
        this.currentType = Type.void;
      } else {
        expr = this.makeAutorelease(expr);
      }
    }
    return expr;
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
    var originalParameterDeclarations = original.prototype.signatureNode.parameters;
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
    trampolineSignature.requiredParameters = maxArguments;
    trampolineSignature.parameterNames = originalSignature.parameterNames;
    trampoline = new Function(
      original.name + "|trampoline",
      original.prototype,
      trampolineSignature,
      original.contextualTypeArguments
    );
    trampoline.set(original.flags | CommonFlags.TRAMPOLINE | CommonFlags.COMPILED);
    original.trampoline = trampoline;

    // compile initializers of omitted arguments in scope of the trampoline function
    // this is necessary because initializers might need additional locals and a proper this context
    var previousFlow = this.currentFlow;
    this.currentFlow = trampoline.flow;

    // create a br_table switching over the number of optional parameters provided
    var numNames = numOptional + 1; // incl. outer block
    var names = new Array<string>(numNames);
    var ofN = "of" + numOptional.toString(10);
    for (let i = 0; i < numNames; ++i) {
      let label = i.toString(10) + ofN;
      names[i] = label;
    }
    var body = module.createBlock(names[0], [
      module.createBlock("outOfRange", [
        module.createSwitch(names, "outOfRange",
          // condition is number of provided optional arguments, so subtract required arguments
          minArguments
            ? module.createBinary(
                BinaryOp.SubI32,
                module.createGetGlobal(BuiltinSymbols.argc, NativeType.I32),
                module.createI32(minArguments)
              )
            : module.createGetGlobal(BuiltinSymbols.argc, NativeType.I32)
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
            ContextualFlags.IMPLICIT
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
    this.currentFlow = previousFlow;
    assert(operandIndex == maxOperands);

    var funcRef = module.addFunction(
      trampoline.internalName,
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
    if (!this.argcVar) {
      let module = this.module;
      this.argcVar = module.addGlobal(
        BuiltinSymbols.argc,
        NativeType.I32,
        true,
        module.createI32(0)
      );
    }
    return BuiltinSymbols.argc;
  }

  /** Makes sure that the argument count helper setter is present and returns its name. */
  private ensureArgcSet(): string {
    if (!this.argcSet) {
      let module = this.module;
      this.argcSet = module.addFunction(BuiltinSymbols.setargc,
        this.ensureFunctionType([ Type.u32 ], Type.void),
        null,
        module.createSetGlobal(this.ensureArgcVar(),
          module.createGetLocal(0, NativeType.I32)
        )
      );
      module.addFunctionExport(BuiltinSymbols.setargc, "$.setArgc");
    }
    return BuiltinSymbols.setargc;
  }

  // <reference-counting>

  /** Makes retain call, retaining the expression's value. */
  makeRetain(expr: ExpressionRef): ExpressionRef {
    this.runtimeFeatures |= RuntimeFeatures.retain;
    return this.module.createCall(this.program.retainInstance.internalName, [ expr ], this.options.nativeSizeType);
  }

  /** Makes a retainRelease call, retaining the new expression's value and releasing the old expression's value. */
  makeRetainRelease(exprNew: ExpressionRef, exprOld: ExpressionRef): ExpressionRef {
    this.runtimeFeatures |= RuntimeFeatures.retainRelease;
    return this.module.createCall(this.program.retainReleaseInstance.internalName, [ exprNew, exprOld ], this.options.nativeSizeType);
  }

  /** Makes a release call, releasing the expression's value. Changes the current type to void.*/
  makeRelease(expr: ExpressionRef): ExpressionRef {
    this.runtimeFeatures |= RuntimeFeatures.release;
    return this.module.createCall(this.program.releaseInstance.internalName, [ expr ], NativeType.None);
  }

  /** Makes an automatic release call at the end of the current flow. */
  makeAutorelease(expr: ExpressionRef, flow: Flow = this.currentFlow): ExpressionRef {
    return this.module.createTeeLocal(flow.getAutoreleaseLocal(this.options.usizeType).index, expr);
  }

  /** Attempts to undo a final autorelease, returning the index of the previously retaining variable or -1 if not possible. */
  undoAutorelease(expr: ExpressionRef, flow: Flow): i32 {
    // NOTE: Can't remove the local.tee completely because it's already compiled
    // and a child of something else. Preventing the final release however should
    // make it optimize away.
    switch (getExpressionId(expr)) {
      case ExpressionId.SetLocal: { // local.tee(__retain(expr))
        if (isTeeLocal(expr)) {
          let index = getSetLocalIndex(expr);
          if (flow.isAnyLocalFlag(index, LocalFlags.ANY_RETAINED)) {
            // Assumes that the expression actually belongs to the flow and that
            // top-level autoreleases are never undone. While that's true, it's
            // not necessary to check presence in scopedLocals.
            flow.unsetLocalFlag(index, LocalFlags.ANY_RETAINED);
            return index;
          }
        }
        break;
      }
      case ExpressionId.Block: { // { ..., local.tee(__retain(expr)) }
        if (getBlockName(expr) === null) { // must not be a break target
          let count = getBlockChildCount(expr);
          if (count) {
            return this.undoAutorelease(getBlockChild(expr, count - 1), flow);
          }
        }
        break;
      }
    }
    return -1;
  }

  /**
   * Attemps to move a final autorelease from one flow to a parent.
   * It is crucial that from flow hasn't processed autoreleases yet because otherwise the final
   * retain would have been written already.
   */
  moveAutorelease(expr: ExpressionRef, fromInnerFlow: Flow, toOuterFlow: Flow): ExpressionRef {
    // NOTE: While this avoids an unnecessary set of retain and release, it cannot
    // eliminate the now unnecessary temporary local.tee because it is already part of
    // another expression in the tree. But optimizing should collapse locals again.
    var index = this.undoAutorelease(expr, fromInnerFlow);
    return ~index
      ? this.makeAutorelease(expr, toOuterFlow) // undone, can skip the retain
      : this.makeAutorelease(this.makeRetain(expr), toOuterFlow);
  }

  /** Performs any queued autoreleases in the specified flow. */
  performAutoreleases(flow: Flow, stmts: ExpressionRef[], clearFlags: bool = true): void {
    var scopedLocals = flow.scopedLocals;
    if (scopedLocals) {
      let module = this.module;
      for (let local of scopedLocals.values()) {
        if (local.is(CommonFlags.SCOPED)) { // otherwise an alias
          let localIndex = local.index;
          if (flow.isAnyLocalFlag(localIndex, LocalFlags.ANY_RETAINED)) {
            if (clearFlags) flow.unsetLocalFlag(localIndex, LocalFlags.ANY_RETAINED);
            stmts.push(
              this.makeRelease(
                module.createGetLocal(localIndex, local.type.toNativeType())
              )
            );
          }
        }
      }
    }
  }

  /** Performs any queued autoreleases in the specified flow and returns the value. */
  performAutoreleasesWithValue(
    flow: Flow,
    valueExpr: ExpressionRef,
    valueType: Type,
    stmts: ExpressionRef[] | null = null,
    clearFlags: bool = true
  ): ExpressionRef {
    if (!stmts) stmts = new Array<ExpressionRef>();
    stmts.push(
      this.module.createNop()
    );
    var lengthBefore = stmts.length;
    this.performAutoreleases(flow, stmts, clearFlags);
    if (stmts.length > lengthBefore) {
      let nativeType = valueType.toNativeType();
      let temp = flow.getAndFreeTempLocal(valueType, !flow.canOverflow(valueExpr, valueType));
      let module = this.module;
      stmts[lengthBefore - 1] = module.createSetLocal(temp.index, valueExpr); // nop -> set
      stmts.push(
        module.createGetLocal(temp.index, nativeType) // append get
      );
      return module.createBlock(null, stmts, nativeType);
    } else if (stmts.length > 1) {
      stmts[lengthBefore - 1] = valueExpr; // nop -> value
      return this.module.createBlock(null, stmts, valueType.toNativeType());
    }
    return valueExpr;
  }

  /** Finishes any queued top-level autoreleases in the actual function of the specified flow. */
  finishAutoreleases(flow: Flow, stmts: ExpressionRef[]): void {
    var module = this.module;
    for (let local of flow.actualFunction.localsByIndex) {
      let localIndex = local.index;
      if (flow.isAnyLocalFlag(localIndex, LocalFlags.ANY_RETAINED)) {
        flow.unsetLocalFlag(localIndex, LocalFlags.ANY_RETAINED);
        stmts.push(
          this.makeRelease(
            module.createGetLocal(localIndex, local.type.toNativeType())
          )
        );
      }
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
      this.warning(
        DiagnosticCode.TODO_Cannot_inline_inferred_calls_and_specific_internals_yet,
        reportNode.range, instance.internalName
      );
    }
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
      let parameterNodes = instance.prototype.signatureNode.parameters;
      assert(parameterNodes.length == parameterTypes.length);
      let allOptionalsAreConstant = true;
      for (let i = numArguments; i < maxArguments; ++i) {
        let initializer = parameterNodes[i].initializer;
        if (initializer) {
          let resolved: Element | null;
          if (
            nodeIsConstantValue(initializer.kind) ||
            (
              (resolved = this.resolver.resolveExpression(initializer, instance.flow, parameterTypes[i])) &&
              (
                resolved.kind == ElementKind.GLOBAL
                // resolved.kind == ElementKind.FUNCTION_TARGET
              )
            )
          ) { // inline into the call
            let previousFlow = this.currentFlow;
            this.currentFlow = instance.flow;
            operands.push(this.compileExpression(
              <Expression>parameterNodes[i].initializer,
              parameterTypes[i],
              ContextualFlags.IMPLICIT
            ));
            this.currentFlow = previousFlow;
            continue;
          }
        }
        operands.push(parameterTypes[i].toNativeZero(module));
        allOptionalsAreConstant = false;
      }
      if (!allOptionalsAreConstant) {
        if (!isCallImport) {
          let original = instance;
          instance = this.ensureTrampoline(instance);
          if (!this.compileFunction(instance)) return module.createUnreachable();
          instance.flow.flags = original.flow.flags;
          let nativeReturnType = returnType.toNativeType();
          let expr = module.createCall(instance.internalName, operands, nativeReturnType);
          this.currentType = returnType;
          if (returnType.isManaged) {
            if (immediatelyDropped) {
              expr = this.makeRelease(expr);
              this.currentType = Type.void;
            } else if (!skipAutorelease) {
              expr = this.makeAutorelease(expr);
            } else {
              this.skippedAutoreleases.add(expr);
            }
          }
          return module.createBlock(null, [
            module.createSetGlobal(this.ensureArgcVar(), module.createI32(numArguments)),
            expr
          ], this.currentType.toNativeType());
        }
      }
    }

    // If the return value is of a reference type it has not yet been released but is in flight
    // which is equivalent to a skipped autorelease. Hence, insert either a release if it is
    // dropped anyway, preserve the skipped autorelease if explicitly requested or autorelease now.
    var expr = module.createCall(instance.internalName, operands, returnType.toNativeType());
    this.currentType = returnType;
    if (returnType.isManaged) {
      if (immediatelyDropped) {
        expr = this.makeRelease(expr);
        this.currentType = Type.void;
      } else if (!skipAutorelease) {
        expr = this.makeAutorelease(expr);
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
      operands[index] = this.compileExpression(argumentExpressions[i], parameterTypes[i],
        ContextualFlags.IMPLICIT
      );
    }
    assert(index == numArgumentsInclThis);
    return this.makeCallIndirect(signature, indexArg, operands, immediatelyDropped);
  }

  /** Creates an indirect call to the function at `indexArg` in the function table. */
  makeCallIndirect(
    signature: Signature,
    indexArg: ExpressionRef,
    operands: ExpressionRef[] | null = null,
    immediatelyDropped: bool = false
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
    var expr = module.createCallIndirect(indexArg, operands, signature.toSignatureString());
    this.currentType = returnType;
    if (returnType.isManaged) {
      if (immediatelyDropped) {
        expr = this.makeRelease(expr);
        this.currentType = Type.void;
      } else {
        expr = this.makeAutorelease(expr);
      }
    }
    return module.createBlock(null, [
      module.createSetGlobal(this.ensureArgcVar(), // might be calling a trampoline
        module.createI32(numArguments)
      ),
      expr
    ], this.currentType.toNativeType()); // not necessarily wrapped
  }

  compileCommaExpression(
    expression: CommaExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var expressions = expression.expressions;
    var numExpressions = expressions.length;
    var exprs = new Array<ExpressionRef>(numExpressions--);
    for (let i = 0; i < numExpressions; ++i) {
      exprs[i] = this.compileExpression(expressions[i], Type.void, // drop all except last
        ContextualFlags.IMPLICIT | ContextualFlags.WILL_DROP
      );
    }
    exprs[numExpressions] = this.compileExpression(expressions[numExpressions], contextualType, contextualFlags);
    return this.module.createBlock(null, exprs, this.currentType.toNativeType());
  }

  compileElementAccessExpression(
    expression: ElementAccessExpression, 
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var target = this.resolver.resolveElementAccessExpression(
      expression,
      this.currentFlow,
      contextualType
    ); // reports
    if (!target) return this.module.createUnreachable();
    switch (target.kind) {
      case ElementKind.CLASS: {
        let indexedGet = (<Class>target).lookupOverload(OperatorKind.INDEXED_GET, this.currentFlow.is(FlowFlags.UNCHECKED_CONTEXT));
        if (!indexedGet) {
          this.error(
            DiagnosticCode.Index_signature_is_missing_in_type_0,
            expression.expression.range, (<Class>target).internalName
          );
          return this.module.createUnreachable();
        }
        let thisArg = this.compileExpression(expression.expression, (<Class>target).type,
          ContextualFlags.IMPLICIT
        );
        return this.compileCallDirect(indexedGet, [
          expression.elementExpression
        ], expression, thisArg, false, contextualFlags & (ContextualFlags.WILL_DROP | ContextualFlags.SKIP_AUTORELEASE));
      }
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      expression.range
    );
    return this.module.createUnreachable();
  }

  compileFunctionExpression(
    expression: FunctionExpression,
    contextualSignature: Signature | null,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var declaration = expression.declaration.clone(); // generic contexts can have multiple
    assert(!declaration.typeParameters); // function expression cannot be generic
    var flow = this.currentFlow;
    var actualFunction = flow.actualFunction;
    var prototype = new FunctionPrototype(
      declaration.name.text.length
        ? declaration.name.text
        : "anonymous|" + (actualFunction.nextAnonymousId++).toString(10),
      actualFunction,
      declaration,
      DecoratorFlags.NONE
    );
    var instance: Function | null;
    var contextualTypeArguments = makeMap(flow.contextualTypeArguments);

    // compile according to context. this differs from a normal function in that omitted parameter
    // and return types can be inferred and omitted arguments can be replaced with dummies.
    if (contextualSignature) {
      let signatureNode = prototype.signatureNode;
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
        return this.module.createUnreachable();
      }

      // check non-omitted parameter types
      let parameterNames = new Array<string>(numPresentParameters);
      for (let i = 0; i < numPresentParameters; ++i) {
        let parameterNode = parameterNodes[i];
        parameterNames[i] = parameterNode.name.text; // use actual name
        if (!isTypeOmitted(parameterNode.type)) {
          let resolvedType = this.resolver.resolveType(
            parameterNode.type,
            actualFunction.parent,
            contextualTypeArguments
          );
          if (!resolvedType) return this.module.createUnreachable();
          if (!parameterTypes[i].isStrictlyAssignableTo(resolvedType)) {
            this.error(
              DiagnosticCode.Type_0_is_not_assignable_to_type_1,
              parameterNode.range, parameterTypes[i].toString(), resolvedType.toString()
            );
            return this.module.createUnreachable();
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
        if (!resolvedType) return this.module.createUnreachable();
        if (
          returnType == Type.void
            ? resolvedType != Type.void
            : !resolvedType.isStrictlyAssignableTo(returnType)
        ) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            signatureNode.returnType.range, resolvedType.toString(), returnType.toString()
          );
          return this.module.createUnreachable();
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
          return this.module.createUnreachable();
        }
        let resolvedType = this.resolver.resolveType(
          thisTypeNode,
          actualFunction.parent,
          contextualTypeArguments
        );
        if (!resolvedType) return this.module.createUnreachable();
        if (!thisType.isStrictlyAssignableTo(resolvedType)) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            thisTypeNode.range, thisType.toString(), resolvedType.toString()
          );
          return this.module.createUnreachable();
        }
      }

      let signature = new Signature(parameterTypes, returnType, thisType);
      signature.requiredParameters = numParameters; // !
      signature.parameterNames = parameterNames;
      instance = new Function(
        prototype.name,
        prototype,
        signature,
        contextualTypeArguments
      );
      if (!this.compileFunction(instance)) return this.module.createUnreachable();
      this.currentType = contextualSignature.type;

    // otherwise compile like a normal function
    } else {
      instance = this.compileFunctionUsingTypeArguments(
        prototype,
        [],
        contextualTypeArguments
      );
      if (!instance) return this.module.createUnreachable();
      this.currentType = instance.signature.type;
    }

    var index = this.ensureFunctionTableEntry(instance); // reports
    return index < 0
      ? this.module.createUnreachable()
      : this.module.createI32(index);
  }

  /** Makes sure the enclosing source file of the specified expression has been compiled. */
  private maybeCompileEnclosingSource(expression: Expression): void {
    var internalPath = expression.range.source.internalPath;
    var filesByName = this.program.filesByName;
    assert(filesByName.has(internalPath));
    var enclosingFile = filesByName.get(internalPath)!;
    if (!enclosingFile.is(CommonFlags.COMPILED)) {
      this.compileFileByPath(internalPath, expression);
    }
  }

  /**
   * Compiles an identifier in the specified context.
   * @param retainConstantType Retains the type of inlined constants if `true`, otherwise
   *  precomputes them according to context.
   */
  compileIdentifierExpression(
    expression: IdentifierExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var actualFunction = flow.actualFunction;

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
        if (actualFunction.is(CommonFlags.INSTANCE)) {
          let thisLocal = assert(flow.lookupLocal(CommonSymbols.this_));
          let classInstance = assert(actualFunction.parent); assert(classInstance.kind == ElementKind.CLASS);
          let nativeSizeType = this.options.nativeSizeType;
          if (actualFunction.is(CommonFlags.CONSTRUCTOR)) {
            if (!flow.is(FlowFlags.ALLOCATES)) {
              flow.set(FlowFlags.ALLOCATES);
              // {
              //   if (!this) this = <ALLOC>
              //   this.a = X
              //   this.b = Y
              //   return this
              // }
              let stmts: ExpressionRef[] = [
                module.createIf(
                  module.createUnary(nativeSizeType == NativeType.I64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
                    module.createGetLocal(thisLocal.index, nativeSizeType)
                  ),
                  module.createSetLocal(thisLocal.index,
                    this.makeRetain(
                      this.makeAllocation(<Class>classInstance)
                    )
                  )
                )
              ];
              this.makeFieldInitialization(<Class>classInstance, stmts);
              stmts.push(
                module.createGetLocal(thisLocal.index, nativeSizeType)
              );
              this.currentType = thisLocal.type;
              return module.createBlock(null, stmts, nativeSizeType);
            }
          }
          // if not a constructor, `this` type can differ
          let thisType = assert(actualFunction.signature.thisType);
          this.currentType = thisType;
          return module.createGetLocal(thisLocal.index, thisType.toNativeType());
        }
        this.error(
          DiagnosticCode._this_cannot_be_referenced_in_current_location,
          expression.range
        );
        this.currentType = this.options.usizeType;
        return module.createUnreachable();
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
        if (flow.is(FlowFlags.INLINE_CONTEXT)) {
          let scopedThis = flow.lookupLocal(CommonSymbols.this_);
          if (scopedThis) {
            let scopedThisClass = assert(scopedThis.type.classReference);
            let base = scopedThisClass.base;
            if (base) {
              this.currentType = base.type;
              return module.createGetLocal(scopedThis.index, base.type.toNativeType());
            }
          }
        }
        if (actualFunction.is(CommonFlags.INSTANCE)) {
          let classInstance = assert(actualFunction.parent); assert(classInstance.kind == ElementKind.CLASS);
          let baseClassInstance = (<Class>classInstance).base;
          if (baseClassInstance) {
            let superType = baseClassInstance.type;
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

    this.maybeCompileEnclosingSource(expression);

    // otherwise resolve
    var target = this.resolver.resolveIdentifier( // reports
      expression,
      flow,
      this.currentEnum || actualFunction
    );
    if (!target) return module.createUnreachable();

    switch (target.kind) {
      case ElementKind.LOCAL: {
        let localType = (<Local>target).type;
        assert(localType != Type.void);
        if ((<Local>target).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Local>target, contextualType, contextualFlags);
        }
        let localIndex = (<Local>target).index;
        assert(localIndex >= 0);
        if (localType.is(TypeFlags.NULLABLE) && flow.isLocalFlag(localIndex, LocalFlags.NONNULL, false)) {
          localType = localType.nonNullableType;
        }
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
          return this.compileInlineConstant(<Global>target, contextualType, contextualFlags);
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
          assert((<EnumValue>target).constantValueKind == ConstantValueKind.INTEGER);
          return this.module.createI32(i64_low((<EnumValue>target).constantIntegerValue));
        }
        return this.module.createGetGlobal((<EnumValue>target).internalName, NativeType.I32);
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        let instance = this.resolver.resolveFunction(
          <FunctionPrototype>target,
          null,
          makeMap<string,Type>(flow.contextualTypeArguments)
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
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var module = this.module;
    // NOTE that this differs from TypeScript in that the rhs is a type, not an expression. at the
    // time of implementation, this seemed more useful because dynamic rhs expressions are not
    // possible in AS anyway. also note that the code generated below must preserve side-effects of
    // the LHS expression even when the result is a constant, i.e. return a block dropping `expr`.
    var expr = this.compileExpressionRetainType(expression.expression, this.options.usizeType);
    var actualType = this.currentType;
    var expectedType = this.resolver.resolveType(expression.isType, this.currentFlow.actualFunction);
    this.currentType = Type.bool;
    if (!expectedType) return module.createUnreachable();

    // instanceof <basic> - must be exact
    if (!expectedType.is(TypeFlags.REFERENCE)) {
      return module.createBlock(null, [
        this.convertExpression(expr, actualType, Type.void, (contextualFlags & ContextualFlags.EXPLICIT) != 0, false, expression.expression),
        module.createI32(actualType == expectedType ? 1 : 0)
      ], NativeType.I32);
    }

    // <basic> instanceof <reference> - always false
    if (!actualType.is(TypeFlags.REFERENCE)) {
      return module.createBlock(null, [
        this.convertExpression(expr, actualType, Type.void, (contextualFlags & ContextualFlags.EXPLICIT) != 0,false, expression.expression),
        module.createI32(0)
      ], NativeType.I32);
    }

    // both LHS and RHS are references now
    var nativeSizeType = actualType.toNativeType();

    // <nullable> instanceof <nonNullable> - LHS must be != 0
    if (actualType.is(TypeFlags.NULLABLE) && !expectedType.is(TypeFlags.NULLABLE)) {

      // downcast - check statically
      if (actualType.nonNullableType.isAssignableTo(expectedType)) {
        return module.createBinary(
          nativeSizeType == NativeType.I64
            ? BinaryOp.NeI64
            : BinaryOp.NeI32,
          expr,
          actualType.toNativeZero(module)
        );
      }

      // upcast - check dynamically
      if (expectedType.isAssignableTo(actualType)) {
        let program = this.program;
        if (!(actualType.isUnmanaged || expectedType.isUnmanaged)) {
          let flow = this.currentFlow;
          let tempLocal = flow.getAndFreeTempLocal(actualType, false);
          let instanceofInstance = assert(program.instanceofInstance);
          this.compileFunction(instanceofInstance);
          return module.createIf(
            module.createUnary(
              nativeSizeType == NativeType.I64
                ? UnaryOp.EqzI64
                : UnaryOp.EqzI32,
              module.createTeeLocal(tempLocal.index, expr),
            ),
            module.createI32(0),
            this.makeCallDirect(instanceofInstance, [
              module.createGetLocal(tempLocal.index, nativeSizeType),
              module.createI32(expectedType.classReference!.id)
            ], expression)
          );
        } else {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
        }
      }

    // either none or both nullable
    } else {

      // downcast - check statically
      if (actualType.isAssignableTo(expectedType)) {
        return module.createBlock(null, [
          this.convertExpression(expr, actualType, Type.void, (contextualFlags & ContextualFlags.EXPLICIT) != 0, false, expression.expression),
          module.createI32(1)
        ], NativeType.I32);

      // upcast - check dynamically
      } else if (expectedType.isAssignableTo(actualType)) {
        let program = this.program;
        if (!(actualType.isUnmanaged || expectedType.isUnmanaged)) {
          // FIXME: the temp local and the if can be removed here once flows
          // perform null checking, which would error earlier when checking
          // uninitialized (thus zero) `var a: A` to be an instance of something.
          let flow = this.currentFlow;
          let tempLocal = flow.getAndFreeTempLocal(actualType, false);
          let instanceofInstance = assert(program.instanceofInstance);
          this.compileFunction(instanceofInstance);
          return module.createIf(
            module.createUnary(
              nativeSizeType == NativeType.I64
                ? UnaryOp.EqzI64
                : UnaryOp.EqzI32,
              module.createTeeLocal(tempLocal.index, expr),
            ),
            module.createI32(0),
            this.makeCallDirect(instanceofInstance, [
              module.createGetLocal(tempLocal.index, nativeSizeType),
              module.createI32(expectedType.classReference!.id)
            ], expression)
          );
        } else {
          this.error(
            DiagnosticCode.Operation_not_supported,
            expression.range
          );
        }
      }
    }

    // false
    return module.createBlock(null, [
      this.convertExpression(expr, actualType, Type.void, (contextualFlags & ContextualFlags.EXPLICIT) != 0, false, expression.expression),
      module.createI32(0)
    ], NativeType.I32);
  }

  compileLiteralExpression(
    expression: LiteralExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags,
    implicitlyNegate: bool = false
  ): ExpressionRef {
    var module = this.module;
    switch (expression.literalKind) {
      case LiteralKind.ARRAY: {
        assert(!implicitlyNegate);
        let classType = contextualType.classReference;
        if (classType) {
          if (classType.prototype == this.program.arrayPrototype) {
            return this.compileArrayLiteral(
              assert(classType.typeArguments)[0],
              (<ArrayLiteralExpression>expression).elementExpressions,
              false, // TODO: isConst?
              contextualFlags,
              expression
            );
          }
        }
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
        return module.createUnreachable();
      }
      case LiteralKind.FLOAT: {
        let floatValue = (<FloatLiteralExpression>expression).value;
        if (implicitlyNegate) {
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
        if (implicitlyNegate) {
          intValue = i64_sub(
            i64_new(0),
            intValue
          );
        }
        let type = this.resolver.determineIntegerLiteralType(intValue, contextualType);
        this.currentType = type;
        switch (type.kind) {
          case TypeKind.ISIZE: if (!this.options.isWasm64) return module.createI32(i64_low(intValue));
          case TypeKind.I64: return module.createI64(i64_low(intValue), i64_high(intValue));
          case TypeKind.USIZE: if (!this.options.isWasm64) return module.createI32(i64_low(intValue));
          case TypeKind.U64: return module.createI64(i64_low(intValue), i64_high(intValue));
          case TypeKind.F32: return module.createF32(i64_to_f32(intValue));
          case TypeKind.F64: return module.createF64(i64_to_f64(intValue));
          default: return module.createI32(i64_low(intValue));
        }
      }
      case LiteralKind.STRING: {
        assert(!implicitlyNegate);
        return this.compileStringLiteral(<StringLiteralExpression>expression);
      }
      case LiteralKind.OBJECT: {
        assert(!implicitlyNegate);
        return this.compileObjectLiteral(<ObjectLiteralExpression>expression, contextualType);
      }
      // case LiteralKind.REGEXP:
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      expression.range
    );
    this.currentType = contextualType;
    return module.createUnreachable();
  }

  compileStringLiteral(expression: StringLiteralExpression): ExpressionRef {
    return this.ensureStaticString(expression.value);
  }

  compileArrayLiteral(
    elementType: Type,
    expressions: (Expression | null)[],
    isConst: bool,
    contextualFlags: ContextualFlags,
    reportNode: Node
  ): ExpressionRef {
    var module = this.module;
    var program = this.program;
    var arrayPrototype = assert(program.arrayPrototype);
    var arrayInstance = assert(this.resolver.resolveClass(arrayPrototype, [ elementType ]));
    var arrayBufferInstance = assert(program.arrayBufferInstance);
    var arrayType = arrayInstance.type;
    var flow = this.currentFlow;

    // block those here so compiling expressions doesn't conflict
    var tempThis = flow.getTempLocal(arrayType, false);
    var tempDataStart = flow.getTempLocal(arrayBufferInstance.type);

    // compile value expressions and find out whether all are constant
    var length = expressions.length;
    var values = new Array<ExpressionRef>(length);
    var allValuesAreConstant = true;
    var nativeElementType = elementType.toNativeType();
    for (let i = 0; i < length; ++i) {
      let expression = expressions[i];
      let expr = expression
        ? module.precomputeExpression(
            this.compileExpression(<Expression>expression, elementType,
              ContextualFlags.IMPLICIT
            )
          )
        : elementType.toNativeZero(module);
      if (getExpressionId(expr) == ExpressionId.Const) {
        assert(getExpressionType(expr) == nativeElementType);
      } else {
        if (isConst) {
          this.warning(
            DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable,
            reportNode.range
          );
        }
        allValuesAreConstant = false;
      }
      values[i] = expr;
    }

    // if the array is static, make a static arraybuffer segment
    if (allValuesAreConstant) {
      flow.freeTempLocal(tempThis);
      flow.freeTempLocal(tempDataStart);

      let runtimeHeaderSize = program.runtimeHeaderSize;
      let bufferSegment = this.ensureStaticArrayBuffer(elementType, values);
      let bufferAddress = i64_add(bufferSegment.offset, i64_new(runtimeHeaderSize));

      // make both the buffer and array header static if assigned to a global. this can't be done
      // if inside of a function because each invocation must create a new array reference then.
      if (contextualFlags & ContextualFlags.STATIC_CAPABLE) {
        let arraySegment = this.ensureStaticArrayHeader(elementType, bufferSegment);
        let arrayAddress = i64_add(arraySegment.offset, i64_new(runtimeHeaderSize));
        this.currentType = arrayType;
        return program.options.isWasm64
          ? this.module.createI64(i64_low(arrayAddress), i64_high(arrayAddress))
          : this.module.createI32(i64_low(arrayAddress));

      // otherwise allocate a new array header and make it wrap a copy of the static buffer
      } else {
        // makeArray(length, alignLog2, classId, staticBuffer)
        let expr = this.makeCallDirect(program.allocArrayInstance, [
          module.createI32(length),
          program.options.isWasm64
            ? module.createI64(elementType.alignLog2)
            : module.createI32(elementType.alignLog2),
          module.createI32(arrayInstance.id),
          program.options.isWasm64
            ? module.createI64(i64_low(bufferAddress), i64_high(bufferAddress))
            : module.createI32(i64_low(bufferAddress))
        ], reportNode);
        this.currentType = arrayType;
        return this.makeAutorelease(this.makeRetain(expr));
      }
    }

    // otherwise compile an explicit instantiation with indexed sets
    var setter = arrayInstance.lookupOverload(OperatorKind.INDEXED_SET, true);
    if (!setter) {
      flow.freeTempLocal(tempThis);
      flow.freeTempLocal(tempDataStart);
      this.error(
        DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
        reportNode.range, arrayInstance.internalName
      );
      this.currentType = arrayType;
      return module.createUnreachable();
    }
    var nativeArrayType = arrayType.toNativeType();

    var stmts = new Array<ExpressionRef>();
    // tempThis = makeArray(length, alignLog2, classId, source = 0)
    stmts.push(
      module.createSetLocal(tempThis.index,
        this.makeCallDirect(program.allocArrayInstance, [
          module.createI32(length),
          program.options.isWasm64
            ? module.createI64(elementType.alignLog2)
            : module.createI32(elementType.alignLog2),
          module.createI32(arrayInstance.id),
          program.options.isWasm64
            ? module.createI64(0)
            : module.createI32(0)
        ], reportNode),
      )
    );
    // tempData = tempThis.dataStart
    var dataStart = assert(arrayInstance.lookupInSelf("dataStart"));
    assert(dataStart.kind == ElementKind.FIELD);
    stmts.push(
      module.createSetLocal(tempDataStart.index,
        module.createLoad(arrayType.byteSize, false,
          module.createGetLocal(tempThis.index, nativeArrayType),
          nativeArrayType,
          (<Field>dataStart).memoryOffset
        )
      )
    );
    var isManaged = elementType.isManaged;
    for (let i = 0, alignLog2 = elementType.alignLog2; i < length; ++i) {
      let valueExpr = values[i];
      if (isManaged) {
        // value = __retain(value)
        valueExpr = this.makeRetain(valueExpr);
      }
      // store<T>(tempData, value, immOffset)
      stmts.push(
        module.createStore(elementType.byteSize,
          module.createGetLocal(tempDataStart.index, nativeArrayType),
          valueExpr,
          nativeElementType,
          i << alignLog2
        )
      );
    }
    // -> tempThis
    stmts.push(
      module.createGetLocal(tempThis.index, nativeArrayType)
    );
    flow.freeTempLocal(tempThis);
    flow.freeTempLocal(tempDataStart);
    this.currentType = arrayType;
    return module.createBlock(null, stmts, nativeArrayType);
  }

  compileObjectLiteral(expression: ObjectLiteralExpression, contextualType: Type): ExpressionRef {
    var module = this.module;

    // contextual type must be a class
    var classReference = contextualType.classReference;
    if (!classReference || classReference.is(CommonFlags.ABSTRACT)) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        expression.range, "<object>", contextualType.toString()
      );
      return module.createUnreachable();
    }

    // if present, check that the constructor is compatible with object literals
    var ctor = classReference.constructorInstance;
    if (ctor) {
      // TODO: if the constructor requires parameters, check whether these are given as part of the
      // object literal and use them to call the ctor while not generating a store.
      if (ctor.signature.requiredParameters) {
        this.error(
          DiagnosticCode.Constructor_of_class_0_must_not_require_any_arguments,
          expression.range, classReference.toString()
        );
        return module.createUnreachable();
      }
      if (ctor.is(CommonFlags.PRIVATE)) {
        this.error(
          DiagnosticCode.Constructor_of_class_0_is_private_and_only_accessible_within_the_class_declaration,
          expression.range, classReference.toString()
        );
        return module.createUnreachable();
      }
      if (ctor.is(CommonFlags.PROTECTED)) {
        this.error(
          DiagnosticCode.Constructor_of_class_0_is_protected_and_only_accessible_within_the_class_declaration,
          expression.range, classReference.toString()
        );
        return module.createUnreachable();
      }
    }

    // check and compile field values
    var names = expression.names;
    var numNames = names.length;
    var values = expression.values;
    var members = classReference.members;
    var hasErrors = false;
    var exprs = new Array<ExpressionRef>(numNames + 2);
    var flow = this.currentFlow;
    var tempLocal = flow.getAutoreleaseLocal(this.options.usizeType);
    assert(numNames == values.length);
    for (let i = 0, k = numNames; i < k; ++i) {
      let member = members ? members.get(names[i].text) : null;
      if (!member || member.kind != ElementKind.FIELD) {
        this.error(
          DiagnosticCode.Property_0_does_not_exist_on_type_1,
          names[i].range, names[i].text, classReference.toString()
        );
        hasErrors = true;
        continue;
      }
      let type = (<Field>member).type;
      exprs[i + 1] = this.module.createStore( // TODO: handle setters as well
        type.byteSize,
        this.module.createGetLocal(tempLocal.index, this.options.nativeSizeType),
        this.compileExpression(values[i], (<Field>member).type, ContextualFlags.IMPLICIT),
        type.toNativeType(),
        (<Field>member).memoryOffset
      );
    }
    this.currentType = classReference.type.nonNullableType;
    if (hasErrors) return module.createUnreachable();

    // allocate a new instance first and assign 'this' to the temp. local
    exprs[0] = module.createSetLocal(
      tempLocal.index,
      this.makeRetain(
        this.makeAllocation(classReference)
      )
    );

    // once all field values have been set, return 'this'
    exprs[exprs.length - 1] = module.createGetLocal(tempLocal.index, this.options.nativeSizeType);

    this.currentType = classReference.type;
    return module.createBlock(null, exprs, this.options.nativeSizeType);
  }

  compileNewExpression(
    expression: NewExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;

    // obtain the class being instantiated
    var target = this.resolver.resolveExpression( // reports
      expression.expression,
      flow
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
      classInstance = this.resolver.resolveClass(
        classPrototype,
        classReference.typeArguments,
        makeMap<string,Type>(flow.contextualTypeArguments)
      );
    } else {
      classInstance = this.resolver.resolveClassInclTypeArguments(
        classPrototype,
        typeArguments,
        flow.actualFunction.parent, // relative to caller
        makeMap<string,Type>(flow.contextualTypeArguments),
        expression
      );
    }
    if (!classInstance) return module.createUnreachable();
    if (contextualType == Type.void) contextualFlags |= ContextualFlags.WILL_DROP;
    return this.compileInstantiate(classInstance, expression.arguments, contextualFlags, expression);
  }

  /** Gets the compiled constructor of the specified class or generates one if none is present. */
  ensureConstructor(classInstance: Class, reportNode: Node): Function {
    var instance = classInstance.constructorInstance;
    if (instance) {
      // do not attempt to compile it if inlined anyway
      if (!instance.hasDecorator(DecoratorFlags.INLINE)) this.compileFunction(instance);
      return instance;
    }

    // clone base constructor if a derived class
    var baseClass = classInstance.base;
    if (baseClass) {
      let baseCtor = this.ensureConstructor(baseClass, reportNode);
      instance = new Function(
        CommonSymbols.constructor,
        new FunctionPrototype(
          CommonSymbols.constructor,
          classInstance,
          // declaration is important, i.e. to access optional parameter initializers
          (<FunctionDeclaration>baseCtor.declaration).clone()
        ),
        baseCtor.signature,
        null
      );

    // otherwise make a default constructor
    } else {
      instance = new Function(
        CommonSymbols.constructor,
        new FunctionPrototype(
          CommonSymbols.constructor,
          classInstance,
          this.program.makeNativeFunctionDeclaration(CommonSymbols.constructor,
            CommonFlags.INSTANCE | CommonFlags.CONSTRUCTOR
          )
        ),
        new Signature(null, classInstance.type, classInstance.type),
        null
      );
    }

    instance.internalName = classInstance.internalName + INSTANCE_DELIMITER + "constructor";
    instance.set(CommonFlags.COMPILED);
    instance.prototype.setResolvedInstance("", instance);
    classInstance.constructorInstance = instance;
    var previousFlow = this.currentFlow;
    this.currentFlow = instance.flow;

    // generate body
    var signature = instance.signature;
    var module = this.module;
    var nativeSizeType = this.options.nativeSizeType;
    var stmts = new Array<ExpressionRef>();

    // {
    //   if (!this) this = <ALLOC>
    //   IF_DERIVED: this = super(this, ...args)
    //   this.a = X
    //   this.b = Y
    //   return this
    // }
    stmts.push(
      module.createIf(
        module.createUnary(nativeSizeType == NativeType.I64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
          module.createGetLocal(0, nativeSizeType)
        ),
        module.createSetLocal(0,
          this.makeRetain(
            this.makeAllocation(classInstance)
          )
        )
      )
    );
    if (baseClass) {
      let parameterTypes = signature.parameterTypes;
      let numParameters = parameterTypes.length;
      let operands = new Array<ExpressionRef>(1 + numParameters);
      operands[0] = module.createGetLocal(0, nativeSizeType);
      for (let i = 0; i < numParameters; ++i) {
        operands[i + 1] = module.createGetLocal(i + 1, parameterTypes[i].toNativeType());
      }
      // TODO: base constructor might be inlined, but makeCallDirect can't do this
      stmts.push(
        module.createSetLocal(0,
          this.makeCallDirect(assert(baseClass.constructorInstance), operands, reportNode)
        )
      );
    }
    this.makeFieldInitialization(classInstance, stmts);
    stmts.push(
      module.createGetLocal(0, nativeSizeType)
    );

    // make the function
    var typeRef = this.ensureFunctionType(signature.parameterTypes, signature.returnType, signature.thisType);
    var locals = instance.localsByIndex;
    var varTypes = new Array<NativeType>(); // of temp. vars added while compiling initializers
    var numOperands = 1 + signature.parameterTypes.length;
    var numLocals = locals.length;
    if (numLocals > numOperands) {
      for (let i = numOperands; i < numLocals; ++i) varTypes.push(locals[i].type.toNativeType());
    }
    var funcRef = module.addFunction(instance.internalName, typeRef, varTypes,
      flatten(module, stmts, nativeSizeType)
    );
    instance.finalize(module, funcRef);
    this.currentFlow = previousFlow;
    return instance;
  }

  compileInstantiate(
    /** Class to instantiate. */
    classInstance: Class,
    /** Constructor arguments. */
    argumentExpressions: Expression[],
    /** Contextual flags. */
    contextualFlags: ContextualFlags,
    /** Node to report on. */
    reportNode: Node
  ): ExpressionRef {
    var ctor = this.ensureConstructor(classInstance, reportNode);
    var expr = this.compileCallDirect( // no need for another autoreleased local
      ctor,
      argumentExpressions,
      reportNode,
      this.options.usizeType.toNativeZero(this.module),
      false,
      contextualFlags
    );
    if (getExpressionType(expr) != NativeType.None) { // possibly IMM_DROPPED
      this.currentType = classInstance.type; // important because a super ctor could be called
    }
    return expr;
  }

  /**
   * Compiles a property access in the specified context.
   * @param retainConstantType Retains the type of inlined constants if `true`, otherwise
   *  precomputes them according to context.
   */
  compilePropertyAccessExpression(
    propertyAccess: PropertyAccessExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;

    this.maybeCompileEnclosingSource(propertyAccess);

    var target = this.resolver.resolvePropertyAccessExpression(propertyAccess, flow, contextualType); // reports
    if (!target) return module.createUnreachable();

    switch (target.kind) {
      case ElementKind.GLOBAL: { // static field
        if (!this.compileGlobal(<Global>target)) { // reports; not yet compiled if a static field
          return module.createUnreachable();
        }
        let globalType = (<Global>target).type;
        assert(globalType != Type.void);
        if ((<Global>target).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Global>target, contextualType, contextualFlags);
        }
        this.currentType = globalType;
        return module.createGetGlobal((<Global>target).internalName, globalType.toNativeType());
      }
      case ElementKind.ENUMVALUE: { // enum value
        let theEnum = assert((<EnumValue>target).parent); assert(theEnum.kind == ElementKind.ENUM);
        if (!this.compileEnum(<Enum>theEnum)) {
          this.currentType = Type.i32;
          return this.module.createUnreachable();
        }
        this.currentType = Type.i32;
        if ((<EnumValue>target).is(CommonFlags.INLINED)) {
          assert((<EnumValue>target).constantValueKind == ConstantValueKind.INTEGER);
          return module.createI32(i64_low((<EnumValue>target).constantIntegerValue));
        }
        return module.createGetGlobal((<EnumValue>target).internalName, NativeType.I32);
      }
      case ElementKind.FIELD: { // instance field
        assert((<Field>target).memoryOffset >= 0);
        let thisExpr = this.compileExpressionRetainType(
          assert(this.resolver.currentThisExpression),
          this.options.usizeType
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
      case ElementKind.PROPERTY_PROTOTYPE: {// static property
        let getterPrototype = (<PropertyPrototype>target).getterPrototype;
        if (getterPrototype) {
          let getter = this.resolver.resolveFunction(getterPrototype, null);
          if (getter) return this.compileCallDirect(getter, [], propertyAccess, 0);
        }
        return module.createUnreachable();
      }
      case ElementKind.PROPERTY: { // instance property
        let getterInstance = assert((<Property>target).getterInstance);
        return this.compileCallDirect(getterInstance, [], propertyAccess,
          this.compileExpressionRetainType(
            assert(this.resolver.currentThisExpression),
            this.options.usizeType
          )
        );
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        this.error(
          DiagnosticCode.Cannot_access_method_0_without_calling_it_as_it_requires_this_to_be_set,
          propertyAccess.range, (<FunctionPrototype>target).name
        );
        return module.createUnreachable();
      }
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      propertyAccess.range
    );
    return module.createUnreachable();
  }

  compileTernaryExpression(
    expression: TernaryExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var ifThen = expression.ifThen;
    var ifElse = expression.ifElse;
    var outerFlow = this.currentFlow;

    var condExpr = this.module.precomputeExpression(
      this.makeIsTrueish(
        this.compileExpressionRetainType(expression.condition, Type.bool),
        this.currentType
      )
    );

    // Try to eliminate unnecesssary branches if the condition is constant
    if (
      getExpressionId(condExpr) == ExpressionId.Const &&
      getExpressionType(condExpr) == NativeType.I32
    ) {
      return getConstValueI32(condExpr)
        ? this.compileExpressionRetainType(ifThen, contextualType)
        : this.compileExpressionRetainType(ifElse, contextualType);
    }

    var ifThenFlow = outerFlow.fork();
    this.currentFlow = ifThenFlow;
    var ifThenExpr = this.compileExpressionRetainType(ifThen, contextualType, contextualFlags & ContextualFlags.SKIP_AUTORELEASE);
    var ifThenType = this.currentType;
    var IfThenAutoreleaseSkipped = this.skippedAutoreleases.has(ifThenExpr);

    var ifElseFlow = outerFlow.fork();
    this.currentFlow = ifElseFlow;
    var ifElseExpr = this.compileExpressionRetainType(ifElse, contextualType, contextualFlags & ContextualFlags.SKIP_AUTORELEASE);
    var ifElseType = this.currentType;
    var ifElseAutoreleaseSkipped = this.skippedAutoreleases.has(ifElseExpr);

    var commonType = Type.commonDenominator(ifThenType, ifElseType, false);
    if (!commonType) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        ifElse.range, ifElseType.toString(), ifThenType.toString()
      );
      this.currentType = contextualType;
      return this.module.createUnreachable();
    }
    ifThenExpr = this.convertExpression(
      ifThenExpr,
      ifThenType, commonType,
      false, false,
      ifThen
    );
    ifElseExpr = this.convertExpression(
      ifElseExpr,
      ifElseType, commonType,
      false, false,
      ifElse
    );
    this.currentType = commonType;

    if (IfThenAutoreleaseSkipped != ifElseAutoreleaseSkipped) { // unify to both skipped
      if (!IfThenAutoreleaseSkipped) {
        ifThenExpr = this.makeRetain(ifThenExpr);
        IfThenAutoreleaseSkipped = true;
      } else {
        ifElseExpr = this.makeRetain(ifElseExpr);
        ifElseAutoreleaseSkipped = true;
      }
    } else if (!IfThenAutoreleaseSkipped && commonType.isManaged) { // keep alive a little longer
      // if (!(contextualFlags & ContextualFlags.SKIP_AUTORELEASE)) {
        ifThenExpr = this.moveAutorelease(ifThenExpr, ifThenFlow, outerFlow);
        ifElseExpr = this.moveAutorelease(ifElseExpr, ifElseFlow, outerFlow);
      // }
    }

    ifThenExpr = this.performAutoreleasesWithValue(ifThenFlow, ifThenExpr, commonType);
    ifThenFlow.freeScopedLocals();

    ifElseExpr = this.performAutoreleasesWithValue(ifElseFlow, ifElseExpr, commonType);
    ifElseFlow.freeScopedLocals();

    this.currentFlow = outerFlow;
    outerFlow.inheritMutual(ifThenFlow, ifElseFlow);

    var expr = this.module.createIf(condExpr, ifThenExpr, ifElseExpr);
    assert(IfThenAutoreleaseSkipped == ifElseAutoreleaseSkipped);
    if (IfThenAutoreleaseSkipped) this.skippedAutoreleases.add(expr);
    return expr;
  }

  compileUnaryPostfixExpression(
    expression: UnaryPostfixExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;

    // make a getter for the expression (also obtains the type)
    var getValue = this.compileExpression( // reports
      expression.operand,
      contextualType == Type.void
        ? Type.i32
        : contextualType,
      ContextualFlags.NONE
    );

    // shortcut if compiling the getter already failed
    if (getExpressionId(getValue) == ExpressionId.Unreachable) return getValue;

    // if the value isn't dropped, a temp. local is required to remember the original value
    var tempLocal: Local | null = null;
    if (contextualType != Type.void) {
      tempLocal = flow.getTempLocal(this.currentType, false);
      getValue = module.createTeeLocal(
        tempLocal.index,
        getValue
      );
    }

    var expr: ExpressionRef;

    switch (expression.operator) {
      case Token.PLUS_PLUS: {
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(
              BinaryOp.AddI32,
              getValue,
              module.createI32(1)
            );
            break;
          }
          case TypeKind.USIZE: {
            // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classReference = this.currentType.classReference;
              if (classReference) {
                let overload = classReference.lookupOverload(OperatorKind.POSTFIX_INC);
                if (overload) {
                  expr = this.compileUnaryOverload(overload, expression.operand, getValue, expression);
                  break;
                }
              }
              this.error(
                DiagnosticCode.Operation_not_supported,
                expression.range
              );
              return module.createUnreachable();
            }
          }
          case TypeKind.ISIZE: {
            let options = this.options;
            expr = module.createBinary(
              options.isWasm64
                ? BinaryOp.AddI64
                : BinaryOp.AddI32,
              getValue,
              this.currentType.toNativeOne(module)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(
              BinaryOp.AddI64,
              getValue,
              module.createI64(1)
            );
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(
              BinaryOp.AddF32,
              getValue,
              module.createF32(1)
            );
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(
              BinaryOp.AddF64,
              getValue,
              module.createF64(1)
            );
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
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.createBinary(
              BinaryOp.SubI32,
              getValue,
              module.createI32(1)
            );
            break;
          }
          case TypeKind.USIZE: {
            // check operator overload
            if (this.currentType.is(TypeFlags.REFERENCE)) {
              let classReference = this.currentType.classReference;
              if (classReference) {
                let overload = classReference.lookupOverload(OperatorKind.POSTFIX_DEC);
                if (overload) {
                  expr = this.compileUnaryOverload(overload, expression.operand, getValue, expression);
                  break;
                }
              }
              this.error(
                DiagnosticCode.Operation_not_supported,
                expression.range
              );
              return module.createUnreachable();
            }
          }
          case TypeKind.ISIZE: {
            let options = this.options;
            expr = module.createBinary(
              options.isWasm64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              getValue,
              this.currentType.toNativeOne(module)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.createBinary(
              BinaryOp.SubI64,
              getValue,
              module.createI64(1)
            );
            break;
          }
          case TypeKind.F32: {
            expr = module.createBinary(
              BinaryOp.SubF32,
              getValue,
              module.createF32(1)
            );
            break;
          }
          case TypeKind.F64: {
            expr = module.createBinary(
              BinaryOp.SubF64,
              getValue,
              module.createF64(1)
            );
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

    var resolver = this.resolver;
    var target = resolver.resolveExpression(expression.operand, flow); // reports

    // simplify if dropped anyway
    if (!tempLocal) {
      this.currentType = Type.void;
      if (!target) return module.createUnreachable();
      return this.makeAssignment(
        target,
        expr,
        expression.operand,
        resolver.currentThisExpression,
        resolver.currentElementExpression,
        false
      );
    } else if (!target) {
      return module.createUnreachable();
    }

    // otherwise use the temp. local for the intermediate value (always possibly overflows)
    var setValue = this.makeAssignment(
      target,
      expr, // includes a tee of getValue to tempLocal
      expression.operand,
      resolver.currentThisExpression,
      resolver.currentElementExpression,
      false
    );

    this.currentType = tempLocal.type;
    flow.freeTempLocal(tempLocal);
    var nativeType = tempLocal.type.toNativeType();

    return module.createBlock(null, [
      setValue,
      module.createGetLocal(tempLocal.index, nativeType)
    ], nativeType); // result of 'x++' / 'x--' might overflow
  }

  compileUnaryPrefixExpression(
    expression: UnaryPrefixExpression,
    contextualType: Type,
    contextualFlags: ContextualFlags
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
          ContextualFlags.NONE
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
          expr = this.compileLiteralExpression(<LiteralExpression>expression.operand, contextualType, ContextualFlags.NONE, true);
          // compileExpression normally does this:
          if (this.options.sourceMap) this.addDebugLocation(expr, expression.range);
          break;
        }

        expr = this.compileExpression(
          expression.operand,
          contextualType == Type.void
            ? Type.i32
            : contextualType,
          ContextualFlags.NONE
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
          ContextualFlags.NONE
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
          ContextualFlags.NONE
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
          ContextualFlags.NONE
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
          ContextualFlags.NONE
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
          expr = this.convertExpression(expr,
            this.currentType, this.currentType.intType,
            false, false,
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
    if (!compound) return expr;
    var resolver = this.resolver;
    var target = resolver.resolveExpression(expression.operand, this.currentFlow);
    if (!target) return module.createUnreachable();
    return this.makeAssignment(
      target,
      expr,
      expression.operand,
      resolver.currentThisExpression,
      resolver.currentElementExpression,
      contextualType != Type.void
    );
  }

  /** Makes sure that a 32-bit integer value is wrapped to a valid value of the specified type. */
  ensureSmallIntegerWrap(expr: ExpressionRef, type: Type): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
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
          // bool is special in that it compares to 0 instead of masking with 0x1
          expr = module.createBinary(BinaryOp.NeI32,
            expr,
            module.createI32(0)
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

  // === Specialized code generation ==============================================================

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

  /** Makes an allocation suitable to hold the data of an instance of the given class. */
  makeAllocation(
    classInstance: Class
  ): ExpressionRef {
    // TODO: investigate if it's possible to allocate with RC=1 immediately
    var program = this.program;
    assert(classInstance.program == program);
    var module = this.module;
    var options = this.options;
    this.currentType = classInstance.type;
    this.runtimeFeatures |= RuntimeFeatures.alloc;
    return module.createCall(program.allocInstance.internalName, [
      options.isWasm64
        ? module.createI64(classInstance.currentMemoryOffset)
        : module.createI32(classInstance.currentMemoryOffset),
      module.createI32(
        classInstance.hasDecorator(DecoratorFlags.UNMANAGED)
          ? 0
          : classInstance.id
      )
    ], options.nativeSizeType);
  }

  /** Makes the initializers for a class's fields. */
  makeFieldInitialization(
    classInstance: Class,
    stmts: ExpressionRef[] = []
  ): ExpressionRef[] {
    var members = classInstance.members;
    if (!members) return [];

    var module = this.module;
    var flow = this.currentFlow;
    var isInline = flow.is(FlowFlags.INLINE_CONTEXT);
    var thisLocalIndex = isInline
      ? assert(flow.lookupLocal(CommonSymbols.this_)).index
      : 0;
    var nativeSizeType = this.options.nativeSizeType;

    for (let member of members.values()) {
      if (
        member.kind != ElementKind.FIELD || // not a field
        member.parent != classInstance      // inherited field
      ) continue;

      let field = <Field>member; assert(!field.isAny(CommonFlags.CONST));
      let fieldType = field.type;
      let nativeFieldType = fieldType.toNativeType();
      let initializerNode = field.prototype.initializerNode;
      if (initializerNode) { // use initializer
        stmts.push(
          module.createStore(fieldType.byteSize,
            module.createGetLocal(thisLocalIndex, nativeSizeType),
            this.compileExpression(initializerNode, fieldType, // reports
              ContextualFlags.IMPLICIT
            ),
            nativeFieldType,
            field.memoryOffset
          )
        );
      } else {
        let parameterIndex = field.prototype.parameterIndex;
        stmts.push(
          module.createStore(fieldType.byteSize,
            module.createGetLocal(thisLocalIndex, nativeSizeType),
            parameterIndex >= 0 // initialized via parameter (here: a local)
              ? module.createGetLocal(
                  isInline
                    ? assert(flow.lookupLocal(field.name)).index
                    : 1 + parameterIndex, // this is local 0
                  nativeFieldType
                )
              : fieldType.toNativeZero(module),
            nativeFieldType,
            field.memoryOffset
          )
        );
      }
    }
    return stmts;
  }

  makeInstanceOfClass(
    expr: ExpressionRef,
    classInstance: Class
  ): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var idTemp = flow.getTempLocal(Type.i32, false);
    var idExpr = module.createLoad(4, false,
      module.createBinary(BinaryOp.SubI32,
        expr,
        module.createI32(this.program.runtimeHeaderSize)
      ),
      NativeType.I32
    );
    var label = "instanceof_" + classInstance.name + "|" + flow.pushBreakLabel();
    var conditions: ExpressionRef[] = [];
    conditions.push(
      module.createDrop( // br_if returns the value too
        module.createBreak(label,
          module.createBinary(BinaryOp.EqI32, // classId == class.id
            module.createTeeLocal(idTemp.index, idExpr),
            module.createI32(classInstance.id)
          ),
          module.createI32(1) // ? true
        )
      )
    );
    // TODO: insert conditions for all possible subclasses (i.e. cat is also animal)
    // TODO: simplify if there are none
    conditions.push(
      module.createI32(0) // : false
    );
    flow.freeTempLocal(idTemp);
    flow.popBreakLabel();
    return module.createBlock(label, conditions, NativeType.I32);
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
  var args = decorator.arguments;
  if (args && args.length) {
    let arg = args[0];
    // if one argument is given, override just the element name
    // if two arguments are given, override both module and element name
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

/** Flattens a series of expressions to a nop, a single statement or a block depending on statement count. */
export function flatten(module: Module, stmts: ExpressionRef[], type: NativeType): ExpressionRef {
  var length = stmts.length;
  if (length == 0) return module.createNop(); // usually filtered out again
  if (length == 1) return stmts[0];
  return module.createBlock(null, stmts,
    type == NativeType.Auto
      ? getExpressionType(stmts[length - 1])
      : type
  );
}
