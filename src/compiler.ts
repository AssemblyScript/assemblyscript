/**
 * The AssemblyScript compiler.
 * @module compiler
 *//***/

import {
  compileCall as compileBuiltinCall,
  compileAbort,
  compileIterateRoots,
  ensureGCHook,
  BuiltinSymbols
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
  needsExplicitUnreachable
} from "./module";

import {
  CommonFlags,
  INSTANCE_DELIMITER,
  STATIC_DELIMITER,
  GETTER_PREFIX,
  SETTER_PREFIX,
  LibrarySymbols,
  CommonSymbols,
  INDEX_SUFFIX
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
  Flow
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

/** Indicates specific features to activate. */
export const enum Feature {
  /** No additional features. */
  NONE = 0,
  /** Sign extension operations. */
  SIGN_EXTENSION = 1 << 0, // see: https://github.com/WebAssembly/sign-extension-ops
  /** Mutable global imports and exports. */
  MUTABLE_GLOBAL = 1 << 1, // see: https://github.com/WebAssembly/mutable-global
  /** Bulk memory operations. */
  BULK_MEMORY = 1 << 2, // see: https://github.com/WebAssembly/bulk-memory-operations
  /** SIMD types and operations. */
  SIMD = 1 << 3, // see: https://github.com/WebAssembly/simd
  /** Threading and atomic operations. */
  THREADS = 1 << 4 // see: https://github.com/WebAssembly/threads
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
  /** Indicates whether the iterateRoots function must be generated. */
  needsIterateRoots: bool = false;

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

    // add a mutable heap base dummy
    if (options.isWasm64) {
      module.addGlobal(
        BuiltinSymbols.HEAP_BASE,
        NativeType.I64,
        true,
        module.createI64(0, 0)
      );
    } else {
      module.addGlobal(
        BuiltinSymbols.HEAP_BASE,
        NativeType.I32,
        false,
        module.createI32(0)
      );
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

    // update the heap base pointer
    var memoryOffset = this.memoryOffset;
    memoryOffset = i64_align(memoryOffset, options.usizeType.byteSize);
    this.memoryOffset = memoryOffset;
    module.removeGlobal(BuiltinSymbols.HEAP_BASE);
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
    module.addTableExport("0", "table");
    module.addFunction("null", this.ensureFunctionType(null, Type.void), null, module.createBlock(null, []));

    // import table if requested (default table is named '0' by Binaryen)
    if (options.importTable) module.addTableImport("0", "env", "table");

    // set up module exports
    for (let file of this.program.filesByName.values()) {
      if (file.source.isEntry) this.makeModuleExports(file);
    }

    // set up gc
    if (this.needsIterateRoots) compileIterateRoots(this);

    return module;
  }

  /** Applies the respective module exports for the specified file. */
  private makeModuleExports(file: File): void {
    var members = file.exports;
    if (members) for (let [name, member] of members) this.makeModuleExport(name, member);
    var exportsStar = file.exportsStar;
    if (exportsStar)  {
      for (let i = 0, k = exportsStar.length; i < k; ++i) this.makeModuleExports(exportsStar[i]);
    }
  }

  /** Applies the respective module export(s) for the specified element. */
  private makeModuleExport(name: string, element: Element, prefix: string = ""): void {
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
            this.makeModuleExport(instanceName, instance, prefix);
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
            this.makeModuleExport(instanceName, instance, prefix);
          }
        }
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let getter = (<PropertyPrototype>element).getterPrototype;
        let setter = (<PropertyPrototype>element).setterPrototype;
        if (getter) this.makeModuleExport(GETTER_PREFIX + name, getter, prefix);
        if (setter) this.makeModuleExport(SETTER_PREFIX + name, setter, prefix);
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
        if (getter) this.makeModuleExport(GETTER_PREFIX + name, getter, prefix);
        let setter = (<Property>element).setterInstance;
        if (setter) this.makeModuleExport(SETTER_PREFIX + name, setter, prefix);
        break;
      }
      case ElementKind.FIELD: {
        let module = this.module;
        let type = (<Field>element).type;
        let nativeType = type.toNativeType();
        let offset = (<Field>element).memoryOffset;
        let usizeType = this.options.usizeType;
        let nativeSizeType = this.options.nativeSizeType;

        // make a getter
        let getterName = prefix + GETTER_PREFIX + name;
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

        // make a setter
        if (!element.is(CommonFlags.READONLY)) {
          let setterName = prefix + SETTER_PREFIX + name;
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
        }
        break;
      }

      // just traverse members below
      case ElementKind.ENUM:
      case ElementKind.CLASS:
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
          this.makeModuleExport(member.name, member, subPrefix);
        }
      } else {
        for (let member of members.values()) {
          if (member.is(CommonFlags.PRIVATE)) continue;
          this.makeModuleExport(member.name, member, subPrefix);
        }
      }
    }
  }

  // general

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
    if (exportsStar) for (let exportStar of exportsStar) this.compileFile(exportStar);
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
    this.currentFlow = startFunction.flow;
    for (let statements = file.source.statements, i = 0, k = statements.length; i < k; ++i) {
      this.compileTopLevelStatement(statements[i], startFunctionBody);
    }
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

  // globals

  compileGlobal(global: Global): bool {
    if (global.is(CommonFlags.COMPILED)) return true;
    global.set(CommonFlags.COMPILED);

    var module = this.module;
    var initExpr: ExpressionRef = 0;
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
        initExpr = this.compileExpressionRetainType( // reports
          initializerNode,
          Type.void,
          WrapMode.WRAP
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
    if (global.is(CommonFlags.AMBIENT) && global.hasDecorator(DecoratorFlags.BUILTIN)) return true;

    var nativeType = global.type.toNativeType();
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
        initExpr = this.compileExpression(
          initializerNode,
          global.type,
          ConversionKind.IMPLICIT,
          WrapMode.WRAP
        );
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
      initExpr = global.type.toNativeZero(module);
    }

    var internalName = global.internalName;

    if (initializeInStart) { // initialize to mutable zero and set the actual value in start
      if (global.hasDecorator(DecoratorFlags.INLINE)) {
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          global.identifierNode.range, "inline"
        );
      }
      module.addGlobal(internalName, nativeType, true, global.type.toNativeZero(module));
      this.currentBody.push(module.createSetGlobal(internalName, initExpr));

    } else if (!global.hasDecorator(DecoratorFlags.INLINE)) { // compile normally
      module.addGlobal(internalName, nativeType, !isDeclaredConstant, initExpr);
    }
    return true;
  }

  // enums

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
          initExpr = this.compileExpression(
            valueNode,
            Type.i32,
            ConversionKind.IMPLICIT,
            WrapMode.NONE
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
            module.createSetGlobal(val.internalName, initExpr)
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

  // functions

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
  private compileFunctionBody(instance: Function): ExpressionRef[] {
    var module = this.module;
    var bodyNode = assert(instance.prototype.bodyNode);
    var returnType = instance.signature.returnType;
    var flow = this.currentFlow;

    // compile statements
    var stmts: BinaryenExportRef[];
    if (bodyNode.kind == NodeKind.BLOCK) {
      stmts = this.compileStatements((<BlockStatement>bodyNode).statements, true);
    } else {
      // must be an expression statement if not a block
      assert(bodyNode.kind == NodeKind.EXPRESSION);

      // must be an arrow function
      assert(instance.prototype.arrowKind);

      // none of the following can be an arrow function
      assert(!instance.isAny(CommonFlags.CONSTRUCTOR | CommonFlags.GET | CommonFlags.SET | CommonFlags.MAIN));

      let stmt = this.compileExpression(
        (<ExpressionStatement>bodyNode).expression,
        returnType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      flow.set(FlowFlags.RETURNS);
      if (!flow.canOverflow(stmt, returnType)) flow.set(FlowFlags.RETURNS_WRAPPED);
      stmts = [ stmt ];
    }

    // make the main function call `start` implicitly, but only once
    if (instance.prototype == this.program.explicitStartFunction) {
      module.addGlobal(CompilerSymbols.started, NativeType.I32, true, module.createI32(0));
      stmts.unshift(
        module.createIf(
          module.createUnary(
            UnaryOp.EqzI32,
            module.createGetGlobal(CompilerSymbols.started, NativeType.I32)
          ),
          module.createBlock(null, [
            module.createCall("start", null, NativeType.None),
            module.createSetGlobal(CompilerSymbols.started, module.createI32(1))
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
                this.makeAllocation(<Class>classInstance)
              )
            )
          );
          this.makeFieldInitialization(<Class>classInstance, stmts);
        }

        // implicitly return `this`
        stmts.push(
          module.createGetLocal(thisLocalIndex, nativeSizeType)
        );
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
      this.currentFlow = instance.flow;
      let stmts = this.compileFunctionBody(instance);
      this.currentFlow = previousFlow;

      // create the function
      funcRef = module.addFunction(
        instance.internalName,
        typeRef,
        typesToNativeTypes(instance.additionalLocals),
        stmts.length
          ? stmts.length == 1
            ? stmts[0]
            : module.createBlock(null, stmts, instance.signature.returnType.toNativeType())
          : module.createNop()
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

  // classes

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
    functionTable.push(func.internalName);
    func.functionTableIndex = index;
    return index;
  }

  // statements

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

  compileStatement(statement: Statement, isLastStatementInBody: bool = false): ExpressionRef {
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
        stmt = this.compileReturnStatement(<ReturnStatement>statement, isLastStatementInBody);
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

  compileStatements(statements: Statement[], isBody: bool = false): ExpressionRef[] {
    var numStatements = statements.length;
    var stmts = new Array<ExpressionRef>(numStatements);
    stmts.length = 0;
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
      if (flow.isAny(FlowFlags.ANY_TERMINATING)) {
        if (needsExplicitUnreachable(stmt)) stmts.push(this.module.createUnreachable());
        break;
      }
    }
    return stmts;
  }

  compileBlockStatement(statement: BlockStatement): ExpressionRef {
    var statements = statement.statements;
    var outerFlow = this.currentFlow;
    var innerFlow = outerFlow.fork();
    this.currentFlow = innerFlow;

    var stmts = this.compileStatements(statements);
    var stmt = stmts.length == 0
      ? this.module.createNop()
      : stmts.length == 1
        ? stmts[0]
        : this.module.createBlock(null, stmts,getExpressionType(stmts[stmts.length - 1]));

    innerFlow.freeScopedLocals();
    outerFlow.inherit(innerFlow);
    this.currentFlow = outerFlow;
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
    var flow = this.currentFlow;
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
    return module.createBreak(continueLabel);
  }

  compileDoStatement(statement: DoStatement): ExpressionRef {
    var module = this.module;

    var outerFlow = this.currentFlow;
    var label = outerFlow.pushBreakLabel();
    var innerFlow = outerFlow.fork();
    this.currentFlow = innerFlow;
    var breakLabel = "break|" + label;
    innerFlow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    innerFlow.continueLabel = continueLabel;

    var body = this.compileStatement(statement.statement);
    var condExpr = this.makeIsTrueish(
      this.compileExpression(statement.condition, Type.i32, ConversionKind.NONE, WrapMode.NONE),
      this.currentType
    );
    // TODO: check if condition is always false and if so, omit it (just a block)

    // Switch back to the parent flow
    innerFlow.freeScopedLocals();
    outerFlow.popBreakLabel();
    this.currentFlow = outerFlow;
    var terminated = innerFlow.isAny(FlowFlags.ANY_TERMINATING);
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
          ? body // skip trailing continue if unnecessary
          : module.createBlock(null, [
              body,
              module.createBreak(continueLabel, condExpr)
            ], NativeType.None)
      )
    ];
    if (terminated) block.push(module.createUnreachable());
    return module.createBlock(breakLabel, block);
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
      condExpr = this.makeIsTrueish(
        this.compileExpressionRetainType(<Expression>statement.condition, Type.bool, WrapMode.NONE),
        this.currentType
      );
      // check if the condition is always true
      let condPre = module.precomputeExpression(condExpr);
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
    var bodyStatement = statement.statement;
    var bodyExpr = bodyStatement.kind == NodeKind.BLOCK && (<BlockStatement>bodyStatement).statements.length == 1
      ? this.compileStatement((<BlockStatement>bodyStatement).statements[0])
      : this.compileStatement(bodyStatement);

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
      module.createLoop(repeatLabel, module.createBlock(null, repeatBlock, NativeType.None))
    );

    return module.createBlock(breakLabel, breakBlock);
  }

  compileIfStatement(statement: IfStatement): ExpressionRef {
    var module = this.module;
    var ifTrue = statement.ifTrue;
    var ifFalse = statement.ifFalse;
    var outerFlow = this.currentFlow;
    var actualFunction = outerFlow.actualFunction;

    // The condition doesn't initiate a branch yet
    var condExpr = this.makeIsTrueish(
      this.compileExpressionRetainType(statement.condition, Type.bool, WrapMode.NONE),
      this.currentType
    );

    // Try to eliminate unnecesssary branches if the condition is constant
    var condExprPrecomp = module.precomputeExpression(condExpr);
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

    // Each arm initiates a branch
    var ifTrueFlow = outerFlow.fork();
    this.currentFlow = ifTrueFlow;
    var ifTrueExpr = this.compileStatement(ifTrue);
    ifTrueFlow.freeScopedLocals();
    this.currentFlow = outerFlow;

    var ifFalseExpr: ExpressionRef = 0;
    if (ifFalse) {
      let ifFalseFlow = outerFlow.fork();
      this.currentFlow = ifFalseFlow;
      ifFalseExpr = this.compileStatement(ifFalse);
      ifFalseFlow.freeScopedLocals();
      this.currentFlow = outerFlow;
      outerFlow.inheritMutual(ifTrueFlow, ifFalseFlow);
    } else {
      outerFlow.inheritConditional(ifTrueFlow);
    }
    return module.createIf(condExpr, ifTrueExpr, ifFalseExpr);
  }

  compileReturnStatement(statement: ReturnStatement, isLastStatementInBody: bool): ExpressionRef {
    var module = this.module;
    var expr: ExpressionRef = 0;
    var flow = this.currentFlow;
    var returnType = flow.returnType;

    // Remember that this flow returns
    flow.set(FlowFlags.RETURNS);

    if (statement.value) {
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
        flow.actualFunction.is(CommonFlags.MODULE_EXPORT)
          ? WrapMode.WRAP
          : WrapMode.NONE
      );

      // Remember whether returning a properly wrapped value
      if (!flow.canOverflow(expr, returnType)) flow.set(FlowFlags.RETURNS_WRAPPED);

    } else if (returnType != Type.void) {
      this.error(
        DiagnosticCode.Type_0_is_not_assignable_to_type_1,
        statement.range, "void", returnType.toString()
      );
      expr = module.createUnreachable();
    }

    // If the last statement anyway, make it the block's return value
    if (isLastStatementInBody) return expr ? expr : module.createNop();

    // When inlining, break to the end of the inlined function's block (no need to wrap)
    if (flow.is(FlowFlags.INLINE_CONTEXT)) return module.createBreak(assert(flow.inlineReturnLabel), 0, expr);

    return module.createReturn(expr);
  }

  compileSwitchStatement(statement: SwitchStatement): ExpressionRef {
    var module = this.module;

    var cases = statement.cases;
    var numCases = cases.length;
    if (!numCases) {
      return this.compileExpression(statement.condition, Type.void, ConversionKind.IMPLICIT, WrapMode.NONE);
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

  compileThrowStatement(statement: ThrowStatement): ExpressionRef {
    var flow = this.currentFlow;

    // Remember that this branch throws
    flow.set(FlowFlags.THROWS);

    // FIXME: without try-catch it is safe to assume RETURNS as well for now
    flow.set(FlowFlags.RETURNS);

    // TODO: requires exception-handling spec.
    return compileAbort(this, null, statement);
  }

  compileTryStatement(statement: TryStatement): ExpressionRef {
    // TODO: can't yet support something like: try { return ... } finally { ... }
    // worthwhile to investigate lowering returns to block results (here)?
    this.error(
      DiagnosticCode.Operation_not_supported,
      statement.range
    );
    return this.module.createUnreachable();
  }

  /** Compiles a variable statement. Returns `0` if an initializer is not necessary. */
  compileVariableStatement(statement: VariableStatement): ExpressionRef {
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
      if (declaration.type) {
        type = resolver.resolveType( // reports
          declaration.type,
          flow.actualFunction,
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
          initExpr = this.module.precomputeExpression(initExpr);
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
                return this.module.createUnreachable();
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
        if (initExpr) {
          initializers.push(
            this.compileAssignmentWithValue(declaration.name, initExpr)
          );
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
    var outerFlow = this.currentFlow;

    // The condition does not yet initialize a branch
    var condExpr = this.makeIsTrueish(
      this.compileExpressionRetainType(statement.condition, Type.bool, WrapMode.NONE),
      this.currentType
    );

    // Try to eliminate unnecesssary loops if the condition is constant
    var condExprPrecomp = module.precomputeExpression(condExpr);
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

    // Statements initiate a new branch with its own break context
    var label = outerFlow.pushBreakLabel();
    var innerFlow = outerFlow.fork();
    this.currentFlow = innerFlow;
    var breakLabel = "break|" + label;
    innerFlow.breakLabel = breakLabel;
    var continueLabel = "continue|" + label;
    innerFlow.continueLabel = continueLabel;

    var body = this.compileStatement(statement.statement);
    var alwaysTrue = false; // TODO
    var terminated = innerFlow.isAny(FlowFlags.ANY_TERMINATING);

    // Switch back to the parent flow
    innerFlow.freeScopedLocals();
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
          terminated
            ? body // skip trailing continue if unnecessary
            : module.createBlock(null, [
                body,
                module.createBreak(continueLabel)
              ], NativeType.None)
        )
      )
    ]);
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
        expr = this.compileFunctionExpression(<FunctionExpression>expression, contextualType.signatureReference);
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
        this.error(
          DiagnosticCode.Operation_not_supported,
          expression.range
        );
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
    return this.module.precomputeExpression(
      this.compileExpression(expression, contextualType, conversionKind, wrapMode)
    );
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
          if (toType == Type.bool) {
            expr = module.createBinary(BinaryOp.NeF32, expr, module.createF32(0));
            wrapMode = WrapMode.NONE;
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
            wrapMode = WrapMode.NONE;
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
          wrapMode = WrapMode.NONE;
        } else if (!toType.is(TypeFlags.LONG)) {
          expr = module.createUnary(UnaryOp.WrapI64, expr); // discards upper bits
        }

      // i32 or smaller to i64
      } else if (toType.is(TypeFlags.LONG)) {
        expr = module.createUnary(
          fromType.is(TypeFlags.SIGNED) ? UnaryOp.ExtendI32 : UnaryOp.ExtendU32,
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
    switch (expression.assertionKind) {
      case AssertionKind.PREFIX:
      case AssertionKind.AS: {
        let toType = this.resolver.resolveType( // reports
          assert(expression.toType),
          this.currentFlow.actualFunction,
          this.currentFlow.contextualTypeArguments
        );
        if (!toType) return this.module.createUnreachable();
        return this.compileExpression(expression.expression, toType, ConversionKind.EXPLICIT, WrapMode.NONE);
      }
      case AssertionKind.NONNULL: {
        assert(!expression.toType);
        let expr = this.compileExpressionRetainType(expression.expression, contextualType, WrapMode.NONE);
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
        if (commonType = Type.commonDenominator(leftType, rightType, true)) {
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
        if (commonType = Type.commonDenominator(leftType, rightType, true)) {
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
        if (commonType = Type.commonDenominator(leftType, rightType, true)) {
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
        if (commonType = Type.commonDenominator(leftType, rightType, true)) {
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
        if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
        if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
            let namespace = this.program.lookupGlobal(LibrarySymbols.Mathf);
            if (!namespace) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Mathf"
              );
              expr = module.createUnreachable();
              break;
            }
            let prototype = namespace.members ? namespace.members.get(LibrarySymbols.pow) : null;
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
            let namespace = this.program.lookupGlobal(LibrarySymbols.Math);
            if (!namespace) {
              this.error(
                DiagnosticCode.Cannot_find_name_0,
                expression.range, "Math"
              );
              expr = module.createUnreachable();
              break;
            }
            let prototype = namespace.members ? namespace.members.get(LibrarySymbols.pow) : null;
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
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
              let namespace = this.program.lookupGlobal(LibrarySymbols.Mathf);
              if (!namespace) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Mathf"
                );
                expr = module.createUnreachable();
                break;
              }
              let prototype = namespace.members ? namespace.members.get(LibrarySymbols.mod) : null;
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
              expr = this.makeCallDirect(instance, [ leftExpr, rightExpr ]);
            }
            break;
          }
          case TypeKind.F64: {
            let instance = this.f64ModInstance;
            if (!instance) {
              let namespace = this.program.lookupGlobal(LibrarySymbols.Math);
              if (!namespace) {
                this.error(
                  DiagnosticCode.Cannot_find_name_0,
                  expression.range, "Math"
                );
                expr = module.createUnreachable();
                break;
              }
              let prototype = namespace.members ? namespace.members.get(LibrarySymbols.mod) : null;
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
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
          if (commonType = Type.commonDenominator(leftType, rightType, false)) {
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
          expr = module.createIf(
            this.makeIsTrueish(leftExpr, this.currentType),
            rightExpr,
            expr
          );

        // if not possible, tee left to a temp. local
        } else {
          let flow = this.currentFlow;
          let tempLocal = flow.getAndFreeTempLocal(
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
          let flow = this.currentFlow;
          let tempLocal = flow.getAndFreeTempLocal(
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
      thisArg
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
      let classInstance = assert(operatorInstance.parent); assert(classInstance.kind == ElementKind.CLASS);
      thisArg = leftExpr; // can reuse the previously evaluated leftExpr as the this value here
      argumentExpressions = [ right ];
    } else {
      argumentExpressions = [ left, right ]; // annotated type of LHS might differ -> recompile
    }
    var ret = this.compileCallDirect(
      operatorInstance,
      argumentExpressions,
      reportNode,
      thisArg
    );
    return ret;
  }

  compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): ExpressionRef {
    var program = this.program;
    var resolver = program.resolver;
    var flow = this.currentFlow;
    var target = resolver.resolveExpression(expression, flow); // reports
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
        if (resolver.currentElementExpression) { // indexed access
          let isUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
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
    var flow = this.currentFlow;
    var target = this.resolver.resolveExpression(expression, flow); // reports
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
            expression.range, (<Field>target).internalName
          );
          return module.createUnreachable();
        }
        let thisExpression = assert(this.resolver.currentThisExpression);
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
          let flow = this.currentFlow;
          let tempLocal = flow.getAndFreeTempLocal(
            type,
            !flow.canOverflow(valueWithCorrectType, type)
          );
          let tempLocalIndex = tempLocal.index;
          // TODO: simplify if valueWithCorrectType has no side effects
          // TODO: call __gc_link here if a GC is present
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
          // TODO: call __gc_link here if a GC is present
          return module.createStore(
            type.byteSize,
            thisExpr,
            valueWithCorrectType,
            nativeType,
            (<Field>target).memoryOffset
          );
        }
      }
      case ElementKind.PROPERTY_PROTOTYPE: { // static property
        let setterPrototype = (<PropertyPrototype>target).setterPrototype;
        if (!setterPrototype) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, target.internalName
          );
          return module.createUnreachable();
        }
        let setterInstance = this.resolver.resolveFunction(setterPrototype, null, makeMap(), ReportMode.REPORT);
        if (!setterInstance) return module.createUnreachable();
        // call just the setter if the return value isn't of interest
        if (!tee) return this.makeCallDirect(setterInstance, [ valueWithCorrectType ]);
        // otherwise call the setter first, then the getter
        let getterPrototype = assert((<PropertyPrototype>target).getterPrototype); // must be present
        let getterInstance = this.resolver.resolveFunction(getterPrototype, null, makeMap(), ReportMode.REPORT);
        if (!getterInstance) return module.createUnreachable();
        let returnType = getterInstance.signature.returnType;
        let nativeReturnType = returnType.toNativeType();
        return module.createBlock(null, [
          this.makeCallDirect(setterInstance, [ valueWithCorrectType ]),
          this.makeCallDirect(getterInstance) // sets currentType
        ], nativeReturnType);
      }
      case ElementKind.PROPERTY: { // instance property
        let setterInstance = (<Property>target).setterInstance;
        if (!setterInstance) {
          this.error(
            DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property,
            expression.range, target.internalName
          );
          return module.createUnreachable();
        }
        // call just the setter if the return value isn't of interest
        if (!tee) {
          let thisExpr = this.compileExpressionRetainType(
            assert(this.resolver.currentThisExpression),
            this.options.usizeType,
            WrapMode.NONE
          );
          return this.makeCallDirect(setterInstance, [ thisExpr, valueWithCorrectType ]);
        }
        // otherwise call the setter first, then the getter
        let getterInstance = assert((<Property>target).getterInstance); // must be present
        let returnType = getterInstance.signature.returnType;
        let nativeReturnType = returnType.toNativeType();
        let thisExpr = this.compileExpressionRetainType(
          assert(this.resolver.currentThisExpression),
          this.options.usizeType,
          WrapMode.NONE
        );
        let tempLocal = flow.getAndFreeTempLocal(returnType, false);
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
      }
      case ElementKind.CLASS: {
        let elementExpression = this.resolver.currentElementExpression;
        if (elementExpression) {
          let isUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
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
          let thisExpression = assert(this.resolver.currentThisExpression);
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
            let tempLocalTarget = flow.getTempLocal(targetType, false);
            let tempLocalElement = flow.getAndFreeTempLocal(this.currentType, false);
            let returnType = indexedGet.signature.returnType;
            flow.freeTempLocal(tempLocalTarget);
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
              this.makeAllocation(<Class>classInstance)
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
                argumentExprs[i] = this.compileExpressionRetainType(argumentExpression, inferredType, WrapMode.NONE);
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
                argumentExprs[i] = this.compileExpressionRetainType(argumentExpression, Type.i32, WrapMode.NONE);
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
            let inferredType = assert(inferredTypes.get(typeParameterNodes[i].name.text)); // TODO
            resolvedTypeArguments[i] = inferredType;
          }
          instance = this.resolver.resolveFunction(
            prototype,
            resolvedTypeArguments,
            makeMap<string,Type>(flow.contextualTypeArguments)
          );
          if (!instance) return this.module.createUnreachable();
          return this.makeCallDirect(instance, argumentExprs);
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
            this.options.usizeType,
            WrapMode.NONE
          );
        }

        return this.compileCallDirect(
          instance,
          expression.arguments,
          expression,
          thisExpr
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
            expression.range, type.toString()
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
            this.options.usizeType,
            WrapMode.NONE
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
      expression
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
        let expr = this.compileCallInlinePrechecked(instance, argumentExpressions, thisArg);
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
  private compileCallInlinePrechecked(
    instance: Function,
    argumentExpressions: Expression[],
    thisArg: ExpressionRef = 0
  ): ExpressionRef {
    var module = this.module;

    // Create a new inline flow and use it to compile the function as a block
    var previousFlow = this.currentFlow;
    var flow = Flow.createInline(previousFlow.parentFunction, instance);

    // Convert provided call arguments to temporary locals. It is important that these are compiled
    // here, with their respective locals being blocked. There is no 'makeCallInline'.
    var body = [];

    if (thisArg) {
      let classInstance = assert(instance.parent); assert(classInstance.kind == ElementKind.CLASS);
      let thisType = assert(instance.signature.thisType);
      let thisLocal = flow.addScopedLocal(CommonSymbols.this_, thisType, false);
      body.push(
        module.createSetLocal(thisLocal.index, thisArg)
      );
      let baseInstance = (<Class>classInstance).base;
      if (baseInstance) flow.addScopedAlias(CommonSymbols.super_, baseInstance.type, thisLocal.index);
    }

    var numArguments = argumentExpressions.length;
    var signature = instance.signature;
    var parameterTypes = signature.parameterTypes;
    for (let i = 0; i < numArguments; ++i) {
      let paramExpr = this.compileExpression(
        argumentExpressions[i],
        parameterTypes[i],
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      let argumentLocal = flow.addScopedLocal(
        signature.getParameterName(i),
        parameterTypes[i],
        !previousFlow.canOverflow(paramExpr, parameterTypes[i])
      );
      body.push(
        module.createSetLocal(argumentLocal.index, paramExpr)
      );
    }

    // Compile optional parameter initializers in the scope of the inlined flow
    this.currentFlow = flow;
    var numParameters = signature.parameterTypes.length;
    for (let i = numArguments; i < numParameters; ++i) {
      let initExpr = this.compileExpression(
        assert(instance.prototype.signatureNode.parameters[i].initializer),
        parameterTypes[i],
        ConversionKind.IMPLICIT,
        WrapMode.WRAP
      );
      let argumentLocal = flow.addScopedLocal(
        signature.getParameterName(i),
        parameterTypes[i],
        !flow.canOverflow(initExpr, parameterTypes[i])
      );
      body.push(
        module.createSetLocal(argumentLocal.index, initExpr)
      );
    }

    // Compile the called function's body in the scope of the inlined flow
    {
      let stmts = this.compileFunctionBody(instance);
      for (let i = 0, k = stmts.length; i < k; ++i) body.push(stmts[i]);
    }

    // Free any new scoped locals and reset to the original flow
    flow.freeScopedLocals();
    var returnType = flow.returnType;
    this.currentFlow = previousFlow;
    this.currentType = returnType;

    // Create an outer block that we can break to when returning a value out of order
    return module.createBlock(flow.inlineReturnLabel, body, returnType.toNativeType());
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
                module.createGetGlobal(CompilerSymbols.argc, NativeType.I32),
                module.createI32(minArguments)
              )
            : module.createGetGlobal(CompilerSymbols.argc, NativeType.I32)
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
        CompilerSymbols.argc,
        NativeType.I32,
        true,
        module.createI32(0)
      );
    }
    return CompilerSymbols.argc;
  }

  /** Makes sure that the argument count helper setter is present and returns its name. */
  private ensureArgcSet(): string {
    var internalName = CompilerSymbols.setargc;
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
      let parameterNodes = instance.prototype.signatureNode.parameters;
      assert(parameterNodes.length == parameterTypes.length);
      let allOptionalsAreConstant = true;
      for (let i = numArguments; i < maxArguments; ++i) {
        let initializer = parameterNodes[i].initializer;
        if (!(initializer && nodeIsConstantValue(initializer.kind))) {
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
    return module.createCall(instance.internalName, operands, returnType.toNativeType());
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
    var target = this.resolver.resolveElementAccessExpression(
      expression,
      this.currentFlow,
      contextualType
    ); // reports
    if (!target) return this.module.createUnreachable();
    switch (target.kind) {
      case ElementKind.CLASS: {
        let isUnchecked = this.currentFlow.is(FlowFlags.UNCHECKED_CONTEXT);
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

  compileFunctionExpression(
    expression: FunctionExpression,
    contextualSignature: Signature | null
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
    retainConstantType: bool
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
                    this.makeAllocation(<Class>classInstance)
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
          return this.compileInlineConstant(<Local>target, contextualType, retainConstantType);
        }
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
    contextualType: Type
  ): ExpressionRef {
    var module = this.module;
    // NOTE that this differs from TypeScript in that the rhs is a type, not an expression. at the
    // time of implementation, this seemed more useful because dynamic rhs expressions are not
    // possible in AS anyway.
    var expr = this.compileExpressionRetainType(expression.expression, this.options.usizeType, WrapMode.NONE);
    var actualType = this.currentType;
    var expectedType = this.resolver.resolveType(
      expression.isType,
      this.currentFlow.actualFunction
    );
    this.currentType = Type.bool;
    if (!expectedType) return module.createUnreachable();

    // instanceof <basicType> must be exact
    if (!expectedType.is(TypeFlags.REFERENCE)) {
      return module.createI32(actualType == expectedType ? 1 : 0);
    }
    // <nullable> instanceof <nonNullable> must be != 0
    if (
      actualType.is(TypeFlags.NULLABLE) && !expectedType.is(TypeFlags.NULLABLE) &&
      actualType.nonNullableType.isAssignableTo(expectedType)
    ) {
      return module.createBinary(
        actualType.is(TypeFlags.LONG)
          ? BinaryOp.NeI64
          : BinaryOp.NeI32,
        expr,
        actualType.toNativeZero(module)
      );
    }
    return module.createI32(actualType.isAssignableTo(expectedType) ? 1 : 0);
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
            false, // TODO: isConst?
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
        assert(!implicitNegate);
        return this.compileStringLiteral(<StringLiteralExpression>expression);
      }
      case LiteralKind.OBJECT: {
        assert(!implicitNegate);
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

  /** Ensures that the specified string exists in static memory and returns a pointer to it. */
  ensureStaticString(stringValue: string): ExpressionRef {
    var program = this.program;
    var hasGC = program.hasGC;
    var gcHeaderSize = program.gcHeaderSize;

    var stringInstance = assert(program.stringInstance);
    var stringSegment: MemorySegment;

    // if the string already exists, reuse it
    var segments = this.stringSegments;
    if (segments.has(stringValue)) {
      stringSegment = <MemorySegment>segments.get(stringValue);

    // otherwise create it
    } else {
      let length = stringValue.length;
      let headerSize = (stringInstance.currentMemoryOffset + 1) & ~1;
      let totalSize = headerSize + length * 2;

      let buf: Uint8Array;
      let pos: u32;

      if (hasGC) {
        buf = new Uint8Array(gcHeaderSize + totalSize);
        pos = gcHeaderSize;
        writeI32(ensureGCHook(this, stringInstance), buf, program.gcHookOffset);
      } else {
        buf = new Uint8Array(totalSize);
        pos = 0;
      }
      writeI32(length, buf, pos + stringInstance.offsetof(LibrarySymbols.length));
      pos += headerSize;
      for (let i = 0; i < length; ++i) {
        writeI16(stringValue.charCodeAt(i), buf, pos + (i << 1));
      }
      stringSegment = this.addMemorySegment(buf);
      segments.set(stringValue, stringSegment);
    }
    var stringOffset = stringSegment.offset;
    if (hasGC) stringOffset = i64_add(stringOffset, i64_new(gcHeaderSize));

    this.currentType = stringInstance.type;
    if (this.options.isWasm64) {
      return this.module.createI64(i64_low(stringOffset), i64_high(stringOffset));
    } else {
      assert(i64_is_u32(stringOffset));
      return this.module.createI32(i64_low(stringOffset));
    }
  }

  compileStringLiteral(expression: StringLiteralExpression): ExpressionRef {
    return this.ensureStaticString(expression.value);
  }

  /** Ensures that the specified array exists in static memory and returns a pointer to it. */
  ensureStaticArray(elementType: Type, values: ExpressionRef[]): ExpressionRef {
    var program = this.program;
    var hasGC = program.hasGC;
    var gcHeaderSize = program.gcHeaderSize;

    var length = values.length;
    var byteSize = elementType.byteSize;
    var byteLength = length * byteSize;
    var usizeTypeSize = this.options.usizeType.byteSize;

    var buf: Uint8Array;
    var pos: u32;

    // create the backing ArrayBuffer segment
    var bufferInstance = assert(program.arrayBufferInstance);
    var bufferHeaderSize = (bufferInstance.currentMemoryOffset + 7) & ~7;
    var bufferTotalSize = 1 << (32 - clz(bufferHeaderSize + byteLength - 1));
    if (hasGC) {
      buf = new Uint8Array(gcHeaderSize + bufferTotalSize);
      pos = gcHeaderSize;
      writeI32(ensureGCHook(this, bufferInstance), buf, program.gcHookOffset);
    } else {
      buf = new Uint8Array(bufferTotalSize);
      pos = 0;
    }
    writeI32(byteLength, buf, pos + bufferInstance.offsetof(LibrarySymbols.byteLength));
    pos += bufferHeaderSize;
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
    var bufferSegment = this.addMemorySegment(buf);
    var bufferOffset = bufferSegment.offset;
    if (hasGC) bufferOffset = i64_add(bufferOffset, i64_new(gcHeaderSize));

    // create the Array segment and return a pointer to it
    var arrayPrototype = assert(program.arrayPrototype);
    var arrayInstance = assert(this.resolver.resolveClass(
      arrayPrototype,
      [ elementType ],
      makeMap<string,Type>()
    ));
    var arrayHeaderSize = (arrayInstance.currentMemoryOffset + 7) & ~7;
    if (hasGC) {
      buf = new Uint8Array(gcHeaderSize + arrayHeaderSize);
      pos = gcHeaderSize;
      writeI32(ensureGCHook(this, arrayInstance), buf, program.gcHookOffset);
    } else {
      buf = new Uint8Array(arrayHeaderSize);
      pos = 0;
    }
    var arraySegment = this.addMemorySegment(buf);
    var arrayOffset = arraySegment.offset;
    if (hasGC) arrayOffset = i64_add(arrayOffset, i64_new(gcHeaderSize));
    this.currentType = arrayInstance.type;
    var buffer_offset = pos + arrayInstance.offsetof("buffer_");
    var length_offset = pos + arrayInstance.offsetof("length_");
    if (usizeTypeSize == 8) {
      writeI64(bufferOffset, buf, buffer_offset);
      writeI32(length, buf, length_offset);
      return this.module.createI64(i64_low(arrayOffset), i64_high(arrayOffset));
    } else {
      assert(i64_is_u32(bufferOffset));
      writeI32(i64_low(bufferOffset), buf, buffer_offset);
      writeI32(length, buf, length_offset);
      assert(i64_is_u32(arrayOffset));
      return this.module.createI32(i64_low(arrayOffset));
    }
  }

  compileArrayLiteral(
    elementType: Type,
    expressions: (Expression | null)[],
    isConst: bool,
    reportNode: Node
  ): ExpressionRef {
    var module = this.module;

    // find out whether all elements are constant (array is static)
    var length = expressions.length;
    var compiledValues = new Array<ExpressionRef>(length);
    var constantValues = new Array<ExpressionRef>(length);
    var nativeElementType = elementType.toNativeType();
    var isStatic = true;
    for (let i = 0; i < length; ++i) {
      let expression = expressions[i];
      let expr = expression
        ? this.compileExpression(<Expression>expression, elementType, ConversionKind.IMPLICIT, WrapMode.NONE)
        : elementType.toNativeZero(module);
      compiledValues[i] = expr;
      if (isStatic) {
        expr = module.precomputeExpression(expr);
        if (getExpressionId(expr) == ExpressionId.Const) {
          assert(getExpressionType(expr) == nativeElementType);
          constantValues[i] = expr;
        } else {
          if (isConst) {
            this.warning(
              DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable,
              reportNode.range
            );
          }
          isStatic = false;
        }
      }
    }

    // make a static array if possible
    if (isStatic) return this.ensureStaticArray(elementType, constantValues);

    // otherwise obtain the array type
    var arrayPrototype = assert(this.program.arrayPrototype);
    var arrayInstance = assert(this.resolver.resolveClass(
      <ClassPrototype>arrayPrototype,
      [ elementType ],
      makeMap<string,Type>()
    ));
    var arrayType = arrayInstance.type;

    // and compile an explicit instantiation
    this.currentType = arrayType;
    var setter = arrayInstance.lookupOverload(OperatorKind.INDEXED_SET, true);
    if (!setter) {
      this.error(
        DiagnosticCode.Index_signature_in_type_0_only_permits_reading,
        reportNode.range, arrayInstance.internalName
      );
      return module.createUnreachable();
    }
    var nativeArrayType = arrayType.toNativeType();
    var flow = this.currentFlow;
    var tempLocal = flow.parentFunction.addLocal(arrayType); // can't reuse a temp (used in compiledValues)
    var stmts = new Array<ExpressionRef>(2 + length);
    var index = 0;
    stmts[index++] = module.createSetLocal(tempLocal.index,
      this.makeCallDirect(assert(arrayInstance.constructorInstance), [
        module.createI32(0), // this
        module.createI32(length)
      ])
    );
    for (let i = 0; i < length; ++i) {
      stmts[index++] = this.makeCallDirect(setter, [
        module.createGetLocal(tempLocal.index, nativeArrayType), // this
        module.createI32(i),
        compiledValues[i]
      ]);
    }
    assert(index + 1 == stmts.length);
    stmts[index] = module.createGetLocal(tempLocal.index, nativeArrayType);
    flow.freeTempLocal(tempLocal); // but can be reused now
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
    var tempLocal = flow.getTempLocal(this.options.usizeType);
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
        this.compileExpression(values[i], (<Field>member).type, ConversionKind.IMPLICIT, WrapMode.NONE),
        type.toNativeType(),
        (<Field>member).memoryOffset
      );
    }
    this.currentType = classReference.type.nonNullableType;
    if (hasErrors) return module.createUnreachable();

    // allocate a new instance first and assign 'this' to the temp. local
    exprs[0] = module.createSetLocal(
      tempLocal.index,
      this.makeAllocation(classReference)
    );

    // once all field values have been set, return 'this'
    exprs[exprs.length - 1] = module.createGetLocal(tempLocal.index, this.options.nativeSizeType);

    return module.createBlock(null, exprs, this.options.nativeSizeType);
  }

  compileNewExpression(expression: NewExpression, contextualType: Type): ExpressionRef {
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
    return this.compileInstantiate(classInstance, expression.arguments, expression);
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
          this.makeAllocation(classInstance)
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
          this.makeCallDirect(assert(baseClass.constructorInstance), operands)
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
      stmts.length == 1
        ? stmts[0]
        : module.createBlock(null, stmts, nativeSizeType)
    );
    instance.finalize(module, funcRef);
    this.currentFlow = previousFlow;
    return instance;
  }

  compileInstantiate(classInstance: Class, argumentExpressions: Expression[], reportNode: Node): ExpressionRef {
    var ctor = this.ensureConstructor(classInstance, reportNode);
    var expr = this.compileCallDirect(
      ctor,
      argumentExpressions,
      reportNode,
      this.options.usizeType.toNativeZero(this.module)
    );
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
          return this.compileInlineConstant(<Global>target, contextualType, retainConstantType);
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
            this.options.usizeType,
            WrapMode.NONE
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

  private compileGetter(target: PropertyPrototype, reportNode: Node): ExpressionRef {
    var prototype = target.getterPrototype;
    if (prototype) {
      let instance = this.resolver.resolveFunction(prototype, null);
      if (!instance) return this.module.createUnreachable();
      let signature = instance.signature;
      if (!this.checkCallSignature( // reports
        signature,
        0,
        instance.is(CommonFlags.INSTANCE),
        reportNode
      )) {
        return this.module.createUnreachable();
      }
      if (instance.is(CommonFlags.INSTANCE)) {
        let classInstance = assert(instance.parent); assert(classInstance.kind == ElementKind.CLASS);
        let thisExpression = assert(this.resolver.currentThisExpression); //!!!
        let thisExpr = this.compileExpressionRetainType(
          thisExpression,
          this.options.usizeType,
          WrapMode.NONE
        );
        this.currentType = signature.returnType;
        return this.compileCallDirect(instance, [], reportNode, thisExpr);
      } else {
        this.currentType = signature.returnType;
        return this.compileCallDirect(instance, [], reportNode, 0);
      }
    } else {
      this.error(
        DiagnosticCode.Property_0_does_not_exist_on_type_1,
        reportNode.range, (<PropertyPrototype>target).name, (<PropertyPrototype>target).parent.toString()
      );
      return this.module.createUnreachable();
    }
  }

  compileTernaryExpression(expression: TernaryExpression, contextualType: Type): ExpressionRef {
    var ifThen = expression.ifThen;
    var ifElse = expression.ifElse;
    var outerFlow = this.currentFlow;

    var condExpr = this.makeIsTrueish(
      this.compileExpressionRetainType(expression.condition, Type.bool, WrapMode.NONE),
      this.currentType
    );

    // Try to eliminate unnecesssary branches if the condition is constant
    var condExprPrecomp = this.module.precomputeExpression(condExpr);
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

    var ifThenFlow = outerFlow.fork();
    this.currentFlow = ifThenFlow;
    var ifThenExpr = this.compileExpressionRetainType(ifThen, contextualType, WrapMode.NONE);
    var ifThenType = this.currentType;
    ifThenFlow.freeScopedLocals();

    var ifElseFlow = outerFlow.fork();
    this.currentFlow = ifElseFlow;
    var ifElseExpr = this.compileExpressionRetainType(ifElse, contextualType, WrapMode.NONE);
    var ifElseType = this.currentType;
    ifElseFlow.freeScopedLocals();
    this.currentFlow = outerFlow;

    outerFlow.inheritMutual(ifThenFlow, ifElseFlow);

    var commonType = Type.commonDenominator(ifThenType, ifElseType, false);
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
    var flow = this.currentFlow;

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

    // if the value isn't dropped, a temp. local is required to remember the original value
    var tempLocal: Local | null = null;
    if (contextualType != Type.void) {
      tempLocal = flow.getTempLocal(currentType, false);
      getValue = module.createTeeLocal(
        tempLocal.index,
        getValue
      );
    }

    var calcValue: ExpressionRef;

    switch (expression.operator) {
      case Token.PLUS_PLUS: {
        switch (currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            calcValue = module.createBinary(
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
                  calcValue = this.compileUnaryOverload(overload, expression.operand, getValue, expression);
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
            calcValue = module.createBinary(
              options.isWasm64
                ? BinaryOp.AddI64
                : BinaryOp.AddI32,
              getValue,
              currentType.toNativeOne(module)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            calcValue = module.createBinary(
              BinaryOp.AddI64,
              getValue,
              module.createI64(1)
            );
            break;
          }
          case TypeKind.F32: {
            calcValue = module.createBinary(
              BinaryOp.AddF32,
              getValue,
              module.createF32(1)
            );
            break;
          }
          case TypeKind.F64: {
            calcValue = module.createBinary(
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
        switch (currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            calcValue = module.createBinary(
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
                  calcValue = this.compileUnaryOverload(overload, expression.operand, getValue, expression);
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
            calcValue = module.createBinary(
              options.isWasm64
                ? BinaryOp.SubI64
                : BinaryOp.SubI32,
              getValue,
              currentType.toNativeOne(module)
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            calcValue = module.createBinary(
              BinaryOp.SubI64,
              getValue,
              module.createI64(1)
            );
            break;
          }
          case TypeKind.F32: {
            calcValue = module.createBinary(
              BinaryOp.SubF32,
              getValue,
              module.createF32(1)
            );
            break;
          }
          case TypeKind.F64: {
            calcValue = module.createBinary(
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

    // simplify if dropped anyway
    if (!tempLocal) {
      this.currentType = Type.void;
      return this.compileAssignmentWithValue(expression.operand,
        calcValue,
        false
      );
    }

    // otherwise use the temp. local for the intermediate value (always possibly overflows)
    var setValue = this.compileAssignmentWithValue(expression.operand,
      calcValue, // also tees getValue to tempLocal
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

  /** Makes an allocation suitable to hold the data of an instance of the given class. */
  makeAllocation(classInstance: Class): ExpressionRef {
    var program = this.program;
    assert(classInstance.program == program);
    var module = this.module;
    var options = this.options;

    // __gc_allocate(size, markFn)
    if (program.hasGC && classInstance.type.isManaged(program)) {
      let allocateInstance = assert(program.gcAllocateInstance);
      if (!this.compileFunction(allocateInstance)) return module.createUnreachable();
      this.currentType = classInstance.type;
      return module.createCall(
        allocateInstance.internalName, [
          options.isWasm64
            ? module.createI64(classInstance.currentMemoryOffset)
            : module.createI32(classInstance.currentMemoryOffset),
          module.createI32(
            ensureGCHook(this, classInstance)
          )
        ],
        options.nativeSizeType
      );

    // memory.allocate(size)
    } else {
      let allocateInstance = program.memoryAllocateInstance;
      if (!allocateInstance || !this.compileFunction(allocateInstance)) return module.createUnreachable();
      this.currentType = classInstance.type;
      return module.createCall(
        allocateInstance.internalName, [
          options.isWasm64
            ? module.createI64(classInstance.currentMemoryOffset)
            : module.createI32(classInstance.currentMemoryOffset)
        ],
        options.nativeSizeType
      );
    }
  }

  /** Makes the initializers for a class's fields. */
  makeFieldInitialization(classInstance: Class, stmts: ExpressionRef[] = []): ExpressionRef[] {
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
            this.compileExpression( // reports
              initializerNode,
              fieldType,
              ConversionKind.IMPLICIT,
              WrapMode.NONE
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

  /** Adds the debug location of the specified expression at the specified range to the source map. */
  addDebugLocation(expr: ExpressionRef, range: Range): void {
    var parentFunction = this.currentFlow.parentFunction;
    var source = range.source;
    if (source.debugInfoIndex < 0) source.debugInfoIndex = this.module.addDebugInfoFile(source.normalizedPath);
    range.debugInfoRef = expr;
    parentFunction.debugLocations.push(range);
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

/** Special compiler symbols. */
namespace CompilerSymbols {
  /** Module started global. Used if an explicit start function is present. */
  export const started = "~lib/started";
  /** Argument count global. Used to call trampolines for varargs functions. */
  export const argc = "~lib/argc";
  /** Argument count setter. Exported for use by host calls. */
  export const setargc = "~lib/setargc";
}
