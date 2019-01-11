/**
 * AssemblyScript's intermediate representation describing a program's elements.
 * @module program
 *//***/

import {
  CommonFlags,
  PATH_DELIMITER,
  STATIC_DELIMITER,
  INSTANCE_DELIMITER,
  LIBRARY_PREFIX,
  GETTER_PREFIX,
  SETTER_PREFIX,
  FILESPACE_PREFIX
} from "./common";

import {
  Options,
  Feature
} from "./compiler";

import {
  DiagnosticCode,
  DiagnosticMessage,
  DiagnosticEmitter
} from "./diagnostics";

import {
  Type,
  TypeKind,
  TypeFlags,
  Signature
} from "./types";

import {
  Node,
  NodeKind,
  Source,
  Range,
  CommonTypeNode,
  TypeParameterNode,
  DecoratorNode,
  DecoratorKind,

  Expression,
  IdentifierExpression,
  LiteralExpression,
  LiteralKind,
  StringLiteralExpression,

  ClassDeclaration,
  DeclarationStatement,
  EnumDeclaration,
  EnumValueDeclaration,
  ExportMember,
  ExportStatement,
  FieldDeclaration,
  FunctionDeclaration,
  ImportDeclaration,
  ImportStatement,
  InterfaceDeclaration,
  MethodDeclaration,
  NamespaceDeclaration,
  TypeDeclaration,
  VariableDeclaration,
  VariableLikeDeclarationStatement,
  VariableStatement,

  decoratorNameToKind,
  findDecorator
} from "./ast";

import {
  Module,
  NativeType,
  FunctionRef,
  ExpressionRef,
  ExpressionId,
  BinaryOp,
  UnaryOp,

  getExpressionId,
  getGetLocalIndex,
  isTeeLocal,
  getSetLocalValue,
  getBinaryOp,
  getConstValueI32,
  getBinaryLeft,
  getBinaryRight,
  getUnaryOp,
  getExpressionType,
  getLoadBytes,
  isLoadSigned,
  getIfTrue,
  getIfFalse,
  getSelectThen,
  getSelectElse,
  getCallTarget,
  getBlockChildCount,
  getBlockChild,
  getBlockName,
  getConstValueF32,
  getConstValueF64,
  getConstValueI64Low,
  getGetGlobalName
} from "./module";

import {
  CharCode
} from "./util";

import {
  Resolver
} from "./resolver";

/** Represents a yet unresolved import. */
class QueuedImport {
  localName: string;
  externalName: string;
  externalNameAlt: string;
  declaration: ImportDeclaration | null; // not set if a filespace
}

/** Represents a yet unresolved export. */
class QueuedExport {
  externalName: string;
  isReExport: bool;
  member: ExportMember;
}

/** Represents a type alias. */
class TypeAlias {
  typeParameters: TypeParameterNode[] | null;
  type: CommonTypeNode;
}

/** Represents a module-level export. */
class ModuleExport {
  element: Element;
  identifier: IdentifierExpression;
}

/** Represents the kind of an operator overload. */
export enum OperatorKind {
  INVALID,

  // indexed access
  INDEXED_GET,            // a[]
  INDEXED_SET,            // a[]=b
  UNCHECKED_INDEXED_GET,  // unchecked(a[])
  UNCHECKED_INDEXED_SET,  // unchecked(a[]=b)

  // binary
  ADD,                    // a + b
  SUB,                    // a - b
  MUL,                    // a * b
  DIV,                    // a / b
  REM,                    // a % b
  POW,                    // a ** b
  BITWISE_AND,            // a & b
  BITWISE_OR,             // a | b
  BITWISE_XOR,            // a ^ b
  BITWISE_SHL,            // a << b
  BITWISE_SHR,            // a >> b
  BITWISE_SHR_U,          // a >>> b
  EQ,                     // a == b
  NE,                     // a != b
  GT,                     // a > b
  GE,                     // a >= b
  LT,                     // a < b
  LE,                     // a <= b

  // unary prefix
  PLUS,                   // +a
  MINUS,                  // -a
  NOT,                    // !a
  BITWISE_NOT,            // ~a
  PREFIX_INC,             // ++a
  PREFIX_DEC,             // --a

  // unary postfix
  POSTFIX_INC,            // a++
  POSTFIX_DEC             // a--

  // not overridable:
  // IDENTITY             // a === b
  // LOGICAL_AND          // a && b
  // LOGICAL_OR           // a || b
}

/** Returns the operator kind represented by the specified decorator and string argument. */
function operatorKindFromDecorator(decoratorKind: DecoratorKind, arg: string): OperatorKind {
  assert(arg.length);
  switch (decoratorKind) {
    case DecoratorKind.OPERATOR:
    case DecoratorKind.OPERATOR_BINARY: {
      switch (arg.charCodeAt(0)) {
        case CharCode.OPENBRACKET: {
          if (arg == "[]") return OperatorKind.INDEXED_GET;
          if (arg == "[]=") return OperatorKind.INDEXED_SET;
          break;
        }
        case CharCode.OPENBRACE: {
          if (arg == "{}") return OperatorKind.UNCHECKED_INDEXED_GET;
          if (arg == "{}=") return OperatorKind.UNCHECKED_INDEXED_SET;
          break;
        }
        case CharCode.PLUS: {
          if (arg == "+") return OperatorKind.ADD;
          break;
        }
        case CharCode.MINUS: {
          if (arg == "-") return OperatorKind.SUB;
          break;
        }
        case CharCode.ASTERISK: {
          if (arg == "*") return OperatorKind.MUL;
          if (arg == "**") return OperatorKind.POW;
          break;
        }
        case CharCode.SLASH: {
          if (arg == "/") return OperatorKind.DIV;
          break;
        }
        case CharCode.PERCENT: {
          if (arg == "%") return OperatorKind.REM;
          break;
        }
        case CharCode.AMPERSAND: {
          if (arg == "&") return OperatorKind.BITWISE_AND;
          break;
        }
        case CharCode.BAR: {
          if (arg == "|") return OperatorKind.BITWISE_OR;
          break;
        }
        case CharCode.CARET: {
          if (arg == "^") return OperatorKind.BITWISE_XOR;
          break;
        }
        case CharCode.EQUALS: {
          if (arg == "==") return OperatorKind.EQ;
          break;
        }
        case CharCode.EXCLAMATION: {
          if (arg == "!=") return OperatorKind.NE;
          break;
        }
        case CharCode.GREATERTHAN: {
          if (arg == ">") return OperatorKind.GT;
          if (arg == ">=") return OperatorKind.GE;
          if (arg == ">>") return OperatorKind.BITWISE_SHR;
          if (arg == ">>>") return OperatorKind.BITWISE_SHR_U;
          break;
        }
        case CharCode.LESSTHAN: {
          if (arg == "<") return OperatorKind.LT;
          if (arg == "<=") return OperatorKind.LE;
          if (arg == "<<") return OperatorKind.BITWISE_SHL;
          break;
        }
      }
      break;
    }
    case DecoratorKind.OPERATOR_PREFIX: {
      switch (arg.charCodeAt(0)) {
        case CharCode.PLUS: {
          if (arg == "+") return OperatorKind.PLUS;
          if (arg == "++") return OperatorKind.PREFIX_INC;
          break;
        }
        case CharCode.MINUS: {
          if (arg == "-") return OperatorKind.MINUS;
          if (arg == "--") return OperatorKind.PREFIX_DEC;
          break;
        }
        case CharCode.EXCLAMATION: {
          if (arg == "!") return OperatorKind.NOT;
          break;
        }
        case CharCode.TILDE: {
          if (arg == "~") return OperatorKind.BITWISE_NOT;
          break;
        }
      }
      break;
    }
    case DecoratorKind.OPERATOR_POSTFIX: {
      switch (arg.charCodeAt(0)) {
        case CharCode.PLUS: {
          if (arg == "++") return OperatorKind.POSTFIX_INC;
          break;
        }
        case CharCode.MINUS: {
          if (arg == "--") return OperatorKind.POSTFIX_DEC;
          break;
        }
      }
      break;
    }
  }
  return OperatorKind.INVALID;
}

const noTypesYet = new Map<string,Type>();

/** Represents an AssemblyScript program. */
export class Program extends DiagnosticEmitter {

  /** Array of source files. */
  sources: Source[];
  /** Resolver instance. */
  resolver: Resolver;
  /** Diagnostic offset used where successively obtaining the next diagnostic. */
  diagnosticsOffset: i32 = 0;
  /** Compiler options. */
  options: Options;

  /** Elements by internal name. */
  elementsLookup: Map<string,Element> = new Map();
  /** Class and function instances by internal name. */
  instancesLookup: Map<string,Element> = new Map();
  /** Types by internal name. */
  typesLookup: Map<string,Type> = noTypesYet;
  /** Declared type aliases. */
  typeAliases: Map<string,TypeAlias> = new Map();
  /** File-level exports by exported name. */
  fileLevelExports: Map<string,Element> = new Map();
  /** Module-level exports by exported name. */
  moduleLevelExports: Map<string,ModuleExport> = new Map();
  /** Classes backing basic types like `i32`. */
  basicClasses: Map<TypeKind,Class> = new Map();

  /** ArrayBuffer instance reference. */
  arrayBufferInstance: Class | null = null;
  /** Array prototype reference. */
  arrayPrototype: ClassPrototype | null = null;
  /** String instance reference. */
  stringInstance: Class | null = null;
  /** Start function reference. */
  startFunction: FunctionPrototype;
  /** Main function reference, if present. */
  mainFunction: FunctionPrototype | null = null;
  /** Abort function reference, if present. */
  abortInstance: Function | null = null;
  /** Memory allocation function. */
  memoryAllocateInstance: Function | null = null;

  /** Whether a garbage collector is present or not. */
  hasGC: bool = false;
  /** Garbage collector allocation function. */
  gcAllocateInstance: Function | null = null;
  /** Garbage collector link function called when a managed object is referenced from a parent. */
  gcLinkInstance: Function | null = null;
  /** Garbage collector mark function called to on reachable managed objects. */
  gcMarkInstance: Function | null = null;
  /** Size of a managed object header. */
  gcHeaderSize: u32 = 0;
  /** Offset of the GC hook. */
  gcHookOffset: u32 = 0;

  /** Currently processing filespace. */
  currentFilespace: Filespace;

  /** Constructs a new program, optionally inheriting parser diagnostics. */
  constructor(diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);
    this.resolver = new Resolver(this);
    this.sources = [];
  }

  /** Gets a source by its exact path. */
  getSource(normalizedPath: string): Source | null {
    var sources = this.sources;
    for (let i = 0, k = sources.length; i < k; ++i) {
      let source = sources[i];
      if (source.normalizedPath == normalizedPath) return source;
    }
    return null;
  }

  /** Looks up the source for the specified possibly ambiguous path. */
  lookupSourceByPath(normalizedPathWithoutExtension: string): Source | null {
    var tmp: string;
    return (
      this.getSource(normalizedPathWithoutExtension + ".ts") ||
      this.getSource(normalizedPathWithoutExtension + "/index.ts") ||
      this.getSource((tmp = LIBRARY_PREFIX + normalizedPathWithoutExtension) + ".ts") ||
      this.getSource( tmp                                                    + "/index.ts")
    );
  }

  /** Initializes the program and its elements prior to compilation. */
  initialize(options: Options): void {
    this.options = options;

    // add built-in types
    this.typesLookup = new Map([
      ["i8", Type.i8],
      ["i16", Type.i16],
      ["i32", Type.i32],
      ["i64", Type.i64],
      ["isize", options.isizeType],
      ["u8", Type.u8],
      ["u16", Type.u16],
      ["u32", Type.u32],
      ["u64", Type.u64],
      ["usize", options.usizeType],
      ["bool", Type.bool],
      ["f32", Type.f32],
      ["f64", Type.f64],
      ["void", Type.void],
      ["number", Type.f64],
      ["boolean", Type.bool]
    ]);

    // add compiler hints
    this.setConstantInteger("ASC_TARGET", Type.i32,
      i64_new(options.isWasm64 ? 2 : 1));
    this.setConstantInteger("ASC_NO_TREESHAKING", Type.bool,
      i64_new(options.noTreeShaking ? 1 : 0, 0));
    this.setConstantInteger("ASC_NO_ASSERT", Type.bool,
      i64_new(options.noAssert ? 1 : 0, 0));
    this.setConstantInteger("ASC_MEMORY_BASE", Type.i32,
      i64_new(options.memoryBase, 0));
    this.setConstantInteger("ASC_OPTIMIZE_LEVEL", Type.i32,
      i64_new(options.optimizeLevelHint, 0));
    this.setConstantInteger("ASC_SHRINK_LEVEL", Type.i32,
      i64_new(options.shrinkLevelHint, 0));
    this.setConstantInteger("ASC_FEATURE_MUTABLE_GLOBAL", Type.bool,
      i64_new(options.hasFeature(Feature.MUTABLE_GLOBAL) ? 1 : 0, 0));
    this.setConstantInteger("ASC_FEATURE_SIGN_EXTENSION", Type.bool,
      i64_new(options.hasFeature(Feature.SIGN_EXTENSION) ? 1 : 0, 0));

    // remember deferred elements
    var queuedImports = new Array<QueuedImport>();
    var queuedExports = new Map<string,QueuedExport>();
    var queuedExtends = new Array<ClassPrototype>();
    var queuedImplements = new Array<ClassPrototype>();

    // build initial lookup maps of internal names to declarations
    for (let i = 0, k = this.sources.length; i < k; ++i) {
      let source = this.sources[i];

      // create one filespace per source
      let filespace = new Filespace(this, source);
      this.elementsLookup.set(filespace.internalName, filespace);
      this.currentFilespace = filespace;

      // process this source's statements
      let statements = source.statements;
      for (let j = 0, l = statements.length; j < l; ++j) {
        let statement = statements[j];
        switch (statement.kind) {
          case NodeKind.CLASSDECLARATION: {
            this.initializeClass(<ClassDeclaration>statement, queuedExtends, queuedImplements);
            break;
          }
          case NodeKind.ENUMDECLARATION: {
            this.initializeEnum(<EnumDeclaration>statement);
            break;
          }
          case NodeKind.EXPORT: {
            this.initializeExports(<ExportStatement>statement, queuedExports);
            break;
          }
          case NodeKind.FUNCTIONDECLARATION: {
            this.initializeFunction(<FunctionDeclaration>statement);
            break;
          }
          case NodeKind.IMPORT: {
            this.initializeImports(<ImportStatement>statement, queuedExports, queuedImports);
            break;
          }
          case NodeKind.INTERFACEDECLARATION: {
            this.initializeInterface(<InterfaceDeclaration>statement);
            break;
          }
          case NodeKind.NAMESPACEDECLARATION: {
            this.initializeNamespace(<NamespaceDeclaration>statement, queuedExtends, queuedImplements);
            break;
          }
          case NodeKind.TYPEDECLARATION: {
            this.initializeTypeAlias(<TypeDeclaration>statement);
            break;
          }
          case NodeKind.VARIABLE: {
            this.initializeVariables(<VariableStatement>statement);
            break;
          }
        }
      }
    }

    // queued imports should be resolvable now through traversing exports and queued exports
    for (let i = 0; i < queuedImports.length;) {
      let queuedImport = queuedImports[i];
      let declaration = queuedImport.declaration;
      if (declaration) { // named
        let element = this.tryLocateImport(queuedImport.externalName, queuedExports);
        if (element) {
          this.elementsLookup.set(queuedImport.localName, element);
          queuedImports.splice(i, 1);
        } else {
          if (element = this.tryLocateImport(queuedImport.externalNameAlt, queuedExports)) {
            this.elementsLookup.set(queuedImport.localName, element);
            queuedImports.splice(i, 1);
          } else {
            this.error(
              DiagnosticCode.Module_0_has_no_exported_member_1,
              declaration.range,
              (<ImportStatement>declaration.parent).path.value,
              declaration.externalName.text
            );
            ++i;
          }
        }
      } else { // filespace
        let element = this.elementsLookup.get(queuedImport.externalName);
        if (element) {
          this.elementsLookup.set(queuedImport.localName, element);
          queuedImports.splice(i, 1);
        } else {
          if (element = this.elementsLookup.get(queuedImport.externalNameAlt)) {
            this.elementsLookup.set(queuedImport.localName, element);
            queuedImports.splice(i, 1);
          } else {
            assert(false); // already reported by the parser not finding the file
            ++i;
          }
        }
      }
    }

    // queued exports should be resolvable now that imports are finalized
    for (let [exportName, queuedExport] of queuedExports) {
      let currentExport: QueuedExport | null = queuedExport; // nullable below
      let element: Element | null;
      do {
        if (currentExport.isReExport) {
          if (element = this.fileLevelExports.get(currentExport.externalName)) {
            this.setExportAndCheckLibrary(
              exportName,
              element,
              queuedExport.member.externalName
            );
            break;
          }
          currentExport = queuedExports.get(currentExport.externalName);
          if (!currentExport) {
            this.error(
              DiagnosticCode.Module_0_has_no_exported_member_1,
              queuedExport.member.externalName.range,
              (<StringLiteralExpression>(<ExportStatement>queuedExport.member.parent).path).value,
              queuedExport.member.externalName.text
            );
          }
        } else {
          if (
            // normal export
            (element = this.elementsLookup.get(currentExport.externalName)) ||
            // library re-export
            (element = this.elementsLookup.get(currentExport.member.name.text))
          ) {
            this.setExportAndCheckLibrary(
              exportName,
              element,
              queuedExport.member.externalName
            );
          } else {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              queuedExport.member.range, queuedExport.member.name.text
            );
          }
          break;
        }
      } while (currentExport);
    }

    // resolve base prototypes of derived classes
    var resolver = this.resolver;
    for (let i = 0, k = queuedExtends.length; i < k; ++i) {
      let derivedPrototype = queuedExtends[i];
      let derivedDeclaration = derivedPrototype.declaration;
      let derivedType = assert(derivedDeclaration.extendsType);
      let baseElement = resolver.resolveIdentifier(derivedType.name, null); // reports
      if (!baseElement) continue;
      if (baseElement.kind == ElementKind.CLASS_PROTOTYPE) {
        let basePrototype = <ClassPrototype>baseElement;
        derivedPrototype.basePrototype = basePrototype;
      } else {
        this.error(
          DiagnosticCode.A_class_may_only_extend_another_class,
          derivedType.range
        );
      }
    }

    // set up global aliases
    {
      let globalAliases = options.globalAliases;
      if (globalAliases) {
        for (let [alias, name] of globalAliases) {
          if (!name.length) continue; // explicitly disabled
          let element = this.elementsLookup.get(name);
          if (element) this.elementsLookup.set(alias, element);
          else throw new Error("element not found: " + name);
        }
      }
    }

    // register 'ArrayBuffer'
    if (this.elementsLookup.has("ArrayBuffer")) {
      let element = assert(this.elementsLookup.get("ArrayBuffer"));
      assert(element.kind == ElementKind.CLASS_PROTOTYPE);
      this.arrayBufferInstance = resolver.resolveClass(<ClassPrototype>element, null);
    }

    // register 'Array'
    if (this.elementsLookup.has("Array")) {
      let element = assert(this.elementsLookup.get("Array"));
      assert(element.kind == ElementKind.CLASS_PROTOTYPE);
      this.arrayPrototype = <ClassPrototype>element;
    }

    // register 'String'
    if (this.elementsLookup.has("String")) {
      let element = assert(this.elementsLookup.get("String"));
      assert(element.kind == ElementKind.CLASS_PROTOTYPE);
      let instance = resolver.resolveClass(<ClassPrototype>element, null);
      if (instance) {
        if (this.typesLookup.has("string")) {
          let declaration = (<ClassPrototype>element).declaration;
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, declaration.programLevelInternalName
          );
        } else {
          this.stringInstance = instance;
          this.typesLookup.set("string", instance.type);
        }
      }
    }

    // register classes backing basic types
    this.registerBasicClass(TypeKind.I8, "I8");
    this.registerBasicClass(TypeKind.I16, "I16");
    this.registerBasicClass(TypeKind.I32, "I32");
    this.registerBasicClass(TypeKind.I64, "I64");
    this.registerBasicClass(TypeKind.ISIZE, "Isize");
    this.registerBasicClass(TypeKind.U8, "U8");
    this.registerBasicClass(TypeKind.U16, "U16");
    this.registerBasicClass(TypeKind.U32, "U32");
    this.registerBasicClass(TypeKind.U64, "U64");
    this.registerBasicClass(TypeKind.USIZE, "Usize");
    this.registerBasicClass(TypeKind.BOOL, "Bool");
    this.registerBasicClass(TypeKind.F32, "F32");
    this.registerBasicClass(TypeKind.F64, "F64");

    // register 'start'
    {
      let element = assert(this.elementsLookup.get("start"));
      assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
      this.startFunction = <FunctionPrototype>element;
    }

    // register 'main' if present
    if (this.moduleLevelExports.has("main")) {
      let element = (<ModuleExport>this.moduleLevelExports.get("main")).element;
      if (
        element.kind == ElementKind.FUNCTION_PROTOTYPE &&
        !(<FunctionPrototype>element).isAny(CommonFlags.GENERIC | CommonFlags.AMBIENT)
      ) {
        (<FunctionPrototype>element).set(CommonFlags.MAIN);
        this.mainFunction = <FunctionPrototype>element;
      }
    }

    // register 'abort' if present
    if (this.elementsLookup.has("abort")) {
      let element = <Element>this.elementsLookup.get("abort");
      assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
      let instance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
      if (instance) this.abortInstance = instance;
    }

    // register 'memory.allocate' if present
    if (this.elementsLookup.has("memory")) {
      let element = <Element>this.elementsLookup.get("memory");
      let members = element.members;
      if (members) {
        if (members.has("allocate")) {
          element = assert(members.get("allocate"));
          assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
          let instance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
          if (instance) this.memoryAllocateInstance = instance;
        }
      }
    }

    // register GC hooks if present
    if (
      this.elementsLookup.has("__gc_allocate") &&
      this.elementsLookup.has("__gc_link") &&
      this.elementsLookup.has("__gc_mark")
    ) {
      // __gc_allocate(usize, (ref: usize) => void): usize
      let element = <Element>this.elementsLookup.get("__gc_allocate");
      assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
      let gcAllocateInstance = assert(this.resolver.resolveFunction(<FunctionPrototype>element, null));
      let signature = gcAllocateInstance.signature;
      assert(signature.parameterTypes.length == 2);
      assert(signature.parameterTypes[0] == this.options.usizeType);
      assert(signature.parameterTypes[1].signatureReference);
      assert(signature.returnType == this.options.usizeType);

      // __gc_link(usize, usize): void
      element = <Element>this.elementsLookup.get("__gc_link");
      assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
      let gcLinkInstance = assert(this.resolver.resolveFunction(<FunctionPrototype>element, null));
      signature = gcLinkInstance.signature;
      assert(signature.parameterTypes.length == 2);
      assert(signature.parameterTypes[0] == this.options.usizeType);
      assert(signature.parameterTypes[1] == this.options.usizeType);
      assert(signature.returnType == Type.void);

      // __gc_mark(usize): void
      element = <Element>this.elementsLookup.get("__gc_mark");
      assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
      let gcMarkInstance = assert(this.resolver.resolveFunction(<FunctionPrototype>element, null));
      signature = gcMarkInstance.signature;
      assert(signature.parameterTypes.length == 1);
      assert(signature.parameterTypes[0] == this.options.usizeType);
      assert(signature.returnType == Type.void);

      this.gcAllocateInstance = gcAllocateInstance;
      this.gcLinkInstance = gcLinkInstance;
      this.gcMarkInstance = gcMarkInstance;
      let gcHookOffset = 2 * options.usizeType.byteSize; // .next + .prev
      this.gcHookOffset =  gcHookOffset;
      this.gcHeaderSize = (gcHookOffset + 4 + 7) & ~7;   // + .hook index + alignment
      this.hasGC = true;
    }
  }

  private registerBasicClass(typeKind: TypeKind, className: string): void {
    if (this.elementsLookup.has(className)) {
      let element = assert(this.elementsLookup.get(className));
      assert(element.kind == ElementKind.CLASS_PROTOTYPE);
      let classElement = this.resolver.resolveClass(<ClassPrototype>element, null);
      if (classElement) this.basicClasses.set(typeKind, classElement);
    }
  }

  /** Sets a constant integer value. */
  setConstantInteger(globalName: string, type: Type, value: I64): void {
    assert(type.is(TypeFlags.INTEGER));
    var global = new Global(this, globalName, globalName, type, null, DecoratorFlags.NONE)
      .withConstantIntegerValue(value);
    global.set(CommonFlags.RESOLVED);
    this.elementsLookup.set(globalName, global);
  }

  /** Sets a constant float value. */
  setConstantFloat(globalName: string, type: Type, value: f64): void {
    assert(type.is(TypeFlags.FLOAT));
    var global = new Global(this, globalName, globalName, type, null, DecoratorFlags.NONE)
      .withConstantFloatValue(value);
    global.set(CommonFlags.RESOLVED);
    this.elementsLookup.set(globalName, global);
  }

  /** Tries to locate an import by traversing exports and queued exports. */
  private tryLocateImport(
    externalName: string,
    queuedNamedExports: Map<string,QueuedExport>
  ): Element | null {
    var element: Element | null;
    var fileLevelExports = this.fileLevelExports;
    do {
      if (element = fileLevelExports.get(externalName)) return element;
      let queuedExport = queuedNamedExports.get(externalName);
      if (!queuedExport) break;
      if (queuedExport.isReExport) {
        externalName = queuedExport.externalName;
        continue;
      }
      return this.elementsLookup.get(queuedExport.externalName);
    } while (true);
    return null;
  }

  /** Checks that only supported decorators are present. */
  private checkDecorators(
    decorators: DecoratorNode[],
    acceptedFlags: DecoratorFlags
  ): DecoratorFlags {
    var presentFlags = DecoratorFlags.NONE;
    for (let i = 0, k = decorators.length; i < k; ++i) {
      let decorator = decorators[i];
      let kind = decoratorNameToKind(decorator.name);
      let flag = decoratorKindToFlag(kind);
      if (flag) {
        if (flag == DecoratorFlags.BUILTIN) {
          if (decorator.range.source.isLibrary) {
            presentFlags |= flag;
          } else {
            this.error(
              DiagnosticCode.Decorator_0_is_not_valid_here,
              decorator.range, decorator.name.range.toString()
            );
          }
        } else if (!(acceptedFlags & flag)) {
          this.error(
            DiagnosticCode.Decorator_0_is_not_valid_here,
            decorator.range, decorator.name.range.toString()
          );
        } else if (presentFlags & flag) {
          this.error(
            DiagnosticCode.Duplicate_decorator,
            decorator.range, decorator.name.range.toString()
          );
        } else {
          presentFlags |= flag;
        }
      }
    }
    return presentFlags;
  }

  /** Checks and sets up global options of an element. */
  private checkGlobal(
    element: Element,
    declaration: DeclarationStatement
  ): void {
    var parentNode = declaration.parent;
    // alias globally if explicitly annotated @global or exported from a top-level library file
    if (
      (element.hasDecorator(DecoratorFlags.GLOBAL)) ||
      (
        declaration.range.source.isLibrary &&
        element.is(CommonFlags.EXPORT) &&
        (
          assert(parentNode).kind == NodeKind.SOURCE ||
          (
            <Node>parentNode).kind == NodeKind.VARIABLE &&
            assert((<Node>parentNode).parent).kind == NodeKind.SOURCE
          )
        )
    ) {
      let globalName = declaration.programLevelInternalName;
      if (this.elementsLookup.has(globalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, element.internalName
        );
      } else {
        this.elementsLookup.set(globalName, element);
      }
    }
    // builtins use the global name directly
    if (element.hasDecorator(DecoratorFlags.BUILTIN)) {
      element.internalName = declaration.programLevelInternalName;
    }
  }

  /** Initializes a class declaration. */
  private initializeClass(
    declaration: ClassDeclaration,
    queuedExtends: ClassPrototype[],
    queuedImplements: ClassPrototype[],
    namespace: Element | null = null
  ): void {
    var internalName = declaration.fileLevelInternalName;
    if (this.elementsLookup.has(internalName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, internalName
      );
      return;
    }

    var decorators = declaration.decorators;
    var simpleName = declaration.name.text;
    var prototype = new ClassPrototype(
      this,
      simpleName,
      internalName,
      declaration,
      decorators
        ? this.checkDecorators(decorators,
            DecoratorFlags.GLOBAL |
            DecoratorFlags.SEALED |
            DecoratorFlags.UNMANAGED
          )
        : DecoratorFlags.NONE
    );
    prototype.parent = namespace;
    this.elementsLookup.set(internalName, prototype);

    var implementsTypes = declaration.implementsTypes;
    if (implementsTypes) {
      let numImplementsTypes = implementsTypes.length;
      if (prototype.hasDecorator(DecoratorFlags.UNMANAGED)) {
        if (numImplementsTypes) {
          this.error(
            DiagnosticCode.Unmanaged_classes_cannot_implement_interfaces,
            Range.join(
              declaration.name.range,
              implementsTypes[numImplementsTypes - 1].range
            )
          );
        }

      // remember classes that implement interfaces
      } else if (numImplementsTypes) {
        for (let i = 0; i < numImplementsTypes; ++i) {
          this.warning( // TODO
            DiagnosticCode.Operation_not_supported,
            implementsTypes[i].range
          );
        }
        queuedImplements.push(prototype);
      }
    }

    // remember classes that extend another one
    if (declaration.extendsType) queuedExtends.push(prototype);

    // add as namespace member if applicable
    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(simpleName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        namespace.members = new Map();
      }
      namespace.members.set(simpleName, prototype);
      if (namespace.is(CommonFlags.MODULE_EXPORT) && prototype.is(CommonFlags.EXPORT)) {
        prototype.set(CommonFlags.MODULE_EXPORT);
      }

    // otherwise add to file-level exports if exported
    } else if (prototype.is(CommonFlags.EXPORT)) {
      if (this.fileLevelExports.has(internalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          declaration.name.range, internalName
        );
        return;
      }
      this.fileLevelExports.set(internalName, prototype);
      this.currentFilespace.members.set(simpleName, prototype);
      if (prototype.is(CommonFlags.EXPORT) && declaration.range.source.isEntry) {
        if (this.moduleLevelExports.has(simpleName)) {
          let existingExport = <ModuleExport>this.moduleLevelExports.get(simpleName);
          this.error(
            DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
            declaration.name.range, existingExport.element.internalName
          );
          return;
        }
        prototype.set(CommonFlags.MODULE_EXPORT);
        this.moduleLevelExports.set(simpleName, <ModuleExport>{
          element: prototype,
          identifier: declaration.name
        });
      }
    }

    // initialize members
    var memberDeclarations = declaration.members;
    for (let i = 0, k = memberDeclarations.length; i < k; ++i) {
      let memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {
        case NodeKind.FIELDDECLARATION: {
          this.initializeField(<FieldDeclaration>memberDeclaration, prototype);
          break;
        }
        case NodeKind.METHODDECLARATION: {
          if (memberDeclaration.isAny(CommonFlags.GET | CommonFlags.SET)) {
            this.initializeAccessor(<MethodDeclaration>memberDeclaration, prototype);
          } else {
            this.initializeMethod(<MethodDeclaration>memberDeclaration, prototype);
          }
          break;
        }
        case NodeKind.INDEXSIGNATUREDECLARATION: break; // ignored for now
        default: {
          assert(false); // should have been reported while parsing
          return;
        }
      }
    }

    this.checkGlobal(prototype, declaration);
  }

  /** Initializes a field of a class or interface. */
  private initializeField(
    declaration: FieldDeclaration,
    classPrototype: ClassPrototype
  ): void {
    var name = declaration.name.text;
    var internalName = declaration.fileLevelInternalName;
    var decorators = declaration.decorators;
    var isInterface = classPrototype.kind == ElementKind.INTERFACE_PROTOTYPE;

    // static fields become global variables
    if (declaration.is(CommonFlags.STATIC)) {
      if (isInterface) {
        // should have been reported while parsing
        assert(false);
      }
      if (this.elementsLookup.has(internalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, internalName
        );
        return;
      }
      if (classPrototype.members) {
        if (classPrototype.members.has(name)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        classPrototype.members = new Map();
      }
      let staticField = new Global(
        this,
        name,
        internalName,
        Type.void, // resolved later on
        declaration,
        decorators
          ? this.checkDecorators(decorators, DecoratorFlags.INLINE)
          : DecoratorFlags.NONE
      );
      staticField.parent = classPrototype;
      classPrototype.members.set(name, staticField);
      this.elementsLookup.set(internalName, staticField);
      if (classPrototype.is(CommonFlags.MODULE_EXPORT)) {
        staticField.set(CommonFlags.MODULE_EXPORT);
      }

      if (staticField.hasDecorator(DecoratorFlags.INLINE) && !staticField.is(CommonFlags.READONLY)) {
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          assert(findDecorator(DecoratorKind.INLINE, decorators)).range, "inline"
        );
      }

    // instance fields are remembered until resolved
    } else {
      if (isInterface) {
        // should have been reported while parsing
        assert(!declaration.isAny(CommonFlags.ABSTRACT | CommonFlags.GET | CommonFlags.SET));
      }
      if (classPrototype.instanceMembers) {
        if (classPrototype.instanceMembers.has(name)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        classPrototype.instanceMembers = new Map();
      }
      let instanceField = new FieldPrototype(
        classPrototype,
        name,
        internalName,
        declaration
      );
      if (decorators) this.checkDecorators(decorators, DecoratorFlags.NONE);
      classPrototype.instanceMembers.set(name, instanceField);
    }
  }

  /** Initializes a method of a class or interface. */
  private initializeMethod(
    declaration: MethodDeclaration,
    classPrototype: ClassPrototype
  ): void {
    var simpleName = declaration.name.text;
    var internalName = declaration.fileLevelInternalName;
    var prototype: FunctionPrototype | null = null;

    var decorators = declaration.decorators;
    var decoratorFlags = DecoratorFlags.NONE;
    if (decorators) {
      decoratorFlags = this.checkDecorators(decorators,
        DecoratorFlags.OPERATOR_BINARY  |
        DecoratorFlags.OPERATOR_PREFIX  |
        DecoratorFlags.OPERATOR_POSTFIX |
        DecoratorFlags.INLINE
      );
    }

    // static methods become global functions
    if (declaration.is(CommonFlags.STATIC)) {
      assert(declaration.name.kind != NodeKind.CONSTRUCTOR);

      if (this.elementsLookup.has(internalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0, declaration.name.range,
          internalName
        );
        return;
      }
      if (classPrototype.members) {
        if (classPrototype.members.has(simpleName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        classPrototype.members = new Map();
      }
      prototype = new FunctionPrototype(
        this,
        simpleName,
        internalName,
        declaration,
        classPrototype,
        decoratorFlags
      );
      classPrototype.members.set(simpleName, prototype);
      this.elementsLookup.set(internalName, prototype);
      if (classPrototype.is(CommonFlags.MODULE_EXPORT)) {
        prototype.set(CommonFlags.MODULE_EXPORT);
      }

    // instance methods are remembered until resolved
    } else {
      if (classPrototype.instanceMembers) {
        if (classPrototype.instanceMembers.has(simpleName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        classPrototype.instanceMembers = new Map();
      }
      prototype = new FunctionPrototype(
        this,
        simpleName,
        internalName,
        declaration,
        classPrototype,
        decoratorFlags
      );
      // if (classPrototype.isUnmanaged && instancePrototype.isAbstract) {
      //   this.error( Unmanaged classes cannot declare abstract methods. );
      // }
      if (declaration.name.kind == NodeKind.CONSTRUCTOR) {
        if (classPrototype.constructorPrototype) {
          this.error(
            DiagnosticCode.Multiple_constructor_implementations_are_not_allowed,
            declaration.name.range
          );
        } else {
          prototype.set(CommonFlags.CONSTRUCTOR);
          classPrototype.constructorPrototype = prototype;
        }
      } else {
        classPrototype.instanceMembers.set(simpleName, prototype);
      }
      if (classPrototype.is(CommonFlags.MODULE_EXPORT)) {
        prototype.set(CommonFlags.MODULE_EXPORT);
      }
    }

    this.checkOperatorOverloads(declaration.decorators, prototype, classPrototype);
  }

  private checkOperatorOverloads(
    decorators: DecoratorNode[] | null,
    prototype: FunctionPrototype,
    classPrototype: ClassPrototype
  ): void {
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        let decorator = decorators[i];
        switch (decorator.decoratorKind) {
          case DecoratorKind.OPERATOR:
          case DecoratorKind.OPERATOR_BINARY:
          case DecoratorKind.OPERATOR_PREFIX:
          case DecoratorKind.OPERATOR_POSTFIX: {
            let numArgs = decorator.arguments && decorator.arguments.length || 0;
            if (numArgs == 1) {
              let firstArg = (<Expression[]>decorator.arguments)[0];
              if (
                firstArg.kind == NodeKind.LITERAL &&
                (<LiteralExpression>firstArg).literalKind == LiteralKind.STRING
              ) {
                let kind = operatorKindFromDecorator(
                  decorator.decoratorKind,
                  (<StringLiteralExpression>firstArg).value
                );
                if (kind == OperatorKind.INVALID) {
                  this.error(
                    DiagnosticCode.Operation_not_supported,
                    firstArg.range
                  );
                } else {
                  let overloads = classPrototype.overloadPrototypes;
                  if (overloads.has(kind)) {
                    this.error(
                      DiagnosticCode.Duplicate_function_implementation,
                      firstArg.range
                    );
                  } else {
                    prototype.operatorKind = kind;
                    overloads.set(kind, prototype);
                  }
                }
              } else {
                this.error(
                  DiagnosticCode.String_literal_expected,
                  firstArg.range
                );
              }
            } else {
              this.error(
                DiagnosticCode.Expected_0_arguments_but_got_1,
                decorator.range, "1", numArgs.toString(0)
              );
            }
          }
        }
      }
    }
  }

  private initializeAccessor(
    declaration: MethodDeclaration,
    classPrototype: ClassPrototype
  ): void {
    var simpleName = declaration.name.text;
    var internalPropertyName = declaration.fileLevelInternalName;
    var propertyElement = this.elementsLookup.get(internalPropertyName);
    var isGetter = declaration.is(CommonFlags.GET);
    var isNew = false;
    if (propertyElement) {
      if (
        propertyElement.kind != ElementKind.PROPERTY ||
        (isGetter
          ? (<Property>propertyElement).getterPrototype
          : (<Property>propertyElement).setterPrototype
        ) != null
      ) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, internalPropertyName
        );
        return;
      }
    } else {
      propertyElement = new Property(
        this,
        simpleName,
        internalPropertyName,
        classPrototype
      );
      isNew = true;
    }

    var decorators = declaration.decorators;
    var decoratorFlags = DecoratorFlags.NONE;
    if (decorators) {
      decoratorFlags = this.checkDecorators(decorators,
        DecoratorFlags.INLINE
      );
    }

    var baseName = (isGetter ? GETTER_PREFIX : SETTER_PREFIX) + simpleName;

    // static accessors become global functions
    if (declaration.is(CommonFlags.STATIC)) {
      let staticName = classPrototype.internalName + STATIC_DELIMITER + baseName;
      if (this.elementsLookup.has(staticName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, staticName
        );
        return;
      }
      let staticPrototype = new FunctionPrototype(
        this,
        baseName,
        staticName,
        declaration,
        null,
        decoratorFlags
      );
      if (isGetter) {
        (<Property>propertyElement).getterPrototype = staticPrototype;
      } else {
        (<Property>propertyElement).setterPrototype = staticPrototype;
      }
      if (isNew) {
        if (classPrototype.members) {
          if (classPrototype.members.has(simpleName)) {
            this.error(
              DiagnosticCode.Duplicate_identifier_0,
              declaration.name.range, staticName
            );
            return;
          }
        } else {
          classPrototype.members = new Map();
        }
        classPrototype.members.set(simpleName, propertyElement); // check above
      } else {
        assert(classPrototype.members && classPrototype.members.has(simpleName));
      }
      this.elementsLookup.set(internalPropertyName, propertyElement);
      if (classPrototype.is(CommonFlags.MODULE_EXPORT)) {
        propertyElement.set(CommonFlags.MODULE_EXPORT);
      }

    // instance accessors are remembered until resolved
    } else {
      let instanceName = classPrototype.internalName + INSTANCE_DELIMITER + baseName;
      if (classPrototype.instanceMembers) {
        if (classPrototype.instanceMembers.has(baseName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalPropertyName
          );
          return;
        }
      } else {
        classPrototype.instanceMembers = new Map();
      }
      let instancePrototype = new FunctionPrototype(
        this,
        baseName,
        instanceName,
        declaration,
        classPrototype,
        decoratorFlags
      );
      if (isGetter) {
        (<Property>propertyElement).getterPrototype = instancePrototype;
      } else {
        (<Property>propertyElement).setterPrototype = instancePrototype;
      }
      classPrototype.instanceMembers.set(baseName, propertyElement);
      this.elementsLookup.set(internalPropertyName, propertyElement);
      if (classPrototype.is(CommonFlags.MODULE_EXPORT)) {
        propertyElement.set(CommonFlags.MODULE_EXPORT);
        instancePrototype.set(CommonFlags.MODULE_EXPORT);
      }
    }
  }

  private initializeEnum(
    declaration: EnumDeclaration,
    namespace: Element | null = null
  ): void {
    var internalName = declaration.fileLevelInternalName;
    if (this.elementsLookup.has(internalName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, internalName
      );
      return;
    }
    var simpleName = declaration.name.text;
    var element = new Enum(this, simpleName, internalName, declaration);
    element.parent = namespace;
    this.elementsLookup.set(internalName, element);

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(simpleName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        namespace.members = new Map();
      }
      namespace.members.set(simpleName, element);
      if (namespace.is(CommonFlags.MODULE_EXPORT) && element.is(CommonFlags.EXPORT)) {
        element.set(CommonFlags.MODULE_EXPORT);
      }
    } else if (element.is(CommonFlags.EXPORT)) { // no namespace
      if (this.fileLevelExports.has(internalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          declaration.name.range, internalName
        );
        return;
      }
      this.fileLevelExports.set(internalName, element);
      this.currentFilespace.members.set(simpleName, element);
      if (declaration.range.source.isEntry) {
        if (this.moduleLevelExports.has(simpleName)) {
          let existingExport = <ModuleExport>this.moduleLevelExports.get(simpleName);
          this.error(
            DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
            declaration.name.range, existingExport.element.internalName
          );
          return;
        }
        element.set(CommonFlags.MODULE_EXPORT);
        this.moduleLevelExports.set(simpleName, <ModuleExport>{
          element,
          identifier: declaration.name
        });
      }
    }

    var values = declaration.values;
    for (let i = 0, k = values.length; i < k; ++i) {
      this.initializeEnumValue(values[i], element);
    }

    this.checkGlobal(element, declaration);
  }

  private initializeEnumValue(
    declaration: EnumValueDeclaration,
    enm: Enum
  ): void {
    var name = declaration.name.text;
    var internalName = declaration.fileLevelInternalName;
    if (enm.members) {
      if (enm.members.has(name)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, internalName
        );
        return;
      }
    } else {
      enm.members = new Map();
    }
    var value = new EnumValue(enm, this, name, internalName, declaration);
    enm.members.set(name, value);
    if (enm.is(CommonFlags.MODULE_EXPORT)) {
      value.set(CommonFlags.MODULE_EXPORT);
    }
  }

  private initializeExports(
    statement: ExportStatement,
    queuedExports: Map<string,QueuedExport>
  ): void {
    var members = statement.members;
    if (members) { // named
      for (let i = 0, k = members.length; i < k; ++i) {
        this.initializeExport(members[i], statement.internalPath, queuedExports);
      }
    } else { // TODO: filespace
      this.error(
        DiagnosticCode.Operation_not_supported,
        statement.range
      );
    }
  }

  private setExportAndCheckLibrary(
    internalName: string,
    element: Element,
    externalIdentifier: IdentifierExpression
  ): void {
    // add to file-level exports
    this.fileLevelExports.set(internalName, element);

    // add to filespace
    var internalPath = externalIdentifier.range.source.internalPath;
    var prefix = FILESPACE_PREFIX + internalPath;
    var filespace = this.elementsLookup.get(prefix);
    if (!filespace) filespace = assert(this.elementsLookup.get(prefix + PATH_DELIMITER + "index"));
    assert(filespace.kind == ElementKind.FILESPACE);
    var simpleName = externalIdentifier.text;
    (<Filespace>filespace).members.set(simpleName, element);

    // add global alias if a top-level export of a library file
    var source = externalIdentifier.range.source;
    if (source.isLibrary) {
      if (this.elementsLookup.has(simpleName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          externalIdentifier.range, simpleName
        );
      } else {
        element.internalName = simpleName;
        this.elementsLookup.set(simpleName, element);
      }

    // add module level export if a top-level export of an entry file
    } else if (source.isEntry) {
      this.moduleLevelExports.set(externalIdentifier.text, <ModuleExport>{
        element,
        identifier: externalIdentifier
      });
    }
  }

  private initializeExport(
    member: ExportMember,
    internalPath: string | null,
    queuedExports: Map<string,QueuedExport>
  ): void {
    var externalName = member.range.source.internalPath + PATH_DELIMITER + member.externalName.text;
    if (this.fileLevelExports.has(externalName)) {
      this.error(
        DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
        member.externalName.range, externalName
      );
      return;
    }
    var referencedName: string;
    var referencedElement: Element | null;
    var queuedExport: QueuedExport | null;

    // export local element
    if (internalPath == null) {
      referencedName = member.range.source.internalPath + PATH_DELIMITER + member.name.text;

      // resolve right away if the element exists
      if (this.elementsLookup.has(referencedName)) {
        this.setExportAndCheckLibrary(
          externalName,
          <Element>this.elementsLookup.get(referencedName),
          member.externalName
        );
        return;
      }

      // otherwise queue it
      if (queuedExports.has(externalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          member.externalName.range, externalName
        );
        return;
      }
      queuedExport = new QueuedExport();
      queuedExport.isReExport = false;
      queuedExport.externalName = referencedName; // -> here: local name
      queuedExport.member = member;
      queuedExports.set(externalName, queuedExport);

    // export external element
    } else {
      referencedName = internalPath + PATH_DELIMITER + member.name.text;

      // resolve right away if the export exists
      referencedElement = this.elementsLookup.get(referencedName);
      if (referencedElement) {
        this.setExportAndCheckLibrary(
          externalName,
          referencedElement,
          member.externalName
        );
        return;
      }

      // walk already known queued exports
      let seen = new Set<QueuedExport>();
      while (queuedExport = queuedExports.get(referencedName)) {
        if (queuedExport.isReExport) {
          referencedElement = this.fileLevelExports.get(queuedExport.externalName);
          if (referencedElement) {
            this.setExportAndCheckLibrary(
              externalName,
              referencedElement,
              member.externalName
            );
            return;
          }
          referencedName = queuedExport.externalName;
          if (seen.has(queuedExport)) break;
          seen.add(queuedExport);
        } else {
          referencedElement = this.elementsLookup.get(queuedExport.externalName);
          if (referencedElement) {
            this.setExportAndCheckLibrary(
              externalName,
              referencedElement,
              member.externalName
            );
            return;
          }
          break;
        }
      }

      // otherwise queue it
      if (queuedExports.has(externalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          member.externalName.range, externalName
        );
        return;
      }
      queuedExport = new QueuedExport();
      queuedExport.isReExport = true;
      queuedExport.externalName = referencedName; // -> here: external name
      queuedExport.member = member;
      queuedExports.set(externalName, queuedExport);
    }
  }

  private initializeFunction(
    declaration: FunctionDeclaration,
    namespace: Element | null = null
  ): void {
    var internalName = declaration.fileLevelInternalName;
    if (this.elementsLookup.has(internalName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, internalName
      );
      return;
    }
    var simpleName = declaration.name.text;
    var decorators = declaration.decorators;
    var prototype = new FunctionPrototype(
      this,
      simpleName,
      internalName,
      declaration,
      null,
      decorators
        ? this.checkDecorators(decorators,
            DecoratorFlags.GLOBAL |
            DecoratorFlags.INLINE |
            DecoratorFlags.EXTERNAL
          )
        : DecoratorFlags.NONE
    );
    prototype.parent = namespace;
    this.elementsLookup.set(internalName, prototype);

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(simpleName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        namespace.members = new Map();
      }
      namespace.members.set(simpleName, prototype);
      if (namespace.is(CommonFlags.MODULE_EXPORT) && prototype.is(CommonFlags.EXPORT)) {
        prototype.parent = namespace;
        prototype.set(CommonFlags.MODULE_EXPORT);
      }
    } else if (prototype.is(CommonFlags.EXPORT)) { // no namespace
      if (this.fileLevelExports.has(internalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          declaration.name.range, internalName
        );
        return;
      }
      this.fileLevelExports.set(internalName, prototype);
      this.currentFilespace.members.set(simpleName, prototype);
      if (declaration.range.source.isEntry) {
        if (this.moduleLevelExports.has(simpleName)) {
          let existingExport = <ModuleExport>this.moduleLevelExports.get(simpleName);
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, existingExport.element.internalName
          );
          return;
        }
        prototype.set(CommonFlags.MODULE_EXPORT);
        this.moduleLevelExports.set(simpleName, <ModuleExport>{
          element: prototype,
          identifier: declaration.name
        });
      }
    }

    this.checkGlobal(prototype, declaration);
  }

  private initializeImports(
    statement: ImportStatement,
    queuedExports: Map<string,QueuedExport>,
    queuedImports: QueuedImport[]
  ): void {
    var declarations = statement.declarations;
    if (declarations) {
      for (let i = 0, k = declarations.length; i < k; ++i) {
        this.initializeImport(
          declarations[i],
          statement.internalPath,
          queuedExports, queuedImports
        );
      }
    } else if (statement.namespaceName) { // import * as simpleName from "file"
      let simpleName = statement.namespaceName.text;
      let internalName = (
        statement.range.source.internalPath +
        PATH_DELIMITER +
        simpleName
      );
      if (this.elementsLookup.has(internalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          statement.namespaceName.range,
          internalName
        );
        return;
      }

      // resolve right away if the exact filespace exists
      let filespace = this.elementsLookup.get(statement.internalPath);
      if (filespace) {
        this.elementsLookup.set(internalName, filespace);
        return;
      }

      // otherwise queue it
      let queuedImport = new QueuedImport();
      queuedImport.localName = internalName;
      let externalName = FILESPACE_PREFIX + statement.internalPath;
      queuedImport.externalName = externalName;
      queuedImport.externalNameAlt = externalName + PATH_DELIMITER + "index";
      queuedImport.declaration = null; // filespace
      queuedImports.push(queuedImport);
    }
  }

  private initializeImport(
    declaration: ImportDeclaration,
    internalPath: string,
    queuedNamedExports: Map<string,QueuedExport>,
    queuedImports: QueuedImport[]
  ): void {
    var localName = declaration.fileLevelInternalName;
    if (this.elementsLookup.has(localName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, localName
      );
      return;
    }

    var externalName = internalPath + PATH_DELIMITER + declaration.externalName.text;

    // resolve right away if the exact export exists
    var element: Element | null;
    if (element = this.fileLevelExports.get(externalName)) {
      this.elementsLookup.set(localName, element);
      return;
    }

    // otherwise queue it
    const indexPart = PATH_DELIMITER + "index";
    var queuedImport = new QueuedImport();
    queuedImport.localName = localName;
    if (internalPath.endsWith(indexPart)) {
      queuedImport.externalName = externalName; // try exact first
      queuedImport.externalNameAlt = (
        internalPath.substring(0, internalPath.length - indexPart.length + 1) +
        declaration.externalName.text
      );
    } else {
      queuedImport.externalName = externalName; // try exact first
      queuedImport.externalNameAlt = (
        internalPath +
        indexPart +
        PATH_DELIMITER +
        declaration.externalName.text
      );
    }
    queuedImport.declaration = declaration; // named
    queuedImports.push(queuedImport);
  }

  private initializeInterface(declaration: InterfaceDeclaration, namespace: Element | null = null): void {
    var internalName = declaration.fileLevelInternalName;
    if (this.elementsLookup.has(internalName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, internalName
      );
      return;
    }

    var decorators = declaration.decorators;
    var simpleName = declaration.name.text;
    var prototype = new InterfacePrototype(
      this,
      simpleName,
      internalName,
      declaration,
      decorators
        ? this.checkDecorators(decorators, DecoratorFlags.GLOBAL)
        : DecoratorFlags.NONE
    );
    prototype.parent = namespace;
    this.elementsLookup.set(internalName, prototype);

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(prototype.internalName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        namespace.members = new Map();
      }
      namespace.members.set(prototype.internalName, prototype);
      if (namespace.is(CommonFlags.MODULE_EXPORT) && prototype.is(CommonFlags.EXPORT)) {
        prototype.set(CommonFlags.MODULE_EXPORT);
      }
    } else if (prototype.is(CommonFlags.EXPORT)) { // no namespace
      if (this.fileLevelExports.has(internalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          declaration.name.range, internalName
        );
        return;
      }
      this.fileLevelExports.set(internalName, prototype);
      this.currentFilespace.members.set(simpleName, prototype);
      if (declaration.range.source.isEntry) {
        if (this.moduleLevelExports.has(simpleName)) {
          let existingExport = <ModuleExport>this.moduleLevelExports.get(simpleName);
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, existingExport.element.internalName
          );
          return;
        }
        prototype.set(CommonFlags.MODULE_EXPORT);
        this.moduleLevelExports.set(simpleName, <ModuleExport>{
          element: prototype,
          identifier: declaration.name
        });
      }
    }

    var memberDeclarations = declaration.members;
    for (let i = 0, k = memberDeclarations.length; i < k; ++i) {
      let memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {

        case NodeKind.FIELDDECLARATION: {
          this.initializeField(<FieldDeclaration>memberDeclaration, prototype);
          break;
        }
        case NodeKind.METHODDECLARATION: {
          if (memberDeclaration.isAny(CommonFlags.GET | CommonFlags.SET)) {
            this.initializeAccessor(<MethodDeclaration>memberDeclaration, prototype);
          } else {
            this.initializeMethod(<MethodDeclaration>memberDeclaration, prototype);
          }
          break;
        }
        default: {
          throw new Error("interface member expected");
        }
      }
    }

    this.checkGlobal(prototype, declaration);
  }

  private initializeNamespace(
    declaration: NamespaceDeclaration,
    queuedExtends: ClassPrototype[],
    queuedImplements: ClassPrototype[],
    parentNamespace: Element | null = null
  ): void {
    var internalName = declaration.fileLevelInternalName;
    var simpleName = declaration.name.text;
    var namespace = this.elementsLookup.get(internalName);
    if (!namespace) {
      namespace = new Namespace(this, simpleName, internalName, declaration);
      namespace.parent = parentNamespace;
      this.elementsLookup.set(internalName, namespace);
      this.checkGlobal(namespace, declaration);
    }

    if (parentNamespace) {
      if (parentNamespace.members) {
        if (parentNamespace.members.has(simpleName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        parentNamespace.members = new Map();
      }
      parentNamespace.members.set(simpleName, namespace);
      if (parentNamespace.is(CommonFlags.MODULE_EXPORT) && namespace.is(CommonFlags.EXPORT)) {
        namespace.set(CommonFlags.MODULE_EXPORT);
      }
    } else if (namespace.is(CommonFlags.EXPORT)) { // no parent namespace
      let existingExport = this.fileLevelExports.get(internalName);
      if (existingExport) {
        if (!existingExport.is(CommonFlags.EXPORT)) {
          this.error(
            DiagnosticCode.Individual_declarations_in_merged_declaration_0_must_be_all_exported_or_all_local,
            declaration.name.range, namespace.internalName
          ); // recoverable
        }
        namespace = existingExport; // join
      } else {
        this.fileLevelExports.set(internalName, namespace);
      }
      this.currentFilespace.members.set(simpleName, namespace);
      if (declaration.range.source.isEntry) {
        if (this.moduleLevelExports.has(simpleName)) {
          let existingExport = <ModuleExport>this.moduleLevelExports.get(simpleName);
          if (existingExport.element !== namespace) { // not merged
            this.error(
              DiagnosticCode.Duplicate_identifier_0,
              declaration.name.range, existingExport.element.internalName
            );
            return;
          }
        } else {
          this.moduleLevelExports.set(simpleName, <ModuleExport>{
            element: namespace,
            identifier: declaration.name
          });
        }
        namespace.set(CommonFlags.MODULE_EXPORT);
      }
    }

    var members = declaration.members;
    for (let i = 0, k = members.length; i < k; ++i) {
      switch (members[i].kind) {
        case NodeKind.CLASSDECLARATION: {
          this.initializeClass(<ClassDeclaration>members[i], queuedExtends, queuedImplements, namespace);
          break;
        }
        case NodeKind.ENUMDECLARATION: {
          this.initializeEnum(<EnumDeclaration>members[i], namespace);
          break;
        }
        case NodeKind.FUNCTIONDECLARATION: {
          this.initializeFunction(<FunctionDeclaration>members[i], namespace);
          break;
        }
        case NodeKind.INTERFACEDECLARATION: {
          this.initializeInterface(<InterfaceDeclaration>members[i], namespace);
          break;
        }
        case NodeKind.NAMESPACEDECLARATION: {
          this.initializeNamespace(<NamespaceDeclaration>members[i], queuedExtends, queuedImplements, namespace);
          break;
        }
        case NodeKind.TYPEDECLARATION: {
          // this.initializeTypeAlias(<TypeDeclaration>members[i], namespace);
          // TODO: what about namespaced types?
          this.error(
            DiagnosticCode.Operation_not_supported,
            members[i].range
          );
          break;
        }
        case NodeKind.VARIABLE: {
          this.initializeVariables(<VariableStatement>members[i], namespace);
          break;
        }
        default: {
          throw new Error("namespace member expected");
        }
      }
    }
  }

  private initializeTypeAlias(declaration: TypeDeclaration, namespace: Element | null = null): void {
    // type aliases are program globals
    // TODO: what about namespaced types?
    var name = declaration.name.text;
    if (this.typesLookup.has(name) || this.typeAliases.has(name)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, name
      );
      return;
    }
    var alias = new TypeAlias();
    alias.typeParameters = declaration.typeParameters;
    alias.type = declaration.type;
    this.typeAliases.set(name, alias);
  }

  private initializeVariables(statement: VariableStatement, namespace: Element | null = null): void {
    var declarations = statement.declarations;
    for (let i = 0, k = declarations.length; i < k; ++i) {
      let declaration = declarations[i];
      let decorators = declaration.decorators;
      let internalName = declaration.fileLevelInternalName;
      if (this.elementsLookup.has(internalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, internalName
        );
        continue;
      }
      let simpleName = declaration.name.text;
      let global = new Global(
        this,
        simpleName,
        internalName,
        Type.void, // resolved later on
        declaration,
        decorators
          ? this.checkDecorators(decorators,
              DecoratorFlags.GLOBAL |
              DecoratorFlags.INLINE |
              DecoratorFlags.EXTERNAL
            )
          : DecoratorFlags.NONE
      );
      global.parent = namespace;
      this.elementsLookup.set(internalName, global);

      if (global.hasDecorator(DecoratorFlags.INLINE) && !global.is(CommonFlags.CONST)) {
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          assert(findDecorator(DecoratorKind.INLINE, decorators)).range, "inline"
        );
      }

      if (namespace) {
        if (namespace.members) {
          if (namespace.members.has(simpleName)) {
            this.error(
              DiagnosticCode.Duplicate_identifier_0,
              declaration.name.range, internalName
            );
            continue;
          }
        } else {
          namespace.members = new Map();
        }
        namespace.members.set(simpleName, global);
        if (namespace.is(CommonFlags.MODULE_EXPORT) && global.is(CommonFlags.EXPORT)) {
          global.set(CommonFlags.MODULE_EXPORT);
        }
      } else if (global.is(CommonFlags.EXPORT)) { // no namespace
        if (this.fileLevelExports.has(internalName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
        } else {
          this.fileLevelExports.set(internalName, global);
        }
        this.currentFilespace.members.set(simpleName, global);
        if (declaration.range.source.isEntry) {
          if (this.moduleLevelExports.has(simpleName)) {
            let existingExport = <ModuleExport>this.moduleLevelExports.get(simpleName);
            this.error(
              DiagnosticCode.Duplicate_identifier_0,
              declaration.name.range, existingExport.element.internalName
            );
            continue;
          }
          global.set(CommonFlags.MODULE_EXPORT);
          this.moduleLevelExports.set(simpleName, <ModuleExport>{
            element: global,
            identifier: declaration.name
          });
        }
      }
      this.checkGlobal(global, declaration);
    }
  }
}

/** Indicates the specific kind of an {@link Element}. */
export enum ElementKind {
  /** A {@link Global}. */
  GLOBAL,
  /** A {@link Local}. */
  LOCAL,
  /** An {@link Enum}. */
  ENUM,
  /** An {@link EnumValue}. */
  ENUMVALUE,
  /** A {@link FunctionPrototype}. */
  FUNCTION_PROTOTYPE,
  /** A {@link Function}. */
  FUNCTION,
  /** A {@link FunctionTarget}. */
  FUNCTION_TARGET,
  /** A {@link ClassPrototype}. */
  CLASS_PROTOTYPE,
  /** A {@link Class}. */
  CLASS,
  /** An {@link InterfacePrototype}. */
  INTERFACE_PROTOTYPE,
  /** An {@link Interface}. */
  INTERFACE,
  /** A {@link FieldPrototype}. */
  FIELD_PROTOTYPE,
  /** A {@link Field}. */
  FIELD,
  /** A {@link Property}. */
  PROPERTY,
  /** A {@link Namespace}. */
  NAMESPACE,
  /** A {@link Filespace}. */
  FILESPACE,
}

export enum DecoratorFlags {
  /** No flags set. */
  NONE = 0,
  /** Is a program global. */
  GLOBAL = 1 << 0,
  /** Is a binary operator overload. */
  OPERATOR_BINARY = 1 << 1,
  /** Is a unary prefix operator overload. */
  OPERATOR_PREFIX = 1 << 2,
  /** Is a unary postfix operator overload. */
  OPERATOR_POSTFIX = 1 << 3,
  /** Is an unmanaged class. */
  UNMANAGED = 1 << 4,
  /** Is a sealed class. */
  SEALED = 1 << 5,
  /** Is always inlined. */
  INLINE = 1 << 6,
  /** Is using a different external name. */
  EXTERNAL = 1 << 7,
  /** Is a builtin. */
  BUILTIN = 1 << 8
}

export function decoratorKindToFlag(kind: DecoratorKind): DecoratorFlags {
  switch (kind) {
    case DecoratorKind.GLOBAL: return DecoratorFlags.GLOBAL;
    case DecoratorKind.OPERATOR:
    case DecoratorKind.OPERATOR_BINARY: return DecoratorFlags.OPERATOR_BINARY;
    case DecoratorKind.OPERATOR_PREFIX: return DecoratorFlags.OPERATOR_PREFIX;
    case DecoratorKind.OPERATOR_POSTFIX: return DecoratorFlags.OPERATOR_POSTFIX;
    case DecoratorKind.UNMANAGED: return DecoratorFlags.UNMANAGED;
    case DecoratorKind.SEALED: return DecoratorFlags.SEALED;
    case DecoratorKind.INLINE: return DecoratorFlags.INLINE;
    case DecoratorKind.EXTERNAL: return DecoratorFlags.EXTERNAL;
    case DecoratorKind.BUILTIN: return DecoratorFlags.BUILTIN;
    default: return DecoratorFlags.NONE;
  }
}

/** Base class of all program elements. */
export abstract class Element {

  /** Specific element kind. */
  kind: ElementKind;
  /** Containing {@link Program}. */
  program: Program;
  /** Simple name. */
  simpleName: string;
  /** Internal name referring to this element. */
  internalName: string;
  /** Common flags indicating specific traits. */
  flags: CommonFlags = CommonFlags.NONE;
  /** Decorator flags indicating annotated traits. */
  decoratorFlags: DecoratorFlags = DecoratorFlags.NONE;
  /** Namespaced member elements. */
  members: Map<string,Element> | null = null;
  /** Parent element, if applicable. */
  parent: Element | null = null;

  /** Constructs a new element, linking it to its containing {@link Program}. */
  protected constructor(program: Program, simpleName: string, internalName: string) {
    this.program = program;
    this.simpleName = simpleName;
    this.internalName = internalName;
  }

  /** Tests if this element has a specific flag or flags. */
  is(flag: CommonFlags): bool { return (this.flags & flag) == flag; }
  /** Tests if this element has any of the specified flags. */
  isAny(flags: CommonFlags): bool { return (this.flags & flags) != 0; }
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void { this.flags |= flag; }
  /** Tests if this element has a specific decorator flag or flags. */
  hasDecorator(flag: DecoratorFlags): bool { return (this.decoratorFlags & flag) == flag; }
}

/** A filespace representing the implicit top-level namespace of a source. */
export class Filespace extends Element {

  kind = ElementKind.FILESPACE;

  /** File members (externally visible only). */
  members: Map<string,Element>; // more specific

  /** Constructs a new filespace. */
  constructor(
    program: Program,
    source: Source
  ) {
    super(program, source.internalPath, FILESPACE_PREFIX + source.internalPath);
    this.members = new Map();
  }
}

/** A namespace that differs from a filespace in being user-declared with a name. */
export class Namespace extends Element {

  // All elements have namespace semantics. This is an explicitly declared one.
  kind = ElementKind.NAMESPACE;

  /** Declaration reference. */
  declaration: NamespaceDeclaration; // more specific

  /** Constructs a new namespace. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: NamespaceDeclaration
  ) {
    super(program, simpleName, internalName);
    this.declaration = declaration;
    this.flags = declaration.flags;
  }
}

/** An enum. */
export class Enum extends Element {

  kind = ElementKind.ENUM;

  /** Declaration reference. */
  declaration: EnumDeclaration;

  /** Constructs a new enum. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: EnumDeclaration
  ) {
    super(program, simpleName, internalName);
    this.declaration = declaration;
    this.flags = declaration.flags;
  }
}

/** An enum value. */
export class EnumValue extends Element {

  kind = ElementKind.ENUMVALUE;

  /** Declaration reference. */
  declaration: EnumValueDeclaration;
  /** Constant value, if applicable. */
  constantValue: i32 = 0;

  constructor(
    enm: Enum,
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: EnumValueDeclaration
  ) {
    super(program, simpleName, internalName);
    this.parent = enm;
    this.declaration = declaration;
  }
}

export const enum ConstantValueKind {
  NONE,
  INTEGER,
  FLOAT
}

export class VariableLikeElement extends Element {

  // kind varies

  /** Declaration reference. */
  declaration: VariableLikeDeclarationStatement | null;
  /** Variable type. Is {@link Type.void} for type-inferred {@link Global}s before compilation. */
  type: Type;
  /** Constant value kind. */
  constantValueKind: ConstantValueKind = ConstantValueKind.NONE;
  /** Constant integer value, if applicable. */
  constantIntegerValue: I64;
  /** Constant float value, if applicable. */
  constantFloatValue: f64;

  protected constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    type: Type,
    declaration: VariableLikeDeclarationStatement | null
  ) {
    super(program, simpleName, internalName);
    this.type = type;
    this.declaration = declaration;
  }

  withConstantIntegerValue(value: I64): this {
    this.constantValueKind = ConstantValueKind.INTEGER;
    this.constantIntegerValue = value;
    this.set(CommonFlags.CONST | CommonFlags.INLINED);
    return this;
  }

  withConstantFloatValue(value: f64): this {
    this.constantValueKind = ConstantValueKind.FLOAT;
    this.constantFloatValue = value;
    this.set(CommonFlags.CONST | CommonFlags.INLINED);
    return this;
  }
}

/** A global variable. */
export class Global extends VariableLikeElement {

  kind = ElementKind.GLOBAL;

  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    type: Type,
    declaration: VariableLikeDeclarationStatement | null,
    decoratorFlags: DecoratorFlags
  ) {
    super(program, simpleName, internalName, type, declaration);
    this.flags = declaration ? declaration.flags : CommonFlags.NONE;
    this.decoratorFlags = decoratorFlags;
    this.type = type; // resolved later if `void`
  }
}

/** A function parameter. */
export class Parameter {

  // not an Element on its own

  /** Parameter name. */
  name: string;
  /** Parameter type. */
  type: Type;
  /** Parameter initializer. */
  initializer: Expression | null;

  /** Constructs a new function parameter. */
  constructor(name: string, type: Type, initializer: Expression | null = null) {
    this.name = name;
    this.type = type;
    this.initializer = initializer;
  }
}

/** A function local. */
export class Local extends VariableLikeElement {

  kind = ElementKind.LOCAL;

  /** Local index. */
  index: i32;
  /** Respective scoped global, if any. */
  scopedGlobal: Global | null = null;

  constructor(
    program: Program,
    simpleName: string,
    index: i32,
    type: Type,
    declaration: VariableLikeDeclarationStatement | null = null
  ) {
    super(program, simpleName, simpleName, type, declaration);
    this.index = index;
  }
}

/** A yet unresolved function prototype. */
export class FunctionPrototype extends Element {

  kind = ElementKind.FUNCTION_PROTOTYPE;

  /** Declaration reference. */
  declaration: FunctionDeclaration;
  /** If an instance method, the class prototype reference. */
  classPrototype: ClassPrototype | null;
  /** Resolved instances by class type arguments and function type arguments. */
  instances: Map<string,Map<string,Function>> = new Map();
  /** Class type arguments, if a partially resolved method of a generic class. Not set otherwise. */
  classTypeArguments: Type[] | null = null;
  /** Operator kind, if an overload. */
  operatorKind: OperatorKind = OperatorKind.INVALID;

  /** Constructs a new function prototype. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: FunctionDeclaration,
    classPrototype: ClassPrototype | null = null,
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(program, simpleName, internalName);
    this.declaration = declaration;
    this.flags = declaration.flags;
    this.classPrototype = classPrototype;
    this.decoratorFlags = decoratorFlags;
  }

  /** Applies class type arguments to the context of a partially resolved instance method. */
  applyClassTypeArguments(contextualTypeArguments: Map<string,Type>): void {
    var classTypeArguments = assert(this.classTypeArguments); // set only if partial
    var classDeclaration = assert(this.classPrototype).declaration;
    var classTypeParameters = classDeclaration.typeParameters;
    var numClassTypeParameters = classTypeParameters.length;
    assert(numClassTypeParameters == classTypeArguments.length);
    for (let i = 0; i < numClassTypeParameters; ++i) {
      contextualTypeArguments.set(
        classTypeParameters[i].name.text,
        classTypeArguments[i]
      );
    }
  }

  toString(): string { return this.simpleName; }
}

/** A resolved function. */
export class Function extends Element {

  kind = ElementKind.FUNCTION;

  /** Prototype reference. */
  prototype: FunctionPrototype;
  /** Function signature. */
  signature: Signature;
  /** Map of locals by name. */
  localsByName: Map<string,Local> = new Map();
  /** Array of locals by index. */
  localsByIndex: Local[] = [];
  /** List of additional non-parameter locals. */
  additionalLocals: Type[] = [];
  /** Current break context label. */
  breakContext: string | null = null;
  /** Contextual type arguments. */
  contextualTypeArguments: Map<string,Type> | null;
  /** Current control flow. */
  flow: Flow;
  /** Remembered debug locations. */
  debugLocations: Range[] = [];
  /** Function reference, if compiled. */
  ref: FunctionRef = 0;
  /** Function table index, if any. */
  functionTableIndex: i32 = -1;
  /** Trampoline function for calling with omitted arguments. */
  trampoline: Function | null = null;
  /** The outer scope, if a function expression. */
  outerScope: Flow | null = null;

  private nextBreakId: i32 = 0;
  private breakStack: i32[] | null = null;
  nextInlineId: i32 = 0;

  /** Constructs a new concrete function. */
  constructor(
    prototype: FunctionPrototype,
    internalName: string,
    signature: Signature,
    parent: Element | null = null,
    contextualTypeArguments: Map<string,Type> | null = null
  ) {
    super(prototype.program, prototype.simpleName, internalName);
    this.prototype = prototype;
    this.signature = signature;
    this.parent = parent;
    this.flags = prototype.flags;
    this.decoratorFlags = prototype.decoratorFlags;
    this.contextualTypeArguments = contextualTypeArguments;
    if (!(prototype.is(CommonFlags.AMBIENT))) {
      let localIndex = 0;
      if (parent && parent.kind == ElementKind.CLASS) {
        assert(this.is(CommonFlags.INSTANCE));
        let local = new Local(
          prototype.program,
          "this",
          localIndex++,
          assert(signature.thisType)
        );
        this.localsByName.set("this", local);
        this.localsByIndex[local.index] = local;
        let inheritedTypeArguments = (<Class>parent).contextualTypeArguments;
        if (inheritedTypeArguments) {
          if (!this.contextualTypeArguments) this.contextualTypeArguments = new Map();
          for (let [inheritedName, inheritedType] of inheritedTypeArguments) {
            if (!this.contextualTypeArguments.has(inheritedName)) {
              this.contextualTypeArguments.set(inheritedName, inheritedType);
            }
          }
        }
      } else {
        assert(!this.is(CommonFlags.INSTANCE)); // internal error
      }
      let parameterTypes = signature.parameterTypes;
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        let parameterType = parameterTypes[i];
        let parameterName = signature.getParameterName(i);
        let local = new Local(
          prototype.program,
          parameterName,
          localIndex++,
          parameterType
          // FIXME: declaration?
        );
        this.localsByName.set(parameterName, local);
        this.localsByIndex[local.index] = local;
      }
    }
    this.flow = Flow.create(this);
  }

  /** Adds a local of the specified type, with an optional name. */
  addLocal(type: Type, name: string | null = null, declaration: VariableDeclaration | null = null): Local {
    // if it has a name, check previously as this method will throw otherwise
    var localIndex = this.signature.parameterTypes.length + this.additionalLocals.length;
    if (this.is(CommonFlags.INSTANCE)) ++localIndex;
    var local = new Local(
      this.prototype.program,
      name
        ? name
        : "var$" + localIndex.toString(10),
      localIndex,
      type,
      declaration
    );
    if (name) {
      if (this.localsByName.has(name)) throw new Error("duplicate local name");
      this.localsByName.set(name, local);
    }
    this.localsByIndex[local.index] = local;
    this.additionalLocals.push(type);
    return local;
  }

  private tempI32s: Local[] | null = null;
  private tempI64s: Local[] | null = null;
  private tempF32s: Local[] | null = null;
  private tempF64s: Local[] | null = null;

  /** Gets a free temporary local of the specified type. */
  getTempLocal(type: Type, wrapped: bool = false): Local {
    var temps: Local[] | null;
    switch (type.toNativeType()) {
      case NativeType.I32: {
        temps = this.tempI32s;
        break;
      }
      case NativeType.I64: {
        temps = this.tempI64s;
        break;
      }
      case NativeType.F32: {
        temps = this.tempF32s;
        break;
      }
      case NativeType.F64: {
        temps = this.tempF64s;
        break;
      }
      default: throw new Error("concrete type expected");
    }
    var local: Local;
    if (temps && temps.length) {
      local = temps.pop();
      local.type = type;
      local.flags = CommonFlags.NONE;
    } else {
      local = this.addLocal(type);
    }
    if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
      this.flow.setLocalWrapped(local.index, wrapped);
    }
    return local;
  }

  /** Frees the temporary local for reuse. */
  freeTempLocal(local: Local): void {
    if (local.is(CommonFlags.INLINED)) return;
    assert(local.index >= 0);
    var temps: Local[];
    assert(local.type != null); // internal error
    switch ((<Type>local.type).toNativeType()) {
      case NativeType.I32: {
        temps = this.tempI32s || (this.tempI32s = []);
        break;
      }
      case NativeType.I64: {
        temps = this.tempI64s || (this.tempI64s = []);
        break;
      }
      case NativeType.F32: {
        temps = this.tempF32s || (this.tempF32s = []);
        break;
      }
      case NativeType.F64: {
        temps = this.tempF64s || (this.tempF64s = []);
        break;
      }
      default: throw new Error("concrete type expected");
    }
    assert(local.index >= 0);
    temps.push(local);
  }

  /** Gets and immediately frees a temporary local of the specified type. */
  getAndFreeTempLocal(type: Type, wrapped: bool): Local {
    var temps: Local[];
    switch (type.toNativeType()) {
      case NativeType.I32: {
        temps = this.tempI32s || (this.tempI32s = []);
        break;
      }
      case NativeType.I64: {
        temps = this.tempI64s || (this.tempI64s = []);
        break;
      }
      case NativeType.F32: {
        temps = this.tempF32s || (this.tempF32s = []);
        break;
      }
      case NativeType.F64: {
        temps = this.tempF64s || (this.tempF64s = []);
        break;
      }
      default: throw new Error("concrete type expected");
    }
    var local: Local;
    if (temps.length) {
      local = temps[temps.length - 1];
      local.type = type;
    } else {
      local = this.addLocal(type);
      temps.push(local);
    }
    if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
      this.flow.setLocalWrapped(local.index, wrapped);
    }
    return local;
  }

  /** Enters a(nother) break context. */
  enterBreakContext(): string {
    var id = this.nextBreakId++;
    if (!this.breakStack) this.breakStack = [ id ];
    else this.breakStack.push(id);
    return this.breakContext = id.toString(10);
  }

  /** Leaves the current break context. */
  leaveBreakContext(): void {
    assert(this.breakStack != null);
    var length = (<i32[]>this.breakStack).length;
    assert(length > 0);
    (<i32[]>this.breakStack).pop();
    if (length > 1) {
      this.breakContext = (<i32[]>this.breakStack)[length - 2].toString(10);
    } else {
      this.breakContext = null;
      this.breakStack = null;
    }
  }

  /** Finalizes the function once compiled, releasing no longer needed resources. */
  finalize(module: Module, ref: FunctionRef): void {
    this.ref = ref;
    assert(!this.breakStack || !this.breakStack.length); // internal error
    this.breakStack = null;
    this.breakContext = null;
    this.tempI32s = this.tempI64s = this.tempF32s = this.tempF64s = null;
    if (this.program.options.sourceMap) {
      let debugLocations = this.debugLocations;
      for (let i = 0, k = debugLocations.length; i < k; ++i) {
        let debugLocation = debugLocations[i];
        module.setDebugLocation(
          ref,
          debugLocation.debugInfoRef,
          debugLocation.source.debugInfoIndex,
          debugLocation.line,
          debugLocation.column
        );
      }
    }
  }

  /** Returns the TypeScript representation of this function. */
  toString(): string { return this.prototype.simpleName; }
}

/** A resolved function target, that is a function called indirectly by an index and signature. */
export class FunctionTarget extends Element {

  kind = ElementKind.FUNCTION_TARGET;

  /** Underlying signature. */
  signature: Signature;
  /** Function type. */
  type: Type;

  /** Constructs a new function target. */
  constructor(program: Program, signature: Signature) {
    super(program, "", "");
    var simpleName = signature.toSignatureString();
    this.simpleName = simpleName;
    this.internalName = simpleName;
    this.signature = signature;
    this.type = Type.u32.asFunction(signature);
  }
}

/** A yet unresolved instance field prototype. */
export class FieldPrototype extends Element {

  kind = ElementKind.FIELD_PROTOTYPE;

  /** Declaration reference. */
  declaration: FieldDeclaration;
  /** Parent class prototype. */
  classPrototype: ClassPrototype;

  /** Constructs a new field prototype. */
  constructor(
    classPrototype: ClassPrototype,
    simpleName: string,
    internalName: string,
    declaration: FieldDeclaration
  ) {
    super(classPrototype.program, simpleName, internalName);
    this.classPrototype = classPrototype;
    this.declaration = declaration;
    this.flags = declaration.flags;
  }
}

/** A resolved instance field. */
export class Field extends VariableLikeElement {

  kind = ElementKind.FIELD;

  /** Field prototype reference. */
  prototype: FieldPrototype;
  /** Field memory offset, if an instance field. */
  memoryOffset: i32 = -1;

  /** Constructs a new field. */
  constructor(
    prototype: FieldPrototype,
    internalName: string,
    type: Type,
    declaration: FieldDeclaration,
    parent: Class
  ) {
    super(prototype.program, prototype.simpleName, internalName, type, declaration);
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.type = type;
    this.parent = parent;
  }
}

/** A property comprised of a getter and a setter function. */
export class Property extends Element {

  kind = ElementKind.PROPERTY;

  /** Parent class prototype. */
  parent: ClassPrototype;
  /** Getter prototype. */
  getterPrototype: FunctionPrototype | null = null;
  /** Setter prototype. */
  setterPrototype: FunctionPrototype | null = null;

  /** Constructs a new property prototype. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    parent: ClassPrototype
  ) {
    super(program, simpleName, internalName);
    this.parent = parent;
  }
}

/** A yet unresolved class prototype. */
export class ClassPrototype extends Element {

  kind = ElementKind.CLASS_PROTOTYPE;

  /** Declaration reference. */
  declaration: ClassDeclaration;
  /** Resolved instances. */
  instances: Map<string,Class> = new Map();
  /** Instance member prototypes. */
  instanceMembers: Map<string,Element> | null = null;
  /** Base class prototype, if applicable. */
  basePrototype: ClassPrototype | null = null; // set in Program#initialize
  /** Constructor prototype. */
  constructorPrototype: FunctionPrototype | null = null;
  /** Operator overload prototypes. */
  overloadPrototypes: Map<OperatorKind, FunctionPrototype> = new Map();

  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: ClassDeclaration,
    decoratorFlags: DecoratorFlags
  ) {
    super(program, simpleName, internalName);
    this.declaration = declaration;
    this.flags = declaration.flags;
    this.decoratorFlags = decoratorFlags;
  }

  toString(): string {
    return this.simpleName;
  }
}

/** A resolved class. */
export class Class extends Element {

  kind = ElementKind.CLASS;

  /** Prototype reference. */
  prototype: ClassPrototype;
  /** Resolved type arguments. */
  typeArguments: Type[] | null;
  /** Resolved class type. */
  type: Type;
  /** Base class, if applicable. */
  base: Class | null;
  /** Contextual type arguments for fields and methods. */
  contextualTypeArguments: Map<string,Type> | null = null;
  /** Current member memory offset. */
  currentMemoryOffset: u32 = 0;
  /** Constructor instance. */
  constructorInstance: Function | null = null;
  /** Operator overloads. */
  overloads: Map<OperatorKind,Function> | null = null;
  /** Function index of the GC hook. */
  gcHookIndex: u32 = <u32>-1;

  /** Constructs a new class. */
  constructor(
    prototype: ClassPrototype,
    simpleName: string,
    internalName: string,
    typeArguments: Type[] | null = null,
    base: Class | null = null
  ) {
    super(prototype.program, simpleName, internalName);
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.decoratorFlags = prototype.decoratorFlags;
    this.typeArguments = typeArguments;
    this.type = prototype.program.options.usizeType.asClass(this);
    this.base = base;

    // inherit static members and contextual type arguments from base class
    if (base) {
      let inheritedTypeArguments = base.contextualTypeArguments;
      if (inheritedTypeArguments) {
        if (!this.contextualTypeArguments) this.contextualTypeArguments = new Map();
        for (let [baseName, baseType] of inheritedTypeArguments) {
          this.contextualTypeArguments.set(baseName, baseType);
        }
      }
    }

    // apply instance-specific contextual type arguments
    var declaration = this.prototype.declaration;
    var i: i32, k: i32;
    if (declaration) { // irrelevant for built-ins
      let typeParameters = declaration.typeParameters;
      if (typeArguments) {
        if ((k = typeArguments.length) != typeParameters.length) {
          throw new Error("type argument count mismatch");
        }
        if (k) {
          if (!this.contextualTypeArguments) this.contextualTypeArguments = new Map();
          for (i = 0; i < k; ++i) {
            this.contextualTypeArguments.set(typeParameters[i].name.text, typeArguments[i]);
          }
        }
      } else if (typeParameters.length) {
        throw new Error("type argument count mismatch");
      }
    }
  }

  /** Tests if a value of this class type is assignable to a target of the specified class type. */
  isAssignableTo(target: Class): bool {
    var current: Class | null = this;
    do if (current == target) return true;
    while (current = current.base);
    return false;
  }

  /** Looks up the operator overload of the specified kind. */
  lookupOverload(kind: OperatorKind, unchecked: bool = false): Function | null {
    if (unchecked) {
      switch (kind) {
        case OperatorKind.INDEXED_GET: {
          let uncheckedOverload = this.lookupOverload(OperatorKind.UNCHECKED_INDEXED_GET);
          if (uncheckedOverload) return uncheckedOverload;
          break;
        }
        case OperatorKind.INDEXED_SET: {
          let uncheckedOverload = this.lookupOverload(OperatorKind.UNCHECKED_INDEXED_SET);
          if (uncheckedOverload) return uncheckedOverload;
          break;
        }
        default: assert(false);
      }
    }
    var instance: Class | null = this;
    do {
      let overloads = instance.overloads;
      if (overloads) {
        let overload = overloads.get(kind);
        if (overload) return overload;
      }
    } while (instance = instance.base);
    return null;
  }

  offsetof(fieldName: string): u32 {
    var members = assert(this.members);
    assert(members.has(fieldName));
    var field = <Element>members.get(fieldName);
    assert(field.kind == ElementKind.FIELD);
    return (<Field>field).memoryOffset;
  }

  toString(): string {
    return this.simpleName;
  }
}

/** A yet unresolved interface. */
export class InterfacePrototype extends ClassPrototype {

  kind = ElementKind.INTERFACE_PROTOTYPE;

  /** Declaration reference. */
  declaration: InterfaceDeclaration; // more specific

  /** Constructs a new interface prototype. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: InterfaceDeclaration,
    decoratorFlags: DecoratorFlags
  ) {
    super(program, simpleName, internalName, declaration, decoratorFlags);
  }
}

/** A resolved interface. */
export class Interface extends Class {

  kind = ElementKind.INTERFACE;

  /** Prototype reference. */
  prototype: InterfacePrototype; // more specific
  /** Base interface, if applcable. */
  base: Interface | null; // more specific

  /** Constructs a new interface. */
  constructor(
    prototype: InterfacePrototype,
    simpleName: string,
    internalName: string,
    typeArguments: Type[] = [],
    base: Interface | null = null
  ) {
    super(prototype, simpleName, internalName, typeArguments, base);
  }
}

/** Control flow flags indicating specific conditions. */
export const enum FlowFlags {
  /** No specific conditions. */
  NONE = 0,

  // categorical

  /** This branch always returns. */
  RETURNS = 1 << 0,
  /** This branch always returns a wrapped value. */
  RETURNS_WRAPPED = 1 << 1,
  /** This branch always throws. */
  THROWS = 1 << 2,
  /** This branch always breaks. */
  BREAKS = 1 << 3,
  /** This branch always continues. */
  CONTINUES = 1 << 4,
  /** This branch always allocates. Constructors only. */
  ALLOCATES = 1 << 5,

  // conditional

  /** This branch conditionally returns in a child branch. */
  CONDITIONALLY_RETURNS = 1 << 6,
  /** This branch conditionally throws in a child branch. */
  CONDITIONALLY_THROWS = 1 << 7,
  /** This branch conditionally breaks in a child branch. */
  CONDITIONALLY_BREAKS = 1 << 8,
  /** This branch conditionally continues in a child branch. */
  CONDITIONALLY_CONTINUES = 1 << 9,
  /** This branch conditionally allocates in a child branch. Constructors only. */
  CONDITIONALLY_ALLOCATES = 1 << 10,

  // special

  /** This branch is part of inlining a function. */
  INLINE_CONTEXT = 1 << 11,
  /** This branch explicitly requests no bounds checking. */
  UNCHECKED_CONTEXT = 1 << 12,

  // masks

  /** Any terminating flag. */
  ANY_TERMINATING = FlowFlags.RETURNS
                  | FlowFlags.THROWS
                  | FlowFlags.BREAKS
                  | FlowFlags.CONTINUES,

  /** Any categorical flag. */
  ANY_CATEGORICAL = FlowFlags.RETURNS
                  | FlowFlags.RETURNS_WRAPPED
                  | FlowFlags.THROWS
                  | FlowFlags.BREAKS
                  | FlowFlags.CONTINUES
                  | FlowFlags.ALLOCATES,

  /** Any conditional flag. */
  ANY_CONDITIONAL = FlowFlags.CONDITIONALLY_RETURNS
                  | FlowFlags.CONDITIONALLY_THROWS
                  | FlowFlags.CONDITIONALLY_BREAKS
                  | FlowFlags.CONDITIONALLY_CONTINUES
                  | FlowFlags.CONDITIONALLY_ALLOCATES
}

/** A control flow evaluator. */
export class Flow {

  /** Parent flow. */
  parent: Flow | null;
  /** Flow flags indicating specific conditions. */
  flags: FlowFlags;
  /** Function this flow belongs to. */
  currentFunction: Function;
  /** The label we break to when encountering a continue statement. */
  continueLabel: string | null;
  /** The label we break to when encountering a break statement. */
  breakLabel: string | null;
  /** The label we break to when encountering a return statement, when inlining. */
  returnLabel: string | null;
  /** The current return type. */
  returnType: Type;
  /** The current contextual type arguments. */
  contextualTypeArguments: Map<string,Type> | null;
  /** Scoped local variables. */
  scopedLocals: Map<string,Local> | null = null;
  /** Local variable wrap states for the first 64 locals. */
  wrappedLocals: I64;
  /** Local variable wrap states for locals with index >= 64. */
  wrappedLocalsExt: I64[] | null;

  /** Creates the parent flow of the specified function. */
  static create(currentFunction: Function): Flow {
    var parentFlow = new Flow();
    parentFlow.parent = null;
    parentFlow.flags = FlowFlags.NONE;
    parentFlow.currentFunction = currentFunction;
    parentFlow.continueLabel = null;
    parentFlow.breakLabel = null;
    parentFlow.returnLabel = null;
    parentFlow.returnType = currentFunction.signature.returnType;
    parentFlow.contextualTypeArguments = currentFunction.contextualTypeArguments;
    parentFlow.wrappedLocals = i64_new(0);
    parentFlow.wrappedLocalsExt = null;
    return parentFlow;
  }

  private constructor() { }

  /** Tests if this flow has the specified flag or flags. */
  is(flag: FlowFlags): bool { return (this.flags & flag) == flag; }
  /** Tests if this flow has one of the specified flags. */
  isAny(flag: FlowFlags): bool { return (this.flags & flag) != 0; }
  /** Sets the specified flag or flags. */
  set(flag: FlowFlags): void { this.flags |= flag; }
  /** Unsets the specified flag or flags. */
  unset(flag: FlowFlags): void { this.flags &= ~flag; }

  /** Forks this flow to a child flow. */
  fork(): Flow {
    var branch = new Flow();
    branch.parent = this;
    branch.flags = this.flags;
    branch.currentFunction = this.currentFunction;
    branch.continueLabel = this.continueLabel;
    branch.breakLabel = this.breakLabel;
    branch.returnLabel = this.returnLabel;
    branch.returnType = this.returnType;
    branch.contextualTypeArguments = this.contextualTypeArguments;
    branch.wrappedLocals = this.wrappedLocals;
    branch.wrappedLocalsExt = this.wrappedLocalsExt ? this.wrappedLocalsExt.slice() : null;
    return branch;
  }

  /** Frees this flow's scoped variables. */
  free(): Flow {
    var parent = assert(this.parent);
    if (this.scopedLocals) { // free block-scoped locals
      for (let scopedLocal of this.scopedLocals.values()) {
        if (scopedLocal.is(CommonFlags.SCOPED)) { // otherwise an alias
          this.currentFunction.freeTempLocal(scopedLocal);
        }
      }
      this.scopedLocals = null;
    }
    return parent;
  }

  /** Adds a new scoped local of the specified name. */
  addScopedLocal(type: Type, name: string, wrapped: bool, declaration?: VariableDeclaration): Local {
    var scopedLocal = this.currentFunction.getTempLocal(type, false);
    if (!this.scopedLocals) this.scopedLocals = new Map();
    else {
      let existingLocal = this.scopedLocals.get(name);
      if (existingLocal) {
        if (declaration) {
          this.currentFunction.program.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range
          );
        } else assert(false);
        return existingLocal;
      }
    }
    scopedLocal.set(CommonFlags.SCOPED);
    this.scopedLocals.set(name, scopedLocal);
    if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
      this.setLocalWrapped(scopedLocal.index, wrapped);
    }
    return scopedLocal;
  }

  /** Adds a new scoped alias for the specified local. */
  addScopedLocalAlias(index: i32, type: Type, name: string): Local {
    if (!this.scopedLocals) this.scopedLocals = new Map();
    else {
      let existingLocal = this.scopedLocals.get(name);
      if (existingLocal) {
        let declaration = existingLocal.declaration;
        if (declaration) {
          this.currentFunction.program.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range
          );
        } else assert(false);
        return existingLocal;
      }
    }
    assert(index < this.currentFunction.localsByIndex.length);
    var scopedAlias = new Local( // not SCOPED as an indicator that it isn't automatically free'd
      this.currentFunction.program,
      name,
      index,
      type,
      null
    );
    this.scopedLocals.set(name, scopedAlias);
    return scopedAlias;
  }

  /** Gets the local of the specified name in the current scope. */
  getScopedLocal(name: string): Local | null {
    var local: Local | null;
    var current: Flow | null = this;
    do {
      if (current.scopedLocals && (local = current.scopedLocals.get(name))) {
        return local;
      }
    } while (current = current.parent);
    return this.currentFunction.localsByName.get(name);
  }

  /** Tests if the local with the specified index is considered wrapped. */
  isLocalWrapped(index: i32): bool {
    var map: I64;
    var ext: I64[] | null;
    if (index < 64) {
      if (index < 0) return true; // inlined constant
      map = this.wrappedLocals;
    } else if (ext = this.wrappedLocalsExt) {
      let i = ((index - 64) / 64) | 0;
      if (i >= ext.length) return false;
      map = ext[i];
      index -= (i + 1) * 64;
    } else {
      return false;
    }
    return i64_ne(
      i64_and(
        map,
        i64_shl(
          i64_one,
          i64_new(index)
        )
      ),
      i64_zero
    );
  }

  /** Sets if the local with the specified index is considered wrapped. */
  setLocalWrapped(index: i32, wrapped: bool): void {
    var map: I64;
    var off: i32 = -1;
    if (index < 64) {
      if (index < 0) return; // inlined constant
      map = this.wrappedLocals;
    } else {
      let ext = this.wrappedLocalsExt;
      off = ((index - 64) / 64) | 0;
      if (!ext) {
        this.wrappedLocalsExt = ext = new Array(off + 1);
        ext.length = 0;
      }
      while (ext.length <= off) ext.push(i64_new(0));
      map = ext[off];
      index -= (off + 1) * 64;
    }
    map = wrapped
      ? i64_or(
          map,
          i64_shl(
            i64_one,
            i64_new(index)
          )
        )
      : i64_and(
          map,
          i64_not(
            i64_shl(
              i64_one,
              i64_new(index)
            )
          )
        );
    if (off >= 0) (<I64[]>this.wrappedLocalsExt)[off] = map;
    else this.wrappedLocals = map;
  }

  /** Inherits flags and local wrap states from the specified flow (e.g. blocks). */
  inherit(other: Flow): void {
    this.flags |= other.flags & (FlowFlags.ANY_CATEGORICAL | FlowFlags.ANY_CONDITIONAL);
    this.wrappedLocals = other.wrappedLocals;
    this.wrappedLocalsExt = other.wrappedLocalsExt; // no need to slice because other flow is finished
  }

  /** Inherits categorical flags as conditional flags from the specified flow (e.g. then without else). */
  inheritConditional(other: Flow): void {
    if (other.is(FlowFlags.RETURNS)) {
      this.set(FlowFlags.CONDITIONALLY_RETURNS);
    }
    if (other.is(FlowFlags.THROWS)) {
      this.set(FlowFlags.CONDITIONALLY_THROWS);
    }
    if (other.is(FlowFlags.BREAKS) && other.breakLabel == this.breakLabel) {
      this.set(FlowFlags.CONDITIONALLY_BREAKS);
    }
    if (other.is(FlowFlags.CONTINUES) && other.continueLabel == this.continueLabel) {
      this.set(FlowFlags.CONDITIONALLY_CONTINUES);
    }
    if (other.is(FlowFlags.ALLOCATES)) {
      this.set(FlowFlags.CONDITIONALLY_ALLOCATES);
    }
  }

  /** Inherits mutual flags and local wrap states from the specified flows (e.g. then with else). */
  inheritMutual(left: Flow, right: Flow): void {
    // categorical flags set in both arms
    this.flags |= left.flags & right.flags & FlowFlags.ANY_CATEGORICAL;

    // conditional flags set in at least one arm
    this.flags |= left.flags & FlowFlags.ANY_CONDITIONAL;
    this.flags |= right.flags & FlowFlags.ANY_CONDITIONAL;

    // locals wrapped in both arms
    this.wrappedLocals = i64_and(left.wrappedLocals, right.wrappedLocals);
    var leftExt = left.wrappedLocalsExt;
    var rightExt = right.wrappedLocalsExt;
    if (leftExt != null && rightExt != null) {
      let thisExt = this.wrappedLocalsExt;
      let minLength = min(leftExt.length, rightExt.length);
      if (minLength) {
        if (!thisExt) thisExt = new Array(minLength);
        else while (thisExt.length < minLength) thisExt.push(i64_new(0));
        for (let i = 0; i < minLength; ++i) {
          thisExt[i] = i64_and(
            leftExt[i],
            rightExt[i]
          );
        }
      }
    }
  }

  /**
   * Tests if an expression can possibly overflow in the context of this flow. Assumes that the
   * expression might already have overflown and returns `false` only if the operation neglects
   * any possible combination of garbage bits being present.
   */
  canOverflow(expr: ExpressionRef, type: Type): bool {
    // TODO: the following catches most common and a few uncommon cases, but there are additional
    // opportunities here, obviously.
    assert(type != Type.void);

    // types other than i8, u8, i16, u16 and bool do not overflow
    if (!type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) return false;

    var operand: ExpressionRef;
    switch (getExpressionId(expr)) {

      // overflows if the local isn't wrapped or the conversion does
      case ExpressionId.GetLocal: {
        let currentFunction = this.currentFunction;
        let local = currentFunction.localsByIndex[getGetLocalIndex(expr)];
        return !currentFunction.flow.isLocalWrapped(local.index)
            || canConversionOverflow(local.type, type);
      }

      // overflows if the value does
      case ExpressionId.SetLocal: { // tee
        assert(isTeeLocal(expr));
        return this.canOverflow(getSetLocalValue(expr), type);
      }

      // overflows if the conversion does (globals are wrapped on set)
      case ExpressionId.GetGlobal: {
        // TODO: this is inefficient because it has to read a string
        let global = assert(this.currentFunction.program.elementsLookup.get(assert(getGetGlobalName(expr))));
        assert(global.kind == ElementKind.GLOBAL);
        return canConversionOverflow(assert((<Global>global).type), type);
      }

      case ExpressionId.Binary: {
        switch (getBinaryOp(expr)) {

          // comparisons do not overflow (result is 0 or 1)
          case BinaryOp.EqI32:
          case BinaryOp.EqI64:
          case BinaryOp.EqF32:
          case BinaryOp.EqF64:
          case BinaryOp.NeI32:
          case BinaryOp.NeI64:
          case BinaryOp.NeF32:
          case BinaryOp.NeF64:
          case BinaryOp.LtI32:
          case BinaryOp.LtU32:
          case BinaryOp.LtI64:
          case BinaryOp.LtU64:
          case BinaryOp.LtF32:
          case BinaryOp.LtF64:
          case BinaryOp.LeI32:
          case BinaryOp.LeU32:
          case BinaryOp.LeI64:
          case BinaryOp.LeU64:
          case BinaryOp.LeF32:
          case BinaryOp.LeF64:
          case BinaryOp.GtI32:
          case BinaryOp.GtU32:
          case BinaryOp.GtI64:
          case BinaryOp.GtU64:
          case BinaryOp.GtF32:
          case BinaryOp.GtF64:
          case BinaryOp.GeI32:
          case BinaryOp.GeU32:
          case BinaryOp.GeI64:
          case BinaryOp.GeU64:
          case BinaryOp.GeF32:
          case BinaryOp.GeF64: return false;

          // result won't overflow if one side is 0 or if one side is 1 and the other wrapped
          case BinaryOp.MulI32: {
            return !(
              (
                getExpressionId(operand = getBinaryLeft(expr)) == ExpressionId.Const &&
                (
                  getConstValueI32(operand) == 0 ||
                  (
                    getConstValueI32(operand) == 1 &&
                    !this.canOverflow(getBinaryRight(expr), type)
                  )
                )
              ) || (
                getExpressionId(operand = getBinaryRight(expr)) == ExpressionId.Const &&
                (
                  getConstValueI32(operand) == 0 ||
                  (
                    getConstValueI32(operand) == 1 &&
                    !this.canOverflow(getBinaryLeft(expr), type)
                  )
                )
              )
            );
          }

          // result won't overflow if one side is a constant less than this type's mask or one side
          // is wrapped
          case BinaryOp.AndI32: {
            // note that computeSmallIntegerMask returns the mask minus the MSB for signed types
            // because signed value garbage bits must be guaranteed to be equal to the MSB.
            return !(
              (
                (
                  getExpressionId(operand = getBinaryLeft(expr)) == ExpressionId.Const &&
                  getConstValueI32(operand) <= type.computeSmallIntegerMask(Type.i32)
                ) || !this.canOverflow(operand, type)
              ) || (
                (
                  getExpressionId(operand = getBinaryRight(expr)) == ExpressionId.Const &&
                  getConstValueI32(operand) <= type.computeSmallIntegerMask(Type.i32)
                ) || !this.canOverflow(operand, type)
              )
            );
          }

          // overflows if the shift doesn't clear potential garbage bits
          case BinaryOp.ShlI32: {
            let shift = 32 - type.size;
            return getExpressionId(operand = getBinaryRight(expr)) != ExpressionId.Const
                || getConstValueI32(operand) < shift;
          }

          // overflows if the value does and the shift doesn't clear potential garbage bits
          case BinaryOp.ShrI32: {
            let shift = 32 - type.size;
            return this.canOverflow(getBinaryLeft(expr), type) && (
              getExpressionId(operand = getBinaryRight(expr)) != ExpressionId.Const ||
              getConstValueI32(operand) < shift
            );
          }

          // overflows if the shift does not clear potential garbage bits. if an unsigned value is
          // wrapped, it can't overflow.
          case BinaryOp.ShrU32: {
            let shift = 32 - type.size;
            return type.is(TypeFlags.SIGNED)
              ? !(
                  getExpressionId(operand = getBinaryRight(expr)) == ExpressionId.Const &&
                  getConstValueI32(operand) > shift // must clear MSB
                )
              : this.canOverflow(getBinaryLeft(expr), type) && !(
                  getExpressionId(operand = getBinaryRight(expr)) == ExpressionId.Const &&
                  getConstValueI32(operand) >= shift // can leave MSB
                );
          }

          // overflows if any side does
          case BinaryOp.DivU32:
          case BinaryOp.RemI32:
          case BinaryOp.RemU32: {
            return this.canOverflow(getBinaryLeft(expr), type)
                || this.canOverflow(getBinaryRight(expr), type);
          }
        }
        break;
      }

      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {

          // comparisons do not overflow (result is 0 or 1)
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: return false;

          // overflow if the maximum result (32) cannot be represented in the target type
          case UnaryOp.ClzI32:
          case UnaryOp.CtzI32:
          case UnaryOp.PopcntI32: return type.size < 7;
        }
        break;
      }

      // overflows if the value cannot be represented in the target type
      case ExpressionId.Const: {
        let value: i32 = 0;
        switch (getExpressionType(expr)) {
          case NativeType.I32: { value = getConstValueI32(expr); break; }
          case NativeType.I64: { value = getConstValueI64Low(expr); break; } // discards upper bits
          case NativeType.F32: { value = i32(getConstValueF32(expr)); break; }
          case NativeType.F64: { value = i32(getConstValueF64(expr)); break; }
          default: assert(false);
        }
        switch (type.kind) {
          case TypeKind.I8: return value < i8.MIN_VALUE || value > i8.MAX_VALUE;
          case TypeKind.I16: return value < i16.MIN_VALUE || value > i16.MAX_VALUE;
          case TypeKind.U8: return value < 0 || value > u8.MAX_VALUE;
          case TypeKind.U16: return value < 0 || value > u16.MAX_VALUE;
          case TypeKind.BOOL: return (value & ~1) != 0;
        }
        break;
      }

      // overflows if the conversion does
      case ExpressionId.Load: {
        let fromType: Type;
        switch (getLoadBytes(expr)) {
          case 1:  { fromType = isLoadSigned(expr) ? Type.i8 : Type.u8; break; }
          case 2:  { fromType = isLoadSigned(expr) ? Type.i16 : Type.u16; break; }
          default: { fromType = isLoadSigned(expr) ? Type.i32 : Type.u32; break; }
        }
        return canConversionOverflow(fromType, type);
      }

      // overflows if the result does, which is either
      // - the last expression of the block, by contract, if the block doesn't have a label
      // - the last expression or the value of an inner br if the block has a label (TODO)
      case ExpressionId.Block: {
        if (!getBlockName(expr)) {
          let size = assert(getBlockChildCount(expr));
          let last = getBlockChild(expr, size - 1);
          return this.canOverflow(last, type);
        }
        // actually, brs with a value that'd be handled here is not emitted atm
        break;
      }

      // overflows if either side does
      case ExpressionId.If: {
        return this.canOverflow(getIfTrue(expr), type)
            || this.canOverflow(assert(getIfFalse(expr)), type);
      }

      // overflows if either side does
      case ExpressionId.Select: {
        return this.canOverflow(getSelectThen(expr), type)
            || this.canOverflow(getSelectElse(expr), type);
      }

      // overflows if the call does not return a wrapped value or the conversion does
      case ExpressionId.Call: {
        let program = this.currentFunction.program;
        let instance = assert(program.instancesLookup.get(assert(getCallTarget(expr))));
        assert(instance.kind == ElementKind.FUNCTION);
        let returnType = (<Function>instance).signature.returnType;
        return !(<Function>instance).flow.is(FlowFlags.RETURNS_WRAPPED)
            || canConversionOverflow(returnType, type);
      }

      // doesn't technically overflow
      case ExpressionId.Unreachable: return false;
    }
    return true;
  }

  /** Finalizes this flow. Must be the topmost parent flow of the function. */
  finalize(): void {
    assert(this.parent == null); // must be the topmost parent flow
    this.continueLabel = null;
    this.breakLabel = null;
    this.returnLabel = null;
    this.contextualTypeArguments = null;
  }
}

/** Tests if a conversion from one type to another can technically overflow. */
function canConversionOverflow(fromType: Type, toType: Type): bool {
  return !fromType.is(TypeFlags.INTEGER) // non-i32 locals or returns
      || fromType.size > toType.size
      || fromType.is(TypeFlags.SIGNED) != toType.is(TypeFlags.SIGNED);
}
