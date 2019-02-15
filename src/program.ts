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
  INNER_DELIMITER,
  LIBRARY_SUBST
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
  SourceKind,
  Range,
  CommonTypeNode,
  TypeParameterNode,
  DecoratorNode,
  DecoratorKind,
  SignatureNode,

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
  CharCode,
  bitsetIs,
  bitsetSet
} from "./util";

import {
  Resolver
} from "./resolver";

/** Represents a yet unresolved `import`. */
class QueuedImport {
  constructor(
    public localFile: File,
    public localIdentifier: IdentifierExpression,
    public foreignIdentifier: IdentifierExpression | null,
    public foreignPath: string,
    public foreignPathAlt: string
  ) {}
}

/** Represents a yet unresolved `export`. */
class QueuedExport {
  constructor(
    public localFile: File,
    public localIdentifier: IdentifierExpression,
    public foreignIdentifier: IdentifierExpression,
    public foreignPath: string | null,
    public foreignPathAlt: string | null
  ) {}
}

/** Represents a yet unresolved `export *`. */
class QueuedExportStar {
  constructor(
    public foreignPath: string,
    public foreignPathAlt: string,
    public foreignLiteral: StringLiteralExpression
  ) {}
}

/** Represents a type alias. */
class TypeAlias {
  typeParameters: TypeParameterNode[] | null;
  type: CommonTypeNode;
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

  /** Resolver instance. */
  resolver: Resolver;
  /** Array of source files. */
  sources: Source[];
  /** Diagnostic offset used where successively obtaining the next diagnostic. */
  diagnosticsOffset: i32 = 0;
  /** Compiler options. */
  options: Options;
  /** Special native code file. */
  nativeFile: File;

  // lookup maps

  /** Files by unique internal name. */
  filesByName: Map<string,File> = new Map();
  /** Elements by unique internal name. */
  elementsByName: Map<string,Element> = new Map();
  /** Elements by declaration. */
  elementsByDeclaration: Map<DeclarationStatement,Element> = new Map();
  /** Element instances by unique internal name. */
  instancesByName: Map<string,Element> = new Map();

  /** Types by internal name. */
  typesLookup: Map<string,Type> = noTypesYet;
  /** Declared type aliases. */
  typeAliases: Map<string,TypeAlias> = new Map();
  /** Classes backing basic types like `i32`. */
  typeClasses: Map<TypeKind,Class> = new Map();

  // runtime references

  /** ArrayBuffer instance reference. */
  arrayBufferInstance: Class | null = null;
  /** Array prototype reference. */
  arrayPrototype: ClassPrototype | null = null;
  /** String instance reference. */
  stringInstance: Class | null = null;
  /** Main function reference, if present. */
  mainFunction: FunctionPrototype | null = null;
  /** Abort function reference, if present. */
  abortInstance: Function | null = null;
  /** Memory allocation function. */
  memoryAllocateInstance: Function | null = null;

  // gc integration

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

  /** Constructs a new program, optionally inheriting parser diagnostics. */
  constructor(diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);
    this.sources = [];
    var nativeFile = new File(this, new Source(LIBRARY_SUBST, "[native code]", SourceKind.LIBRARY));
    this.filesByName.set(nativeFile.internalName, nativeFile);
    this.nativeFile = nativeFile;
    this.resolver = new Resolver(this);
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

  /** Looks up the source matching the specified possibly ambiguous path. */
  lookupSource(normalizedPathWithoutExtension: string): Source | null {
    var tmp: string;
    return (
      this.getSource(normalizedPathWithoutExtension + ".ts") ||
      this.getSource(normalizedPathWithoutExtension + "/index.ts") ||
      this.getSource((tmp = LIBRARY_PREFIX + normalizedPathWithoutExtension) + ".ts") ||
      this.getSource( tmp                                                    + "/index.ts")
    );
  }

  /** Creates a native variable declaration. */
  makeNativeVariableDeclaration(name: string, flags: CommonFlags = CommonFlags.NONE): VariableDeclaration {
    var range = this.nativeFile.source.range;
    return Node.createVariableDeclaration(
      Node.createIdentifierExpression(name, range),
      null, null, null, flags, range
    );
  }

  private nativeDummySignature: SignatureNode | null = null;

  /** Creates a native function declaration. */
  makeNativeFunctionDeclaration(name: string, flags: CommonFlags = CommonFlags.NONE): FunctionDeclaration {
    var range = this.nativeFile.source.range;
    return Node.createFunctionDeclaration(
      Node.createIdentifierExpression(name, range),
      null,
      this.nativeDummySignature || (this.nativeDummySignature = Node.createSignature([],
        Node.createType( // ^ AST signature doesn't really matter, is overridden anyway
          Node.createIdentifierExpression("void", range),
          null, false, range
        ),
        null, false, range)
      ),
      null, null, flags, range
    );
  }

  /** Creates a native namespace declaration. */
  makeNativeNamespaceDeclaration(name: string, flags: CommonFlags = CommonFlags.NONE): NamespaceDeclaration {
    var range = this.nativeFile.source.range;
    return Node.createNamespaceDeclaration(
      Node.createIdentifierExpression(name, range),
      [], null, flags, range
    );
  }

  /** Creates a native function. */
  makeNativeFunction(
    name: string,
    signature: Signature,
    parent: Element = this.nativeFile,
    flags: CommonFlags = CommonFlags.NONE,
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ): Function {
    return new Function(
      name,
      new FunctionPrototype(
        name,
        parent,
        this.makeNativeFunctionDeclaration(name, flags),
        decoratorFlags
      ),
      signature
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
    if (options.hasFeature(Feature.SIMD)) this.typesLookup.set("v128", Type.v128);

    // add compiler hints
    this.registerConstantInteger("ASC_TARGET", Type.i32,
      i64_new(options.isWasm64 ? 2 : 1));
    this.registerConstantInteger("ASC_NO_TREESHAKING", Type.bool,
      i64_new(options.noTreeShaking ? 1 : 0, 0));
    this.registerConstantInteger("ASC_NO_ASSERT", Type.bool,
      i64_new(options.noAssert ? 1 : 0, 0));
    this.registerConstantInteger("ASC_MEMORY_BASE", Type.i32,
      i64_new(options.memoryBase, 0));
    this.registerConstantInteger("ASC_OPTIMIZE_LEVEL", Type.i32,
      i64_new(options.optimizeLevelHint, 0));
    this.registerConstantInteger("ASC_SHRINK_LEVEL", Type.i32,
      i64_new(options.shrinkLevelHint, 0));
    this.registerConstantInteger("ASC_FEATURE_MUTABLE_GLOBAL", Type.bool,
      i64_new(options.hasFeature(Feature.MUTABLE_GLOBAL) ? 1 : 0, 0));
    this.registerConstantInteger("ASC_FEATURE_SIGN_EXTENSION", Type.bool,
      i64_new(options.hasFeature(Feature.SIGN_EXTENSION) ? 1 : 0, 0));
    this.registerConstantInteger("ASC_FEATURE_BULK_MEMORY", Type.bool,
      i64_new(options.hasFeature(Feature.BULK_MEMORY) ? 1 : 0, 0));
    this.registerConstantInteger("ASC_FEATURE_SIMD", Type.bool,
      i64_new(options.hasFeature(Feature.SIMD) ? 1 : 0, 0));

    // remember deferred elements
    var queuedImports = new Array<QueuedImport>();
    var queuedExports = new Map<File,Map<string,QueuedExport>>();
    var queuedExportsStar = new Map<File,QueuedExportStar[]>();
    var queuedExtends = new Array<ClassPrototype>();
    var queuedImplements = new Array<ClassPrototype>();

    // build initial lookup maps of internal names to declarations
    for (let i = 0, k = this.sources.length; i < k; ++i) {
      let source = this.sources[i];

      // create one file per source
      let file = new File(this, source);
      this.filesByName.set(file.internalName, file);

      // process this source's statements
      let statements = source.statements;
      for (let j = 0, l = statements.length; j < l; ++j) {
        let statement = statements[j];
        switch (statement.kind) {
          case NodeKind.CLASSDECLARATION: {
            this.initializeClass(<ClassDeclaration>statement, file, queuedExtends, queuedImplements);
            break;
          }
          case NodeKind.ENUMDECLARATION: {
            this.initializeEnum(<EnumDeclaration>statement, file);
            break;
          }
          case NodeKind.EXPORT: {
            this.initializeExports(<ExportStatement>statement, file, queuedExports, queuedExportsStar);
            break;
          }
          case NodeKind.FUNCTIONDECLARATION: {
            this.initializeFunction(<FunctionDeclaration>statement, file);
            break;
          }
          case NodeKind.IMPORT: {
            this.initializeImports(<ImportStatement>statement, file, queuedImports, queuedExports);
            break;
          }
          case NodeKind.INTERFACEDECLARATION: {
            this.initializeInterface(<InterfaceDeclaration>statement, file);
            break;
          }
          case NodeKind.NAMESPACEDECLARATION: {
            this.initializeNamespace(<NamespaceDeclaration>statement, file, queuedExtends, queuedImplements);
            break;
          }
          case NodeKind.TYPEDECLARATION: {
            this.initializeTypeAlias(<TypeDeclaration>statement, file);
            break;
          }
          case NodeKind.VARIABLE: {
            this.initializeVariables(<VariableStatement>statement, file);
            break;
          }
        }
      }
    }

    // queued exports * should be linkable now that all files have been processed
    for (let [file, exportsStar] of queuedExportsStar) {
      let filesByName = this.filesByName;
      for (let exportStar of exportsStar) {
        let otherFile: File;
        if (filesByName.has(exportStar.foreignPath)) {
          otherFile = filesByName.get(exportStar.foreignPath)!;
        } else if (filesByName.has(exportStar.foreignPathAlt)) {
          otherFile = filesByName.get(exportStar.foreignPathAlt)!;
        } else {
          this.error(
            DiagnosticCode.File_0_not_found,
            exportStar.foreignLiteral.range, exportStar.foreignLiteral.value
          );
          continue;
        }
        file.addExportStar(otherFile);
      }
    }

    // queued imports should be resolvable now through traversing exports and queued exports
    for (let i = 0, k = queuedImports.length; i < k; ++i) {
      let queuedImport = queuedImports[i];
      let foreignIdentifier = queuedImport.foreignIdentifier;
      if (foreignIdentifier) { // i.e. import { foo [as bar] } from "./baz"
        let element = this.lookupForeign(
          foreignIdentifier.text,
          queuedImport.foreignPath,
          queuedImport.foreignPathAlt,
          queuedExports
        );
        if (element) {
          queuedImport.localFile.add(queuedImport.localIdentifier.text, element, /* isImport */ true);
        } else {
          this.error(
            DiagnosticCode.Module_0_has_no_exported_member_1,
            foreignIdentifier.range,
            queuedImport.foreignPath,
            foreignIdentifier.text
          );
        }
      } else { // i.e. import * as bar from "./bar"
        let file = this.filesByName.get(queuedImport.foreignPath)
                || this.filesByName.get(queuedImport.foreignPathAlt);
        if (file) {
          let localFile = queuedImport.localFile;
          let localName = queuedImport.localIdentifier.text;
          localFile.add(
            localName,
            file.asImportedNamespace(
              localName,
              localFile
            ),
            /* isImport */ true
          );
        } else {
          assert(false); // already reported by the parser not finding the file
        }
      }
    }

    // queued exports should be resolvable now that imports are finalized
    for (let [file, exports] of queuedExports) {
      for (let [exportName, queuedExport] of exports) {
        let foreignPath = queuedExport.foreignPath;
        if (foreignPath) { // i.e. export { foo [as bar] } from "./baz"
          let element = this.lookupForeign(
            queuedExport.localIdentifier.text,
            foreignPath,
            assert(queuedExport.foreignPathAlt),
            queuedExports
          );
          if (element) {
            queuedExport.localFile.addExport(exportName, element);
          } else {
            this.error(
              DiagnosticCode.Module_0_has_no_exported_member_1,
              queuedExport.localIdentifier.range,
              foreignPath,
              queuedExport.localIdentifier.text
            );
          }
        } else { // i.e. export { foo [as bar] }
          let element = queuedExport.localFile.lookupInSelf(queuedExport.localIdentifier.text);
          if (element) {
            queuedExport.localFile.addExport(exportName, element);
          } else {
            this.error(
              DiagnosticCode.Module_0_has_no_exported_member_1,
              queuedExport.foreignIdentifier.range,
              queuedExport.localFile.internalName,
              queuedExport.foreignIdentifier.text
            );
          }
        }
      }
    }

    // resolve base prototypes of derived classes
    var resolver = this.resolver;
    for (let i = 0, k = queuedExtends.length; i < k; ++i) {
      let thisPrototype = queuedExtends[i];
      let thisDeclaration = thisPrototype.declaration;
      let extendsType = assert(thisDeclaration.extendsType);
      let baseElement = resolver.resolveIdentifier(extendsType.name, null, thisPrototype.parent); // reports
      if (!baseElement) continue;
      if (baseElement.kind == ElementKind.CLASS_PROTOTYPE) {
        let basePrototype = <ClassPrototype>baseElement;
        if (basePrototype.hasDecorator(DecoratorFlags.SEALED)) {
          this.error(
            DiagnosticCode.Class_0_is_sealed_and_cannot_be_extended,
            extendsType.range, extendsType.name.text
          );
        }
        if (
          basePrototype.hasDecorator(DecoratorFlags.UNMANAGED) !=
          thisPrototype.hasDecorator(DecoratorFlags.UNMANAGED)
        ) {
          this.error(
            DiagnosticCode.Unmanaged_classes_cannot_extend_managed_classes_and_vice_versa,
            Range.join(thisDeclaration.name.range, extendsType.range)
          );
        }
        thisPrototype.basePrototype = basePrototype;
      } else {
        this.error(
          DiagnosticCode.A_class_may_only_extend_another_class,
          extendsType.range
        );
      }
    }

    // set up global aliases
    {
      let globalAliases = options.globalAliases;
      if (globalAliases) {
        for (let [alias, name] of globalAliases) {
          if (!name.length) continue; // explicitly disabled
          let element = this.elementsByName.get(name);
          if (element) this.elementsByName.set(alias, element);
          else throw new Error("element not found: " + name);
        }
      }
    }

    // register 'ArrayBuffer'
    if (this.elementsByName.has("ArrayBuffer")) {
      let element = assert(this.elementsByName.get("ArrayBuffer"));
      assert(element.kind == ElementKind.CLASS_PROTOTYPE);
      this.arrayBufferInstance = resolver.resolveClass(<ClassPrototype>element, null);
    }

    // register 'Array'
    if (this.elementsByName.has("Array")) {
      let element = assert(this.elementsByName.get("Array"));
      assert(element.kind == ElementKind.CLASS_PROTOTYPE);
      this.arrayPrototype = <ClassPrototype>element;
    }

    // register 'String'
    if (this.elementsByName.has("String")) {
      let element = <ClassPrototype>this.elementsByName.get("String");
      assert(element.kind == ElementKind.CLASS_PROTOTYPE);
      let instance = resolver.resolveClass(element, null);
      if (instance) {
        if (this.typesLookup.has("string")) {
          let declaration = element.declaration;
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, "string"
          );
        } else {
          this.stringInstance = instance;
          this.typesLookup.set("string", instance.type);
        }
      }
    }

    // register classes backing basic types
    this.registerTypeClass(TypeKind.I8, "I8");
    this.registerTypeClass(TypeKind.I16, "I16");
    this.registerTypeClass(TypeKind.I32, "I32");
    this.registerTypeClass(TypeKind.I64, "I64");
    this.registerTypeClass(TypeKind.ISIZE, "Isize");
    this.registerTypeClass(TypeKind.U8, "U8");
    this.registerTypeClass(TypeKind.U16, "U16");
    this.registerTypeClass(TypeKind.U32, "U32");
    this.registerTypeClass(TypeKind.U64, "U64");
    this.registerTypeClass(TypeKind.USIZE, "Usize");
    this.registerTypeClass(TypeKind.BOOL, "Bool");
    this.registerTypeClass(TypeKind.F32, "F32");
    this.registerTypeClass(TypeKind.F64, "F64");
    if (options.hasFeature(Feature.SIMD)) this.registerTypeClass(TypeKind.V128, "V128");

    var element: Element | null;

    // register 'main' if present
    if (element = this.lookupGlobal("main")) {
      if (
        element.kind == ElementKind.FUNCTION_PROTOTYPE &&
        !(<FunctionPrototype>element).isAny(CommonFlags.GENERIC | CommonFlags.AMBIENT) &&
        element.is(CommonFlags.EXPORT)
      ) {
        (<FunctionPrototype>element).set(CommonFlags.MAIN);
        this.mainFunction = <FunctionPrototype>element;
      }
    }

    // register 'abort' if present
    if (element = this.lookupGlobal("abort")) {
      assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
      let instance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
      if (instance) this.abortInstance = instance;
    }

    // register 'memory.allocate' if present
    if (element = this.lookupGlobal("memory")) {
      if (element = element.lookupInSelf("allocate")) {
        assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
        let instance = this.resolver.resolveFunction(<FunctionPrototype>element, null);
        if (instance) this.memoryAllocateInstance = instance;
      }
    }

    // register GC hooks if present
    if (
      this.elementsByName.has("__gc_allocate") &&
      this.elementsByName.has("__gc_link") &&
      this.elementsByName.has("__gc_mark")
    ) {
      // __gc_allocate(usize, (ref: usize) => void): usize
      let element = <Element>this.elementsByName.get("__gc_allocate");
      assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
      let gcAllocateInstance = assert(this.resolver.resolveFunction(<FunctionPrototype>element, null));
      let signature = gcAllocateInstance.signature;
      assert(signature.parameterTypes.length == 2);
      assert(signature.parameterTypes[0] == this.options.usizeType);
      assert(signature.parameterTypes[1].signatureReference);
      assert(signature.returnType == this.options.usizeType);

      // __gc_link(usize, usize): void
      element = <Element>this.elementsByName.get("__gc_link");
      assert(element.kind == ElementKind.FUNCTION_PROTOTYPE);
      let gcLinkInstance = assert(this.resolver.resolveFunction(<FunctionPrototype>element, null));
      signature = gcLinkInstance.signature;
      assert(signature.parameterTypes.length == 2);
      assert(signature.parameterTypes[0] == this.options.usizeType);
      assert(signature.parameterTypes[1] == this.options.usizeType);
      assert(signature.returnType == Type.void);

      // __gc_mark(usize): void
      element = <Element>this.elementsByName.get("__gc_mark");
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

    // mark module exports, i.e. to generate wrapping behavior on the boundaries
    for (let file of this.filesByName.values()) {
      let exports = file.exports;
      if (!(file.source.isEntry && exports)) continue;
      for (let element of exports.values()) this.markModuleExport(element);
    }
  }

  /** Marks an element and its children as a module export. */
  private markModuleExport(element: Element): void {
    element.set(CommonFlags.MODULE_EXPORT);
    switch (element.kind) {
      case ElementKind.CLASS_PROTOTYPE: {
        let instanceMembers = (<ClassPrototype>element).instanceMembers;
        if (instanceMembers) for (let member of instanceMembers.values()) this.markModuleExport(member);
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let getterPrototype = (<PropertyPrototype>element).getterPrototype;
        if (getterPrototype) this.markModuleExport(getterPrototype);
        let setterPrototype = (<PropertyPrototype>element).setterPrototype;
        if (setterPrototype) this.markModuleExport(setterPrototype);
        break;
      }
      case ElementKind.PROPERTY:
      case ElementKind.FUNCTION:
      case ElementKind.FIELD:
      case ElementKind.CLASS: assert(false); // assumes that there are no instances yet
    }
    {
      let members = element.members;
      if (members) for (let member of members.values()) this.markModuleExport(member);
    }
  }

  /** Registers a prototype element with the program. */
  registerPrototypeElement(element: Element, declaration: DeclarationStatement | null): void {
    assert(!this.elementsByName.has(element.internalName));
    this.elementsByName.set(element.internalName, element);
    if (declaration) {
      assert(!this.elementsByDeclaration.has(declaration)); // declaration must be unique
      this.elementsByDeclaration.set(declaration, element);
    } else {
      assert(element.kind == ElementKind.PROPERTY_PROTOTYPE); // declaration must be referenced (except property)
    }
  }

  /** Registers a concrete element with the program. */
  registerConcreteElement(element: Element): void {
    assert(!this.instancesByName.has(element.internalName));
    this.instancesByName.set(element.internalName, element);
  }

  private registerTypeClass(typeKind: TypeKind, className: string): void {
    assert(!this.typeClasses.has(typeKind));
    if (this.elementsByName.has(className)) {
      let element = <Element>this.elementsByName.get(className);
      assert(element.kind == ElementKind.CLASS_PROTOTYPE);
      let classElement = this.resolver.resolveClass(<ClassPrototype>element, null);
      if (classElement) this.typeClasses.set(typeKind, classElement);
    }
  }

  /** Registers a constant integer value within the global scope. */
  private registerConstantInteger(name: string, type: Type, value: I64): void {
    assert(type.is(TypeFlags.INTEGER)); // must be an integer type
    var global = new Global(
      name,
      this.nativeFile,
      DecoratorFlags.NONE,
      this.makeNativeVariableDeclaration(name, CommonFlags.CONST)
    ).withConstantIntegerValue(value, type);
    global.set(CommonFlags.RESOLVED);
    this.elementsByName.set(name, global);
  }

  /** Registers a constant float value within the global scope. */
  private registerConstantFloat(name: string, type: Type, value: f64): void {
    assert(type.is(TypeFlags.FLOAT)); // must be a float type
    var global = new Global(
      name,
      this.nativeFile,
      DecoratorFlags.NONE,
      this.makeNativeVariableDeclaration(name, CommonFlags.CONST)
    ).withConstantFloatValue(value, type);
    global.set(CommonFlags.RESOLVED);
    this.elementsByName.set(name, global);
  }

  /** Adds an element to the global scope. */
  addGlobal(name: string, element: Element): void {
    var globals = this.elementsByName;
    if (globals.has(name)) assert(globals.get(name) == element);
    else globals.set(name, element);
  }

  /** Looks up the global element of the specified name. */
  lookupGlobal(name: string): Element | null {
    var elements = this.elementsByName;
    if (elements.has(name)) return elements.get(name);
    return null;
  }

  /** Tries to locate a foreign element by traversing exports and queued exports. */
  private lookupForeign(
    foreignName: string,
    foreignPath: string,
    foreignPathAlt: string,
    queuedExports: Map<File,Map<string,QueuedExport>>
  ): Element | null {
    do {
      // obtain the file being imported from
      let file: File;
      if (this.filesByName.has(foreignPath)) file = this.filesByName.get(foreignPath)!;
      else if (this.filesByName.has(foreignPathAlt)) file = this.filesByName.get(foreignPathAlt)!;
      else return null; // no such file

      // search already resolved exports
      let element = file.lookupExport(foreignName);
      if (element) return element;

      // otherwise traverse queued exports
      if (queuedExports.has(file)) {
        let map = queuedExports.get(file)!;
        if (map.has(foreignName)) {
          let que = map.get(foreignName)!;
          if (que.foreignPath) { // imported from another file
            foreignName = que.localIdentifier.text;
            foreignPath = que.foreignPath;
            foreignPathAlt = assert(que.foreignPathAlt);
            continue;
          } else { // local element of this file
            element = file.lookupInSelf(que.localIdentifier.text);
            if (element) return element;
          }
        }
      }
      break;
    } while (true);
    return null;
  }

  /** Validates that only supported decorators are present. */
  private checkDecorators(
    decorators: DecoratorNode[] | null,
    acceptedFlags: DecoratorFlags
  ): DecoratorFlags {
    var flags = DecoratorFlags.NONE;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        let decorator = decorators[i];
        let kind = decoratorNameToKind(decorator.name);
        let flag = decoratorKindToFlag(kind);
        if (flag) {
          if (flag == DecoratorFlags.BUILTIN) {
            if (decorator.range.source.isLibrary) {
              flags |= flag;
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
          } else if (flags & flag) {
            this.error(
              DiagnosticCode.Duplicate_decorator,
              decorator.range, decorator.name.range.toString()
            );
          } else {
            flags |= flag;
          }
        }
      }
    }
    return flags;
  }

  /** Sets up global options of an element, if applicable. */
  private maybeRegisterGlobally(
    element: Element,
    declaration: DeclarationStatement
  ): void {
    // var parentNode = declaration.parent;
    // var globalName: string | null = null;
    // // alias globally if explicitly annotated @global or exported from a top-level library file
    // if (
    //   (element.hasDecorator(DecoratorFlags.GLOBAL)) ||
    //   (
    //     declaration.range.source.isLibrary &&
    //     element.is(CommonFlags.EXPORT) &&
    //     (
    //       assert(parentNode).kind == NodeKind.SOURCE ||
    //       (
    //         <Node>parentNode).kind == NodeKind.VARIABLE &&
    //         assert((<Node>parentNode).parent).kind == NodeKind.SOURCE
    //       )
    //     )
    // ) {
    //   globalName = mangleInternalName(element.name, element.parent, element.is(CommonFlags.INSTANCE), true);
    //   if (this.elementsByName.has(globalName)) {
    //     this.error(
    //       DiagnosticCode.Duplicate_identifier_0,
    //       declaration.name.range, globalName
    //     );
    //   } else {
    //     this.elementsByName.set(globalName, element);
    //   }
    // }
  }

  /** Initializes a class declaration. */
  private initializeClass(
    declaration: ClassDeclaration,
    parent: Element,
    queuedExtends: ClassPrototype[],
    queuedImplements: ClassPrototype[]
  ): void {
    var name = declaration.name.text;
    var element = new ClassPrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.GLOBAL |
        DecoratorFlags.SEALED |
        DecoratorFlags.UNMANAGED
      )
    );
    var actual = parent.add(name, element);
    if (actual !== element) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, name
      );
      return;
    }

    var implementsTypes = declaration.implementsTypes;
    if (implementsTypes) {
      let numImplementsTypes = implementsTypes.length;
      // cannot implement interfaces when unmanaged
      if (element.hasDecorator(DecoratorFlags.UNMANAGED)) {
        if (numImplementsTypes) {
          this.error(
            DiagnosticCode.Unmanaged_classes_cannot_implement_interfaces,
            Range.join(
              declaration.name.range,
              implementsTypes[numImplementsTypes - 1].range
            )
          );
        }
      } else if (numImplementsTypes) {
        // remember classes that implement interfaces
        for (let i = 0; i < numImplementsTypes; ++i) {
          this.warning( // TODO: not yet supported
            DiagnosticCode.Operation_not_supported,
            implementsTypes[i].range
          );
        }
        queuedImplements.push(element);
      }
    }
    // remember classes that extend another class
    if (declaration.extendsType) queuedExtends.push(element);

    // initialize members
    var memberDeclarations = declaration.members;
    for (let i = 0, k = memberDeclarations.length; i < k; ++i) {
      let memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {
        case NodeKind.FIELDDECLARATION: {
          this.initializeField(<FieldDeclaration>memberDeclaration, element);
          break;
        }
        case NodeKind.METHODDECLARATION: {
          if (memberDeclaration.isAny(CommonFlags.GET | CommonFlags.SET)) {
            this.initializeAccessor(<MethodDeclaration>memberDeclaration, element);
          } else {
            this.initializeMethod(<MethodDeclaration>memberDeclaration, element);
          }
          break;
        }
        case NodeKind.INDEXSIGNATUREDECLARATION: break; // ignored for now
        default: assert(false); // class member expected
      }
    }
    this.maybeRegisterGlobally(element, declaration);
  }

  /** Initializes a field of a class or interface. */
  private initializeField(
    declaration: FieldDeclaration,
    parent: ClassPrototype
  ): void {
    var name = declaration.name.text;
    var decorators = declaration.decorators;
    var element: Element;
    if (declaration.is(CommonFlags.STATIC)) { // global variable
      assert(parent.kind != ElementKind.INTERFACE_PROTOTYPE);
      element = new Global(
        name,
        parent,
        this.checkDecorators(decorators, DecoratorFlags.INLINE),
        declaration
      );
      if (element.hasDecorator(DecoratorFlags.INLINE) && !element.is(CommonFlags.READONLY)) {
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          assert(findDecorator(DecoratorKind.INLINE, decorators)).range, "inline"
        );
      }
      let actual = parent.add(name, element);
      if (actual !== element) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, name
        );
        return;
      }
    } else { // actual instance field
      assert(!declaration.isAny(CommonFlags.ABSTRACT | CommonFlags.GET | CommonFlags.SET));
      element = new FieldPrototype(
        name,
        mangleInternalName(name, parent, true),
        parent,
        declaration,
        decorators
          ? this.checkDecorators(decorators, DecoratorFlags.NONE)
          : DecoratorFlags.NONE
      );
      let actual = parent.addInstance(name, element, declaration);
      if (actual !== element) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, name
        );
        return;
      }
    }
  }

  /** Initializes a method of a class or interface. */
  private initializeMethod(
    declaration: MethodDeclaration,
    parent: ClassPrototype
  ): void {
    var name = declaration.name.text;
    var isStatic = declaration.is(CommonFlags.STATIC);
    var element = new FunctionPrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.OPERATOR_BINARY  |
        DecoratorFlags.OPERATOR_PREFIX  |
        DecoratorFlags.OPERATOR_POSTFIX |
        DecoratorFlags.INLINE
      )
    );
    if (isStatic) { // global function
      assert(declaration.name.kind != NodeKind.CONSTRUCTOR);
      let actual = parent.add(name, element);
      if (actual !== element) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, name
        );
        return;
      }
    } else { // actual instance method
      let actual = parent.addInstance(name, element, declaration);
      if (actual !== element) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, name
        );
        return;
      }
    }
    this.checkOperatorOverloads(declaration.decorators, element, parent);
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
                decorator.range, "1", numArgs.toString(10)
              );
            }
          }
        }
      }
    }
  }

  private ensureProperty(
    declaration: MethodDeclaration,
    parent: ClassPrototype
  ): PropertyPrototype | null {
    var name = declaration.name.text;
    if (declaration.is(CommonFlags.STATIC)) {
      let parentMembers = parent.members;
      if (parentMembers && parentMembers.has(name)) {
        let element = <Element>parentMembers.get(name);
        if (element.kind == ElementKind.PROPERTY_PROTOTYPE) return <PropertyPrototype>element;
      } else {
        let element = new PropertyPrototype(
          name,
          parent,
          false
        );
        let actual = parent.add(name, element);
        assert(actual == element);
        return element;
      }
    } else {
      let parentMembers = parent.instanceMembers;
      if (parentMembers && parentMembers.has(name)) {
        let element = <Element>parentMembers.get(name);
        if (element.kind == ElementKind.PROPERTY_PROTOTYPE) return <PropertyPrototype>element;
      } else {
        let element = new PropertyPrototype(
          name,
          parent,
          true
        );
        let actual = parent.addInstance(name, element, declaration);
        assert(actual == element);
        return element;
      }
    }
    this.error(
      DiagnosticCode.Duplicate_identifier_0,
      declaration.name.range, name
    );
    return null;
  }

  private initializeAccessor(
    declaration: MethodDeclaration,
    parent: ClassPrototype
  ): void {
    var property = this.ensureProperty(declaration, parent);
    if (!property) return;
    var name = declaration.name.text;
    var isGetter = declaration.is(CommonFlags.GET);
    if (isGetter) {
      if (property.getterPrototype) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, name
        );
        return;
      }
    } else {
      if (property.setterPrototype) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, name
        );
        return;
      }
    }
    var element = new FunctionPrototype(
      (isGetter ? GETTER_PREFIX : SETTER_PREFIX) + name,
      property,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.INLINE
      )
    );
    if (isGetter) {
      property.getterPrototype = element;
    } else {
      property.setterPrototype = element;
    }
  }

  private initializeEnum(
    declaration: EnumDeclaration,
    parent: Element
  ): void {
    var name = declaration.name.text;
    var element = new Enum(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.GLOBAL
      )
    );
    var actual = parent.add(name, element);
    if (actual !== element) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, name
      );
      return;
    }
    var values = declaration.values;
    for (let i = 0, k = values.length; i < k; ++i) {
      this.initializeEnumValue(values[i], element);
    }
    this.maybeRegisterGlobally(element, declaration);
  }

  private initializeEnumValue(
    declaration: EnumValueDeclaration,
    parent: Enum
  ): void {
    var name = declaration.name.text;
    var element = new EnumValue(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.NONE
      )
    );
    var actual = parent.add(name, element);
    if (actual !== element) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, name
      );
      return;
    }
  }

  private initializeExports(
    statement: ExportStatement,
    parent: File,
    queuedExports: Map<File,Map<string,QueuedExport>>,
    queuedExportsStar: Map<File,QueuedExportStar[]>
  ): void {
    var members = statement.members;
    if (members) { // export { foo, bar } [from "./baz"]
      for (let i = 0, k = members.length; i < k; ++i) {
        this.initializeExport(members[i], parent, statement.internalPath, queuedExports);
      }
    } else { // export * from "./baz"
      let queued: QueuedExportStar[];
      if (queuedExportsStar.has(parent)) queued = queuedExportsStar.get(parent)!;
      else queuedExportsStar.set(parent, queued = []);
      let foreignPath = assert(statement.internalPath);
      const indexPart = PATH_DELIMITER + "index";
      queued.push(new QueuedExportStar(
        foreignPath,
        foreignPath.endsWith(indexPart) // strip or add index depending on what's already present
          ? foreignPath.substring(0, foreignPath.length - indexPart.length)
          : foreignPath + indexPart,
        assert(statement.path)
      ));
    }
  }

  private initializeExport(
    member: ExportMember,
    localFile: File,
    foreignPath: string | null,
    queuedExports: Map<File,Map<string,QueuedExport>>
  ): void {
    var localName = member.localName.text;
    var foreignName = member.exportedName.text;

    // check for duplicates
    var element = localFile.lookupExport(foreignName);
    if (element) {
      this.error(
        DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
        member.exportedName.range, foreignName
      );
      return;
    }
    // local element, i.e. export { foo [as bar] }
    if (foreignPath === null) {

      // resolve right away if the local element already exists
      if (element = localFile.lookupInSelf(localName)) {
        localFile.addExport(foreignName, element);

      // otherwise queue it
      } else {
        let queued: Map<string,QueuedExport>;
        if (queuedExports.has(localFile)) queued = queuedExports.get(localFile)!;
        else queuedExports.set(localFile, queued = new Map());
        queued.set(foreignName, new QueuedExport(
          localFile,
          member.localName,
          member.exportedName,
          null, null
        ));
      }

    // foreign element, i.e. export { foo } from "./bar"
    } else {
      const indexPart = PATH_DELIMITER + "index";
      let queued: Map<string,QueuedExport>;
      if (queuedExports.has(localFile)) queued = queuedExports.get(localFile)!;
      else queuedExports.set(localFile, queued = new Map());
      queued.set(foreignName, new QueuedExport(
        localFile,
        member.localName,
        member.exportedName,
        foreignPath,
        foreignPath.endsWith(indexPart) // strip or add index depending on what's already present
          ? foreignPath.substring(0, foreignPath.length - indexPart.length)
          : foreignPath + indexPart
      ));
    }
  }

  private initializeImports(
    statement: ImportStatement,
    parent: File,
    queuedImports: QueuedImport[],
    queuedExports: Map<File,Map<string,QueuedExport>>
  ): void {
    var declarations = statement.declarations;
    if (declarations) {
      for (let i = 0, k = declarations.length; i < k; ++i) {
        this.initializeImport(
          declarations[i],
          parent,
          statement.internalPath,
          queuedImports,
          queuedExports
        );
      }
    } else if (statement.namespaceName) { // import * as simpleName from "file"
      let simpleName = statement.namespaceName.text;
      let internalName = (
        statement.range.source.internalPath +
        PATH_DELIMITER +
        simpleName
      );
      if (this.elementsByName.has(internalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          statement.namespaceName.range,
          internalName
        );
        return;
      }

      // resolve right away if the exact file exists
      let file = this.elementsByName.get(statement.internalPath);
      if (file) {
        this.elementsByName.set(internalName, file);
        parent.add(simpleName, file, true);
        return;
      }

      // otherwise queue it
      let queuedImport = new QueuedImport(
        parent,
        statement.namespaceName,
        null, // entire file
        statement.internalPath,
        statement.internalPath + PATH_DELIMITER + "index"
      );
      queuedImports.push(queuedImport);
    }
  }

  private initializeImport(
    declaration: ImportDeclaration,
    parent: File,
    foreignPath: string,
    queuedImports: QueuedImport[],
    queuedExports: Map<File,Map<string,QueuedExport>>
  ): void {
    const indexPart = PATH_DELIMITER + "index";
    var foreignPathAlt = foreignPath.endsWith(indexPart) // strip or add index depending on what's already present
      ? foreignPath.substring(0, foreignPath.length - indexPart.length)
      : foreignPath + indexPart;

    // resolve right away if the element exists
    var element = this.lookupForeign(declaration.foreignName.text, foreignPath, foreignPathAlt, queuedExports);
    if (element) {
      parent.add(declaration.name.text, element, true);
      return;
    }

    // otherwise queue it
    queuedImports.push(new QueuedImport(
      parent,
      declaration.name,
      declaration.foreignName,
      foreignPath,
      foreignPathAlt
    ));
  }

  private initializeFunction(
    declaration: FunctionDeclaration,
    parent: Element
  ): void {
    var name = declaration.name.text;
    var element = new FunctionPrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.GLOBAL |
        DecoratorFlags.INLINE |
        DecoratorFlags.EXTERNAL
      )
    );
    var actual = parent.add(name, element);
    if (actual !== element) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, name
      );
      return;
    }
    this.maybeRegisterGlobally(element, declaration);
  }

  private initializeInterface(
    declaration: InterfaceDeclaration,
    parent: Element
  ): void {
    var name = declaration.name.text;
    var element = new InterfacePrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.GLOBAL
      )
    );
    var actual = parent.add(name, element);
    if (actual !== element) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, name
      );
      return;
    }
    var memberDeclarations = declaration.members;
    for (let i = 0, k = memberDeclarations.length; i < k; ++i) {
      let memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {
        case NodeKind.FIELDDECLARATION: {
          this.initializeField(<FieldDeclaration>memberDeclaration, element);
          break;
        }
        case NodeKind.METHODDECLARATION: {
          if (memberDeclaration.isAny(CommonFlags.GET | CommonFlags.SET)) {
            this.initializeAccessor(<MethodDeclaration>memberDeclaration, element);
          } else {
            this.initializeMethod(<MethodDeclaration>memberDeclaration, element);
          }
          break;
        }
        default: assert(false); // interface member expected
      }
    }
    this.maybeRegisterGlobally(element, declaration);
  }

  private ensureNamespace(
    declaration: NamespaceDeclaration,
    parent: Element
  ): Element | null {
    var name = declaration.name.text;
    var parentMembers = parent.members;
    if (parentMembers && parentMembers.has(name)) {
      let element = <Element>parentMembers.get(name);
      switch (element.kind) {
        // TODO: can merge with ... ?
        case ElementKind.ENUM:
        case ElementKind.FUNCTION_PROTOTYPE:
        case ElementKind.CLASS_PROTOTYPE:
        case ElementKind.NAMESPACE: {
          // TODO: @global either on both or none
          this.elementsByDeclaration.set(declaration, element); // alias
          return element;
        }
      }
    } else {
      let element = new Namespace(
        name,
        parent,
        declaration
      );
      let actual = parent.add(name, element);
      assert(actual === element);
      this.maybeRegisterGlobally(element, declaration);
      return element;
    }
    this.error(
      DiagnosticCode.Duplicate_identifier_0,
      declaration.range, name
    );
    return null;
  }

  private initializeNamespace(
    declaration: NamespaceDeclaration,
    parent: Element,
    queuedExtends: ClassPrototype[],
    queuedImplements: ClassPrototype[]
  ): void {
    var element = this.ensureNamespace(declaration, parent);
    if (!element) return;
    var members = declaration.members;
    for (let i = 0, k = members.length; i < k; ++i) {
      switch (members[i].kind) {
        case NodeKind.CLASSDECLARATION: {
          this.initializeClass(<ClassDeclaration>members[i], element, queuedExtends, queuedImplements);
          break;
        }
        case NodeKind.ENUMDECLARATION: {
          this.initializeEnum(<EnumDeclaration>members[i], element);
          break;
        }
        case NodeKind.FUNCTIONDECLARATION: {
          this.initializeFunction(<FunctionDeclaration>members[i], element);
          break;
        }
        case NodeKind.INTERFACEDECLARATION: {
          this.initializeInterface(<InterfaceDeclaration>members[i], element);
          break;
        }
        case NodeKind.NAMESPACEDECLARATION: {
          this.initializeNamespace(<NamespaceDeclaration>members[i], element, queuedExtends, queuedImplements);
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
          this.initializeVariables(<VariableStatement>members[i], element);
          break;
        }
        default: assert(false); // namespace member expected
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

  private initializeVariables(
    statement: VariableStatement,
    parent: Element
  ): void {
    var declarations = statement.declarations;
    for (let i = 0, k = declarations.length; i < k; ++i) {
      let declaration = declarations[i];
      let name = declaration.name.text;
      let decorators = declaration.decorators;
      let element = new Global(
        name,
        parent,
        this.checkDecorators(decorators,
          DecoratorFlags.GLOBAL |
          DecoratorFlags.INLINE |
          DecoratorFlags.EXTERNAL
        ),
        declaration
      );
      let actual = parent.add(name, element);
      if (actual !== element) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, name
        );
        continue;
      }
      if (element.hasDecorator(DecoratorFlags.INLINE) && !element.is(CommonFlags.CONST)) {
        this.error(
          DiagnosticCode.Decorator_0_is_not_valid_here,
          assert(findDecorator(DecoratorKind.INLINE, decorators)).range, "inline"
        );
      }
      this.maybeRegisterGlobally(element, declaration);
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
  /** A {@link PropertyPrototype}.  */
  PROPERTY_PROTOTYPE,
  /** A {@link Property}. */
  PROPERTY,
  /** A {@link Namespace}. */
  NAMESPACE,
  /** A {@link File}. */
  FILE,
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

var nextElementId = 1;

/** Base class of all program elements. */
export abstract class Element {

  /** Unique element id. */
  id: i32 = nextElementId++;
  /** Parent element. */
  parent: Element;
  /** Common flags indicating specific traits. */
  flags: CommonFlags = CommonFlags.NONE;
  /** Decorator flags indicating annotated traits. */
  decoratorFlags: DecoratorFlags = DecoratorFlags.NONE;
  /** Member elements. */
  members: Map<string,Element> | null = null;

  /** Constructs a new element, linking it to its containing {@link Program}. */
  protected constructor(
    /** Specific element kind. */
    public kind: ElementKind,
    /** Simple name. */
    public name: string,
    /** Internal name referring to this element. */
    public internalName: string,
    /** Containing {@link Program}. */
    public program: Program,
    /** Parent element. */
    parent: Element | null
  ) {
    this.program = program;
    this.name = name;
    this.internalName = internalName;
    if (parent) {
      this.parent = parent;
    } else {
      assert(this instanceof File);
      this.parent = this;
    }
  }

  /** Tests if this element has a specific flag or flags. */
  is(flag: CommonFlags): bool { return (this.flags & flag) == flag; }
  /** Tests if this element has any of the specified flags. */
  isAny(flags: CommonFlags): bool { return (this.flags & flags) != 0; }
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void { this.flags |= flag; }
  /** Tests if this element has a specific decorator flag or flags. */
  hasDecorator(flag: DecoratorFlags): bool { return (this.decoratorFlags & flag) == flag; }

  /** Looks up the element with the specified name within this element. */
  lookupInSelf(name: string): Element | null {
    var members = this.members;
    if (members && members.has(name)) return members.get(name);
    return null;
  }

  /** Looks up the element with the specified name relative to this element. */
  abstract lookup(name: string): Element | null;

  /** Adds an element as a member of this one. Returns the previous element if a duplicate. */
  add(name: string, element: Element): Element {
    var members = this.members;
    if (!members) this.members = members = new Map();
    else if (members.has(name)) {
      let actual = members.get(name)!;
      if (actual.parent === this) return actual;
      // otherwise override inherited
    }
    members.set(name, element);
    if (element.is(CommonFlags.EXPORT) && this.is(CommonFlags.MODULE_EXPORT)) {
      element.set(CommonFlags.MODULE_EXPORT); // propagate
    }
    return element;
  }

  /** Obtains a string representation of this element. */
  toString(): string {
    return "[" + this.id + "] " + ElementKind[this.kind] + ":" + this.internalName;
  }
}

/** A file representing the implicit top-level namespace of a source. */
export class File extends Element {

  /** Source file. */
  source: Source;
  /** File exports. */
  exports: Map<string,Element> | null = null;
  /** File re-exports. */
  exportsStar: File[] | null = null;

  /** Constructs a new file. */
  constructor(
    program: Program,
    source: Source
  ) {
    super(
      ElementKind.FILE,
      source.normalizedPath,
      source.internalPath,
      program,
      null // special case for files
    );
    this.source = source;
    assert(!program.filesByName.has(this.internalName));
    program.filesByName.set(this.internalName, this);
  }

  /* @override */
  add(name: string, element: Element, isImport: bool = false): Element {
    var actual = super.add(name, element);
    if (actual !== element) return actual;

    // register file and module level exports if declared here
    if (element.is(CommonFlags.EXPORT) && !isImport) {
      let actual = this.addExport(element.name, element);
      assert(actual === element); // FIXME: this might clash
    }
    if (element.hasDecorator(DecoratorFlags.GLOBAL)) {
      this.program.addGlobal(name, element);
    }
    return element;
  }

  /* @override */
  lookupInSelf(name: string): Element | null {
    var element = super.lookupInSelf(name);
    if (element) return element;
    var exportsStar = this.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        if (element = exportsStar[i].lookupInSelf(name)) return element;
      }
    }
    return null;
  }

  /* @override */
  lookup(name: string): Element | null {
    var element = this.lookupInSelf(name);
    if (element) return element;
    return this.program.lookupGlobal(name);
  }

  /** Adds an element as an export of this file. Returns the previous element if a duplicate. */
  addExport(name: string, element: Element): Element {
    var exports = this.exports;
    if (!exports) this.exports = exports = new Map();
    else if (exports.has(name)) return <Element>exports.get(name);
    exports.set(name, element);
    if (this.source.isLibrary) this.program.addGlobal(name, element);
    return element;
  }

  /** Adds a re-export of another file to this file. */
  addExportStar(file: File): void {
    var exportsStar = this.exportsStar;
    if (!exportsStar) this.exportsStar = exportsStar = [];
    else if (exportsStar.includes(file)) return;
    exportsStar.push(file);
  }

  /** Looks up the export of the specified name. */
  lookupExport(name: string): Element | null {
    var exports = this.exports;
    if (exports && exports.has(name)) return <Element>exports.get(name);
    var exportsStar = this.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        let element = exportsStar[i].lookupExport(name);
        if (element) return element;
      }
    }
    return null;
  }

  /** Creates an imported namespace from this file. */
  asImportedNamespace(name: string, parent: Element): Namespace {
    var ns = new Namespace(
      name,
      parent,
      this.program.makeNativeNamespaceDeclaration(name)
    );
    var exports = this.exports;
    if (exports) {
      for (let [memberName, member] of exports) {
        ns.add(memberName, member);
      }
    }
    return ns;
  }
}

/** A namespace that differs from a file in being user-declared with a name. */
export class Namespace extends Element {

  /** Declaration reference. */
  declaration: NamespaceDeclaration;

  /** Constructs a new namespace. */
  constructor(
    name: string,
    parent: Element,
    declaration: NamespaceDeclaration
  ) {
    super(
      ElementKind.NAMESPACE,
      name,
      mangleInternalName(name, parent, false),
      parent.program,
      parent
    );
    this.declaration = declaration;
    this.flags = declaration.flags;
    parent.program.registerPrototypeElement(this, declaration);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.lookupInSelf(name)
        || this.parent.lookup(name);
  }
}

/** An enum. */
export class Enum extends Element {

  /** Declaration reference. */
  declaration: EnumDeclaration;

  /** Constructs a new enum. */
  constructor(
    name: string,
    parent: Element,
    declaration: EnumDeclaration,
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.ENUM,
      name,
      mangleInternalName(name, parent, false),
      parent.program,
      parent
    );
    this.declaration = declaration;
    this.flags = declaration.flags;
    this.decoratorFlags = decoratorFlags;
    this.program.registerPrototypeElement(this, declaration);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.lookupInSelf(name)
        || this.parent.lookup(name);
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
    name: string,
    parent: Enum,
    declaration: EnumValueDeclaration,
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.ENUMVALUE,
      name,
      mangleInternalName(name, parent, false),
      parent.program,
      parent
    );
    this.declaration = declaration;
    this.decoratorFlags = decoratorFlags;
    this.program.registerPrototypeElement(this, declaration);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

export const enum ConstantValueKind {
  NONE,
  INTEGER,
  FLOAT
}

/** Base class of all variable-like elements. */
export abstract class VariableLikeElement extends Element {

  /** Declaration reference. */
  declaration: VariableLikeDeclarationStatement;
  /** Variable type. */
  type: Type = Type.void; // as long as not is(RESOLVED)
  /** Constant value kind. */
  constantValueKind: ConstantValueKind = ConstantValueKind.NONE;
  /** Constant integer value, if applicable. */
  constantIntegerValue: I64;
  /** Constant float value, if applicable. */
  constantFloatValue: f64;

  protected constructor(
    kind: ElementKind,
    name: string,
    parent: Element,
    declaration: VariableLikeDeclarationStatement = parent.program.makeNativeVariableDeclaration(name)
  ) {
    super(
      kind,
      name,
      mangleInternalName(name, parent, false),
      parent.program,
      parent
    );
    this.declaration = declaration;
    this.flags = declaration.flags;
  }

  withConstantIntegerValue(value: I64, type: Type): this {
    assert(type.is(TypeFlags.INTEGER));
    this.type = type;
    this.constantValueKind = ConstantValueKind.INTEGER;
    this.constantIntegerValue = value;
    this.set(CommonFlags.CONST | CommonFlags.INLINED | CommonFlags.RESOLVED);
    return this;
  }

  withConstantFloatValue(value: f64, type: Type): this {
    assert(type.is(TypeFlags.FLOAT));
    this.type = type;
    this.constantValueKind = ConstantValueKind.FLOAT;
    this.constantFloatValue = value;
    this.set(CommonFlags.CONST | CommonFlags.INLINED | CommonFlags.RESOLVED);
    return this;
  }

  /** @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** A global variable. */
export class Global extends VariableLikeElement {

  constructor(
    name: string,
    parent: Element,
    decoratorFlags: DecoratorFlags,
    public declaration: VariableLikeDeclarationStatement = parent.program.makeNativeVariableDeclaration(name)
  ) {
    super(
      ElementKind.GLOBAL,
      name,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
    this.program.registerPrototypeElement(this, declaration);
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

/** A local variable. */
export class Local extends VariableLikeElement {

  /** Local index. */
  index: i32;

  constructor(
    name: string,
    index: i32,
    type: Type,
    parent: Function,
    declaration: VariableLikeDeclarationStatement = parent.program.makeNativeVariableDeclaration(name)
  ) {
    super(
      ElementKind.LOCAL,
      name,
      parent,
      declaration
    );
    this.index = index;
    assert(type != Type.void);
    this.type = type;
    this.set(CommonFlags.RESOLVED);
    // does not register
  }
}

/** A yet unresolved function prototype. */
export class FunctionPrototype extends Element {

  /** Declaration reference. */
  declaration: FunctionDeclaration;
  /** Operator kind, if an overload. */
  operatorKind: OperatorKind = OperatorKind.INVALID;
  /** Already resolved instances. */
  instances: Map<string,Function> | null = null;
  /** Tests if this prototype is bound to a class. */
  get isBound(): bool {
    var parent = this.parent;
    return parent.kind == ElementKind.CLASS
        || parent.kind == ElementKind.PROPERTY_PROTOTYPE && parent.parent.kind == ElementKind.CLASS;
  }

  /** Clones of this prototype that are bounds to specific classes. */
  private boundPrototypes: Map<Class,FunctionPrototype> | null = null;

  /** Constructs a new function prototype. */
  constructor(
    name: string,
    parent: Element,
    declaration: FunctionDeclaration,
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.FUNCTION_PROTOTYPE,
      name,
      mangleInternalName(name, parent, declaration.is(CommonFlags.INSTANCE)),
      parent.program,
      parent
    );
    this.declaration = declaration;
    this.flags = declaration.flags;
    this.decoratorFlags = decoratorFlags;
    // Functions can be standalone, e.g. top level or static, or be bound to a
    // concrete class when an instance method, which is determined by their parent.
    // Bound functions are clones of the original prototype, so exclude them here:
    if (!this.isBound) this.program.registerPrototypeElement(this, declaration);
  }

  /** Creates a clone of this prototype that is bound to a concrete class instead. */
  toBound(classInstance: Class): FunctionPrototype {
    assert(this.is(CommonFlags.INSTANCE));
    assert(!this.isBound);
    var boundPrototypes = this.boundPrototypes;
    if (!boundPrototypes) this.boundPrototypes = boundPrototypes = new Map();
    else if (boundPrototypes.has(classInstance)) return boundPrototypes.get(classInstance)!;
    var bound = new FunctionPrototype(
      this.name,
      classInstance, // !
      this.declaration,
      this.decoratorFlags
    );
    bound.flags = this.flags;
    bound.operatorKind = this.operatorKind;
    // NOTE: this.instances is per class respectively once for static
    boundPrototypes.set(classInstance, bound);
    return bound;
  }

  getResolvedInstance(instanceKey: string): Function | null {
    var instances = this.instances;
    if (instances && instances.has(instanceKey)) return <Function>instances.get(instanceKey);
    return null;
  }

  setResolvedInstance(instanceKey: string, instance: Function): void {
    var instances = this.instances;
    if (!instances) this.instances = instances = new Map();
    else assert(!instances.has(instanceKey));
    instances.set(instanceKey, instance);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** A resolved function. */
export class Function extends Element {

  /** Function prototype. */
  prototype: FunctionPrototype;
  /** Function signature. */
  signature: Signature;
  /** Map of locals by name. */
  localsByName: Map<string,Local> = new Map();
  /** Array of locals by index. */
  localsByIndex: Local[] = [];
  /** List of additional non-parameter locals. */
  additionalLocals: Type[] = [];
  /** Contextual type arguments. */
  contextualTypeArguments: Map<string,Type> | null;
  /** Default control flow. */
  flow: Flow;
  /** Remembered debug locations. */
  debugLocations: Range[] = [];
  /** Function reference, if compiled. */
  ref: FunctionRef = 0;
  /** Function table index, if any. */
  functionTableIndex: i32 = -1;
  /** Trampoline function for calling with omitted arguments. */
  trampoline: Function | null = null;

  nextInlineId: i32 = 0;

  /** Constructs a new concrete function. */
  constructor(
    nameInclTypeParameters: string,
    prototype: FunctionPrototype,
    signature: Signature, // pre-resolved
    contextualTypeArguments: Map<string,Type> | null = null
  ) {
    super(
      ElementKind.FUNCTION,
      nameInclTypeParameters,
      mangleInternalName(nameInclTypeParameters, prototype.parent, prototype.is(CommonFlags.INSTANCE)),
      prototype.program,
      prototype.parent
    );
    this.prototype = prototype;
    this.signature = signature;
    this.flags = prototype.flags;
    this.decoratorFlags = prototype.decoratorFlags;
    this.contextualTypeArguments = contextualTypeArguments;
    if (!prototype.is(CommonFlags.AMBIENT)) {
      let localIndex = 0;
      if (this.is(CommonFlags.INSTANCE)) {
        let local = new Local(
          "this",
          localIndex++,
          assert(signature.thisType),
          this
        );
        this.localsByName.set("this", local);
        this.localsByIndex[local.index] = local;
      }
      let parameterTypes = signature.parameterTypes;
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        let parameterType = parameterTypes[i];
        let parameterName = signature.getParameterName(i);
        let local = new Local(
          parameterName,
          localIndex++,
          parameterType,
          this
        );
        this.localsByName.set(parameterName, local);
        this.localsByIndex[local.index] = local;
      }
    }
    this.flow = Flow.create(this);
    this.program.registerConcreteElement(this);
  }

  /** Adds a local of the specified type, with an optional name. */
  addLocal(type: Type, name: string | null = null, declaration: VariableDeclaration | null = null): Local {
    // if it has a name, check previously as this method will throw otherwise
    var localIndex = this.signature.parameterTypes.length + this.additionalLocals.length;
    if (this.is(CommonFlags.INSTANCE)) ++localIndex;
    var localName = name !== null
      ? name
      : "var$" + localIndex.toString();
    var local = new Local(
      localName,
      localIndex,
      type,
      this,
      declaration || this.program.makeNativeVariableDeclaration(localName)
    );
    if (name) {
      if (this.localsByName.has(name)) throw new Error("duplicate local name");
      this.localsByName.set(name, local);
    }
    this.localsByIndex[local.index] = local;
    this.additionalLocals.push(type);
    return local;
  }

  /* @override */
  lookup(name: string): Element | null {
    var locals = this.localsByName;
    if (locals.has(name)) return locals.get(name);
    return this.parent.lookup(name);
  }

  // used by flows to keep track of temporary locals
  tempI32s: Local[] | null = null;
  tempI64s: Local[] | null = null;
  tempF32s: Local[] | null = null;
  tempF64s: Local[] | null = null;

  // used by flows to keep track of break labels
  nextBreakId: i32 = 0;
  breakStack: i32[] | null = null;
  breakLabel: string | null = null;

  /** Finalizes the function once compiled, releasing no longer needed resources. */
  finalize(module: Module, ref: FunctionRef): void {
    this.ref = ref;
    assert(!this.breakStack || !this.breakStack.length); // internal error
    this.breakStack = null;
    this.breakLabel = null;
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
}

/** A resolved function target, that is a function called indirectly by an index and signature. */
export class FunctionTarget extends Element {

  kind = ElementKind.FUNCTION_TARGET;

  /** Underlying signature. */
  signature: Signature;
  /** Function type. */
  type: Type;

  /** Constructs a new function target. */
  constructor(
    signature: Signature,
    program: Program,
    __s: string = "" // FIXME: current TS limitation workaround, but a fix seems underway
  ) {
    super(
      ElementKind.FUNCTION_TARGET,
      __s = "sig:" + signature.toSignatureString(),
      __s,
      program,
      program.nativeFile
    );
    this.signature = signature;
    this.type = Type.u32.asFunction(signature);
  }

  /* @override */
  lookup(name: string): Element | null {
    return null;
  }
}

/** A yet unresolved instance field prototype. */
export class FieldPrototype extends Element {

  /** Declaration reference. */
  declaration: FieldDeclaration;

  /** Constructs a new field prototype. */
  constructor(
    name: string,
    internalName: string,
    parent: ClassPrototype,
    declaration: FieldDeclaration,
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.FIELD_PROTOTYPE,
      name,
      internalName,
      parent.program,
      parent
    );
    this.declaration = declaration;
    this.flags = declaration.flags;
    this.decoratorFlags = decoratorFlags;
    this.program.registerPrototypeElement(this, declaration);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** A resolved instance field. */
export class Field extends VariableLikeElement {

  /** Field prototype reference. */
  prototype: FieldPrototype;
  /** Field memory offset, if an instance field. */
  memoryOffset: i32 = -1;

  /** Constructs a new field. */
  constructor(
    prototype: FieldPrototype,
    parent: Class,
    type: Type,
    declaration: FieldDeclaration
  ) {
    super(
      ElementKind.FIELD,
      prototype.name,
      parent,
      declaration
    );
    this.prototype = prototype;
    this.flags = prototype.flags;
    assert(type != Type.void);
    this.type = type;
    this.set(CommonFlags.RESOLVED);
    this.program.registerConcreteElement(this);
  }
}

/** A property comprised of a getter and a setter function. */
export class PropertyPrototype extends Element {

  /** Getter prototype. */
  getterPrototype: FunctionPrototype | null = null;
  /** Setter prototype. */
  setterPrototype: FunctionPrototype | null = null;

  /** Constructs a new property prototype. */
  constructor(
    name: string,
    parent: Element,
    isInstance: bool
  ) {
    super(
      ElementKind.PROPERTY_PROTOTYPE,
      name,
      mangleInternalName(name, parent, isInstance),
      parent.program,
      parent
    );
    if (isInstance) this.set(CommonFlags.INSTANCE);
    this.program.registerPrototypeElement(this, null);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** A resolved property. */
export class Property extends VariableLikeElement {

  /** Prototype reference. */
  prototype: PropertyPrototype;
  /** Getter instance. */
  getterInstance: Function | null = null;
  /** Setter instance. */
  setterInstance: Function | null = null;

  /** Constructs a new property prototype. */
  constructor(
    prototype: PropertyPrototype,
    parent: Element
  ) {
    super(
      ElementKind.PROPERTY,
      prototype.name,
      parent,
      prototype.program.makeNativeVariableDeclaration(
        prototype.name,
        prototype.is(CommonFlags.INSTANCE)
          ? CommonFlags.INSTANCE
          : CommonFlags.NONE
      )
    );
    this.prototype = prototype;
    this.program.registerConcreteElement(this);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** A yet unresolved class prototype. */
export class ClassPrototype extends Element {

  kind = ElementKind.CLASS_PROTOTYPE;

  /** Declaration reference. */
  declaration: ClassDeclaration;
  /** Instance member prototypes. */
  instanceMembers: Map<string,Element> | null = null;
  /** Base class prototype, if applicable. */
  basePrototype: ClassPrototype | null = null; // set in Program#initialize
  /** Constructor prototype. */
  constructorPrototype: FunctionPrototype | null = null;
  /** Operator overload prototypes. */
  overloadPrototypes: Map<OperatorKind, FunctionPrototype> = new Map();
  /** Already resolved instances. */
  instances: Map<string,Class> | null = null;

  constructor(
    name: string,
    parent: Element,
    declaration: ClassDeclaration,
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE,
    _isInterface: bool = false
  ) {
    super(
      _isInterface ? ElementKind.INTERFACE_PROTOTYPE : ElementKind.CLASS_PROTOTYPE,
      name,
      mangleInternalName(name, parent, declaration.is(CommonFlags.INSTANCE)),
      parent.program,
      parent
    );
    this.declaration = declaration;
    this.flags = declaration.flags;
    this.decoratorFlags = decoratorFlags;
    this.program.registerPrototypeElement(this, declaration);
  }

  /** Tests if this prototype extends the specified. */
  extends(basePtototype: ClassPrototype | null): bool {
    var current: ClassPrototype | null = this;
    do {
      if (current === basePtototype) return true;
    } while (current = current.basePrototype);
    return false;
  }

  /** Adds an element as an instance member of this one. Returns the previous element if a duplicate. */
  addInstance(name: string, element: Element, declaration: DeclarationStatement): Element {
    var members = this.instanceMembers;
    if (!members) this.instanceMembers = members = new Map();
    else if (members.has(name)) return <Element>members.get(name);
    members.set(name, element);
    if (element.is(CommonFlags.EXPORT) && this.is(CommonFlags.MODULE_EXPORT)) {
      element.set(CommonFlags.MODULE_EXPORT); // propagate
    }
    return element;
  }

  getResolvedInstance(instanceKey: string): Class | null {
    var instances = this.instances;
    if (instances && instances.has(instanceKey)) return <Class>instances.get(instanceKey);
    return null;
  }

  setResolvedInstance(instanceKey: string, instance: Class): void {
    var instances = this.instances;
    if (!instances) this.instances = instances = new Map();
    else assert(!instances.has(instanceKey));
    instances.set(instanceKey, instance);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** A resolved class. */
export class Class extends Element {

  /** Class prototype. */
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
    nameInclTypeParameters: string,
    prototype: ClassPrototype,
    typeArguments: Type[] | null = null,
    base: Class | null = null,
    _isInstance: bool = false
  ) {
    super(
      _isInstance ? ElementKind.INTERFACE : ElementKind.CLASS,
      nameInclTypeParameters,
      mangleInternalName(nameInclTypeParameters, prototype.parent, prototype.is(CommonFlags.INSTANCE)),
      prototype.program,
      prototype.parent
    );
    this.prototype = prototype;
    this.flags = prototype.flags | CommonFlags.RESOLVED;
    this.decoratorFlags = prototype.decoratorFlags;
    this.typeArguments = typeArguments;
    this.type = prototype.program.options.usizeType.asClass(this);
    this.base = base;

    // inherit static members and contextual type arguments from base class
    if (base) {
      let inheritedTypeArguments = base.contextualTypeArguments;
      if (inheritedTypeArguments) {
        let contextualTypeArguments = this.contextualTypeArguments;
        for (let [baseName, baseType] of inheritedTypeArguments) {
          if (!contextualTypeArguments) this.contextualTypeArguments = contextualTypeArguments = new Map();
          contextualTypeArguments.set(baseName, baseType);
        }
      }
    }

    // apply instance-specific contextual type arguments
    var declaration = prototype.declaration;
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

    this.program.registerConcreteElement(this);
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

  lookupField(name: string, shouldReadonly: boolean = false): Element | null {
    if (this.members == null) return null;
    var member = this.members.get(name);
    if (
      member == null || member.kind != ElementKind.FIELD ||
      (shouldReadonly && !member.is(CommonFlags.READONLY))
    ) return null;
    return member;
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }

  offsetof(fieldName: string): u32 {
    var members = assert(this.members);
    assert(members.has(fieldName));
    var field = <Element>members.get(fieldName);
    assert(field.kind == ElementKind.FIELD);
    return (<Field>field).memoryOffset;
  }
}

/** A yet unresolved interface. */
export class InterfacePrototype extends ClassPrototype { // FIXME

  /** Declaration reference. */
  declaration: InterfaceDeclaration; // more specific

  /** Constructs a new interface prototype. */
  constructor(
    name: string,
    parent: Element,
    declaration: InterfaceDeclaration,
    decoratorFlags: DecoratorFlags
  ) {
    super(
      name,
      parent,
      declaration,
      decoratorFlags,
      true
    );
  }
}

/** A resolved interface. */
export class Interface extends Class { // FIXME

  /** Constructs a new interface. */
  constructor(
    nameInclTypeParameters: string,
    prototype: InterfacePrototype,
    typeArguments: Type[] = [],
    base: Interface | null = null
  ) {
    super(
      nameInclTypeParameters,
      prototype,
      typeArguments,
      base,
      true
    );
  }
}

/** Control flow flags indicating specific conditions. */
export const enum FlowFlags {
  /** No specific conditions. */
  NONE = 0,

  // categorical

  /** This flow returns. */
  RETURNS = 1 << 0,
  /** This flow returns a wrapped value. */
  RETURNS_WRAPPED = 1 << 1,
  /** This flow throws. */
  THROWS = 1 << 2,
  /** This flow breaks. */
  BREAKS = 1 << 3,
  /** This flow continues. */
  CONTINUES = 1 << 4,
  /** This flow allocates. Constructors only. */
  ALLOCATES = 1 << 5,
  /** This flow calls super. Constructors only. */
  CALLS_SUPER = 1 << 6,

  // conditional

  /** This flow conditionally returns in a child flow. */
  CONDITIONALLY_RETURNS = 1 << 7,
  /** This flow conditionally throws in a child flow. */
  CONDITIONALLY_THROWS = 1 << 8,
  /** This flow conditionally breaks in a child flow. */
  CONDITIONALLY_BREAKS = 1 << 9,
  /** This flow conditionally continues in a child flow. */
  CONDITIONALLY_CONTINUES = 1 << 10,
  /** This flow conditionally allocates in a child flow. Constructors only. */
  CONDITIONALLY_ALLOCATES = 1 << 11,

  // special

  /** This is an inlining flow. */
  INLINE_CONTEXT = 1 << 12,
  /** This is a flow with explicitly disabled bounds checking. */
  UNCHECKED_CONTEXT = 1 << 13,

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
                  | FlowFlags.ALLOCATES
                  | FlowFlags.CALLS_SUPER,

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
  parentFunction: Function;
  /** The label we break to when encountering a continue statement. */
  continueLabel: string | null;
  /** The label we break to when encountering a break statement. */
  breakLabel: string | null;
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
  /** Function being inlined, when inlining. */
  inlineFunction: Function | null;
  /** The label we break to when encountering a return statement, when inlining. */
  inlineReturnLabel: string | null;

  /** Creates the parent flow of the specified function. */
  static create(parentFunction: Function): Flow {
    var flow = new Flow();
    flow.parent = null;
    flow.flags = FlowFlags.NONE;
    flow.parentFunction = parentFunction;
    flow.continueLabel = null;
    flow.breakLabel = null;
    flow.returnType = parentFunction.signature.returnType;
    flow.contextualTypeArguments = parentFunction.contextualTypeArguments;
    flow.wrappedLocals = i64_new(0);
    flow.wrappedLocalsExt = null;
    flow.inlineFunction = null;
    flow.inlineReturnLabel = null;
    return flow;
  }

  /** Creates an inline flow within `currentFunction`. */
  static createInline(parentFunction: Function, inlineFunction: Function): Flow {
    var flow = Flow.create(parentFunction);
    flow.set(FlowFlags.INLINE_CONTEXT);
    flow.inlineFunction = inlineFunction;
    flow.inlineReturnLabel = inlineFunction.internalName + "|inlined." + (inlineFunction.nextInlineId++).toString(10);
    flow.returnType = inlineFunction.signature.returnType;
    flow.contextualTypeArguments = inlineFunction.contextualTypeArguments;
    return flow;
  }

  private constructor() { }

  /** Gets the actual function being compiled, The inlined function when inlining, otherwise the parent function. */
  get actualFunction(): Function {
    return this.inlineFunction || this.parentFunction;
  }

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
    branch.parentFunction = this.parentFunction;
    branch.continueLabel = this.continueLabel;
    branch.breakLabel = this.breakLabel;
    branch.returnType = this.returnType;
    branch.contextualTypeArguments = this.contextualTypeArguments;
    branch.wrappedLocals = this.wrappedLocals;
    branch.wrappedLocalsExt = this.wrappedLocalsExt ? this.wrappedLocalsExt.slice() : null;
    branch.inlineFunction = this.inlineFunction;
    branch.inlineReturnLabel = this.inlineReturnLabel;
    return branch;
  }

  /** Gets a free temporary local of the specified type. */
  getTempLocal(type: Type, wrapped: bool = false): Local {
    var parentFunction = this.parentFunction;
    var temps: Local[] | null;
    switch (type.toNativeType()) {
      case NativeType.I32: { temps = parentFunction.tempI32s; break; }
      case NativeType.I64: { temps = parentFunction.tempI64s; break; }
      case NativeType.F32: { temps = parentFunction.tempF32s; break; }
      case NativeType.F64: { temps = parentFunction.tempF64s; break; }
      default: throw new Error("concrete type expected");
    }
    var local: Local;
    if (temps && temps.length) {
      local = temps.pop();
      local.type = type;
      local.flags = CommonFlags.NONE;
    } else {
      local = parentFunction.addLocal(type);
    }
    if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) this.setLocalWrapped(local.index, wrapped);
    return local;
  }

  /** Frees the temporary local for reuse. */
  freeTempLocal(local: Local): void {
    if (local.is(CommonFlags.INLINED)) return;
    assert(local.index >= 0);
    var parentFunction = this.parentFunction;
    var temps: Local[];
    assert(local.type != null); // internal error
    switch ((<Type>local.type).toNativeType()) {
      case NativeType.I32: {
        temps = parentFunction.tempI32s || (parentFunction.tempI32s = []);
        break;
      }
      case NativeType.I64: {
        temps = parentFunction.tempI64s || (parentFunction.tempI64s = []);
        break;
      }
      case NativeType.F32: {
        temps = parentFunction.tempF32s || (parentFunction.tempF32s = []);
        break;
      }
      case NativeType.F64: {
        temps = parentFunction.tempF64s || (parentFunction.tempF64s = []);
        break;
      }
      default: throw new Error("concrete type expected");
    }
    assert(local.index >= 0);
    temps.push(local);
  }

  /** Gets and immediately frees a temporary local of the specified type. */
  getAndFreeTempLocal(type: Type, wrapped: bool): Local {
    var parentFunction = this.parentFunction;
    var temps: Local[];
    switch (type.toNativeType()) {
      case NativeType.I32: {
        temps = parentFunction.tempI32s || (parentFunction.tempI32s = []);
        break;
      }
      case NativeType.I64: {
        temps = parentFunction.tempI64s || (parentFunction.tempI64s = []);
        break;
      }
      case NativeType.F32: {
        temps = parentFunction.tempF32s || (parentFunction.tempF32s = []);
        break;
      }
      case NativeType.F64: {
        temps = parentFunction.tempF64s || (parentFunction.tempF64s = []);
        break;
      }
      default: throw new Error("concrete type expected");
    }
    var local: Local;
    if (temps.length) {
      local = temps[temps.length - 1];
      local.type = type;
    } else {
      local = parentFunction.addLocal(type);
      temps.push(local);
    }
    if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) this.setLocalWrapped(local.index, wrapped);
    return local;
  }

  /** Adds a new scoped local of the specified name. */
  addScopedLocal(name: string, type: Type, wrapped: bool, reportNode: Node | null = null): Local {
    var scopedLocal = this.getTempLocal(type, false);
    if (!this.scopedLocals) this.scopedLocals = new Map();
    else {
      let existingLocal = this.scopedLocals.get(name);
      if (existingLocal) {
        if (reportNode) {
          this.parentFunction.program.error(
            DiagnosticCode.Duplicate_identifier_0,
            reportNode.range
          );
        }
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

  /** Adds a new scoped alias for the specified local. For example `super` aliased to the `this` local. */
  addScopedAlias(name: string, type: Type, index: i32, reportNode: Node | null = null): Local {
    if (!this.scopedLocals) this.scopedLocals = new Map();
    else {
      let existingLocal = this.scopedLocals.get(name);
      if (existingLocal) {
        if (reportNode) {
          this.parentFunction.program.error(
            DiagnosticCode.Duplicate_identifier_0,
            reportNode.range
          );
        }
        return existingLocal;
      }
    }
    assert(index < this.parentFunction.localsByIndex.length);
    var scopedAlias = new Local(
      name,
      index,
      type,
      this.parentFunction
    );
    // not flagged as SCOPED as it must not be free'd when the flow is finalized
    this.scopedLocals.set(name, scopedAlias);
    return scopedAlias;
  }

  /** Frees this flow's scoped variables and returns its parent flow. */
  freeScopedLocals(): void {
    if (this.scopedLocals) {
      for (let scopedLocal of this.scopedLocals.values()) {
        if (scopedLocal.is(CommonFlags.SCOPED)) { // otherwise an alias
          this.freeTempLocal(scopedLocal);
        }
      }
      this.scopedLocals = null;
    }
  }

  /** Looks up the local of the specified name in the current scope. */
  lookupLocal(name: string): Local | null {
    var current: Flow | null = this;
    var scope: Map<String,Local> | null;
    do if ((scope = current.scopedLocals) && (scope.has(name))) return scope.get(name);
    while (current = current.parent);
    return this.parentFunction.localsByName.get(name);
  }

  /** Looks up the element with the specified name relative to the scope of this flow. */
  lookup(name: string): Element | null {
    var element = this.lookupLocal(name);
    if (element) return element;
    return this.actualFunction.lookup(name);
  }

  /** Tests if the value of the local at the specified index is considered wrapped. */
  isLocalWrapped(index: i32): bool {
    if (index < 0) return true; // inlined constant
    if (index < 64) return bitsetIs(this.wrappedLocals, index);
    var ext = this.wrappedLocalsExt;
    var i = ((index - 64) / 64) | 0;
    if (!(ext && i < ext.length)) return false;
    return bitsetIs(ext[i], index - (i + 1) * 64);
  }

  /** Sets if the value of the local at the specified index is considered wrapped. */
  setLocalWrapped(index: i32, wrapped: bool): void {
    if (index < 0) return; // inlined constant
    if (index < 64) {
      this.wrappedLocals = bitsetSet(this.wrappedLocals, index, wrapped);
      return;
    }
    var ext = this.wrappedLocalsExt;
    var i = ((index - 64) / 64) | 0;
    if (!ext) {
      this.wrappedLocalsExt = ext = new Array(i + 1);
      for (let j = 0; j <= i; ++j) ext[j] = i64_new(0);
    } else {
      while (ext.length <= i) ext.push(i64_new(0));
    }
    ext[i] = bitsetSet(ext[i], index - (i + 1) * 64, wrapped);
  }

  /** Pushes a new break label to the stack, for example when entering a loop that one can `break` from. */
  pushBreakLabel(): string {
    var parentFunction = this.parentFunction;
    var id = parentFunction.nextBreakId++;
    var stack = parentFunction.breakStack;
    if (!stack) parentFunction.breakStack = [ id ];
    else stack.push(id);
    return parentFunction.breakLabel = id.toString(10);
  }

  /** Pops the most recent break label from the stack. */
  popBreakLabel(): void {
    var parentFunction = this.parentFunction;
    var stack = assert(parentFunction.breakStack);
    var length = assert(stack.length);
    stack.pop();
    if (length > 1) {
      parentFunction.breakLabel = stack[length - 2].toString(10);
    } else {
      parentFunction.breakLabel = null;
      parentFunction.breakStack = null;
    }
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
        let local = this.parentFunction.localsByIndex[getGetLocalIndex(expr)];
        return !this.isLocalWrapped(local.index)
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
        let global = assert(this.parentFunction.program.elementsByName.get(assert(getGetGlobalName(expr))));
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
        let program = this.parentFunction.program;
        let instance = assert(program.instancesByName.get(assert(getCallTarget(expr))));
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
}

/** Tests if a conversion from one type to another can technically overflow. */
function canConversionOverflow(fromType: Type, toType: Type): bool {
  return !fromType.is(TypeFlags.INTEGER) // non-i32 locals or returns
      || fromType.size > toType.size
      || fromType.is(TypeFlags.SIGNED) != toType.is(TypeFlags.SIGNED);
}

/** Mangles the internal name of an element with the specified name that is a child of the given parent. */
export function mangleInternalName(name: string, parent: Element, isInstance: bool, asGlobal: bool = false): string {
  switch (parent.kind) {
    case ElementKind.FILE: {
      if (asGlobal) return name;
      return parent.internalName + PATH_DELIMITER + name;
    }
    case ElementKind.FUNCTION: {
      assert(!isInstance);
      return mangleInternalName(parent.name, parent.parent, parent.is(CommonFlags.INSTANCE), asGlobal)
           + INNER_DELIMITER + name;
    }
    default: {
      return mangleInternalName(parent.name, parent.parent, parent.is(CommonFlags.INSTANCE), asGlobal)
           + (isInstance ? INSTANCE_DELIMITER : STATIC_DELIMITER) + name;
    }
  }
}
