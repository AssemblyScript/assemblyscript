/**
 * The AssemblyScript compiler.
 * @module compiler
 *//***/

import {
  BuiltinNames,
  compileCall as compileBuiltinCall,
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
  GlobalRef,
  FeatureFlags,
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
  getLocalGetIndex,
  isLocalTee,
  getLocalSetIndex,
  needsExplicitUnreachable,
  getLocalSetValue,
  getGlobalGetName,
  isGlobalMutable,
  createType,
  hasSideEffects
} from "./module";

import {
  CommonFlags,
  INSTANCE_DELIMITER,
  STATIC_DELIMITER,
  GETTER_PREFIX,
  SETTER_PREFIX,
  CommonNames,
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
  IndexSignature,
  File,
  mangleInternalName
} from "./program";

import {
  FlowFlags,
  Flow,
  LocalFlags,
  ConditionKind,
  findUsedLocals
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
  Range,
  DecoratorKind,
  AssertionKind,
  SourceKind,

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
  /** If true, exports the function table. */
  exportTable: bool = false;
  /** If true, generates information necessary for source maps. */
  sourceMap: bool = false;
  /** If true, generates an explicit start function. */
  explicitStart: bool = false;
  /** Static memory start offset. */
  memoryBase: i32 = 0;
  /** Global aliases, mapping alias names as the key to internal names to be aliased as the value. */
  globalAliases: Map<string,string> | null = null;
  /** Features to activate by default. These are the finished proposals. */
  features: Feature = Feature.MUTABLE_GLOBALS;
  /** If true, disallows unsafe features in user code. */
  noUnsafe: bool = false;

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
  PREFER_STATIC = 1 << 5
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
  visitMembers = 1 << 3
}

/** Exported names of compiler-generated elements. */
export namespace ExportNames {
  /** Name of the explicit start function, if applicable. */
  export const start = "_start"; // match WASI
  /** Name of the argumentsLength varargs helper global. */
  export const argumentsLength = "__argumentsLength";
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
  memoryOffset: I64;
  /** Memory segments being compiled. */
  memorySegments: MemorySegment[] = [];
  /** Map of already compiled static string segments. */
  stringSegments: Map<string,MemorySegment> = new Map();
  /** Function table being compiled. First elem is blank. */
  functionTable: string[] = [];
  /** Arguments length helper global. */
  builtinArgumentsLength: GlobalRef = 0;
  /** Requires runtime features. */
  runtimeFeatures: RuntimeFeatures = RuntimeFeatures.NONE;
  /** Expressions known to have skipped an autorelease. Usually function returns. */
  skippedAutoreleases: Set<ExpressionRef> = new Set();
  /** Current inline functions stack. */
  inlineStack: Function[] = [];

  /** Compiles a {@link Program} to a {@link Module} using the specified options. */
  static compile(program: Program): Module {
    return new Compiler(program).compile();
  }

  /** Constructs a new compiler for a {@link Program} using the specified options. */
  constructor(program: Program) {
    super(program.diagnostics);
    this.program = program;
    var options = program.options;
    this.memoryOffset = i64_new(
      // leave space for `null`. also functions as a sentinel for erroneous stores at offset 0.
      // note that Binaryen's asm.js output utilizes the first 8 bytes for reinterpretations (#1547)
      max(options.memoryBase, 8)
    );
    var module = Module.create();
    this.module = module;
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
    module.setFeatures(featureFlags);
  }

  /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
  compile(): Module {
    var options = this.options;
    var module = this.module;
    var program = this.program;

    // initialize lookup maps, built-ins, imports, exports, etc.
    program.initialize(options);

    // set up the main start function
    var startFunctionInstance = program.makeNativeFunction(BuiltinNames.start, new Signature(program, [], Type.void));
    startFunctionInstance.internalName = BuiltinNames.start;
    var startFunctionBody = new Array<ExpressionRef>();
    this.currentFlow = startFunctionInstance.flow;
    this.currentBody = startFunctionBody;

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
    for (let file of files.values()) {
      if (file.source.sourceKind == SourceKind.USER_ENTRY) {
        this.compileFile(file);
        this.compileExports(file);
      }
    }

    // compile the start function if not empty or explicitly requested
    var startIsEmpty = !startFunctionBody.length;
    var explicitStart = options.explicitStart;
    if (!startIsEmpty || explicitStart) {
      let signature = startFunctionInstance.signature;
      if (!startIsEmpty && explicitStart) {
        module.addGlobal(BuiltinNames.started, NativeType.I32, true, module.i32(0));
        startFunctionBody.unshift(
          module.if(
            module.global_get(BuiltinNames.started, NativeType.I32),
            module.return(),
            module.global_set(BuiltinNames.started, module.i32(1))
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

    // compile runtime features
    if (this.runtimeFeatures & RuntimeFeatures.visitGlobals) compileVisitGlobals(this);
    if (this.runtimeFeatures & RuntimeFeatures.visitMembers) compileVisitMembers(this);
    module.removeGlobal(BuiltinNames.rtti_base);
    if (this.runtimeFeatures & RuntimeFeatures.RTTI) compileRTTI(this);

    // update the heap base pointer
    var memoryOffset = this.memoryOffset;
    memoryOffset = i64_align(memoryOffset, options.usizeType.byteSize);
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
    var isSharedMemory = options.hasFeature(Feature.THREADS) && options.sharedMemory > 0;
    module.setMemory(
      this.options.memoryBase /* is specified */ || this.memorySegments.length
        ? i64_low(i64_shr_u(i64_align(memoryOffset, 0x10000), i64_new(16, 0)))
        : 0,
      isSharedMemory ? options.sharedMemory : Module.UNLIMITED_MEMORY,
      this.memorySegments,
      options.target,
      ExportNames.memory,
      isSharedMemory
    );

    // import memory if requested (default memory is named '0' by Binaryen)
    if (options.importMemory) module.addMemoryImport("0", "env", "memory", isSharedMemory);

    // set up function table (first elem is blank)
    var functionTable = this.functionTable;
    module.setFunctionTable(1 + functionTable.length, Module.UNLIMITED_TABLE, functionTable, module.i32(1));

    // import and/or export table if requested (default table is named '0' by Binaryen)
    if (options.importTable) module.addTableImport("0", "env", "table");
    if (options.exportTable) module.addTableExport("0", ExportNames.table);

    // set up module exports
    for (let file of this.program.filesByName.values()) {
      if (file.source.sourceKind == SourceKind.USER_ENTRY) this.ensureModuleExports(file);
    }
    return module;
  }

  // === Exports ==================================================================================

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
        if (getter) this.ensureModuleExport(GETTER_PREFIX + name, getter, prefix);
        let setter = (<PropertyPrototype>element).setterPrototype;
        if (setter) this.ensureModuleExport(SETTER_PREFIX + name, setter, prefix);
        break;
      }

      // export concrete elements
      case ElementKind.GLOBAL: {
        let isConst = element.is(CommonFlags.CONST) || element.is(CommonFlags.STATIC | CommonFlags.READONLY);
        if (!isConst && !this.options.hasFeature(Feature.MUTABLE_GLOBALS)) {
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
        if (!(<EnumValue>element).isImmutable && !this.options.hasFeature(Feature.MUTABLE_GLOBALS)) {
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
          this.ensureBuiltinArgumentsLength();
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
        this.makeExportedFieldGetter(prefix + GETTER_PREFIX + name, <Field>element);
        if (!element.is(CommonFlags.READONLY)) {
          this.makeExportedFieldSetter(prefix + SETTER_PREFIX + name, <Field>element);
        }
        break;
      }
      case ElementKind.CLASS: {
        // make the class name itself represent its runtime id
        if (!(<Class>element).type.isUnmanaged) {
          let module = this.module;
          let internalName = (<Class>element).internalName;
          module.addGlobal(internalName, NativeType.I32, false, module.i32((<Class>element).id));
          module.addGlobalExport(internalName, prefix + name);
        }
        break;
      }

      // just traverse members below
      case ElementKind.ENUM:
      case ElementKind.NAMESPACE:
      case ElementKind.FILE:
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

  /** Makes an exported function to get the value of an instance field. */
  private makeExportedFieldGetter(name: string, field: Field): void {
    var type = field.type;
    var nativeThisType = this.options.nativeSizeType;
    var nativeValueType = type.toNativeType();
    var module = this.module;
    var returnExpr = module.load(type.byteSize, type.is(TypeFlags.SIGNED),
      module.local_get(0, nativeThisType),
      nativeValueType, field.memoryOffset
    );
    // functions retain the return value for the caller
    if (type.isManaged) returnExpr = this.makeRetain(returnExpr);
    module.addFunction(name, nativeThisType, nativeValueType, null, returnExpr);
    module.addFunctionExport(name, name);
  }

  /** Makes an exported function to set the value of an instance field. */
  private makeExportedFieldSetter(name: string, field: Field): void {
    var type = field.type;
    var nativeThisType = this.options.nativeSizeType;
    var nativeValueType = type.toNativeType();
    var module = this.module;
    var valueExpr = module.local_get(1, nativeValueType);
    if (type.isManaged) {
      valueExpr = this.makeReplace(
        module.load(type.byteSize, false,
          module.local_get(0, nativeThisType),
          nativeValueType, field.memoryOffset
        ),
        valueExpr
      );
    }
    module.addFunction(name, createType([ nativeThisType, nativeValueType ]), NativeType.None, null,
      module.store(type.byteSize,
        module.local_get(0, nativeThisType),
        valueExpr,
        nativeValueType, field.memoryOffset
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
          let instance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
          if (instance) this.compileFunction(instance);
        }
        break;
      }
      case ElementKind.CLASS_PROTOTYPE: {
        if (!element.is(CommonFlags.GENERIC)) {
          let instance = this.resolver.resolveClass(<ClassPrototype>element, null);
          if (instance) this.compileClass(instance);
        }
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let getterPrototype = (<PropertyPrototype>element).getterPrototype;
        if (getterPrototype) {
          assert(!getterPrototype.is(CommonFlags.GENERIC));
          let instance = this.resolver.resolveFunction(getterPrototype, null);
          if (instance) this.compileFunction(instance);
        }
        let setterPrototype = (<PropertyPrototype>element).setterPrototype;
        if (setterPrototype) {
          assert(!setterPrototype.is(CommonFlags.GENERIC));
          let instance = this.resolver.resolveFunction(setterPrototype, null);
          if (instance) this.compileFunction(instance);
        }
        break;
      }
      case ElementKind.NAMESPACE:
      case ElementKind.TYPEDEFINITION:
      case ElementKind.ENUMVALUE:
      case ElementKind.INDEXSIGNATURE: break;
      default: assert(false, ElementKind[element.kind]);
    }
    if (compileMembers) {
      let members = element.members;
      if (members) for (let element of members.values()) this.compileElement(element);
    }
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
    if (global.is(CommonFlags.COMPILED)) return true;
    global.set(CommonFlags.COMPILED);

    var module = this.module;
    var initExpr: ExpressionRef = 0;
    var typeNode = global.typeNode;
    var initializerNode = global.initializerNode;

    if (!global.is(CommonFlags.RESOLVED)) {

      // Resolve type if annotated
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

      // Otherwise infer type from initializer
      } else if (initializerNode) {
        let previousFlow = this.currentFlow;
        if (global.hasDecorator(DecoratorFlags.LAZY)) {
          this.currentFlow = global.file.startFunction.flow;
        }
        initExpr = this.compileExpression(initializerNode, Type.auto, // reports
          Constraints.MUST_WRAP | Constraints.WILL_RETAIN
        );
        this.currentFlow = previousFlow;
        if (this.currentType == Type.void) {
          this.error(
            DiagnosticCode.Type_0_is_not_assignable_to_type_1,
            initializerNode.range, this.currentType.toString(), "<auto>"
          );
          return false;
        }
        global.setType(this.currentType);

      // Error if there's neither a type nor an initializer
      } else {
        this.error(
          DiagnosticCode.Type_expected,
          global.identifierNode.range.atEnd
        );
        return false;
      }
    }

    // Handle ambient builtins like '__heap_base' that need to be resolved but are added explicitly
    if (global.is(CommonFlags.AMBIENT) && global.hasDecorator(DecoratorFlags.BUILTIN)) {
      if (global.internalName == BuiltinNames.heap_base) this.runtimeFeatures |= RuntimeFeatures.HEAP;
      else if (global.internalName == BuiltinNames.rtti_base) this.runtimeFeatures |= RuntimeFeatures.RTTI;
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
        global.set(CommonFlags.COMPILED);
        return true;

      // Importing mutable globals is not supported in the MVP
      } else {
        this.error(
          DiagnosticCode.Feature_0_is_not_enabled,
          global.declaration.range, "mutable-globals"
        );
      }
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
          let origInitExpr = initExpr;
          initExpr = module.precomputeExpression(initExpr);
          if (getExpressionId(initExpr) != ExpressionId.Const) initializeInStart = true;
          if (this.skippedAutoreleases.has(origInitExpr)) this.skippedAutoreleases.add(initExpr);
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
            let global = elementsByName.get(fromName)!;
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

    // Initialize to zero if there's no initializer
    } else {
      initExpr = this.makeZero(type);
    }

    var internalName = global.internalName;

    if (initializeInStart) { // initialize to mutable zero and set the actual value in start
      if (isDeclaredInline) {
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          assert(findDecorator(DecoratorKind.INLINE, global.decoratorNodes)).range, "inline"
        );
      }
      module.addGlobal(internalName, nativeType, true, this.makeZero(type));
      if (type.isManaged && !this.skippedAutoreleases.has(initExpr)) initExpr = this.makeRetain(initExpr);
      this.currentBody.push(
        module.global_set(internalName, initExpr)
      );
    } else if (!isDeclaredInline) { // compile normally
      module.addGlobal(internalName, nativeType, !isDeclaredConstant, initExpr);
    }
    return true;
  }

  // === Enums ====================================================================================

  /** Compiles an enum. */
  compileEnum(element: Enum): bool {
    if (element.is(CommonFlags.COMPILED)) return true;
    element.set(CommonFlags.COMPILED);

    var module = this.module;
    var previousParent = this.currentParent;
    this.currentParent = element;
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
            Constraints.CONV_IMPLICIT // autorelease is not applicable in i32 context
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
          initExpr = module.i32(0);
        } else {
          if (previousValueIsMut) {
            this.error(
              DiagnosticCode.Enum_member_must_have_initializer,
              (<EnumValue>member).identifierNode.range.atEnd
            );
          }
          initExpr = module.binary(BinaryOp.AddI32,
            module.global_get(previousValue.internalName, NativeType.I32),
            module.i32(1)
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
          module.addGlobal(val.internalName, NativeType.I32, true, module.i32(0));
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
    this.currentParent = previousParent;
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
    if (instance.is(CommonFlags.COMPILED)) return true;
    if (instance.hasDecorator(DecoratorFlags.BUILTIN)) {
      if (!forceStdAlternative) return true;
    }

    var previousType = this.currentType; // remember to retain it if compiling a function lazily
    instance.set(CommonFlags.COMPILED);

    var module = this.module;
    var signature = instance.signature;
    var bodyNode = instance.prototype.bodyNode;

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
        // No need to retain `this` as it can't be reassigned and thus can't become prematurely released
        ++index;
      }
      let parameterTypes = signature.parameterTypes;
      for (let i = 0, k = parameterTypes.length; i < k; ++i, ++index) {
        let type = parameterTypes[i];
        if (type.isManaged) {
          stmts.push(
            module.local_set(index,
              this.makeRetain(
                module.local_get(index, type.toNativeType())
              )
            )
          );
          flow.setLocalFlag(index, LocalFlags.RETAINED);
        }
      }

      this.compileFunctionBody(instance, stmts);
      if (!flow.is(FlowFlags.TERMINATES)) {
        this.performAutoreleases(flow, stmts);
        this.finishAutoreleases(flow, stmts);
      }
      this.currentFlow = previousFlow;

      // create the function
      funcRef = module.addFunction(
        instance.internalName,
        signature.nativeParams,
        signature.nativeResults,
        typesToNativeTypes(instance.additionalLocals),
        module.flatten(stmts, instance.signature.returnType.toNativeType())
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
      module.addFunctionImport(
        instance.internalName,
        mangleImportName_moduleName,
        mangleImportName_elementName,
        signature.nativeParams,
        signature.nativeResults
      );
      funcRef = module.getFunction(instance.internalName);
    }

    instance.finalize(module, funcRef);
    this.currentType = previousType;
    return true;
  }

  /** Compiles the body of a function within the specified flow. */
  private compileFunctionBody(
    /** Function to compile. */
    instance: Function,
    /** Target array of statements also being returned. Creates a new array if omitted. */
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

    // make constructors return their instance pointer
    if (instance.is(CommonFlags.CONSTRUCTOR)) {
      let nativeSizeType = this.options.nativeSizeType;
      assert(instance.is(CommonFlags.INSTANCE));
      let classInstance = assert(instance.parent); assert(classInstance.kind == ElementKind.CLASS);

      if (!flow.is(FlowFlags.TERMINATES)) {
        let thisLocal = assert(flow.lookupLocal(CommonNames.this_));

        // if `this` wasn't accessed before, allocate if necessary and initialize `this`
        if (!flow.is(FlowFlags.ALLOCATES)) {
          // {
          //   if (!this) this = <ALLOC>
          //   this.a = X
          //   this.b = Y
          // }
          stmts.push(
            module.if(
              module.unary(nativeSizeType == NativeType.I64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
                module.local_get(thisLocal.index, nativeSizeType)
              ),
              module.local_set(thisLocal.index,
                this.makeRetain(
                  this.makeAllocation(<Class>classInstance)
                ),
              )
            )
          );
          this.makeFieldInitializationInConstructor(<Class>classInstance, stmts);
        }
        this.performAutoreleases(flow, stmts); // `this` is excluded anyway
        this.finishAutoreleases(flow, stmts);
        stmts.push(module.local_get(thisLocal.index, this.options.nativeSizeType));
        flow.set(FlowFlags.RETURNS | FlowFlags.RETURNS_NONNULL | FlowFlags.TERMINATES);
      }

      // check that super has been called if this is a derived class
      if ((<Class>classInstance).base && !flow.is(FlowFlags.CALLS_SUPER)) {
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
    }

    return stmts;
  }

  // === Classes ==================================================================================

  /** Compiles a priorly resolved class. */
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
            if (!element.is(CommonFlags.GENERIC)) {
              let instance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
              if (instance) this.compileFunction(instance);
            }
            break;
          }
          case ElementKind.PROPERTY_PROTOTYPE: {
            let getterPrototype = (<PropertyPrototype>element).getterPrototype;
            if (getterPrototype) {
              assert(!getterPrototype.is(CommonFlags.GENERIC));
              let instance = this.resolver.resolveFunction(getterPrototype, null);
              if (instance) this.compileFunction(instance);
            }
            let setterPrototype = (<PropertyPrototype>element).setterPrototype;
            if (setterPrototype) {
              assert(!setterPrototype.is(CommonFlags.GENERIC));
              let instance = this.resolver.resolveFunction(setterPrototype, null);
              if (instance) this.compileFunction(instance);
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
            if (!element.is(CommonFlags.GENERIC)) {
              let instance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
              if (instance) this.compileFunction(instance);
            }
            break;
          }
          case ElementKind.FIELD_PROTOTYPE: {
            element.set(CommonFlags.COMPILED);
            break;
          }
          case ElementKind.PROPERTY: {
            let getterInstance = (<Property>element).getterInstance;
            if (getterInstance) this.compileFunction(getterInstance);
            let setterInstance = (<Property>element).setterInstance;
            if (setterInstance) this.compileFunction(setterInstance);
            break;
          }
        }
      }
    }
    return true;
  }

  // === Memory ===================================================================================

  /** Adds a static memory segment with the specified data. */
  addMemorySegment(buffer: Uint8Array, alignment: i32 = 16): MemorySegment {
    var memoryOffset = i64_align(this.memoryOffset, alignment);
    var segment = MemorySegment.create(buffer, memoryOffset);
    this.memorySegments.push(segment);
    this.memoryOffset = i64_add(memoryOffset, i64_new(buffer.length, 0));
    return segment;
  }

  /** Ensures that a string exists in static memory and returns a pointer to it. Deduplicates. */
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
      return this.module.i64(i64_low(ref), i64_high(ref));
    } else {
      assert(i64_is_u32(ref));
      return this.module.i32(i64_low(ref));
    }
  }

  /** Adds a buffer to static memory and returns the created segment. */
  private addStaticBuffer(elementType: Type, values: ExpressionRef[]): MemorySegment {
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

  /** Adds an array header to static memory and returns the created segment. */
  private addStaticArrayHeader(elementType: Type, bufferSegment: MemorySegment): MemorySegment {
    var program = this.program;
    var runtimeHeaderSize = program.runtimeHeaderSize;
    var arrayPrototype = assert(program.arrayPrototype);
    var arrayInstance = assert(this.resolver.resolveClass(arrayPrototype, [ elementType ]));
    var arrayInstanceSize = arrayInstance.nextMemoryOffset;
    var bufferLength = bufferSegment.buffer.length - runtimeHeaderSize;
    var arrayLength = i32(bufferLength / elementType.byteSize);

    var buf = new Uint8Array(runtimeHeaderSize + arrayInstanceSize);
    program.writeRuntimeHeader(buf, 0, arrayInstance, arrayInstanceSize);

    var bufferAddress32 = i64_low(bufferSegment.offset) + runtimeHeaderSize;
    assert(!program.options.isWasm64); // TODO
    assert(arrayInstance.writeField("buffer", bufferAddress32, buf, runtimeHeaderSize));
    assert(arrayInstance.writeField("dataStart", bufferAddress32, buf, runtimeHeaderSize));
    assert(arrayInstance.writeField("byteLength", bufferLength, buf, runtimeHeaderSize));
    assert(arrayInstance.writeField("length_", arrayLength, buf, runtimeHeaderSize));

    return this.addMemorySegment(buf);
  }

  // === Table ====================================================================================

  /** Ensures that a table entry exists for the specified function and returns its index. */
  ensureFunctionTableEntry(instance: Function): i32 {
    assert(instance.is(CommonFlags.COMPILED));
    var index = instance.functionTableIndex;
    if (index >= 0) {
      assert(index != 0); // first elem must be blank
      return index;
    }
    var functionTable = this.functionTable;
    index = 1 + functionTable.length; // first elem is blank
    if (!instance.is(CommonFlags.TRAMPOLINE) && instance.signature.requiredParameters < instance.signature.parameterTypes.length) {
      // insert the trampoline if the function has optional parameters
      instance = this.ensureTrampoline(instance);
    }
    functionTable.push(instance.internalName);
    instance.functionTableIndex = index;
    return index;
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
        let element = this.program.getElementByDeclaration(<NamespaceDeclaration>statement);
        if (element) {
          // any potentiall merged element
          let previousParent = this.currentParent;
          this.currentParent = element;
          let memberStatements = (<NamespaceDeclaration>statement).members;
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
        if ((<ExportStatement>statement).internalPath != null) {
          this.compileFileByPath(
            <string>(<ExportStatement>statement).internalPath,
            <StringLiteralExpression>(<ExportStatement>statement).path
          );
        }
        break;
      }
      case NodeKind.EXPORTDEFAULT: {
        this.compileTopLevelStatement((<ExportDefaultStatement>statement).declaration, body);
        break;
      }
      case NodeKind.IMPORT: {
        this.compileFileByPath(
          (<ImportStatement>statement).internalPath,
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
          DiagnosticCode.Not_implemented,
          statement.range
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
            for (let j = 0, k = getBlockChildCount(stmt); j < k; ++j) stmts.push(getBlockChild(stmt, j));
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
    if (statement.label) {
      this.error(
        DiagnosticCode.Not_implemented,
        statement.label.range
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
        DiagnosticCode.Not_implemented,
        label.range
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
    while (current && current.continueLabel === continueLabel) {
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
      let condExpr = module.precomputeExpression(
        this.makeIsTrueish(
          this.compileExpression(statement.condition, Type.i32),
          this.currentType
        )
      );
      let condKind = evaluateConditionKind(condExpr);

      // Shortcut if condition is always false
      if (condKind == ConditionKind.FALSE) {
        if (hasSideEffects(condExpr)) {
          bodyStmts.push(
            module.drop(condExpr)
          );
        }
        this.performAutoreleases(condFlow, bodyStmts);
        flow.inherit(bodyFlow);
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
        // if so recompile by unifying local flags between iterations.
        if (Flow.hasIncompatibleLocalStates(flowBefore, flow)) {
          assert(!flowAfter); // should work on the first attempt
          outerFlow.popBreakLabel();
          this.currentFlow = outerFlow;
          return this.doCompileWhileStatement(statement, flow);
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
      condExpr = module.precomputeExpression(
        this.makeIsTrueish(
          this.compileExpression(condition, Type.bool),
          this.currentType
        )
      );
      condKind = evaluateConditionKind(condExpr);

      // Shortcut if condition is always false (body never runs)
      if (condKind == ConditionKind.FALSE) {
        if (hasSideEffects(condExpr)) {
          stmts.push(
            module.drop(condExpr)
          );
        }
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
      // so recompile by unifying local flags between iterations.
      if (Flow.hasIncompatibleLocalStates(flowBefore, flow)) {
        assert(!flowAfter); // should work on the first attempt
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
    var condExpr = module.precomputeExpression(
      this.makeIsTrueish(
        this.compileExpression(statement.condition, Type.bool),
        this.currentType
      )
    );
    var condKind = evaluateConditionKind(condExpr);

    // Shortcut if the condition is constant
    switch (condKind) {
      case ConditionKind.TRUE: {
        if (hasSideEffects(condExpr)) {
          return module.block(null, [
            module.drop(condExpr),
            this.compileStatement(ifTrue)
          ]);
        }
        return this.compileStatement(ifTrue);
      }
      case ConditionKind.FALSE: {
        if (hasSideEffects(condExpr)) {
          return ifFalse
            ? module.block(null, [
                module.drop(condExpr),
                this.compileStatement(ifFalse)
              ])
            : module.drop(condExpr);
        }
        return ifFalse
          ? this.compileStatement(ifFalse)
          : module.nop();
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
    if (thenFlow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS)) {
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
      if (elseFlow.isAny(FlowFlags.TERMINATES | FlowFlags.BREAKS)) {
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

    // Remember that this flow returns
    flow.set(FlowFlags.RETURNS | FlowFlags.TERMINATES);

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

    if (returnType != Type.void && stmts.length) {
      let temp = flow.getTempLocal(returnType);
      if (flow.isNonnull(expr, returnType)) flow.setLocalFlag(temp.index, LocalFlags.NONNULL);
      stmts.unshift(
        module.local_set(temp.index, expr)
      );
      expr = module.local_get(temp.index, returnType.toNativeType());
      flow.freeTempLocal(temp);
    }
    flow.freeScopedLocals();

    // If the last statement anyway, make it the block's return value
    if (isLastInBody && expr && returnType != Type.void) {
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
        breaks[breakIndex++] = module.br("case" + i.toString(10) + "|" + context,
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
        ? "case" + defaultIndex.toString(10)
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
      let nextLabel = isLast ? breakLabel : "case" + (i + 1).toString(10) + "|" + context;
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
    var flow = this.currentFlow;

    // Remember that this branch throws
    flow.set(FlowFlags.THROWS | FlowFlags.TERMINATES);

    var stmts = new Array<ExpressionRef>();
    this.finishAutoreleases(flow, stmts);

    // TODO: requires exception-handling spec.
    var value = statement.value;
    var message: Expression | null = null;
    if (value.kind == NodeKind.NEW) {
      let newArgs = (<NewExpression>value).arguments;
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
      DiagnosticCode.Not_implemented,
      statement.range
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
      if (declaration.type) {
        type = resolver.resolveType( // reports
          declaration.type,
          flow.actualFunction,
          flow.contextualTypeArguments
        );
        if (!type) continue;
        if (declaration.initializer) {
          initExpr = this.compileExpression(declaration.initializer, type, // reports
            Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN
          );
          initAutoreleaseSkipped = this.skippedAutoreleases.has(initExpr);
        }

      // Otherwise infer type from initializer
      } else if (declaration.initializer) {
        initExpr = this.compileExpression(declaration.initializer, Type.auto,
          Constraints.WILL_RETAIN
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
                return module.unreachable();
              }
            }
            // Create a virtual local that doesn't actually exist in WebAssembly
            let scopedLocals = flow.scopedLocals;
            if (!scopedLocals) flow.scopedLocals = scopedLocals = new Map();
            else if (scopedLocals.has(name)) {
              let existing = scopedLocals.get(name)!;
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
                  : this.makeRetain(initExpr)
              )
            );
          } else {
            initializers.push(
              module.local_set(local.index, initExpr)
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
              module.local_set(local.index,
                this.makeZero(type)
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
    var condExpr = module.precomputeExpression(
      this.makeIsTrueish(
        this.compileExpression(statement.condition, Type.bool),
        this.currentType
      )
    );
    var condKind = evaluateConditionKind(condExpr);

    // Shortcut if condition is always false (body never runs)
    if (condKind == ConditionKind.FALSE) {
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

    // Check if body terminates
    if (bodyFlow.is(FlowFlags.TERMINATES)) {
      bodyStmts.push(
        module.unreachable()
      );
      if (condKind == ConditionKind.TRUE) flow.inherit(bodyFlow);
      else flow.inheritBranch(bodyFlow);
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
      // if so recompile by unifying local flags between iterations.
      // Here: Only relevant if flow does not always break.
      if (!breaks && Flow.hasIncompatibleLocalStates(flowBefore, flow)) {
        assert(!flowAfter); // should work on the first attempt
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
    assert(element.is(CommonFlags.INLINED));
    var type = element.type;
    switch (
      !(constraints & (Constraints.CONV_IMPLICIT | Constraints.CONV_EXPLICIT)) &&
      type.is(TypeFlags.INTEGER) &&
      contextualType.is(TypeFlags.INTEGER) &&
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
          return this.module.f64((<VariableLikeElement>element).constantFloatValue);
        }
        // otherwise fall-through: basically precomputes f32.demote/f64 of NaN / Infinity
        this.currentType = Type.f32;
      }
      case TypeKind.F32: {
        return this.module.f32((<VariableLikeElement>element).constantFloatValue);
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
        this.error(
          DiagnosticCode.Not_implemented,
          expression.range
        );
        expr = this.module.unreachable();
      }
    }
    // ensure conversion and wrapping in case the respective function doesn't on its own
    var currentType = this.currentType;
    var wrap = (constraints & Constraints.MUST_WRAP) != 0;
    if (currentType != contextualType.nonNullableType) { // allow assigning non-nullable to nullable
      if (constraints & Constraints.CONV_EXPLICIT) {
        expr = this.convertExpression(expr, currentType, contextualType, true, wrap, expression);
        wrap = false;
        this.currentType = contextualType;
      } else if (constraints & Constraints.CONV_IMPLICIT) {
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

  /** Compiles and precomputes an expression, possibly yielding a costant value. */
  precomputeExpression(
    expression: Expression,
    contextualType: Type,
    constraints: Constraints = Constraints.NONE
  ): ExpressionRef {
    return this.module.precomputeExpression(
      this.compileExpression(expression, contextualType, constraints)
    );
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
        if (index == -1) expr = this.makeRetain(expr);
        this.skippedAutoreleases.add(expr);
      }
    }
    // remember return states
    if (!flow.canOverflow(expr, returnType)) flow.set(FlowFlags.RETURNS_WRAPPED);
    if (flow.isNonnull(expr, returnType)) flow.set(FlowFlags.RETURNS_NONNULL);
    return expr;
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
      return module.unreachable();
    }

    // any to void
    if (toType.kind == TypeKind.VOID) return module.drop(expr);

    // reference involved
    if (fromType.is(TypeFlags.REFERENCE) || toType.is(TypeFlags.REFERENCE)) {
      if (this.currentFlow.isNonnull(expr, fromType)) {
        fromType = fromType.nonNullableType;
      } else if (explicit && fromType.is(TypeFlags.NULLABLE) && !toType.is(TypeFlags.NULLABLE)) {
        // explicit conversion from nullable to non-nullable requires a runtime
        // check here because nonnull state above already didn't know better
        if (!this.options.noAssert) {
          expr = this.makeRuntimeNonNullCheck(expr, fromType, reportNode);
        }
        fromType = fromType.nonNullableType;
      }
      if (fromType.isAssignableTo(toType)) { // downcast or same
        assert(fromType.kind == toType.kind);
        this.currentType = toType;
        return expr;
      }
      if (explicit && toType.nonNullableType.isAssignableTo(fromType)) { // upcast
        // <Cat | null>(<Animal>maybeCat)
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

    if (!fromType.isAssignableTo(toType)) {
      if (!explicit) {
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
            expr = module.unary(UnaryOp.PromoteF32, expr);
          }

          // otherwise f32 to f32

        // f64 to f32
        } else if (toType.kind == TypeKind.F32) {
          expr = module.unary(UnaryOp.DemoteF64, expr);
        }

        // otherwise f64 to f64

      // float to int
      } else if (toType.is(TypeFlags.INTEGER)) {

        // f32 to int
        if (fromType.kind == TypeKind.F32) {
          if (toType == Type.bool) {
            expr = module.binary(BinaryOp.NeF32, expr, module.f32(0));
            wrap = false;
          } else if (toType.is(TypeFlags.SIGNED)) {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.unary(UnaryOp.TruncF32ToI64, expr);
            } else {
              expr = module.unary(UnaryOp.TruncF32ToI32, expr);
            }
          } else {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.unary(UnaryOp.TruncF32ToU64, expr);
            } else {
              expr = module.unary(UnaryOp.TruncF32ToU32, expr);
            }
          }

        // f64 to int
        } else {
          if (toType == Type.bool) {
            expr = module.binary(BinaryOp.NeF64, expr, module.f64(0));
            wrap = false;
          } else if (toType.is(TypeFlags.SIGNED)) {
            if (toType.is(TypeFlags.LONG)) {
              expr = module.unary(UnaryOp.TruncF64ToI64, expr);
            } else {
              expr = module.unary(UnaryOp.TruncF64ToI32, expr);
            }
          } else {
            if (toType.is(TypeFlags.LONG)) {
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
    } else if (fromType.is(TypeFlags.INTEGER) && toType.is(TypeFlags.FLOAT)) {

      // int to f32
      if (toType.kind == TypeKind.F32) {
        if (fromType.is(TypeFlags.LONG)) {
          expr = module.unary(
            fromType.is(TypeFlags.SIGNED)
              ? UnaryOp.ConvertI64ToF32
              : UnaryOp.ConvertU64ToF32,
            expr
          );
        } else {
          expr = module.unary(
            fromType.is(TypeFlags.SIGNED)
              ? UnaryOp.ConvertI32ToF32
              : UnaryOp.ConvertU32ToF32,
            expr
          );
        }

      // int to f64
      } else {
        if (fromType.is(TypeFlags.LONG)) {
          expr = module.unary(
            fromType.is(TypeFlags.SIGNED)
              ? UnaryOp.ConvertI64ToF64
              : UnaryOp.ConvertU64ToF64,
            expr
          );
        } else {
          expr = module.unary(
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
          expr = module.binary(BinaryOp.NeI64, expr, module.i64(0));
          wrap = false;
        } else if (!toType.is(TypeFlags.LONG)) {
          expr = module.unary(UnaryOp.WrapI64, expr); // discards upper bits
        }

      // i32 or smaller to i64
      } else if (toType.is(TypeFlags.LONG)) {
        expr = module.unary(
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
          flow.contextualTypeArguments
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
      default: assert(false);
    }
    return this.module.unreachable();
  }

  private f32ModInstance: Function | null = null;
  private f64ModInstance: Function | null = null;
  private f32PowInstance: Function | null = null;
  private f64PowInstance: Function | null = null;

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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "<", leftType.toString()
          );
          return this.module.unreachable();
        }

        rightExpr = this.compileExpression(right, leftType);
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
          return module.unreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            expr = module.binary(BinaryOp.LtI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64: {
            expr = module.binary(BinaryOp.LtI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.binary(
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
            expr = module.binary(BinaryOp.LtU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.LtU64
                : BinaryOp.LtU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.LtU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.LtF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.LtF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.GREATERTHAN: {
        leftExpr = this.compileExpression(left, contextualType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, ">", leftType.toString()
          );
          return this.module.unreachable();
        }

        rightExpr = this.compileExpression(right, leftType);
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
          return module.unreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            expr = module.binary(BinaryOp.GtI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.GtI64
                : BinaryOp.GtI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.binary(BinaryOp.GtI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.GtU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.GtU64
                : BinaryOp.GtU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.GtU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.GtF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.GtF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.LESSTHAN_EQUALS: {
        leftExpr = this.compileExpression(left, contextualType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "<=", leftType.toString()
          );
          return this.module.unreachable();
        }

        rightExpr = this.compileExpression(right, leftType);
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
          return module.unreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            expr = module.binary(BinaryOp.LeI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.LeI64
                : BinaryOp.LeI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.binary(BinaryOp.LeI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.LeU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.LeU64
                : BinaryOp.LeU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.LeU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.LeF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.LeF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.GREATERTHAN_EQUALS: {
        leftExpr = this.compileExpression(left, contextualType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, ">=", leftType.toString()
          );
          return this.module.unreachable();
        }

        rightExpr = this.compileExpression(right, leftType);
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
          return module.unreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            expr = module.binary(BinaryOp.GeI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.GeI64
                : BinaryOp.GeI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.binary(BinaryOp.GeI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.GeU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.GeU64
                : BinaryOp.GeU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.GeU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.GeF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.GeF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
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

        leftExpr = this.compileExpression(left, contextualType);
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

        rightExpr = this.compileExpression(right, leftType);
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
          return module.unreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.EqI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
            expr = module.binary(BinaryOp.EqI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.EqF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.EqF64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.V128: {
            expr = module.unary(UnaryOp.AllTrueI8x16,
              module.binary(BinaryOp.EqI8x16, leftExpr, rightExpr)
            );
            break;
          }
          case TypeKind.ANYREF: {
            // TODO: ref.eq
            this.error(
              DiagnosticCode.Not_implemented,
              expression.range
            );
            expr = module.unreachable();
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        this.currentType = Type.bool;
        break;
      }
      case Token.EXCLAMATION_EQUALS_EQUALS:
      case Token.EXCLAMATION_EQUALS: {
        leftExpr = this.compileExpression(left, contextualType);
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

        rightExpr = this.compileExpression(right, leftType);
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
          return module.unreachable();
        }
        switch (commonType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.NeI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
            expr = module.binary(BinaryOp.NeI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.NeF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.NeF64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.V128: {
            expr = module.unary(UnaryOp.AnyTrueI8x16,
              module.binary(BinaryOp.NeI8x16, leftExpr, rightExpr)
            );
            break;
          }
          case TypeKind.ANYREF: {
            // TODO: !ref.eq
            this.error(
              DiagnosticCode.Not_implemented,
              expression.range
            );
            expr = module.unreachable();
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
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
        leftExpr = this.compileExpression(left, contextualType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "+", leftType.toString()
          );
          return this.module.unreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
        } else {
          rightExpr = this.compileExpression(right, leftType);
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
            return module.unreachable();
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
            expr = module.binary(BinaryOp.AddI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
            expr = module.binary(BinaryOp.AddI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.AddF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.AddF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.MINUS_EQUALS: compound = true;
      case Token.MINUS: {
        leftExpr = this.compileExpression(left, contextualType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "-", leftType.toString()
          );
          return this.module.unreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
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
            return module.unreachable();
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
            expr = module.binary(BinaryOp.SubI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
            expr = module.binary(BinaryOp.SubI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.SubF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.SubF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.ASTERISK_EQUALS: compound = true;
      case Token.ASTERISK: {
        leftExpr = this.compileExpression(left, contextualType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "*", leftType.toString()
          );
          return this.module.unreachable();
        }

        if (compound) {
          leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType);
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
        } else {
          rightExpr = this.compileExpression(right, leftType);
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
            return module.unreachable();
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
            expr = module.binary(BinaryOp.MulI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
            expr = module.binary(BinaryOp.MulI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.MulF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.MulF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.ASTERISK_ASTERISK_EQUALS: compound = true;
      case Token.ASTERISK_ASTERISK: {
        leftExpr = this.compileExpression(left, contextualType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "**", leftType.toString()
          );
          return this.module.unreachable();
        }

        let targetType = leftType;
        let instance: Function | null;

        // Mathf.pow if lhs is f32 (result is f32)
        if (this.currentType.kind == TypeKind.F32) {
          rightExpr = this.compileExpression(right, Type.f32, Constraints.CONV_IMPLICIT);
          rightType = this.currentType;
          if (!(instance = this.f32PowInstance)) {
            let namespace = this.program.lookupGlobal(CommonNames.Mathf);
            if (!namespace) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Mathf"
              );
              expr = module.unreachable();
              break;
            }
            let prototype = namespace.members ? namespace.members.get(CommonNames.pow) : null;
            if (!prototype) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Mathf.pow"
              );
              expr = module.unreachable();
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
          rightExpr = this.compileExpression(right, Type.f64, Constraints.CONV_IMPLICIT);
          rightType = this.currentType;
          if (!(instance = this.f64PowInstance)) {
            let namespace = this.program.lookupGlobal(CommonNames.Math);
            if (!namespace) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Math"
              );
              expr = module.unreachable();
              break;
            }
            let prototype = namespace.members ? namespace.members.get(CommonNames.pow) : null;
            if (!prototype) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Math.pow"
              );
              expr = module.unreachable();
              break;
            }
            assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
            this.f64PowInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
          }
        }
        if (!(instance && this.compileFunction(instance))) {
          expr = module.unreachable();
        } else {
          expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ], expression);
          if (compound && targetType != this.currentType) {
            // this yields a proper error if target is i32 for example
            expr = this.convertExpression(expr, this.currentType, targetType, false, false, expression);
          }
        }
        break;
      }
      case Token.SLASH_EQUALS: compound = true;
      case Token.SLASH: {
        leftExpr = this.compileExpression(left, contextualType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "/", leftType.toString()
          );
          return this.module.unreachable();
        }

        if (compound) {
          leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType);
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
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
            return module.unreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:  // signed div on signed small integers might overflow, e.g. -128/-1
          case TypeKind.I16: // ^
          case TypeKind.I32: {
            expr = module.binary(BinaryOp.DivI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.DivI64
                : BinaryOp.DivI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.binary(BinaryOp.DivI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.DivU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.DivU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.DivU64
                : BinaryOp.DivU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.DivU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            expr = module.binary(BinaryOp.DivF32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F64: {
            expr = module.binary(BinaryOp.DivF64, leftExpr, rightExpr);
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.PERCENT_EQUALS: compound = true;
      case Token.PERCENT: {
        leftExpr = this.compileExpression(left, contextualType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "%", leftType.toString()
          );
          return this.module.unreachable();
        }

        if (compound) {
          leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType);
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
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
            return module.unreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16: {
            expr = module.binary(BinaryOp.RemI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I32: {
            expr = module.binary(BinaryOp.RemI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.RemI64
                : BinaryOp.RemI32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.I64: {
            expr = module.binary(BinaryOp.RemI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.RemU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.RemU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
            expr = module.binary(
              this.options.isWasm64
                ? BinaryOp.RemU64
                : BinaryOp.RemU32,
              leftExpr,
              rightExpr
            );
            break;
          }
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.RemU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.F32: {
            let instance = this.f32ModInstance;
            if (!instance) {
              let namespace = this.program.lookupGlobal(CommonNames.Mathf);
              if (!namespace) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Mathf"
                );
                expr = module.unreachable();
                break;
              }
              let prototype = namespace.members ? namespace.members.get(CommonNames.mod) : null;
              if (!prototype) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Mathf.mod"
                );
                expr = module.unreachable();
                break;
              }
              assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
              this.f32ModInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
            }
            if (!(instance && this.compileFunction(instance))) {
              expr = module.unreachable();
            } else {
              expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ], expression);
            }
            break;
          }
          case TypeKind.F64: {
            let instance = this.f64ModInstance;
            if (!instance) {
              let namespace = this.program.lookupGlobal(CommonNames.Math);
              if (!namespace) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Math"
                );
                expr = module.unreachable();
                break;
              }
              let prototype = namespace.members ? namespace.members.get(CommonNames.mod) : null;
              if (!prototype) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Math.mod"
                );
                expr = module.unreachable();
                break;
              }
              assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
              this.f64ModInstance = instance = this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
            }
            if (!(instance && this.compileFunction(instance))) {
              expr = module.unreachable();
            } else {
              expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ], expression);
            }
            break;
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.LESSTHAN_LESSTHAN_EQUALS: compound = true;
      case Token.LESSTHAN_LESSTHAN: {
        leftExpr = this.compileExpression(left, contextualType.intType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "<<", leftType.toString()
          );
          return this.module.unreachable();
        }

        rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
        rightType = this.currentType;
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.ShlI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.ShlI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
              expression.range, "<<", this.currentType.toString()
            );
            return module.unreachable();
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.GREATERTHAN_GREATERTHAN_EQUALS: compound = true;
      case Token.GREATERTHAN_GREATERTHAN: {
        leftExpr = this.compileExpression(left, contextualType.intType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, ">>", leftType.toString()
          );
          return this.module.unreachable();
        }

        leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType); // must clear garbage bits
        rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
        rightType = this.currentType;
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16: {
            expr = module.binary(BinaryOp.ShrI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I32: {
            expr = module.binary(BinaryOp.ShrI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64: {
            expr = module.binary(BinaryOp.ShrI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.ISIZE: {
            expr = module.binary(
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
            expr = module.binary(BinaryOp.ShrU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.ShrU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.ShrU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE: {
            expr = module.binary(
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
              expression.range, ">>", this.currentType.toString()
            );
            return module.unreachable();
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS: compound = true;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: {
        leftExpr = this.compileExpression(left, contextualType.intType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, ">>>", leftType.toString()
          );
          return this.module.unreachable();
        }

        leftExpr = this.ensureSmallIntegerWrap(leftExpr, leftType); // must clear garbage bits
        rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
        rightType = this.currentType;
        switch (this.currentType.kind) {
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: { // assumes that unsigned shr on unsigned small integers does not overflow
            expr = module.binary(BinaryOp.ShrU32, leftExpr, rightExpr);
          }
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.ShrU32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.ShrU64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
              expression.range, ">>>", this.currentType.toString()
            );
            return module.unreachable();
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.AMPERSAND_EQUALS: compound = true;
      case Token.AMPERSAND: {
        leftExpr = this.compileExpression(left, contextualType.intType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "&", leftType.toString()
          );
          return this.module.unreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
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
            return module.unreachable();
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
            expr = module.binary(BinaryOp.AndI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.AndI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
              expression.range, "&", this.currentType.toString()
            );
            return module.unreachable();
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.BAR_EQUALS: compound = true;
      case Token.BAR: {
        leftExpr = this.compileExpression(left, contextualType.intType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "|", leftType.toString()
          );
          return this.module.unreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
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
            return module.unreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.OrI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.OrI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.OrI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
              expression.range, "|", this.currentType.toString()
            );
            return module.unreachable();
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
        break;
      }
      case Token.CARET_EQUALS: compound = true;
      case Token.CARET: {
        leftExpr = this.compileExpression(left, contextualType.intType);
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
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "^", leftType.toString()
          );
          return this.module.unreachable();
        }

        if (compound) {
          rightExpr = this.compileExpression(right, leftType, Constraints.CONV_IMPLICIT);
          rightType = this.currentType;
        } else {
          rightExpr = this.compileExpression(right, leftType);
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
            return module.unreachable();
          }
        }
        switch (this.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: {
            expr = module.binary(BinaryOp.XorI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I32:
          case TypeKind.U32: {
            expr = module.binary(BinaryOp.XorI32, leftExpr, rightExpr);
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.binary(BinaryOp.XorI64, leftExpr, rightExpr);
            break;
          }
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            expr = module.binary(
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
              expression.range, "^", this.currentType.toString()
            );
            return module.unreachable();
          }
          default: {
            assert(false);
            expr = module.unreachable();
          }
        }
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
        rightExpr = this.compileExpression(right, leftType, inheritedConstraints | Constraints.CONV_IMPLICIT);
        rightType = leftType;

        // simplify if only interested in true or false
        if (contextualType == Type.bool || contextualType == Type.void) {
          rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType);
          rightFlow.freeScopedLocals();
          this.currentFlow = flow;
          expr = module.if(
            this.makeIsTrueish(leftExpr, leftType),
            this.makeIsTrueish(rightExpr, rightType),
            module.i32(0)
          );
          this.currentType = Type.bool;

        } else {

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
                rightExpr = this.makeRetain(rightExpr);
                rightAutoreleaseSkipped = true;
              }
            } else if (!(constraints & Constraints.WILL_RETAIN)) { // otherwise keep right alive a little longer
              rightExpr = this.delayAutorelease(rightExpr, rightType, rightFlow, flow);
            }

            let rightStmts = new Array<ExpressionRef>();
            if (leftAutoreleaseSkipped) { // left turned out to be true'ish and is dropped
              rightStmts.unshift(
                this.makeRelease(
                  module.local_get(temp.index, leftType.toNativeType())
                )
              );
            }
            rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType, rightStmts);
            rightFlow.freeScopedLocals();
            this.currentFlow = flow;

            expr = module.if(
              this.makeIsTrueish(leftExpr, leftType),
              rightExpr,
              retainLeftInElse
                ? this.makeRetain(
                    module.local_get(temp.index, leftType.toNativeType())
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
                this.makeIsTrueish(leftExpr, this.currentType),
                rightExpr,
                expr
              );

            // if not possible, tee left to a temp
            } else {
              let tempLocal = flow.getTempLocal(leftType);
              if (!flow.canOverflow(leftExpr, leftType)) flow.setLocalFlag(tempLocal.index, LocalFlags.WRAPPED);
              if (flow.isNonnull(leftExpr, leftType)) flow.setLocalFlag(tempLocal.index, LocalFlags.NONNULL);
              expr = module.if(
                this.makeIsTrueish(module.local_tee(tempLocal.index, leftExpr), leftType),
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
        rightExpr = this.compileExpression(right, leftType, inheritedConstraints | Constraints.CONV_IMPLICIT);
        rightType = leftType;

        // simplify if only interested in true or false
        if (contextualType == Type.bool || contextualType == Type.void) {
          rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, leftType);
          rightFlow.freeScopedLocals();
          this.currentFlow = flow;
          expr = module.if(
            this.makeIsTrueish(leftExpr, leftType),
            module.i32(1),
            this.makeIsTrueish(rightExpr, rightType)
          );
          this.currentType = Type.bool;

        } else {

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
                rightExpr = this.makeRetain(rightExpr);
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
                  module.local_get(temp.index, leftType.toNativeType())
                )
              );
            }
            rightExpr = this.performAutoreleasesWithValue(rightFlow, rightExpr, rightType, rightStmts);
            rightFlow.freeScopedLocals();
            this.currentFlow = flow;

            expr = module.if(
              this.makeIsTrueish(leftExpr, leftType),
              retainLeftInThen
                ? this.makeRetain(
                    module.local_get(temp.index, leftType.toNativeType())
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
                this.makeIsTrueish(leftExpr, leftType),
                expr,
                rightExpr
              );

            // if not possible, tee left to a temp. local
            } else {
              let temp = flow.getTempLocal(leftType);
              if (!flow.canOverflow(leftExpr, leftType)) flow.setLocalFlag(temp.index, LocalFlags.WRAPPED);
              if (flow.isNonnull(leftExpr, leftType)) flow.setLocalFlag(temp.index, LocalFlags.NONNULL);
              expr = module.if(
                this.makeIsTrueish(module.local_tee(temp.index, leftExpr), leftType),
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
    var targetType = resolver.getTypeOfElement(target) || Type.void;
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
      left,
      resolver.currentThisExpression,
      resolver.currentElementExpression,
      contextualType != Type.void
    );
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

  private compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): ExpressionRef {
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
        targetType = (<VariableLikeElement>target).type;
        if (target.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: { // static property
        let setterPrototype = (<PropertyPrototype>target).setterPrototype;
        if (!setterPrototype) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, (<Property>target).internalName
          );
          return this.module.unreachable();
        }
        let setterInstance = this.resolver.resolveFunction(setterPrototype, null, makeMap(), ReportMode.REPORT);
        if (!setterInstance) return this.module.unreachable();
        assert(setterInstance.signature.parameterTypes.length == 1); // parser must guarantee this
        targetType = setterInstance.signature.parameterTypes[0];
        if (setterPrototype.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);
        break;
      }
      case ElementKind.PROPERTY: { // instance property
        let setterInstance = (<Property>target).setterInstance;
        if (!setterInstance) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, (<Property>target).internalName
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
        let isUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
        let indexedSet = (<Class>parent).lookupOverload(OperatorKind.INDEXED_SET, isUnchecked);
        if (!indexedSet) {
          let indexedGet = (<Class>parent).lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
          if (!indexedGet) {
            this.error(
              DiagnosticCode.Index_signature_is_missing_in_type_0,
              expression.range, (<Class>parent).internalName
            );
          } else {
            this.error(
              DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
              expression.range, (<Class>parent).internalName
            );
          }
          return this.module.unreachable();
        }
        assert(indexedSet.signature.parameterTypes.length == 2); // parser must guarantee this
        targetType = indexedSet.signature.parameterTypes[1];     // 2nd parameter is the element
        if (indexedSet.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);
        break;
      }
      default: {
        this.error(
          DiagnosticCode.Not_implemented,
          expression.range
        );
        return this.module.unreachable();
      }
    }

    // compile the value and do the assignment
    assert(targetType != Type.void);
    var valueExpr = this.compileExpression(valueExpression, targetType, Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN);
    return this.makeAssignment(
      target,
      valueExpr,
      this.currentType,
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
        if (flow.isLocalFlag((<Local>target).index, LocalFlags.CONSTANT, true)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, target.internalName
          );
          this.currentType = tee ? (<Local>target).type : Type.void;
          return module.unreachable();
        }
        return this.makeLocalAssignment(<Local>target, valueExpr, valueType, tee);
      }
      case ElementKind.GLOBAL: {
        if (!this.compileGlobal(<Global>target)) return module.unreachable();
        if (target.isAny(CommonFlags.CONST | CommonFlags.READONLY)) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range,
            target.internalName
          );
          this.currentType = tee ? (<Global>target).type : Type.void;
          return module.unreachable();
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
          return module.unreachable();
        }
        return this.makeFieldAssignment(<Field>target,
          valueExpr,
          // FIXME: explicit type (currently fails due to missing null checking)
          this.compileExpression(assert(thisExpression), this.options.usizeType),
          tee
        );
      }
      case ElementKind.PROPERTY_PROTOTYPE: { // static property
        let setterPrototype = (<PropertyPrototype>target).setterPrototype;
        if (!setterPrototype) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            valueExpression.range, target.internalName
          );
          return module.unreachable();
        }
        let setterInstance = this.resolver.resolveFunction(setterPrototype, null, makeMap(), ReportMode.REPORT);
        if (!setterInstance) return module.unreachable();
        assert(setterInstance.signature.parameterTypes.length == 1);
        let valueType = setterInstance.signature.parameterTypes[0];
        if (this.skippedAutoreleases.has(valueExpr)) valueExpr = this.makeAutorelease(valueExpr, valueType, flow); // (*)
        // call just the setter if the return value isn't of interest
        if (!tee) return this.makeCallDirect(setterInstance, [ valueExpr ], valueExpression);
        // otherwise call the setter first, then the getter
        let getterPrototype = assert((<PropertyPrototype>target).getterPrototype); // must be present
        let getterInstance = this.resolver.resolveFunction(getterPrototype, null, makeMap(), ReportMode.REPORT);
        if (!getterInstance) return module.unreachable();
        let returnType = getterInstance.signature.returnType;
        assert(valueType == returnType);
        let nativeReturnType = returnType.toNativeType();
        return module.block(null, [
          this.makeCallDirect(setterInstance, [ valueExpr ], valueExpression),
          this.makeCallDirect(getterInstance, null, valueExpression) // sets currentType
        ], nativeReturnType);
      }
      case ElementKind.PROPERTY: { // instance property
        let instance = <Class>(<Property>target).parent;
        assert(instance.kind == ElementKind.CLASS);
        let setterInstance = (<Property>target).setterInstance;
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
        // call just the setter if the return value isn't of interest
        if (!tee) {
          let thisExpr = this.compileExpression(assert(thisExpression), instance.type);
          return this.makeCallDirect(setterInstance, [ thisExpr, valueExpr ], valueExpression);
        }
        // otherwise call the setter first, then the getter
        let getterInstance = assert((<Property>target).getterInstance); // must be present
        let returnType = getterInstance.signature.returnType;
        let nativeReturnType = returnType.toNativeType();
        let thisExpr = this.compileExpression(assert(thisExpression), this.options.usizeType);
        let temp = flow.getTempLocal(returnType);
        let ret = module.block(null, [
          this.makeCallDirect(setterInstance, [ // set and remember the target
            module.local_tee(temp.index, thisExpr),
            valueExpr
          ], valueExpression),
          this.makeCallDirect(getterInstance, [ // get from remembered target
            module.local_get(temp.index, nativeReturnType)
          ], valueExpression)
        ], nativeReturnType);
        flow.freeTempLocal(temp);
        return ret;
      }
      case ElementKind.INDEXSIGNATURE: {
        let instance = <Class>(<IndexSignature>target).parent;
        assert(instance.kind == ElementKind.CLASS);
        let isUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
        let indexedGet = instance.lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
        if (!indexedGet) {
          this.error(
            DiagnosticCode.Index_signature_is_missing_in_type_0,
            valueExpression.range, instance.internalName
          );
          return module.unreachable();
        }
        let indexedSet = instance.lookupOverload(OperatorKind.INDEXED_SET, isUnchecked);
        if (!indexedSet) {
          this.error(
            DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
            valueExpression.range, instance.internalName
          );
          this.currentType = tee ? indexedGet.signature.returnType : Type.void;
          return module.unreachable();
        }
        assert(indexedSet.signature.parameterTypes.length == 2);
        let valueType = indexedSet.signature.parameterTypes[1];
        if (this.skippedAutoreleases.has(valueExpr)) valueExpr = this.makeAutorelease(valueExpr, valueType, flow); // (*)
        let thisExpr = this.compileExpression(assert(thisExpression), instance.type);
        let elementExpr = this.compileExpression(assert(indexExpression), Type.i32, Constraints.CONV_IMPLICIT);
        if (tee) {
          let tempTarget = flow.getTempLocal(instance.type);
          let tempElement = flow.getTempLocal(this.currentType);
          let returnType = indexedGet.signature.returnType;
          flow.freeTempLocal(tempTarget);
          let ret = module.block(null, [
            this.makeCallDirect(indexedSet, [
              module.local_tee(tempTarget.index, thisExpr),
              module.local_tee(tempElement.index, elementExpr),
              valueExpr
            ], valueExpression),
            this.makeCallDirect(indexedGet, [
              module.local_get(tempTarget.index, tempTarget.type.toNativeType()),
              module.local_get(tempElement.index, tempElement.type.toNativeType())
            ], valueExpression)
          ], returnType.toNativeType());
          flow.freeTempLocal(tempElement);
          flow.freeTempLocal(tempTarget);
          return ret;
        } else {
          return this.makeCallDirect(indexedSet, [
            thisExpr,
            elementExpr,
            valueExpr
          ], valueExpression);
        }
      }
    }
    this.error(
      DiagnosticCode.Not_implemented,
      valueExpression.range
    );
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

    if (type.is(TypeFlags.NULLABLE)) {
      if (!valueType.is(TypeFlags.NULLABLE) || flow.isNonnull(valueExpr, type)) flow.setLocalFlag(localIndex, LocalFlags.NONNULL);
      else flow.unsetLocalFlag(localIndex, LocalFlags.NONNULL);
    }
    flow.setLocalFlag(localIndex, LocalFlags.INITIALIZED);

    if (type.isManaged) {
      let alreadyRetained = this.skippedAutoreleases.has(valueExpr);
      if (flow.isAnyLocalFlag(localIndex, LocalFlags.ANY_RETAINED)) {
        valueExpr = this.makeReplace(
          module.local_get(localIndex, type.toNativeType()),
          valueExpr,
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
        if (!alreadyRetained) valueExpr = this.makeRetain(valueExpr);
        if (tee) { // local = __retain(value, local)
          this.currentType = type;
          return module.local_tee(localIndex, valueExpr);
        } else { // void(local = __retain(value, local))
          this.currentType = Type.void;
          return module.local_set(localIndex, valueExpr);
        }
      }
    } else {
      if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
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
      let alreadyRetained = this.skippedAutoreleases.has(valueExpr);
      valueExpr = module.global_set(global.internalName,
        this.makeReplace(
          module.global_get(global.internalName, nativeType), // oldRef
          valueExpr, // newRef
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
      let tempThis = flow.getTempLocal(thisType);
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
              module.load(fieldType.byteSize, fieldType.is(TypeFlags.SIGNED), // oldRef
                module.local_get(tempThis.index, nativeThisType),
                nativeFieldType, field.memoryOffset
              ),
              module.local_tee(tempValue.index, valueExpr), // newRef
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
            module.load(fieldType.byteSize, fieldType.is(TypeFlags.SIGNED), // oldRef
              module.local_get(tempThis.index, nativeThisType),
              nativeFieldType, field.memoryOffset
            ),
            valueExpr, // newRef
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

      let classInstance = assert(actualFunction.parent); assert(classInstance.kind == ElementKind.CLASS);
      let baseClassInstance = assert((<Class>classInstance).base);
      let thisLocal = assert(flow.lookupLocal(CommonNames.this_));
      let nativeSizeType = this.options.nativeSizeType;

      // {
      //   this = super(this || <ALLOC>, ...args)
      //   this.a = X
      //   this.b = Y
      // }
      let theCall = this.compileCallDirect(
        this.ensureConstructor(baseClassInstance, expression),
        expression.arguments,
        expression,
        module.if(
          module.local_get(thisLocal.index, nativeSizeType),
          module.local_get(thisLocal.index, nativeSizeType),
          this.makeRetain(
            this.makeAllocation(<Class>classInstance)
          )
        ),
        Constraints.WILL_RETAIN
      );
      assert(baseClassInstance.type.isUnmanaged || this.skippedAutoreleases.has(theCall)); // guaranteed
      let stmts: ExpressionRef[] = [
        module.local_set(thisLocal.index, theCall)
      ];
      this.makeFieldInitializationInConstructor(<Class>classInstance, stmts);

      // check that super had been called before accessing `this`
      if (flow.isAny(
        FlowFlags.ALLOCATES |
        FlowFlags.CONDITIONALLY_ALLOCATES
      )) {
        this.error(
          DiagnosticCode._super_must_be_called_before_accessing_this_in_the_constructor_of_a_derived_class,
          expression.range
        );
        return module.unreachable();
      }
      flow.set(FlowFlags.ALLOCATES | FlowFlags.CALLS_SUPER);
      this.currentType = Type.void;
      return module.flatten(stmts);
    }

    // otherwise resolve normally
    var target = this.resolver.lookupExpression(expression.expression, flow); // reports
    if (!target) return module.unreachable();

    var signature: Signature | null;
    var indexArg: ExpressionRef;
    switch (target.kind) {

      // direct call: concrete function
      case ElementKind.FUNCTION_PROTOTYPE: {
        let prototype = <FunctionPrototype>target;

        // builtins handle present respectively omitted type arguments on their own
        if (prototype.hasDecorator(DecoratorFlags.BUILTIN)) {
          return this.compileCallExpressionBuiltin(prototype, expression, contextualType);
        }

        let thisExpression = this.resolver.currentThisExpression;
        let instance = this.resolver.maybeInferCall(expression, prototype, flow);
        if (!instance) return this.module.unreachable();
        return this.compileCallDirect(
          instance,
          expression.arguments,
          expression,
          instance.is(CommonFlags.INSTANCE)
            ? this.compileExpression(assert(thisExpression), this.options.usizeType)
            : 0,
          constraints
        );
      }

      // indirect call: index argument with signature (non-generic, can't be inlined)
      case ElementKind.LOCAL: {
        if (signature = (<Local>target).type.signatureReference) {
          if ((<Local>target).is(CommonFlags.INLINED)) {
            indexArg = module.i32(i64_low((<Local>target).constantIntegerValue));
          } else {
            indexArg = module.local_get((<Local>target).index, NativeType.I32);
          }
          break;
        } else {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, (<Local>target).type.toString()
          );
          return module.unreachable();
        }
      }
      case ElementKind.GLOBAL: {
        if (signature = (<Global>target).type.signatureReference) {
          indexArg = module.global_get((<Global>target).internalName, (<Global>target).type.toNativeType());
          break;
        } else {
          this.error(
            DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
            expression.range, (<Global>target).type.toString()
          );
          return module.unreachable();
        }
      }
      case ElementKind.FIELD: {
        let type = (<Field>target).type;
        if (signature = type.signatureReference) {
          let thisExpression = assert(this.resolver.currentThisExpression);
          let thisExpr = this.compileExpression(thisExpression, this.options.usizeType);
          indexArg = module.load(
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
          return module.unreachable();
        }
      }
      case ElementKind.FUNCTION_TARGET: {
        signature = (<FunctionTarget>target).signature;
        indexArg = this.compileExpression(expression.expression, (<FunctionTarget>target).type, Constraints.CONV_IMPLICIT);
        break;
      }

      case ElementKind.PROPERTY_PROTOTYPE: { // static property
        let getterPrototype = assert((<PropertyPrototype>target).getterPrototype);
        let getterInstance = this.resolver.resolveFunction(getterPrototype, null);
        if (!getterInstance) return module.unreachable();
        indexArg = this.compileCallDirect(getterInstance, [], expression.expression);
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
      case ElementKind.PROPERTY: { // instance property
        let getterInstance = assert((<Property>target).getterInstance);
        indexArg = this.compileCallDirect(getterInstance, [], expression.expression,
          this.compileExpression(assert(this.resolver.currentThisExpression), this.options.usizeType)
        );
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
        makeMap<string,Type>(this.currentFlow.contextualTypeArguments),
        expression
      );
    }

    // now compile the builtin, which usually returns a block of code that replaces the call.
    return compileBuiltinCall(
      this,
      prototype,
      typeArguments,
      expression.arguments,
      contextualType,
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
        DiagnosticCode.The_this_types_of_each_signature_are_incompatible,
        reportNode.range
      );
      return false;
    }

    // not yet implemented (TODO: maybe some sort of an unmanaged/lightweight array?)
    var hasRest = signature.hasRest;
    if (hasRest) {
      this.error(
        DiagnosticCode.Not_implemented,
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

  /** Checks that an unsafe expression is allowed. */
  private checkUnsafe(reportNode: Node): void {
    // Library files may always use unsafe features
    if (this.options.noUnsafe && !reportNode.range.source.isLibrary) {
      this.error(
        DiagnosticCode.Operation_is_unsafe,
        reportNode.range
      );
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

    // Inline if explicitly requested
    if (instance.hasDecorator(DecoratorFlags.INLINE)) {
      assert(!instance.is(CommonFlags.TRAMPOLINE)); // doesn't make sense
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
      let argumentLocal = flow.addScopedLocal(signature.getParameterName(i), paramType, usedLocals);
      findUsedLocals(paramExpr, usedLocals);
      // inlining is aware of wrap/nonnull states:
      if (!previousFlow.canOverflow(paramExpr, paramType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.WRAPPED);
      if (flow.isNonnull(paramExpr, paramType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.NONNULL);
      // inlining is aware of skipped autoreleases:
      if (paramType.isManaged) {
        if (!this.skippedAutoreleases.has(paramExpr)) paramExpr = this.makeRetain(paramExpr);
        flow.setLocalFlag(argumentLocal.index, LocalFlags.RETAINED);
      }
      body.unshift(
        module.local_set(argumentLocal.index, paramExpr)
      );
    }
    if (thisArg) {
      let classInstance = assert(instance.parent); assert(classInstance.kind == ElementKind.CLASS);
      let thisType = assert(instance.signature.thisType);
      let thisLocal = flow.addScopedLocal(CommonNames.this_, thisType, usedLocals);
      // No need to retain `this` as it can't be reassigned and thus can't become prematurely released
      body.unshift(
        module.local_set(thisLocal.index, thisArg)
      );
      let baseInstance = (<Class>classInstance).base;
      if (baseInstance) flow.addScopedAlias(CommonNames.super_, baseInstance.type, thisLocal.index);
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
      let argumentLocal = flow.addScopedLocal(signature.getParameterName(i), initType);
      if (!flow.canOverflow(initExpr, initType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.WRAPPED);
      if (flow.isNonnull(initExpr, initType)) flow.setLocalFlag(argumentLocal.index, LocalFlags.NONNULL);
      if (initType.isManaged) {
        flow.setLocalFlag(argumentLocal.index, LocalFlags.RETAINED);
        if (!this.skippedAutoreleases.has(initExpr)) initExpr = this.makeRetain(initExpr);
      }
      body.push(
        module.local_set(argumentLocal.index, initExpr)
      );
    }

    // Compile the called function's body in the scope of the inlined flow
    this.compileFunctionBody(instance, body);

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
        expr = this.makeRelease(expr);
        this.currentType = Type.void;
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
    var originalParameterDeclarations = original.prototype.functionTypeNode.parameters;
    var returnType = originalSignature.returnType;
    var thisType = originalSignature.thisType;
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

    // create the trampoline element
    var trampolineSignature = new Signature(this.program, originalParameterTypes, returnType, thisType);
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
    var flow = trampoline.flow;
    this.currentFlow = flow;

    // create a br_table switching over the number of optional parameters provided
    var numNames = numOptional + 1; // incl. outer block
    var names = new Array<string>(numNames);
    var ofN = "of" + numOptional.toString(10);
    for (let i = 0; i < numNames; ++i) {
      let label = i.toString(10) + ofN;
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
    var theCall = module.call(originalName, forwardedOperands, returnType.toNativeType());
    if (returnType != Type.void) {
      this.performAutoreleasesWithValue(flow, theCall, returnType, stmts);
    } else {
      stmts.push(theCall);
      this.performAutoreleases(flow, stmts);
    }
    flow.freeScopedLocals();
    this.currentFlow = previousFlow;

    var funcRef = module.addFunction(
      trampoline.internalName,
      trampolineSignature.nativeParams,
      trampolineSignature.nativeResults,
      typesToNativeTypes(trampoline.additionalLocals),
      module.flatten(stmts, returnType.toNativeType())
    );
    trampoline.finalize(module, funcRef);
    return trampoline;
  }

  /** Makes sure that the arguments length helper global is present. */
  ensureBuiltinArgumentsLength(): void {
    if (!this.builtinArgumentsLength) {
      let module = this.module;
      this.builtinArgumentsLength = module.addGlobal(BuiltinNames.argumentsLength, NativeType.I32, true, module.i32(0));
      module.addGlobalExport(BuiltinNames.argumentsLength, ExportNames.argumentsLength);
    }
  }

  // <reference-counting>

  /** Makes a retain call, retaining the expression's value. */
  makeRetain(expr: ExpressionRef): ExpressionRef {
    var retainInstance = this.program.retainInstance;
    this.compileFunction(retainInstance);
    return this.module.call(retainInstance.internalName, [ expr ], this.options.nativeSizeType);
  }

  /** Makes a release call, releasing the expression's value. Changes the current type to void.*/
  makeRelease(expr: ExpressionRef): ExpressionRef {
    var releaseInstance = this.program.releaseInstance;
    this.compileFunction(releaseInstance);
    return this.module.call(releaseInstance.internalName, [ expr ], NativeType.None);
  }

  /** Makes a replace, retaining the new expression's value and releasing the old expression's value, in this order. */
  makeReplace(oldExpr: ExpressionRef, newExpr: ExpressionRef, alreadyRetained: bool = false): ExpressionRef {
    var module = this.module;
    var flow = this.currentFlow;
    var nativeSizeType = this.options.nativeSizeType;
    if (alreadyRetained) {
      // (t1=newExpr), __release(oldExpr), t1
      // it is important that `newExpr` evaluates before `oldExpr` is released, hence the local
      let temp = flow.getTempLocal(this.options.usizeType, findUsedLocals(oldExpr));
      let ret = module.block(null, [
        module.local_set(temp.index, newExpr),
        this.makeRelease(oldExpr),
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
              this.makeRetain(module.local_get(temp1.index, nativeSizeType))
            ),
            this.makeRelease(module.local_get(temp2.index, nativeSizeType))
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
            return this.tryUndoAutorelease(getBlockChild(expr, count - 1), flow);
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
      : this.makeAutorelease(this.makeRetain(expr), type, outerFlow);
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
      for (let local of scopedLocals.values()) {
        if (local.is(CommonFlags.SCOPED)) { // otherwise an alias
          let localIndex = local.index;
          if (flow.isAnyLocalFlag(localIndex, LocalFlags.ANY_RETAINED)) {
            if (finalize) flow.unsetLocalFlag(localIndex, LocalFlags.ANY_RETAINED);
            stmts.push(
              this.makeRelease(
                module.local_get(localIndex, local.type.toNativeType())
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
        for (let local of scopedLocals.values()) {
          this.maybeFinishAutorelease(local, flow, stmts);
        }
      }
    } else {
      for (let local of flow.parentFunction.localsByIndex) {
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
          module.local_get(localIndex, local.type.toNativeType())
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
      assert(!instance.is(CommonFlags.TRAMPOLINE)); // doesn't make sense
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
    if (!this.compileFunction(instance)) return module.unreachable();
    var returnType = instance.signature.returnType;
    var isCallImport = instance.is(CommonFlags.MODULE_IMPORT);

    // fill up omitted arguments with their initializers, if constant, otherwise with zeroes.
    if (numOperands < maxOperands) {
      if (!operands) {
        operands = new Array(maxOperands);
        operands.length = 0;
      }
      let parameterTypes = instance.signature.parameterTypes;
      let parameterNodes = instance.prototype.functionTypeNode.parameters;
      assert(parameterNodes.length == parameterTypes.length);
      let allOptionalsAreConstant = true;
      for (let i = numArguments; i < maxArguments; ++i) {
        let initializer = parameterNodes[i].initializer;
        if (initializer) {
          if (nodeIsConstantValue(initializer.kind)) {
            operands.push(this.compileExpression(
              <Expression>parameterNodes[i].initializer,
              parameterTypes[i],
              Constraints.CONV_IMPLICIT
            ));
            continue;
          }
          let resolved = this.resolver.lookupExpression(initializer, instance.flow, parameterTypes[i]);
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
                      global.type, parameterTypes[i], false, false, initializer
                    )
                  );
                }
                continue;
              }
            }
          }
        }
        operands.push(this.makeZero(parameterTypes[i]));
        allOptionalsAreConstant = false;
      }
      if (!allOptionalsAreConstant) {
        if (!isCallImport) {
          let original = instance;
          instance = this.ensureTrampoline(instance);
          if (!this.compileFunction(instance)) return module.unreachable();
          instance.flow.flags = original.flow.flags;
          let nativeReturnType = returnType.toNativeType();
          let expr = module.call(instance.internalName, operands, nativeReturnType);
          this.currentType = returnType;
          if (returnType.isManaged) {
            if (immediatelyDropped) {
              expr = this.makeRelease(expr);
              this.currentType = Type.void;
            } else if (!skipAutorelease) {
              expr = this.makeAutorelease(expr, returnType);
            } else {
              this.skippedAutoreleases.add(expr);
            }
          }
          this.ensureBuiltinArgumentsLength();
          return module.block(null, [
            module.global_set(BuiltinNames.argumentsLength, module.i32(numArguments)),
            expr
          ], this.currentType.toNativeType());
        }
      }
    }

    // If the return value is of a reference type it has not yet been released but is in flight
    // which is equivalent to a skipped autorelease. Hence, insert either a release if it is
    // dropped anyway, preserve the skipped autorelease if explicitly requested or autorelease now.
    var expr = module.call(instance.internalName, operands, returnType.toNativeType());
    this.currentType = returnType;
    if (returnType.isManaged) {
      if (immediatelyDropped) {
        expr = this.makeRelease(expr);
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

    var module = this.module;

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

    var returnType = signature.returnType;
    this.ensureBuiltinArgumentsLength();
    var expr = module.block(null, [
      module.global_set(BuiltinNames.argumentsLength, // might be calling a trampoline
        module.i32(numArguments)
      ),
      module.call_indirect(
        this.options.isWasm64
          ? module.unary(UnaryOp.WrapI64, indexArg)
          : indexArg,
        operands,
        signature.nativeParams,
        signature.nativeResults
      )
    ], returnType.toNativeType());
    this.currentType = returnType;
    if (returnType.isManaged) {
      if (immediatelyDropped) {
        expr = this.makeRelease(expr);
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
      if (targetType.is(TypeFlags.REFERENCE)) {
        let classReference = targetType.classReference;
        if (classReference) {
          let indexedGet = classReference.lookupOverload(OperatorKind.INDEXED_GET, this.currentFlow.is(FlowFlags.UNCHECKED_CONTEXT));
          if (indexedGet) {
            let thisArg = this.compileExpression(targetExpression, classReference.type,
              Constraints.CONV_IMPLICIT
            );
            return this.compileCallDirect(indexedGet, [
              expression.elementExpression
            ], expression, thisArg, constraints);
          }
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
      signature.parameterNames = parameterNames;
      instance = new Function(
        prototype.name,
        prototype,
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

    var index = this.ensureFunctionTableEntry(instance); // reports
    return index < 0
      ? this.module.unreachable()
      : this.module.i32(index);
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
        if (contextualType.is(TypeFlags.REFERENCE)) {
          let classReference = contextualType.classReference;
          if (classReference) {
            this.currentType = classReference.type.asNullable();
            return options.isWasm64 ? module.i64(0) : module.i32(0);
          }
          let signatureReference = contextualType.signatureReference;
          if (signatureReference) {
            this.currentType = signatureReference.type.asNullable();
            return module.i32(0);
          }
          return module.ref_null();
        }
        this.currentType = options.usizeType;
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
        if (actualFunction.is(CommonFlags.INSTANCE)) {
          let thisLocal = assert(flow.lookupLocal(CommonNames.this_));
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
                module.if(
                  module.unary(nativeSizeType == NativeType.I64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
                    module.local_get(thisLocal.index, nativeSizeType)
                  ),
                  module.local_set(thisLocal.index,
                    this.makeRetain(
                      this.makeAllocation(<Class>classInstance)
                    )
                  )
                )
              ];
              this.makeFieldInitializationInConstructor(<Class>classInstance, stmts);
              stmts.push(
                module.local_get(thisLocal.index, nativeSizeType)
              );
              this.currentType = thisLocal.type;
              return module.flatten(stmts, nativeSizeType);
            }
          }
          // if not a constructor, `this` type can differ
          let thisType = assert(actualFunction.signature.thisType);
          this.currentType = thisType;
          return module.local_get(thisLocal.index, thisType.toNativeType());
        }
        this.error(
          DiagnosticCode._this_cannot_be_referenced_in_current_location,
          expression.range
        );
        this.currentType = this.options.usizeType;
        return module.unreachable();
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
            let scopedThisClass = assert(scopedThis.type.classReference);
            let base = scopedThisClass.base;
            if (base) {
              this.currentType = base.type;
              return module.local_get(scopedThis.index, base.type.toNativeType());
            }
          }
        }
        if (actualFunction.is(CommonFlags.INSTANCE)) {
          let classInstance = assert(actualFunction.parent); assert(classInstance.kind == ElementKind.CLASS);
          let baseClassInstance = (<Class>classInstance).base;
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
    var target = this.resolver.lookupIdentifierExpression( // reports
      expression,
      flow,
      this.currentParent || actualFunction
    );
    if (!target) {
      // make a guess to avoid assertions in calling code
      if (this.currentType == Type.void) this.currentType = Type.i32;
      return module.unreachable();
    }

    switch (target.kind) {
      case ElementKind.LOCAL: {
        let type = (<Local>target).type;
        assert(type != Type.void);
        if ((<Local>target).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Local>target, contextualType, constraints);
        }
        let localIndex = (<Local>target).index;
        assert(localIndex >= 0);
        if (type.is(TypeFlags.NULLABLE) && flow.isLocalFlag(localIndex, LocalFlags.NONNULL, false)) {
          type = type.nonNullableType;
        }
        this.currentType = type;

        if (target.parent != flow.parentFunction) {
          // TODO: closures
          this.error(
            DiagnosticCode.Not_implemented,
            expression.range
          );
          return module.unreachable();
        }
        return module.local_get(localIndex, type.toNativeType());
      }
      case ElementKind.GLOBAL: {
        if (!this.compileGlobal(<Global>target)) { // reports; not yet compiled if a static field
          return module.unreachable();
        }
        let type = (<Global>target).type;
        assert(type != Type.void);
        if ((<Global>target).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Global>target, contextualType, constraints);
        }
        this.currentType = type;
        return module.global_get((<Global>target).internalName, type.toNativeType());
      }
      case ElementKind.ENUMVALUE: { // here: if referenced from within the same enum
        if (!target.is(CommonFlags.COMPILED)) {
          this.error(
            DiagnosticCode.A_member_initializer_in_a_enum_declaration_cannot_reference_members_declared_after_it_including_members_defined_in_other_enums,
            expression.range
          );
          this.currentType = Type.i32;
          return module.unreachable();
        }
        this.currentType = Type.i32;
        if ((<EnumValue>target).is(CommonFlags.INLINED)) {
          assert((<EnumValue>target).constantValueKind == ConstantValueKind.INTEGER);
          return module.i32(i64_low((<EnumValue>target).constantIntegerValue));
        }
        return module.global_get((<EnumValue>target).internalName, NativeType.I32);
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        let instance = this.resolver.resolveFunction(
          <FunctionPrototype>target,
          null,
          makeMap<string,Type>(flow.contextualTypeArguments)
        );
        if (!(instance && this.compileFunction(instance))) return module.unreachable();
        if (contextualType.is(TypeFlags.HOST | TypeFlags.REFERENCE)) {
          this.currentType = Type.anyref;
          return module.ref_func(instance.internalName);
        }
        let index = this.ensureFunctionTableEntry(instance);
        this.currentType = instance.signature.type;
        return module.i32(index);
      }
    }
    this.error(
      DiagnosticCode.Not_implemented,
      expression.range
    );
    return this.module.unreachable();
  }

  private compileInstanceOfExpression(
    expression: InstanceOfExpression,
    contextualType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var module = this.module;
    // NOTE that this differs from TypeScript in that the rhs is a type, not an expression. at the
    // time of implementation, this seemed more useful because dynamic rhs expressions are not
    // possible in AS anyway. also note that the code generated below must preserve side-effects of
    // the LHS expression even when the result is a constant, i.e. return a block dropping `expr`.
    var expr = this.compileExpression(expression.expression, this.options.usizeType);
    var actualType = this.currentType;
    var expectedType = this.resolver.resolveType(expression.isType, this.currentFlow.actualFunction);
    this.currentType = Type.bool;
    if (!expectedType) return module.unreachable();

    // instanceof <basic> - must be exact
    if (!expectedType.is(TypeFlags.REFERENCE)) {
      return module.block(null, [
        module.drop(expr),
        module.i32(actualType == expectedType ? 1 : 0)
      ], NativeType.I32);
    }

    // <basic> instanceof <reference> - always false
    if (!actualType.is(TypeFlags.REFERENCE)) {
      return module.block(null, [
        module.drop(expr),
        module.i32(0)
      ], NativeType.I32);
    }

    // both LHS and RHS are references now
    var nativeSizeType = actualType.toNativeType();

    // <nullable> instanceof <nonNullable> - LHS must be != 0
    if (actualType.is(TypeFlags.NULLABLE) && !expectedType.is(TypeFlags.NULLABLE)) {

      // downcast - check statically
      if (actualType.nonNullableType.isAssignableTo(expectedType)) {
        return module.binary(
          nativeSizeType == NativeType.I64
            ? BinaryOp.NeI64
            : BinaryOp.NeI32,
          expr,
          this.makeZero(actualType)
        );
      }

      // upcast - check dynamically
      if (expectedType.isAssignableTo(actualType)) {
        let program = this.program;
        if (!(actualType.isUnmanaged || expectedType.isUnmanaged)) {
          let flow = this.currentFlow;
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

    // either none or both nullable
    } else {

      // downcast - check statically
      if (actualType.isAssignableTo(expectedType)) {
        return module.block(null, [
          this.convertExpression(expr, actualType, Type.void, false, false, expression.expression),
          module.i32(1)
        ], NativeType.I32);

      // upcast - check dynamically
      } else if (expectedType.isAssignableTo(actualType)) {
        let program = this.program;
        if (!(actualType.isUnmanaged || expectedType.isUnmanaged)) {
          // FIXME: the temp local and the if can be removed here once flows
          // perform null checking, which would error earlier when checking
          // uninitialized (thus zero) `var a: A` to be an instance of something.
          let flow = this.currentFlow;
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
    return module.block(null, [
      module.drop(expr),
      module.i32(0)
    ], NativeType.I32);
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
        let elementExpressions = (<ArrayLiteralExpression>expression).elementExpressions;

        // Infer from first element in auto contexts
        if (contextualType == Type.auto) {
          return this.compileArrayLiteral(
            Type.auto,
            elementExpressions,
            constraints,
            expression
          );
        }

        // Use contextual type if an array
        if (contextualType.is(TypeFlags.REFERENCE)) {
          let classType = contextualType.classReference;
          if (classType) {
            if (classType.prototype == this.program.arrayPrototype) {
              return this.compileArrayLiteral(
                assert(classType.typeArguments)[0],
                elementExpressions,
                constraints,
                expression
              );
            }
          }
        }

        this.error(
          DiagnosticCode.The_type_argument_for_type_parameter_0_cannot_be_inferred_from_the_usage_Consider_specifying_the_type_arguments_explicitly,
          expression.range, "T"
        );
        return module.unreachable();
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
      // case LiteralKind.REGEXP:
    }
    this.error(
      DiagnosticCode.Not_implemented,
      expression.range
    );
    this.currentType = contextualType;
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
    elementType: Type,
    expressions: (Expression | null)[],
    constraints: Constraints,
    reportNode: Node
  ): ExpressionRef {
    var module = this.module;
    var program = this.program;
    var arrayPrototype = assert(program.arrayPrototype);
    var arrayBufferInstance = assert(program.arrayBufferInstance);
    var flow = this.currentFlow;

    // block those here so compiling expressions doesn't conflict
    var tempThis = flow.getTempLocal(this.options.usizeType);
    var tempDataStart = flow.getTempLocal(arrayBufferInstance.type);

    // infer common element type in auto contexts
    var length = expressions.length;
    if (elementType == Type.auto) {
      for (let i = 0; i < length; ++i) {
        let expression = expressions[i];
        if (expression) {
          let currentType = this.resolver.resolveExpression(expression, this.currentFlow, elementType);
          if (!currentType) return module.unreachable();
          if (elementType == Type.auto) elementType = currentType;
          else if (currentType != elementType) {
            let commonType = Type.commonDenominator(elementType, currentType, false);
            if (commonType) elementType = commonType;
            // otherwise triggers error further down
          }
        }
      }
      if (elementType /* still */ == Type.auto) {
        this.error(
          DiagnosticCode.The_type_argument_for_type_parameter_0_cannot_be_inferred_from_the_usage_Consider_specifying_the_type_arguments_explicitly,
          reportNode.range, "T"
        );
        return module.unreachable();
      }
    }

    var arrayInstance = assert(this.resolver.resolveClass(arrayPrototype, [ elementType ]));
    var arrayType = arrayInstance.type;

    // compile value expressions and find out whether all are constant
    var values = new Array<ExpressionRef>(length);
    var isStatic = true;
    var nativeElementType = elementType.toNativeType();
    for (let i = 0; i < length; ++i) {
      let expression = expressions[i];
      let expr = expression
        ? module.precomputeExpression(
            this.compileExpression(<Expression>expression, elementType,
              Constraints.CONV_IMPLICIT
            )
          )
        : this.makeZero(elementType);
      if (getExpressionId(expr) == ExpressionId.Const) {
        assert(getExpressionType(expr) == nativeElementType);
      } else {
        isStatic = false;
      }
      values[i] = expr;
    }

    // if the array is static, make a static arraybuffer segment
    if (isStatic) {
      flow.freeTempLocal(tempThis);
      flow.freeTempLocal(tempDataStart);

      let runtimeHeaderSize = program.runtimeHeaderSize;
      let bufferSegment = this.addStaticBuffer(elementType, values);
      let bufferAddress = i64_add(bufferSegment.offset, i64_new(runtimeHeaderSize));

      // make both the buffer and array header static if assigned to a global. this can't be done
      // if inside of a function because each invocation must create a new array reference then.
      if (constraints & Constraints.PREFER_STATIC) {
        let arraySegment = this.addStaticArrayHeader(elementType, bufferSegment);
        let arrayAddress = i64_add(arraySegment.offset, i64_new(runtimeHeaderSize));
        this.currentType = arrayType;
        return program.options.isWasm64
          ? this.module.i64(i64_low(arrayAddress), i64_high(arrayAddress))
          : this.module.i32(i64_low(arrayAddress));

      // otherwise allocate a new array header and make it wrap a copy of the static buffer
      } else {
        // makeArray(length, alignLog2, classId, staticBuffer)
        let expr = this.makeCallDirect(program.allocArrayInstance, [
          module.i32(length),
          program.options.isWasm64
            ? module.i64(elementType.alignLog2)
            : module.i32(elementType.alignLog2),
          module.i32(arrayInstance.id),
          program.options.isWasm64
            ? module.i64(i64_low(bufferAddress), i64_high(bufferAddress))
            : module.i32(i64_low(bufferAddress))
        ], reportNode);
        this.currentType = arrayType;
        expr = this.makeRetain(expr);
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
        reportNode.range, arrayInstance.internalName
      );
      this.currentType = arrayType;
      return module.unreachable();
    }
    var nativeArrayType = arrayType.toNativeType();

    var stmts = new Array<ExpressionRef>();
    // tempThis = makeArray(length, alignLog2, classId, source = 0)
    stmts.push(
      module.local_set(tempThis.index,
        this.makeRetain(
          this.makeCallDirect(program.allocArrayInstance, [
            module.i32(length),
            program.options.isWasm64
              ? module.i64(elementType.alignLog2)
              : module.i32(elementType.alignLog2),
            module.i32(arrayInstance.id),
            program.options.isWasm64
              ? module.i64(0)
              : module.i32(0)
          ], reportNode)
        )
      )
    );
    // tempData = tempThis.dataStart
    var dataStart = assert(arrayInstance.lookupInSelf("dataStart"));
    assert(dataStart.kind == ElementKind.FIELD);
    stmts.push(
      module.local_set(tempDataStart.index,
        module.load(arrayType.byteSize, false,
          module.local_get(tempThis.index, nativeArrayType),
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
      if (!(constraints & Constraints.WILL_RETAIN)) {
        expr = this.makeAutorelease(expr, arrayType, this.currentFlow);
      } else {
        this.skippedAutoreleases.add(expr);
      }
    }
    return expr;
  }

  private compileObjectLiteral(expression: ObjectLiteralExpression, contextualType: Type): ExpressionRef {
    var module = this.module;

    // contextual type must be a class
    var classReference = contextualType.classReference;
    if (!classReference || classReference.is(CommonFlags.ABSTRACT)) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        expression.range, "<object>", contextualType.toString()
      );
      return module.unreachable();
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
        return module.unreachable();
      }
      if (ctor.is(CommonFlags.PRIVATE)) {
        this.error(
          DiagnosticCode.Constructor_of_class_0_is_private_and_only_accessible_within_the_class_declaration,
          expression.range, classReference.toString()
        );
        return module.unreachable();
      }
      if (ctor.is(CommonFlags.PROTECTED)) {
        this.error(
          DiagnosticCode.Constructor_of_class_0_is_protected_and_only_accessible_within_the_class_declaration,
          expression.range, classReference.toString()
        );
        return module.unreachable();
      }
      if (ctor.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);
    }

    // check and compile field values
    var names = expression.names;
    var numNames = names.length;
    var values = expression.values;
    var members = classReference.members;
    var hasErrors = false;
    var exprs = new Array<ExpressionRef>(numNames + 2);
    var flow = this.currentFlow;
    var tempLocal = flow.getAutoreleaseLocal(classReference.type);
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
      exprs[i + 1] = this.module.store( // TODO: handle setters as well
        type.byteSize,
        this.module.local_get(tempLocal.index, this.options.nativeSizeType),
        this.compileExpression(values[i], (<Field>member).type, Constraints.CONV_IMPLICIT),
        type.toNativeType(),
        (<Field>member).memoryOffset
      );
    }
    this.currentType = classReference.type.nonNullableType;
    if (hasErrors) return module.unreachable();

    // allocate a new instance first and assign 'this' to the temp. local
    exprs[0] = module.local_set(
      tempLocal.index,
      this.makeRetain(
        this.makeAllocation(classReference)
      )
    );

    // once all field values have been set, return 'this'
    exprs[exprs.length - 1] = module.local_get(tempLocal.index, this.options.nativeSizeType);

    this.currentType = classReference.type;
    return module.flatten(exprs, this.options.nativeSizeType);
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
    if (!classInstance) return module.unreachable();
    if (contextualType == Type.void) constraints |= Constraints.WILL_DROP;
    return this.compileInstantiate(classInstance, expression.arguments, constraints, expression);
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
        CommonNames.constructor,
        new FunctionPrototype(
          CommonNames.constructor,
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
        CommonNames.constructor,
        new FunctionPrototype(
          CommonNames.constructor,
          classInstance,
          this.program.makeNativeFunctionDeclaration(CommonNames.constructor,
            CommonFlags.INSTANCE | CommonFlags.CONSTRUCTOR
          )
        ),
        new Signature(this.program, null, classInstance.type, classInstance.type),
        null
      );
    }

    instance.internalName = classInstance.internalName + INSTANCE_DELIMITER + "constructor";
    instance.set(CommonFlags.COMPILED);
    instance.prototype.setResolvedInstance("", instance);
    classInstance.constructorInstance = instance;
    var previousFlow = this.currentFlow;
    var flow = instance.flow;
    this.currentFlow = flow;

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
    var allocExpr = this.makeAllocation(classInstance);
    if (classInstance.type.isManaged) allocExpr = this.makeRetain(allocExpr);
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
      for (let i = 0; i < numParameters; ++i) {
        operands[i + 1] = module.local_get(i + 1, parameterTypes[i].toNativeType());
      }
      // TODO: base constructor might be inlined, but makeCallDirect can't do this
      stmts.push(
        module.local_set(0,
          this.makeCallDirect(assert(baseClass.constructorInstance), operands, reportNode, false, true)
        )
      );
    }
    this.makeFieldInitializationInConstructor(classInstance, stmts);
    var body = this.performAutoreleasesWithValue(flow, module.local_get(0, nativeSizeType), classInstance.type, stmts);
    flow.freeScopedLocals();
    this.currentFlow = previousFlow;

    // make the function
    var locals = instance.localsByIndex;
    var varTypes = new Array<NativeType>(); // of temp. vars added while compiling initializers
    var numOperands = 1 + signature.parameterTypes.length;
    var numLocals = locals.length;
    if (numLocals > numOperands) {
      for (let i = numOperands; i < numLocals; ++i) varTypes.push(locals[i].type.toNativeType());
    }
    var funcRef = module.addFunction(instance.internalName, signature.nativeParams, signature.nativeResults, varTypes, body);
    instance.finalize(module, funcRef);
    return instance;
  }

  compileInstantiate(
    /** Class to instantiate. */
    classInstance: Class,
    /** Constructor arguments. */
    argumentExpressions: Expression[],
    /** Contextual flags. */
    constraints: Constraints,
    /** Node to report on. */
    reportNode: Node
  ): ExpressionRef {
    var ctor = this.ensureConstructor(classInstance, reportNode);
    if (ctor.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(reportNode);
    var expr = this.compileCallDirect( // no need for another autoreleased local
      ctor,
      argumentExpressions,
      reportNode,
      this.makeZero(this.options.usizeType),
      constraints
    );
    if (getExpressionType(expr) != NativeType.None) { // possibly IMM_DROPPED
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
    if (target.hasDecorator(DecoratorFlags.UNSAFE)) this.checkUnsafe(expression);

    switch (target.kind) {
      case ElementKind.GLOBAL: { // static field
        if (!this.compileGlobal(<Global>target)) return module.unreachable(); // reports
        let globalType = (<Global>target).type;
        assert(globalType != Type.void);
        if ((<Global>target).is(CommonFlags.INLINED)) {
          return this.compileInlineConstant(<Global>target, ctxType, constraints);
        }
        this.currentType = globalType;
        return module.global_get((<Global>target).internalName, globalType.toNativeType());
      }
      case ElementKind.ENUMVALUE: { // enum value
        let theEnum = assert((<EnumValue>target).parent); assert(theEnum.kind == ElementKind.ENUM);
        if (!this.compileEnum(<Enum>theEnum)) {
          this.currentType = Type.i32;
          return this.module.unreachable();
        }
        this.currentType = Type.i32;
        if ((<EnumValue>target).is(CommonFlags.INLINED)) {
          assert((<EnumValue>target).constantValueKind == ConstantValueKind.INTEGER);
          return this.compileInlineConstant(<EnumValue>target, ctxType, constraints);
        }
        assert((<EnumValue>target).type == Type.i32);
        return module.global_get((<EnumValue>target).internalName, NativeType.I32);
      }
      case ElementKind.FIELD: { // instance field
        assert((<Field>target).memoryOffset >= 0);
        let thisExpression = assert(this.resolver.currentThisExpression);
        let thisExpr = this.compileExpression(thisExpression, this.options.usizeType);
        // FIXME
        let thisType = this.currentType;
        if (thisType.is(TypeFlags.NULLABLE)) {
          if (!flow.isNonnull(thisExpr, thisType)) {
            this.error(
              DiagnosticCode.Object_is_possibly_null,
              thisExpression.range
            );
          }
        }
        this.currentType = (<Field>target).type;
        return module.load(
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
          if (getter) return this.compileCallDirect(getter, [], expression, 0);
        }
        return module.unreachable();
      }
      case ElementKind.PROPERTY: { // instance property
        let getterInstance = assert((<Property>target).getterInstance);
        return this.compileCallDirect(getterInstance, [], expression,
          this.compileExpression(assert(this.resolver.currentThisExpression), this.options.usizeType)
        );
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        let prototype = <FunctionPrototype>target;

        if (prototype.is(CommonFlags.STATIC)) {
          let instance = this.resolver.resolveFunction(prototype, null);
          if (!instance) return module.unreachable();
          if (!this.compileFunction(instance)) return module.unreachable();
          this.currentType = instance.type;
          return module.i32(this.ensureFunctionTableEntry(instance));
        }

        this.error(
          DiagnosticCode.Cannot_access_method_0_without_calling_it_as_it_requires_this_to_be_set,
          expression.range, prototype.name
        );
        return module.unreachable();
      }
    }
    this.error(
      DiagnosticCode.Not_implemented,
      expression.range
    );
    return module.unreachable();
  }

  private compileTernaryExpression(
    expression: TernaryExpression,
    ctxType: Type,
    constraints: Constraints
  ): ExpressionRef {
    var ifThen = expression.ifThen;
    var ifElse = expression.ifElse;
    var outerFlow = this.currentFlow;

    var condExpr = this.module.precomputeExpression(
      this.makeIsTrueish(
        this.compileExpression(expression.condition, Type.bool),
        this.currentType
      )
    );

    // Try to eliminate unnecesssary branches if the condition is constant
    // FIXME: skips common denominator, inconsistently picking left type
    if (
      getExpressionId(condExpr) == ExpressionId.Const &&
      getExpressionType(condExpr) == NativeType.I32
    ) {
      return getConstValueI32(condExpr)
        ? this.compileExpression(ifThen, ctxType)
        : this.compileExpression(ifElse, ctxType);
    }

    var inheritedConstraints = constraints & Constraints.WILL_RETAIN;

    var ifThenFlow = outerFlow.fork();
    this.currentFlow = ifThenFlow;
    var ifThenExpr = this.compileExpression(ifThen, ctxType, inheritedConstraints);
    var ifThenType = this.currentType;
    var ifThenAutoreleaseSkipped = this.skippedAutoreleases.has(ifThenExpr);

    var ifElseFlow = outerFlow.fork();
    this.currentFlow = ifElseFlow;
    var ifElseExpr = this.compileExpression(ifElse, ctxType, inheritedConstraints);
    var ifElseType = this.currentType;
    var ifElseAutoreleaseSkipped = this.skippedAutoreleases.has(ifElseExpr);

    var commonType = Type.commonDenominator(ifThenType, ifElseType, false);
    if (!commonType) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        ifElse.range, ifElseType.toString(), ifThenType.toString()
      );
      this.currentType = ctxType;
      return this.module.unreachable();
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

    if (ifThenAutoreleaseSkipped != ifElseAutoreleaseSkipped) { // unify to both skipped
      if (!ifThenAutoreleaseSkipped) {
        ifThenExpr = this.makeRetain(ifThenExpr);
        ifThenAutoreleaseSkipped = true;
      } else {
        ifElseExpr = this.makeRetain(ifElseExpr);
        ifElseAutoreleaseSkipped = true;
      }
    } else if (!ifThenAutoreleaseSkipped && commonType.isManaged) { // keep alive a little longer
      if (constraints & Constraints.WILL_RETAIN) { // try to undo both
        let ifThenIndex = this.tryUndoAutorelease(ifThenExpr, ifThenFlow);
        if (ifThenIndex == -1) ifThenExpr = this.makeRetain(ifThenExpr);
        let ifElseIndex = this.tryUndoAutorelease(ifElseExpr, ifElseFlow);
        if (ifElseIndex == -1) ifElseExpr = this.makeRetain(ifElseExpr);
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

    var expr = this.module.if(condExpr, ifThenExpr, ifElseExpr);
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
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
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
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
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
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.PLUS);
            if (overload) return this.compileUnaryOverload(overload, expression.operand, expr, expression);
          }
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
        if (expression.operand.kind == NodeKind.LITERAL && (
          (<LiteralExpression>expression.operand).literalKind == LiteralKind.INTEGER ||
          (<LiteralExpression>expression.operand).literalKind == LiteralKind.FLOAT
        )) {
          // implicitly negate integer and float literals. also enables proper checking of literal ranges.
          expr = this.compileLiteralExpression(<LiteralExpression>expression.operand, contextualType, Constraints.NONE, true);
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
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.MINUS);
            if (overload) return this.compileUnaryOverload(overload, expression.operand, expr, expression);
          }
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
              this.makeZero(this.currentType),
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
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.PREFIX_INC);
            if (overload) {
              expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
              if (overload.is(CommonFlags.INSTANCE)) break; // re-assign
              return expr; // skip re-assign
            }
          }
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
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.PREFIX_DEC);
            if (overload) {
              expr = this.compileUnaryOverload(overload, expression.operand, expr, expression);
              if (overload.is(CommonFlags.INSTANCE)) break; // re-assign
              return expr; // skip re-assign
            }
          }
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
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.NOT);
            if (overload) return this.compileUnaryOverload(overload, expression.operand, expr, expression);
          }
          // allow '!' for references even without an overload
        }

        expr = module.unary(UnaryOp.EqzI32, this.makeIsTrueish(expr, this.currentType));
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
          Constraints.NONE
        );

        // check operator overload
        if (this.currentType.is(TypeFlags.REFERENCE)) {
          let classReference = this.currentType.classReference;
          if (classReference) {
            let overload = classReference.lookupOverload(OperatorKind.BITWISE_NOT);
            if (overload) return this.compileUnaryOverload(overload, expression.operand, expr, expression);
          }
          this.error(
            DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
            expression.range, "~", this.currentType.toString()
          );
          return module.unreachable();
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
          case NodeKind.PROPERTYACCESS:
          case NodeKind.ELEMENTACCESS: {
            operand = operand.kind == NodeKind.PROPERTYACCESS
              ? (<PropertyAccessExpression>operand).expression
              : (<ElementAccessExpression>operand).expression;
            let targetType = this.resolver.resolveExpression(operand, this.currentFlow, Type.auto, ReportMode.REPORT);
            if (!targetType) {
              this.currentType = stringInstance.type;
              return this.module.unreachable();
            }
            expr = this.compileExpression(operand, Type.auto); // might have side-effects
            break;
          }
          case NodeKind.IDENTIFIER: break; // ignore error
          default: expr = this.compileExpression(operand, Type.auto); // trigger error
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
            expr = this.convertExpression(expr, type, Type.void, true, false, operand);
            if (type.is(TypeFlags.REFERENCE)) {
              let signatureReference = type.signatureReference;
              if (signatureReference) {
                typeString = "function";
              } else {
                let classReference = type.classReference;
                if (classReference) {
                  if (classReference.prototype === stringInstance.prototype) {
                    typeString = "string";
                  } else {
                    typeString = "object";
                  }
                } else {
                  typeString = "anyref"; // TODO?
                }
              }
            } else if (type == Type.bool) {
              typeString = "boolean";
            } else if (type.isAny(TypeFlags.FLOAT | TypeFlags.INTEGER)) {
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

  // === Specialized code generation ==============================================================

  /** Makes a constant zero of the specified type. */
  makeZero(type: Type): ExpressionRef {
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
      case TypeKind.ANYREF: return module.ref_null();
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
        return module.binary(BinaryOp.NeI64, expr, module.i64(0));
      }
      case TypeKind.USIZE: if (type.isManaged && this.skippedAutoreleases.has(expr)) expr = this.makeAutorelease(expr, type);
      case TypeKind.ISIZE: {
        return type.size == 64
          ? module.binary(BinaryOp.NeI64, expr, module.i64(0))
          : expr;
      }
      case TypeKind.F32: {
        // (x != 0.0) & (x == x)
        let flow = this.currentFlow;
        let temp = flow.getTempLocal(Type.f32);
        let ret = module.binary(BinaryOp.AndI32,
          module.binary(BinaryOp.NeF32, module.local_tee(temp.index, expr), module.f32(0)),
          module.binary(BinaryOp.EqF32,
            module.local_get(temp.index, NativeType.F32),
            module.local_get(temp.index, NativeType.F32)
          )
        );
        flow.freeTempLocal(temp);
        return ret;
      }
      case TypeKind.F64: {
        // (x != 0.0) & (x == x)
        let flow = this.currentFlow;
        let temp = flow.getTempLocal(Type.f64);
        let ret = module.binary(BinaryOp.AndI32,
          module.binary(BinaryOp.NeF64, module.local_tee(temp.index, expr), module.f64(0)),
          module.binary(BinaryOp.EqF64,
            module.local_get(temp.index, NativeType.F64),
            module.local_get(temp.index, NativeType.F64)
          )
        );
        flow.freeTempLocal(temp);
        return ret;
      }
      case TypeKind.ANYREF: {
        // TODO: non-null object might still be considered falseish
        // i.e. a ref to Boolean(false), Number(0), String("") etc.
        return module.unary(UnaryOp.EqzI32, module.ref_is_null(expr));
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
    // TODO: investigate if it's possible to allocate with RC=1 immediately
    var program = this.program;
    assert(classInstance.program == program);
    var module = this.module;
    var options = this.options;
    this.currentType = classInstance.type;
    var allocInstance = program.allocInstance;
    this.compileFunction(allocInstance);
    return module.call(allocInstance.internalName, [
      options.isWasm64
        ? module.i64(classInstance.nextMemoryOffset)
        : module.i32(classInstance.nextMemoryOffset),
      module.i32(
        classInstance.hasDecorator(DecoratorFlags.UNMANAGED)
          ? 0
          : classInstance.id
      )
    ], options.nativeSizeType);
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
      ? assert(flow.lookupLocal(CommonNames.this_)).index
      : 0;
    var nativeSizeType = this.options.nativeSizeType;

    for (let member of members.values()) {
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

      // if declared as a constructor parameter, use its value
      if (parameterIndex >= 0) {
        initExpr = module.local_get(
          isInline
            ? assert(flow.lookupLocal(field.name)).index
            : 1 + parameterIndex, // this is local 0
          nativeFieldType
        );
        if (fieldType.isManaged) initExpr = this.makeRetain(initExpr);

      // fall back to use initializer if present
      } else if (initializerNode) {
        initExpr = this.compileExpression(initializerNode, fieldType,
          Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN
        );
        if (fieldType.isManaged && !this.skippedAutoreleases.has(initExpr)) {
          initExpr = this.makeRetain(initExpr);
        }

      // otherwise initialize with zero
      } else {
        initExpr = this.makeZero(fieldType);
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
    var module = this.module;
    var stringInstance = program.stringInstance;
    var abortInstance = program.abortInstance;
    if (!abortInstance || !this.compileFunction(abortInstance)) return module.unreachable();

    var messageArg: ExpressionRef;
    if (message !== null) {
      // The message argument works much like an arm of an IF that does not become executed if the
      // assertion succeeds respectively is only being computed if the program actually crashes.
      // Hence, let's make it so that the autorelease is skipped at the end of the current block,
      // essentially ignoring the message GC-wise. Doesn't matter anyway on a crash.
      messageArg = this.compileExpression(message, stringInstance.type, Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN);
    } else {
      messageArg = this.makeZero(stringInstance.type);
    }

    var filenameArg = this.ensureStaticString(codeLocation.range.source.normalizedPath);
    return module.block(null, [
      module.call(
        abortInstance.internalName, [
          messageArg,
          filenameArg,
          module.i32(codeLocation.range.line),
          module.i32(codeLocation.range.column)
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
    assert(type.is(TypeFlags.NULLABLE | TypeFlags.REFERENCE));
    var module = this.module;
    var flow = this.currentFlow;
    var temp = flow.getTempLocal(type);
    if (!flow.canOverflow(expr, type)) flow.setLocalFlag(temp.index, LocalFlags.WRAPPED);
    flow.setLocalFlag(temp.index, LocalFlags.NONNULL);
    expr = module.if(
      module.local_tee(temp.index, expr),
      module.local_get(temp.index, type.toNativeType()),
      this.makeAbort(null, reportNode) // TODO: throw
    );
    flow.freeTempLocal(temp);
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
    assert(toType.is(TypeFlags.REFERENCE) && toType.nonNullableType.isAssignableTo(type));
    var module = this.module;
    var flow = this.currentFlow;
    var temp = flow.getTempLocal(type);
    var instanceofInstance = this.program.instanceofInstance;
    assert(this.compileFunction(instanceofInstance));
    expr = module.if(
      module.call(instanceofInstance.internalName, [
        module.local_tee(temp.index, expr),
        module.i32(assert(toType.classReference).id)
      ], NativeType.I32),
      module.local_get(temp.index, type.toNativeType()),
      this.makeAbort(null, reportNode) // TODO: throw
    );
    flow.freeTempLocal(temp);
    return expr;
  }
}

// helpers

const v128_zero = new Uint8Array(16);

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

/** Evaluates the kind of a boolean condition from its expression. */
function evaluateConditionKind(expr: ExpressionRef): ConditionKind {
  assert(getExpressionType(expr) == NativeType.I32 || getExpressionType(expr) == NativeType.Unreachable);
  if (getExpressionId(expr) == ExpressionId.Const) {
    return getConstValueI32(expr)
      ? ConditionKind.TRUE
      : ConditionKind.FALSE;
  }
  return ConditionKind.UNKNOWN;
}
