/**
 * AssemblyScript's intermediate representation describing a program's elements.
 * @module program
 *//***/

import {
  CommonFlags,
  PATH_DELIMITER,
  STATIC_DELIMITER,
  INSTANCE_DELIMITER,
  GETTER_PREFIX,
  SETTER_PREFIX,
  INNER_DELIMITER,
  LIBRARY_SUBST,
  INDEX_SUFFIX,
  CommonNames,
  Feature,
  Target
} from "./common";

import {
  Options
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
  Token,
  Node,
  NodeKind,
  Source,
  SourceKind,
  Range,
  DecoratorNode,
  DecoratorKind,
  TypeParameterNode,
  TypeNode,
  NamedTypeNode,
  FunctionTypeNode,
  ArrowKind,

  Expression,
  IdentifierExpression,
  LiteralExpression,
  LiteralKind,
  StringLiteralExpression,

  Statement,
  ClassDeclaration,
  DeclarationStatement,
  EnumDeclaration,
  EnumValueDeclaration,
  ExportMember,
  ExportDefaultStatement,
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
  VariableStatement
} from "./ast";

import {
  Module,
  FunctionRef
} from "./module";

import {
  CharCode,
  writeI8,
  writeI16,
  writeI32,
  writeF32,
  writeF64
} from "./util";

import {
  Resolver
} from "./resolver";

import {
  Flow
} from "./flow";

import {
  Parser
} from "./parser";

/** Represents a yet unresolved `import`. */
class QueuedImport {
  constructor(
    /** File being imported into. */
    public localFile: File,
    /** Identifier within the local file. */
    public localIdentifier: IdentifierExpression,
    /** Identifier within the other file. Is an `import *` if not set. */
    public foreignIdentifier: IdentifierExpression | null,
    /** Path to the other file. */
    public foreignPath: string,
    /** Alternative path to the other file. */
    public foreignPathAlt: string
  ) {}
}

/** Represents a yet unresolved `export`. */
class QueuedExport {
  constructor(
    /** Identifier within the local file. */
    public localIdentifier: IdentifierExpression,
    /** Identifier within the other file. */
    public foreignIdentifier: IdentifierExpression,
    /** Path to the other file if a re-export. */
    public foreignPath: string | null,
    /** Alternative path to the other file if a re-export. */
    public foreignPathAlt: string | null
  ) {}
}

/** Represents a yet unresolved `export *`. */
class QueuedExportStar {
  // stored in a map with localFile as the key
  constructor(
    /** Path to the other file. */
    public foreignPath: string,
    /** Alternative path to the other file. */
    public foreignPathAlt: string,
    /** Reference to the path literal for reporting. */
    public pathLiteral: StringLiteralExpression
  ) {}
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

export namespace OperatorKind {

  /** Returns the operator kind represented by the specified decorator and string argument. */
  export function fromDecorator(decoratorKind: DecoratorKind, arg: string): OperatorKind {
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

  /** Converts a binary operator token to the respective operator kind. */
  export function fromBinaryToken(token: Token): OperatorKind {
    switch (token) {
      case Token.PLUS:
      case Token.PLUS_EQUALS: return OperatorKind.ADD;
      case Token.MINUS:
      case Token.MINUS_EQUALS: return OperatorKind.SUB;
      case Token.ASTERISK:
      case Token.ASTERISK_EQUALS: return OperatorKind.MUL;
      case Token.SLASH:
      case Token.SLASH_EQUALS: return OperatorKind.DIV;
      case Token.PERCENT:
      case Token.PERCENT_EQUALS: return OperatorKind.REM;
      case Token.ASTERISK_ASTERISK:
      case Token.ASTERISK_ASTERISK_EQUALS: return OperatorKind.POW;
      case Token.AMPERSAND:
      case Token.AMPERSAND_EQUALS: return OperatorKind.BITWISE_AND;
      case Token.BAR:
      case Token.BAR_EQUALS: return OperatorKind.BITWISE_OR;
      case Token.CARET:
      case Token.CARET_EQUALS: return OperatorKind.BITWISE_XOR;
      case Token.LESSTHAN_LESSTHAN:
      case Token.LESSTHAN_LESSTHAN_EQUALS: return OperatorKind.BITWISE_SHL;
      case Token.GREATERTHAN_GREATERTHAN:
      case Token.GREATERTHAN_GREATERTHAN_EQUALS: return OperatorKind.BITWISE_SHR;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN:
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS: return OperatorKind.BITWISE_SHR_U;
      case Token.EQUALS_EQUALS: return OperatorKind.EQ;
      case Token.EXCLAMATION_EQUALS: return OperatorKind.NE;
      case Token.GREATERTHAN: return OperatorKind.GT;
      case Token.GREATERTHAN_EQUALS: return OperatorKind.GE;
      case Token.LESSTHAN: return OperatorKind.LT;
      case Token.LESSTHAN_EQUALS: return OperatorKind.LE;
    }
    return OperatorKind.INVALID;
  }

  /** Converts a unary prefix operator token to the respective operator kind. */
  export function fromUnaryPrefixToken(token: Token): OperatorKind {
    switch (token) {
      case Token.PLUS: return OperatorKind.PLUS;
      case Token.MINUS: return OperatorKind.MINUS;
      case Token.EXCLAMATION: return OperatorKind.NOT;
      case Token.TILDE: return OperatorKind.BITWISE_NOT;
      case Token.PLUS_PLUS: return OperatorKind.PREFIX_INC;
      case Token.MINUS_MINUS: return OperatorKind.PREFIX_DEC;
    }
    return OperatorKind.INVALID;
  }

  /** Converts a unary postfix operator token to the respective operator kind. */
  export function fromUnaryPostfixToken(token: Token): OperatorKind {
    switch (token) {
      case Token.PLUS_PLUS: return OperatorKind.POSTFIX_INC;
      case Token.MINUS_MINUS: return OperatorKind.POSTFIX_DEC;
    }
    return OperatorKind.INVALID;
  }
}

/** Represents an AssemblyScript program. */
export class Program extends DiagnosticEmitter {

  /** Parser instance. */
  parser: Parser;
  /** Resolver instance. */
  resolver: Resolver;
  /** Array of sources. */
  sources: Source[] = [];
  /** Diagnostic offset used where successively obtaining the next diagnostic. */
  diagnosticsOffset: i32 = 0;
  /** Compiler options. */
  options: Options;
  /** Special native code source. */
  nativeSource: Source;
  /** Special native code file. */
  nativeFile: File;

  // lookup maps

  /** Files by unique internal name. */
  filesByName: Map<string,File> = new Map();
  /** Elements by unique internal name in element space. */
  elementsByName: Map<string,Element> = new Map();
  /** Elements by declaration. */
  elementsByDeclaration: Map<DeclarationStatement,DeclaredElement> = new Map();
  /** Element instances by unique internal name. */
  instancesByName: Map<string,Element> = new Map();
  /** Classes wrapping basic types like `i32`. */
  wrapperClasses: Map<Type,Class> = new Map();
  /** Managed classes contained in the program, by id. */
  managedClasses: Map<i32,Class> = new Map();
  /** A set of unique function signatures contained in the program, by id. */
  uniqueSignatures: Signature[] = new Array<Signature>(0);

  // standard references

  /** ArrayBufferView reference. */
  arrayBufferViewInstance: Class;
  /** ArrayBuffer instance reference. */
  arrayBufferInstance: Class;
  /** Array prototype reference. */
  arrayPrototype: ClassPrototype;
  /** Set prototype reference. */
  setPrototype: ClassPrototype;
  /** Map prototype reference. */
  mapPrototype: ClassPrototype;
  /** Fixed array prototype reference. */
  fixedArrayPrototype: ClassPrototype;
  /** Int8Array prototype. */
  i8ArrayPrototype: ClassPrototype;
  /** Int16Array prototype. */
  i16ArrayPrototype: ClassPrototype;
  /** Int32Array prototype. */
  i32ArrayPrototype: ClassPrototype;
  /** Int64Array prototype. */
  i64ArrayPrototype: ClassPrototype;
  /** Uint8Array prototype. */
  u8ArrayPrototype: ClassPrototype;
  /** Uint8ClampedArray prototype. */
  u8ClampedArrayPrototype: ClassPrototype;
  /** Uint16Array prototype. */
  u16ArrayPrototype: ClassPrototype;
  /** Uint32Array prototype. */
  u32ArrayPrototype: ClassPrototype;
  /** Uint64Array prototype. */
  u64ArrayPrototype: ClassPrototype;
  /** Float32Array prototype. */
  f32ArrayPrototype: ClassPrototype;
  /** Float64Array prototype. */
  f64ArrayPrototype: ClassPrototype;
  /** String instance reference. */
  stringInstance: Class;
  /** Abort function reference, if not explicitly disabled. */
  abortInstance: Function | null;

  // runtime references

  /** RT `__alloc(size: usize, id: u32): usize` */
  allocInstance: Function;
  /** RT `__realloc(ptr: usize, newSize: usize): usize` */
  reallocInstance: Function;
  /** RT `__free(ptr: usize): void` */
  freeInstance: Function;
  /** RT `__retain(ptr: usize): usize` */
  retainInstance: Function;
  /** RT `__release(ptr: usize): void` */
  releaseInstance: Function;
  /** RT `__collect(): void` */
  collectInstance: Function;
  /** RT `__visit(ptr: usize, cookie: u32): void` */
  visitInstance: Function;
  /** RT `__typeinfo(id: u32): RTTIFlags` */
  typeinfoInstance: Function;
  /** RT `__instanceof(ptr: usize, superId: u32): bool` */
  instanceofInstance: Function;
  /** RT `__allocArray(length: i32, alignLog2: usize, id: u32, data: usize = 0): usize` */
  allocArrayInstance: Function;

  /** Next class id. */
  nextClassId: u32 = 0;
  /** Next signature id. */
  nextSignatureId: i32 = 0;
  /** Constructs a new program, optionally inheriting parser diagnostics. */
  constructor(
    /** Compiler options. */
    options: Options,
    /** Shared array of diagnostic messages (emitted so far). */
    diagnostics: DiagnosticMessage[] | null = null
  ) {
    super(diagnostics);
    this.options = options;
    var nativeSource = new Source(LIBRARY_SUBST, "[native code]", SourceKind.LIBRARY_ENTRY);
    this.nativeSource = nativeSource;
    var nativeFile = new File(this, nativeSource);
    this.nativeFile = nativeFile;
    this.filesByName.set(nativeFile.internalName, nativeFile);
    this.parser = new Parser(this);
    this.resolver = new Resolver(this);
  }

  /** Obtains the source matching the specified internal path. */
  getSource(internalPath: string): string | null {
    var sources = this.sources;
    for (let i = 0; i < sources.length; ++i) {
      let source = sources[i];
      if (source.internalPath == internalPath) return source.text;
    }
    return null;
  }

  /** Writes a common runtime header to the specified buffer. */
  writeRuntimeHeader(buffer: Uint8Array, offset: i32, classInstance: Class, payloadSize: u32): void {
    // BLOCK {
    //   mmInfo: usize // WASM64 TODO
    //   gcInfo: u32
    //   rtId: u32
    //   rtSize: u32
    // }
    assert(payloadSize < (1 << 28)); // 1 bit BUFFERED + 3 bits color
    writeI32(payloadSize, buffer, offset);
    writeI32(1, buffer, offset + 4); // RC=1
    writeI32(classInstance.id, buffer, offset + 8);
    writeI32(payloadSize, buffer, offset + 12);
  }

  /** Gets the size of a runtime header. */
  get runtimeHeaderSize(): i32 {
    return 16;
  }

  /** Creates a native variable declaration. */
  makeNativeVariableDeclaration(
    /** The simple name of the variable */
    name: string,
    /** Flags indicating specific traits, e.g. `CONST`. */
    flags: CommonFlags = CommonFlags.NONE
  ): VariableDeclaration {
    var range = this.nativeSource.range;
    return Node.createVariableDeclaration(
      Node.createIdentifierExpression(name, range),
      null, null, null, flags, range
    );
  }

  /** Creates a native type declaration. */
  makeNativeTypeDeclaration(
    /** The simple name of the type. */
    name: string,
    /** Flags indicating specific traits, e.g. `GENERIC`. */
    flags: CommonFlags = CommonFlags.NONE
  ): TypeDeclaration {
    var range = this.nativeSource.range;
    var identifier = Node.createIdentifierExpression(name, range);
    return Node.createTypeDeclaration(
      identifier,
      null,
      Node.createOmittedType(range),
      null, flags, range
    );
  }

  // a dummy signature for programmatically generated native functions
  private nativeDummySignature: FunctionTypeNode | null = null;

  /** Creates a native function declaration. */
  makeNativeFunctionDeclaration(
    /** The simple name of the function. */
    name: string,
    /** Flags indicating specific traits, e.g. `DECLARE`. */
    flags: CommonFlags = CommonFlags.NONE
  ): FunctionDeclaration {
    var range = this.nativeSource.range;
    return Node.createFunctionDeclaration(
      Node.createIdentifierExpression(name, range),
      null,
      this.nativeDummySignature || (this.nativeDummySignature = Node.createFunctionType([],
        Node.createNamedType( // ^ AST signature doesn't really matter, is overridden anyway
          Node.createSimpleTypeName(CommonNames.void_, range),
          null, false, range
        ),
        null, false, range)
      ),
      null, null, flags, ArrowKind.NONE, range
    );
  }

  /** Creates a native namespace declaration. */
  makeNativeNamespaceDeclaration(
    /** The simple name of the namespace. */
    name: string,
    /** Flags indicating specific traits, e.g. `EXPORT`. */
    flags: CommonFlags = CommonFlags.NONE
  ): NamespaceDeclaration {
    var range = this.nativeSource.range;
    return Node.createNamespaceDeclaration(
      Node.createIdentifierExpression(name, range),
      [], null, flags, range
    );
  }

  /** Creates a native function. */
  makeNativeFunction(
    /** The simple name of the function. */
    name: string,
    /** Concrete function signature. */
    signature: Signature,
    /** Parent element, usually a file, class or namespace. */
    parent: Element = this.nativeFile,
    /** Flags indicating specific traits, e.g. `GENERIC`. */
    flags: CommonFlags = CommonFlags.NONE,
    /** Decorator flags representing built-in decorators. */
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

  /** Gets the (possibly merged) program element linked to the specified declaration. */
  getElementByDeclaration(declaration: DeclarationStatement): DeclaredElement | null {
    var elementsByDeclaration = this.elementsByDeclaration;
    return elementsByDeclaration.has(declaration)
      ? elementsByDeclaration.get(declaration)!
      : null;
  }

  /** Initializes the program and its elements prior to compilation. */
  initialize(options: Options): void {
    this.options = options;

    // register native types
    this.registerNativeType(CommonNames.i8, Type.i8);
    this.registerNativeType(CommonNames.i16, Type.i16);
    this.registerNativeType(CommonNames.i32, Type.i32);
    this.registerNativeType(CommonNames.i64, Type.i64);
    this.registerNativeType(CommonNames.isize, options.isizeType);
    this.registerNativeType(CommonNames.u8, Type.u8);
    this.registerNativeType(CommonNames.u16, Type.u16);
    this.registerNativeType(CommonNames.u32, Type.u32);
    this.registerNativeType(CommonNames.u64, Type.u64);
    this.registerNativeType(CommonNames.usize, options.usizeType);
    this.registerNativeType(CommonNames.bool, Type.bool);
    this.registerNativeType(CommonNames.f32, Type.f32);
    this.registerNativeType(CommonNames.f64, Type.f64);
    this.registerNativeType(CommonNames.void_, Type.void);
    this.registerNativeType(CommonNames.number, Type.f64); // alias
    this.registerNativeType(CommonNames.boolean, Type.bool); // alias
    this.nativeFile.add(CommonNames.native, new TypeDefinition(
      CommonNames.native,
      this.nativeFile,
      this.makeNativeTypeDeclaration(CommonNames.native, CommonFlags.EXPORT | CommonFlags.GENERIC),
      DecoratorFlags.BUILTIN
    ));
    this.nativeFile.add(CommonNames.indexof, new TypeDefinition(
      CommonNames.indexof,
      this.nativeFile,
      this.makeNativeTypeDeclaration(CommonNames.indexof, CommonFlags.EXPORT | CommonFlags.GENERIC),
      DecoratorFlags.BUILTIN
    ));
    this.nativeFile.add(CommonNames.valueof, new TypeDefinition(
      CommonNames.valueof,
      this.nativeFile,
      this.makeNativeTypeDeclaration(CommonNames.valueof, CommonFlags.EXPORT | CommonFlags.GENERIC),
      DecoratorFlags.BUILTIN
    ));
    this.nativeFile.add(CommonNames.returnof, new TypeDefinition(
      CommonNames.returnof,
      this.nativeFile,
      this.makeNativeTypeDeclaration(CommonNames.returnof, CommonFlags.EXPORT | CommonFlags.GENERIC),
      DecoratorFlags.BUILTIN
    ));
    if (options.hasFeature(Feature.SIMD)) this.registerNativeType(CommonNames.v128, Type.v128);
    if (options.hasFeature(Feature.REFERENCE_TYPES)) this.registerNativeType(CommonNames.anyref, Type.anyref);

    // register compiler hints
    this.registerConstantInteger(CommonNames.ASC_TARGET, Type.i32,
      i64_new(options.isWasm64 ? Target.WASM64 : Target.WASM32));
    this.registerConstantInteger(CommonNames.ASC_NO_ASSERT, Type.bool,
      i64_new(options.noAssert ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_MEMORY_BASE, Type.i32,
      i64_new(options.memoryBase, 0));
    this.registerConstantInteger(CommonNames.ASC_OPTIMIZE_LEVEL, Type.i32,
      i64_new(options.optimizeLevelHint, 0));
    this.registerConstantInteger(CommonNames.ASC_SHRINK_LEVEL, Type.i32,
      i64_new(options.shrinkLevelHint, 0));

    // register feature hints
    this.registerConstantInteger(CommonNames.ASC_FEATURE_SIGN_EXTENSION, Type.bool,
      i64_new(options.hasFeature(Feature.SIGN_EXTENSION) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_MUTABLE_GLOBALS, Type.bool,
      i64_new(options.hasFeature(Feature.MUTABLE_GLOBALS) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_NONTRAPPING_F2I, Type.bool,
      i64_new(options.hasFeature(Feature.NONTRAPPING_F2I) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_BULK_MEMORY, Type.bool,
      i64_new(options.hasFeature(Feature.BULK_MEMORY) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_SIMD, Type.bool,
      i64_new(options.hasFeature(Feature.SIMD) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_THREADS, Type.bool,
      i64_new(options.hasFeature(Feature.THREADS) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_EXCEPTION_HANDLING, Type.bool,
      i64_new(options.hasFeature(Feature.EXCEPTION_HANDLING) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_TAIL_CALLS, Type.bool,
      i64_new(options.hasFeature(Feature.TAIL_CALLS) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_REFERENCE_TYPES, Type.bool,
      i64_new(options.hasFeature(Feature.REFERENCE_TYPES) ? 1 : 0, 0));

    // remember deferred elements
    var queuedImports = new Array<QueuedImport>();
    var queuedExports = new Map<File,Map<string,QueuedExport>>();
    var queuedExportsStar = new Map<File,QueuedExportStar[]>();
    var queuedExtends = new Array<ClassPrototype>();
    var queuedImplements = new Array<ClassPrototype>();

    // initialize relevant declaration-like statements of the entire program
    for (let i = 0, k = this.sources.length; i < k; ++i) {
      let source = this.sources[i];
      let file = new File(this, source);
      this.filesByName.set(file.internalName, file);
      let statements = source.statements;
      for (let j = 0, l = statements.length; j < l; ++j) {
        let statement = statements[j];
        switch (statement.kind) {
          case NodeKind.EXPORT: {
            this.initializeExports(<ExportStatement>statement, file, queuedExports, queuedExportsStar);
            break;
          }
          case NodeKind.EXPORTDEFAULT: {
            this.initializeExportDefault(<ExportDefaultStatement>statement, file, queuedExtends, queuedImplements);
            break;
          }
          case NodeKind.IMPORT: {
            this.initializeImports(<ImportStatement>statement, file, queuedImports, queuedExports);
            break;
          }
          case NodeKind.VARIABLE: {
            this.initializeVariables(<VariableStatement>statement, file);
            break;
          }
          case NodeKind.CLASSDECLARATION: {
            this.initializeClass(<ClassDeclaration>statement, file, queuedExtends, queuedImplements);
            break;
          }
          case NodeKind.ENUMDECLARATION: {
            this.initializeEnum(<EnumDeclaration>statement, file);
            break;
          }
          case NodeKind.FUNCTIONDECLARATION: {
            this.initializeFunction(<FunctionDeclaration>statement, file);
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
            this.initializeTypeDefinition(<TypeDeclaration>statement, file);
            break;
          }
        }
      }
    }

    // queued exports * should be linkable now that all files have been processed
    for (let [file, exportsStar] of queuedExportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        let exportStar = exportsStar[i];
        let foreignFile = this.lookupForeignFile(exportStar.foreignPath, exportStar.foreignPathAlt);
        if (!foreignFile) {
          this.error(
            DiagnosticCode.File_0_not_found,
            exportStar.pathLiteral.range, exportStar.pathLiteral.value
          );
          continue;
        }
        file.ensureExportStar(foreignFile);
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
          queuedImport.localFile.add(
            queuedImport.localIdentifier.text,
            element,
            true // isImport
          );
        } else {
          // FIXME: file not found is not reported if this happens?
          this.error(
            DiagnosticCode.Module_0_has_no_exported_member_1,
            foreignIdentifier.range, queuedImport.foreignPath, foreignIdentifier.text
          );
        }
      } else { // i.e. import * as bar from "./bar"
        let foreignFile = this.lookupForeignFile(queuedImport.foreignPath, queuedImport.foreignPathAlt);
        if (foreignFile) {
          let localFile = queuedImport.localFile;
          let localName = queuedImport.localIdentifier.text;
          localFile.add(
            localName,
            foreignFile.asImportedNamespace(
              localName,
              localFile
            ),
            true // isImport
          );
        } else {
          assert(false); // already reported by the parser not finding the file
        }
      }
    }

    // queued exports should be resolvable now that imports are finalized
    for (let [file, exports] of queuedExports) {
      for (let [exportName, queuedExport] of exports) {
        let localName = queuedExport.localIdentifier.text;
        let foreignPath = queuedExport.foreignPath;
        if (foreignPath) { // i.e. export { foo [as bar] } from "./baz"
          let element = this.lookupForeign(
            localName,
            foreignPath,
            assert(queuedExport.foreignPathAlt), // must be set if foreignPath is
            queuedExports
          );
          if (element) {
            file.ensureExport(exportName, element);
          } else {
            this.error(
              DiagnosticCode.Module_0_has_no_exported_member_1,
              queuedExport.localIdentifier.range,
              foreignPath, localName
            );
          }
        } else { // i.e. export { foo [as bar] }
          let element = file.lookupInSelf(localName);
          if (element) {
            file.ensureExport(exportName, element);
          } else {
            let globalElement = this.lookupGlobal(localName);
            if (globalElement && globalElement instanceof DeclaredElement) { // export { memory }
              file.ensureExport(exportName, <DeclaredElement>globalElement);
            } else {
              this.error(
                DiagnosticCode.Module_0_has_no_exported_member_1,
                queuedExport.foreignIdentifier.range,
                file.internalName, queuedExport.foreignIdentifier.text
              );
            }
          }
        }
      }
    }

    // register ArrayBuffer (id=0), String (id=1), ArrayBufferView (id=2)
    assert(this.nextClassId == 0);
    this.arrayBufferInstance = this.requireClass(CommonNames.ArrayBuffer);
    assert(this.arrayBufferInstance.id == 0);
    this.stringInstance = this.requireClass(CommonNames.String);
    assert(this.stringInstance.id == 1);
    this.arrayBufferViewInstance = this.requireClass(CommonNames.ArrayBufferView);
    assert(this.arrayBufferViewInstance.id == 2);

    // register classes backing basic types
    this.registerWrapperClass(Type.i8, CommonNames.I8);
    this.registerWrapperClass(Type.i16, CommonNames.I16);
    this.registerWrapperClass(Type.i32, CommonNames.I32);
    this.registerWrapperClass(Type.i64, CommonNames.I64);
    this.registerWrapperClass(options.isizeType, CommonNames.Isize);
    this.registerWrapperClass(Type.u8, CommonNames.U8);
    this.registerWrapperClass(Type.u16, CommonNames.U16);
    this.registerWrapperClass(Type.u32, CommonNames.U32);
    this.registerWrapperClass(Type.u64, CommonNames.U64);
    this.registerWrapperClass(options.usizeType, CommonNames.Usize);
    this.registerWrapperClass(Type.bool, CommonNames.Bool);
    this.registerWrapperClass(Type.f32, CommonNames.F32);
    this.registerWrapperClass(Type.f64, CommonNames.F64);
    if (options.hasFeature(Feature.SIMD)) this.registerWrapperClass(Type.v128, CommonNames.V128);
    if (options.hasFeature(Feature.REFERENCE_TYPES)) this.registerWrapperClass(Type.anyref, CommonNames.Anyref);

    // register views but don't instantiate them yet
    this.i8ArrayPrototype = <ClassPrototype>this.require(CommonNames.Int8Array, ElementKind.CLASS_PROTOTYPE);
    this.i16ArrayPrototype = <ClassPrototype>this.require(CommonNames.Int16Array, ElementKind.CLASS_PROTOTYPE);
    this.i32ArrayPrototype = <ClassPrototype>this.require(CommonNames.Int32Array, ElementKind.CLASS_PROTOTYPE);
    this.i64ArrayPrototype = <ClassPrototype>this.require(CommonNames.Int64Array, ElementKind.CLASS_PROTOTYPE);
    this.u8ArrayPrototype = <ClassPrototype>this.require(CommonNames.Uint8Array, ElementKind.CLASS_PROTOTYPE);
    this.u8ClampedArrayPrototype = <ClassPrototype>this.require(CommonNames.Uint8ClampedArray, ElementKind.CLASS_PROTOTYPE);
    this.u16ArrayPrototype = <ClassPrototype>this.require(CommonNames.Uint16Array, ElementKind.CLASS_PROTOTYPE);
    this.u32ArrayPrototype = <ClassPrototype>this.require(CommonNames.Uint32Array, ElementKind.CLASS_PROTOTYPE);
    this.u64ArrayPrototype = <ClassPrototype>this.require(CommonNames.Uint64Array, ElementKind.CLASS_PROTOTYPE);
    this.f32ArrayPrototype = <ClassPrototype>this.require(CommonNames.Float32Array, ElementKind.CLASS_PROTOTYPE);
    this.f64ArrayPrototype = <ClassPrototype>this.require(CommonNames.Float64Array, ElementKind.CLASS_PROTOTYPE);

    // resolve base prototypes of derived classes
    var resolver = this.resolver;
    for (let i = 0, k = queuedExtends.length; i < k; ++i) {
      let thisPrototype = queuedExtends[i];
      let extendsNode = assert(thisPrototype.extendsNode); // must be present if in queuedExtends
      let baseElement = resolver.resolveTypeName(extendsNode.name, thisPrototype.parent); // reports
      if (!baseElement) continue;
      if (baseElement.kind == ElementKind.CLASS_PROTOTYPE) {
        let basePrototype = <ClassPrototype>baseElement;
        if (basePrototype.hasDecorator(DecoratorFlags.SEALED)) {
          this.error(
            DiagnosticCode.Class_0_is_sealed_and_cannot_be_extended,
            extendsNode.range, (<ClassPrototype>baseElement).identifierNode.text
          );
        }
        if (
          basePrototype.hasDecorator(DecoratorFlags.UNMANAGED) !=
          thisPrototype.hasDecorator(DecoratorFlags.UNMANAGED)
        ) {
          this.error(
            DiagnosticCode.Unmanaged_classes_cannot_extend_managed_classes_and_vice_versa,
            Range.join(thisPrototype.identifierNode.range, extendsNode.range)
          );
        }
        thisPrototype.basePrototype = basePrototype;
      } else {
        this.error(
          DiagnosticCode.A_class_may_only_extend_another_class,
          extendsNode.range
        );
      }
    }

    // set up global aliases
    {
      let globalAliases = options.globalAliases;
      if (globalAliases) {
        for (let [alias, name] of globalAliases) {
          if (!name.length) continue; // explicitly disabled
          let firstChar = name.charCodeAt(0);
          if (firstChar >= CharCode._0 && firstChar <= CharCode._9) {
            this.registerConstantInteger(alias, Type.i32, i64_new(<i32>parseInt(name, 10)));
          } else {
            let elementsByName = this.elementsByName;
            let element = elementsByName.get(name);
            if (element) {
              if (elementsByName.has(alias)) throw new Error("duplicate global element: " + name);
              elementsByName.set(alias, element);
            }
            else throw new Error("no such global element: " + name);
          }
        }
      }
    }

    // register stdlib components
    this.arrayPrototype = <ClassPrototype>this.require(CommonNames.Array, ElementKind.CLASS_PROTOTYPE);
    this.fixedArrayPrototype = <ClassPrototype>this.require(CommonNames.FixedArray, ElementKind.CLASS_PROTOTYPE);
    this.setPrototype = <ClassPrototype>this.require(CommonNames.Set, ElementKind.CLASS_PROTOTYPE);
    this.mapPrototype = <ClassPrototype>this.require(CommonNames.Map, ElementKind.CLASS_PROTOTYPE);
    this.abortInstance = this.lookupFunction(CommonNames.abort); // can be disabled
    this.allocInstance = this.requireFunction(CommonNames.alloc);
    this.reallocInstance = this.requireFunction(CommonNames.realloc);
    this.freeInstance = this.requireFunction(CommonNames.free);
    this.retainInstance = this.requireFunction(CommonNames.retain);
    this.releaseInstance = this.requireFunction(CommonNames.release);
    this.collectInstance = this.requireFunction(CommonNames.collect);
    this.typeinfoInstance = this.requireFunction(CommonNames.typeinfo);
    this.instanceofInstance = this.requireFunction(CommonNames.instanceof_);
    this.visitInstance = this.requireFunction(CommonNames.visit);
    this.allocArrayInstance = this.requireFunction(CommonNames.allocArray);

    // mark module exports, i.e. to apply proper wrapping behavior on the boundaries
    for (let file of this.filesByName.values()) {
      let exports = file.exports;
      if (exports !== null && file.source.sourceKind == SourceKind.USER_ENTRY) {
        for (let element of exports.values()) this.markModuleExport(element);
      }
    }
  }

  /** Requires that a global library element of the specified kind is present and returns it. */
  private require(name: string, kind: ElementKind): Element {
    var element = this.lookupGlobal(name);
    if (!element) throw new Error("missing " + name);
    if (element.kind != kind) throw new Error("unexpected " + name);
    return element;
  }

  /** Requires that a non-generic global class is present and returns it. */
  private requireClass(name: string): Class {
    var prototype = this.require(name, ElementKind.CLASS_PROTOTYPE);
    var resolved = this.resolver.resolveClass(<ClassPrototype>prototype, null);
    if (!resolved) throw new Error("invalid " + name);
    return resolved;
  }

  /** Obtains a non-generic global function and returns it. Returns `null` if it does not exist. */
  private lookupFunction(name: string): Function | null {
    var prototype = this.lookupGlobal(name);
    if (!prototype || prototype.kind != ElementKind.FUNCTION_PROTOTYPE) return null;
    return this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
  }

  /** Requires that a global function is present and returns it. */
  private requireFunction(name: string, typeArguments: Type[] | null = null): Function {
    var prototype = this.require(name, ElementKind.FUNCTION_PROTOTYPE);
    var resolved = this.resolver.resolveFunction(<FunctionPrototype>prototype, typeArguments);
    if (!resolved) throw new Error("invalid " + name);
    return resolved;
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

  /** Registers a native type with the program. */
  private registerNativeType(name: string, type: Type): void {
    var element = new TypeDefinition(
      name,
      this.nativeFile,
      this.makeNativeTypeDeclaration(name, CommonFlags.EXPORT),
      DecoratorFlags.BUILTIN
    );
    element.setType(type);
    this.nativeFile.add(name, element);
  }

  /** Registers the backing class of a native type. */
  private registerWrapperClass(type: Type, className: string): void {
    var wrapperClasses = this.wrapperClasses;
    assert(!type.classReference && !wrapperClasses.has(type));
    var element = this.lookupGlobal(className);
    if (!element) return;
    assert(element.kind == ElementKind.CLASS_PROTOTYPE);
    var classElement = this.resolver.resolveClass(<ClassPrototype>element, null);
    if (!classElement) return;
    classElement.wrappedType = type;
    wrapperClasses.set(type, classElement);
  }

  /** Registers a constant integer value within the global scope. */
  private registerConstantInteger(name: string, type: Type, value: I64): void {
    assert(type.is(TypeFlags.INTEGER)); // must be an integer type
    var global = new Global(
      name,
      this.nativeFile,
      DecoratorFlags.NONE,
      this.makeNativeVariableDeclaration(name, CommonFlags.CONST | CommonFlags.EXPORT)
    );
    global.setConstantIntegerValue(value, type);
    this.nativeFile.add(name, global);
  }

  /** Registers a constant float value within the global scope. */
  private registerConstantFloat(name: string, type: Type, value: f64): void {
    assert(type.is(TypeFlags.FLOAT)); // must be a float type
    var global = new Global(
      name,
      this.nativeFile,
      DecoratorFlags.NONE,
      this.makeNativeVariableDeclaration(name, CommonFlags.CONST | CommonFlags.EXPORT)
    );
    global.setConstantFloatValue(value, type);
    this.nativeFile.add(name, global);
  }

  /** Ensures that the given global element exists. Attempts to merge duplicates. */
  ensureGlobal(name: string, element: DeclaredElement): DeclaredElement {
    var elementsByName = this.elementsByName;
    if (elementsByName.has(name)) {
      let existing = elementsByName.get(name)!;
      // NOTE: this is effectively only performed when merging native types with
      // their respective namespaces in std/builtins, but can also trigger when a
      // user has multiple global elements of the same name in different files,
      // which might result in unexpected shared symbols accross files. considering
      // this a wonky feature for now that we might want to revisit later.
      if (existing !== element) {
        let merged = tryMerge(existing, element);
        if (!merged) {
          if (isDeclaredElement(existing.kind)) {
            this.errorRelated(
              DiagnosticCode.Duplicate_identifier_0,
              element.identifierNode.range,
              (<DeclaredElement>existing).declaration.name.range,
              name
            );
          } else {
            this.error(
              DiagnosticCode.Duplicate_identifier_0,
              element.identifierNode.range, name
            );
          }
          return element;
        }
        element = merged;
      }
    }
    elementsByName.set(name, element);
    return element;
  }

  /** Looks up the element of the specified name in the global scope. */
  lookupGlobal(name: string): Element | null {
    var elements = this.elementsByName;
    if (elements.has(name)) return elements.get(name)!;
    return null;
  }

  /** Looks up the element of the specified name in the global scope. Errors if not present. */
  requireGlobal(name: string): Element {
    var elements = this.elementsByName;
    if (elements.has(name)) return elements.get(name)!;
    throw new Error("missing global");
  }

  /** Tries to locate a foreign file given its normalized path. */
  private lookupForeignFile(
    /** Normalized path to the other file. */
    foreignPath: string,
    /** Alternative normalized path to the other file. */
    foreignPathAlt: string
  ): File | null {
    var filesByName = this.filesByName;
    return filesByName.has(foreignPath)
         ? filesByName.get(foreignPath)!
         : filesByName.has(foreignPathAlt)
         ? filesByName.get(foreignPathAlt)!
         : null;
  }

  /** Tries to locate a foreign element by traversing exports and queued exports. */
  private lookupForeign(
    /** Identifier within the other file. */
    foreignName: string,
    /** Normalized path to the other file. */
    foreignPath: string,
    /** Alternative normalized path to the other file. */
    foreignPathAlt: string,
    /** So far queued exports. */
    queuedExports: Map<File,Map<string,QueuedExport>>
  ): DeclaredElement | null {
    do {
      let foreignFile = this.lookupForeignFile(foreignPath, foreignPathAlt);
      if (!foreignFile) return null; // no such file

      // search already resolved exports
      let element = foreignFile.lookupExport(foreignName);
      if (element) return element;

      // otherwise traverse queued exports
      if (queuedExports.has(foreignFile)) {
        let fileQueuedExports = queuedExports.get(foreignFile)!;
        if (fileQueuedExports.has(foreignName)) {
          let queuedExport = fileQueuedExports.get(foreignName)!;
          if (queuedExport.foreignPath) { // imported from another file
            foreignName = queuedExport.localIdentifier.text;
            foreignPath = queuedExport.foreignPath;
            foreignPathAlt = assert(queuedExport.foreignPathAlt);
            continue;
          } else { // local element of this file
            element = foreignFile.lookupInSelf(queuedExport.localIdentifier.text);
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
    /** Decorators present on an element. */
    decorators: DecoratorNode[] | null,
    /** Accepted decorator flags. Emits diagnostics if any other decorators are present. */
    acceptedFlags: DecoratorFlags
  ): DecoratorFlags {
    var flags = DecoratorFlags.NONE;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        let decorator = decorators[i];
        let kind = DecoratorKind.fromNode(decorator.name);
        let flag = DecoratorFlags.fromKind(kind);
        if (flag) {
          if (flag == DecoratorFlags.BUILTIN) {
            if (!(acceptedFlags & flag) && !decorator.range.source.isLibrary) {
              this.error(
                DiagnosticCode.Decorator_0_is_not_valid_here,
                decorator.range, decorator.name.range.toString()
              );
            } else {
              flags |= flag;
            }
          } else if (!(acceptedFlags & flag)) {
            this.error(
              DiagnosticCode.Decorator_0_is_not_valid_here,
              decorator.range, decorator.name.range.toString()
            );
          } else if (flags & flag) {
            this.error(
              DiagnosticCode.Duplicate_decorator,
              decorator.range
            );
          } else {
            flags |= flag;
          }
        }
      }
    }
    return flags;
  }

  /** Initializes a class declaration. */
  private initializeClass(
    /** The declaration to initialize. */
    declaration: ClassDeclaration,
    /** Parent element, usually a file or namespace. */
    parent: Element,
    /** So far queued `extends` clauses. */
    queuedExtends: ClassPrototype[],
    /** So far queued `implements` clauses. */
    queuedImplements: ClassPrototype[]
  ): ClassPrototype | null {
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
    if (!parent.add(name, element)) return null;

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
          this.warning(
            DiagnosticCode.Not_implemented,
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
            this.initializeProperty(<MethodDeclaration>memberDeclaration, element);
          } else {
            this.initializeMethod(<MethodDeclaration>memberDeclaration, element);
          }
          break;
        }
        case NodeKind.INDEXSIGNATUREDECLARATION: break; // ignored for now
        default: assert(false); // class member expected
      }
    }
    return element;
  }

  /** Initializes a field of a class or interface. */
  private initializeField(
    /** The declaration to initialize. */
    declaration: FieldDeclaration,
    /** Parent class. */
    parent: ClassPrototype
  ): void {
    var name = declaration.name.text;
    var decorators = declaration.decorators;
    var element: DeclaredElement;
    var acceptedFlags: DecoratorFlags = DecoratorFlags.UNSAFE;
    if (parent.is(CommonFlags.AMBIENT)) {
      acceptedFlags |= DecoratorFlags.EXTERNAL;
    }
    if (declaration.is(CommonFlags.STATIC)) { // global variable
      assert(parent.kind != ElementKind.INTERFACE_PROTOTYPE);
      acceptedFlags |= DecoratorFlags.LAZY;
      if (declaration.is(CommonFlags.READONLY)) {
        acceptedFlags |= DecoratorFlags.INLINE;
      }
      element = new Global(
        name,
        parent,
        this.checkDecorators(decorators, acceptedFlags),
        declaration
      );
      if (!parent.add(name, element)) return;
    } else { // actual instance field
      assert(!declaration.isAny(CommonFlags.ABSTRACT | CommonFlags.GET | CommonFlags.SET));
      element = new FieldPrototype(
        name,
        parent,
        declaration,
        this.checkDecorators(decorators, acceptedFlags)
      );
      if (!parent.addInstance(name, element)) return;
    }
  }

  /** Initializes a method of a class or interface. */
  private initializeMethod(
    /** The declaration to initialize. */
    declaration: MethodDeclaration,
    /** Parent class. */
    parent: ClassPrototype
  ): void {
    var name = declaration.name.text;
    var isStatic = declaration.is(CommonFlags.STATIC);
    var acceptedFlags = DecoratorFlags.INLINE | DecoratorFlags.UNSAFE;
    if (!declaration.is(CommonFlags.GENERIC)) {
      acceptedFlags |= DecoratorFlags.OPERATOR_BINARY
                    |  DecoratorFlags.OPERATOR_PREFIX
                    |  DecoratorFlags.OPERATOR_POSTFIX;
    }
    if (parent.is(CommonFlags.AMBIENT)) {
      acceptedFlags |= DecoratorFlags.EXTERNAL;
    }
    var element = new FunctionPrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators, acceptedFlags)
    );
    if (isStatic) { // global function
      assert(declaration.name.kind != NodeKind.CONSTRUCTOR);
      if (!parent.add(name, element)) return;
    } else { // actual instance method
      if (!parent.addInstance(name, element)) return;
    }
    this.checkOperatorOverloads(declaration.decorators, element, parent);
  }

  /** Checks that operator overloads are generally valid, if present. */
  private checkOperatorOverloads(
    /** Decorators to check. */
    decorators: DecoratorNode[] | null,
    /** Decorated method. */
    prototype: FunctionPrototype,
    /** Parent class. */
    classPrototype: ClassPrototype
  ): void {
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        let decorator: DecoratorNode = decorators[i]; // FIXME: why does tsc want a type here?
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
                let text = (<StringLiteralExpression>firstArg).value;
                let kind = OperatorKind.fromDecorator(decorator.decoratorKind, text);
                if (kind == OperatorKind.INVALID) {
                  this.error(
                    DiagnosticCode._0_is_not_a_valid_operator,
                    firstArg.range, text
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

  /** Ensures that the property introduced by the specified getter or setter exists.*/
  private ensureProperty(
    /** The declaration of the getter or setter introducing the property. */
    declaration: MethodDeclaration,
    /** Parent class. */
    parent: ClassPrototype
  ): PropertyPrototype | null {
    var name = declaration.name.text;
    if (declaration.is(CommonFlags.STATIC)) {
      let parentMembers = parent.members;
      if (parentMembers && parentMembers.has(name)) {
        let element = <Element>parentMembers.get(name)!;
        if (element.kind == ElementKind.PROPERTY_PROTOTYPE) return <PropertyPrototype>element;
      } else {
        let element = new PropertyPrototype(name, parent, declaration);
        if (!parent.add(name, element)) return null;
        return element;
      }
    } else {
      let parentMembers = parent.instanceMembers;
      if (parentMembers && parentMembers.has(name)) {
        let element = <Element>parentMembers.get(name);
        if (element.kind == ElementKind.PROPERTY_PROTOTYPE) return <PropertyPrototype>element;
      } else {
        let element = new PropertyPrototype(name, parent, declaration);
        if (!parent.addInstance(name, element)) return null;
        return element;
      }
    }
    this.error(
      DiagnosticCode.Duplicate_property_0,
      declaration.name.range, name
    );
    return null;
  }

  /** Initializes a property of a class. */
  private initializeProperty(
    /** The declaration of the getter or setter. */
    declaration: MethodDeclaration,
    /** Parent class. */
    parent: ClassPrototype
  ): void {
    var property = this.ensureProperty(declaration, parent);
    if (!property) return;
    var name = declaration.name.text;
    var isGetter = declaration.is(CommonFlags.GET);
    if (isGetter) {
      if (property.getterPrototype) {
        this.error(
          DiagnosticCode.Duplicate_property_0,
          declaration.name.range, name
        );
        return;
      }
    } else {
      if (property.setterPrototype) {
        this.error(
          DiagnosticCode.Duplicate_property_0,
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
        DecoratorFlags.INLINE | DecoratorFlags.UNSAFE
      )
    );
    if (isGetter) {
      property.getterPrototype = element;
    } else {
      property.setterPrototype = element;
    }
  }

  /** Initializes an enum. */
  private initializeEnum(
    /** The declaration to initialize. */
    declaration: EnumDeclaration,
    /** Parent element, usually a file or namespace. */
    parent: Element
  ): Enum | null {
    var name = declaration.name.text;
    var element = new Enum(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.GLOBAL |
        DecoratorFlags.INLINE |
        DecoratorFlags.LAZY
      )
    );
    if (!parent.add(name, element)) return null;
    var values = declaration.values;
    for (let i = 0, k = values.length; i < k; ++i) {
      this.initializeEnumValue(values[i], element);
    }
    return element;
  }

  /** Initializes an enum value. */
  private initializeEnumValue(
    /** The declaration to initialize. */
    declaration: EnumValueDeclaration,
    /** Parent enum. */
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
    if (!parent.add(name, element)) return;
  }

  /** Initializes an `export` statement. */
  private initializeExports(
    /** The statement to initialize. */
    statement: ExportStatement,
    /** Parent file. */
    parent: File,
    /** So far queued `export`s. */
    queuedExports: Map<File,Map<string,QueuedExport>>,
    /** So far queued `export *`s. */
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
      let foreignPath = assert(statement.internalPath); // must be set for export *
      queued.push(new QueuedExportStar(
        foreignPath,
        foreignPath.endsWith(INDEX_SUFFIX) // strip or add index depending on what's already present
          ? foreignPath.substring(0, foreignPath.length - INDEX_SUFFIX.length)
          : foreignPath + INDEX_SUFFIX,
        assert(statement.path)
      ));
    }
  }

  /** Initializes a single `export` member. Does not handle `export *`. */
  private initializeExport(
    /** The member to initialize. */
    member: ExportMember,
    /** Local file. */
    localFile: File,
    /** Path to the other file, if present. */
    foreignPath: string | null,
    /** So far queued `export`s. */
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
        localFile.ensureExport(foreignName, element);

      // otherwise queue it
      } else {
        let queued: Map<string,QueuedExport>;
        if (queuedExports.has(localFile)) queued = queuedExports.get(localFile)!;
        else queuedExports.set(localFile, queued = new Map());
        queued.set(foreignName, new QueuedExport(
          member.localName,
          member.exportedName,
          null, null
        ));
      }

    // foreign element, i.e. export { foo } from "./bar"
    } else {
      let queued: Map<string,QueuedExport>;
      if (queuedExports.has(localFile)) queued = queuedExports.get(localFile)!;
      else queuedExports.set(localFile, queued = new Map());
      queued.set(foreignName, new QueuedExport(
        member.localName,
        member.exportedName,
        foreignPath,
        foreignPath.endsWith(INDEX_SUFFIX) // strip or add index depending on what's already present
          ? foreignPath.substring(0, foreignPath.length - INDEX_SUFFIX.length)
          : foreignPath + INDEX_SUFFIX
      ));
    }
  }

  private initializeExportDefault(
    /** The statement to initialize. */
    statement: ExportDefaultStatement,
    /** Parent file. */
    parent: File,
    /** So far queued `extends` clauses. */
    queuedExtends: Array<ClassPrototype>,
    /** So far queued `implements` clauses. */
    queuedImplements: ClassPrototype[]
  ): void {
    var declaration = statement.declaration;
    var element: DeclaredElement | null = null;
    switch (declaration.kind) {
      case NodeKind.ENUMDECLARATION: {
        element = this.initializeEnum(<EnumDeclaration>declaration, parent);
        break;
      }
      case NodeKind.FUNCTIONDECLARATION: {
        element = this.initializeFunction(<FunctionDeclaration>declaration, parent);
        break;
      }
      case NodeKind.CLASSDECLARATION: {
        element = this.initializeClass(<ClassDeclaration>declaration, parent, queuedExtends, queuedImplements);
        break;
      }
      case NodeKind.INTERFACEDECLARATION: {
        element = this.initializeInterface(<InterfaceDeclaration>declaration, parent);
        break;
      }
      case NodeKind.NAMESPACEDECLARATION: {
        element = this.initializeNamespace(<NamespaceDeclaration>declaration, parent, queuedExtends, queuedImplements);
        break;
      }
      default: assert(false);
    }
    if (element) {
      let exports = parent.exports;
      if (!exports) parent.exports = exports = new Map();
      else {
        if (exports.has("default")) {
          let existing = exports.get("default")!;
          this.errorRelated(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range,
            existing.declaration.name.range,
            "default"
          );
          return;
        }
      }
      exports.set("default", element);
    }
  }

  /** Initializes an `import` statement. */
  private initializeImports(
    /** The statement to initialize. */
    statement: ImportStatement,
    /** Parent file. */
    parent: File,
    /** So far queued `import`s. */
    queuedImports: QueuedImport[],
    /** So far queued `export`s. */
    queuedExports: Map<File,Map<string,QueuedExport>>
  ): void {
    var declarations = statement.declarations;
    if (declarations) { // import { foo [as bar] } from "./baz"
      for (let i = 0, k = declarations.length; i < k; ++i) {
        this.initializeImport(
          declarations[i],
          parent,
          statement.internalPath,
          queuedImports,
          queuedExports
        );
      }
    } else if (statement.namespaceName) { // import * as foo from "./bar"
      queuedImports.push(new QueuedImport(
        parent,
        statement.namespaceName,
        null, // indicates import *
        statement.internalPath,
        statement.internalPath + INDEX_SUFFIX
      ));
    } else {
      // import "./foo"
    }
  }

  /** Initializes a single `import` declaration. Does not handle `import *`. */
  private initializeImport( // { foo [as bar] }
    /** The declaration to initialize. */
    declaration: ImportDeclaration,
    /** Parent file. */
    parent: File,
    /** Path to the other file. */
    foreignPath: string,
    /** So far queued `import`s. */
    queuedImports: QueuedImport[],
    /** So far queued `export`s. */
    queuedExports: Map<File,Map<string,QueuedExport>>
  ): void {
    var foreignPathAlt = foreignPath.endsWith(INDEX_SUFFIX) // strip or add index depending on what's already present
      ? foreignPath.substring(0, foreignPath.length - INDEX_SUFFIX.length)
      : foreignPath + INDEX_SUFFIX;

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

  /** Initializes a function. Does not handle methods. */
  private initializeFunction(
    /** The declaration to initialize. */
    declaration: FunctionDeclaration,
    /** Parent element, usually a file or namespace. */
    parent: Element
  ): FunctionPrototype | null {
    var name = declaration.name.text;
    var validDecorators = DecoratorFlags.UNSAFE | DecoratorFlags.BUILTIN;
    if (declaration.is(CommonFlags.AMBIENT)) {
      validDecorators |= DecoratorFlags.EXTERNAL;
    } else {
      validDecorators |= DecoratorFlags.INLINE;
    }
    if (!declaration.is(CommonFlags.INSTANCE)) {
      if (parent.kind != ElementKind.CLASS_PROTOTYPE) {
        validDecorators |= DecoratorFlags.GLOBAL;
      }
    }
    var element = new FunctionPrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators, validDecorators)
    );
    if (!parent.add(name, element)) return null;
    return element;
  }

  /** Initializes an interface. */
  private initializeInterface(
    /** The declaration to initialize. */
    declaration: InterfaceDeclaration,
    /** Parent element, usually a file or namespace. */
    parent: Element
  ): InterfacePrototype | null {
    var name = declaration.name.text;
    var element = new InterfacePrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.GLOBAL
      )
    );
    if (!parent.add(name, element)) return null;
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
            this.initializeProperty(<MethodDeclaration>memberDeclaration, element);
          } else {
            this.initializeMethod(<MethodDeclaration>memberDeclaration, element);
          }
          break;
        }
        default: assert(false); // interface member expected
      }
    }
    return element;
  }

  /** Initializes a namespace. */
  private initializeNamespace(
    /** The declaration to initialize. */
    declaration: NamespaceDeclaration,
    /** Parent element, usually a file or another namespace. */
    parent: Element,
    /** So far queued `extends` clauses. */
    queuedExtends: ClassPrototype[],
    /** So far queued `implements` clauses. */
    queuedImplements: ClassPrototype[]
  ): Namespace | null {
    var name = declaration.name.text;
    var original = new Namespace(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators, DecoratorFlags.GLOBAL)
    );
    if (!parent.add(name, original)) return null;
    var element = assert(parent.lookupInSelf(name)); // possibly merged
    var members = declaration.members;
    for (let i = 0, k = members.length; i < k; ++i) {
      let member = members[i];
      switch (member.kind) {
        case NodeKind.CLASSDECLARATION: {
          this.initializeClass(<ClassDeclaration>member, original, queuedExtends, queuedImplements);
          break;
        }
        case NodeKind.ENUMDECLARATION: {
          this.initializeEnum(<EnumDeclaration>member, original);
          break;
        }
        case NodeKind.FUNCTIONDECLARATION: {
          this.initializeFunction(<FunctionDeclaration>member, original);
          break;
        }
        case NodeKind.INTERFACEDECLARATION: {
          this.initializeInterface(<InterfaceDeclaration>member, original);
          break;
        }
        case NodeKind.NAMESPACEDECLARATION: {
          this.initializeNamespace(<NamespaceDeclaration>member, original, queuedExtends, queuedImplements);
          break;
        }
        case NodeKind.TYPEDECLARATION: {
          this.initializeTypeDefinition(<TypeDeclaration>member, original);
          break;
        }
        case NodeKind.VARIABLE: {
          this.initializeVariables(<VariableStatement>member, original);
          break;
        }
        default: assert(false); // namespace member expected
      }
    }
    if (original != element) copyMembers(original, element); // retain original parent
    return element;
  }

  /** Initializes a `type` definition. */
  private initializeTypeDefinition(
    /** The declaration to initialize. */
    declaration: TypeDeclaration,
    /** Parent element, usually a file or namespace. */
    parent: Element
  ): void {
    var name = declaration.name.text;
    var element = new TypeDefinition(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators, DecoratorFlags.NONE)
    );
    parent.add(name, element); // reports
  }

  /** Initializes a variable statement. */
  private initializeVariables(
    /** The statement to initialize. */
    statement: VariableStatement,
    /** Parent element, usually a file or namespace. */
    parent: Element
  ): void {
    var declarations = statement.declarations;
    for (let i = 0, k = declarations.length; i < k; ++i) {
      let declaration = declarations[i];
      let name = declaration.name.text;
      let acceptedFlags = DecoratorFlags.GLOBAL | DecoratorFlags.LAZY;
      if (declaration.is(CommonFlags.DECLARE)) {
        acceptedFlags |= DecoratorFlags.EXTERNAL;
      }
      if (declaration.is(CommonFlags.CONST)) {
        acceptedFlags |= DecoratorFlags.INLINE;
      }
      let element = new Global(
        name,
        parent,
        this.checkDecorators(declaration.decorators, acceptedFlags),
        declaration
      );
      if (!parent.add(name, element)) continue; // reports
    }
  }

  /** Determines the element type of a built-in array. */
  // determineBuiltinArrayType(target: Class): Type | null {
  //   switch (target.internalName) {
  //     case BuiltinSymbols.Int8Array: return Type.i8;
  //     case BuiltinSymbols.Uint8ClampedArray:
  //     case BuiltinSymbols.Uint8Array: return Type.u8;
  //     case BuiltinSymbols.Int16Array: return Type.i16;
  //     case BuiltinSymbols.Uint16Array: return Type.u16;
  //     case BuiltinSymbols.Int32Array: return Type.i32;
  //     case BuiltinSymbols.Uint32Array: return Type.u32;
  //     case BuiltinSymbols.Int64Array: return Type.i64;
  //     case BuiltinSymbols.Uint64Array: return Type.u64;
  //     case BuiltinSymbols.Float32Array: return Type.f32;
  //     case BuiltinSymbols.Float64Array: return Type.f64;
  //   }
  //   var current: Class | null = target;
  //   var arrayPrototype = this.arrayPrototype;
  //   do {
  //     if (current.prototype == arrayPrototype) { // Array<T>
  //       let typeArguments = assert(current.typeArguments);
  //       assert(typeArguments.length == 1);
  //       return typeArguments[0];
  //     }
  //   } while (current = current.base);
  //   return null;
  // }
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
  /** A {@link TypeDefinition}.  */
  TYPEDEFINITION,
  /** An {@link IndexSignature}. */
  INDEXSIGNATURE
}

/** Indicates built-in decorators that are present. */
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
  BUILTIN = 1 << 8,
  /** Is compiled lazily. */
  LAZY = 1 << 9,
  /** Is considered unsafe code. */
  UNSAFE = 1 << 10
}

export namespace DecoratorFlags {

  /** Translates a decorator kind to the respective decorator flag. */
  export function fromKind(kind: DecoratorKind): DecoratorFlags {
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
      case DecoratorKind.LAZY: return DecoratorFlags.LAZY;
      case DecoratorKind.UNSAFE: return DecoratorFlags.UNSAFE;
      default: return DecoratorFlags.NONE;
    }
  }
}

/** Base class of all program elements. */
export abstract class Element {

  /** Parent element. */
  parent: Element;
  /** Common flags indicating specific traits. */
  flags: CommonFlags = CommonFlags.NONE;
  /** Decorator flags indicating annotated traits. */
  decoratorFlags: DecoratorFlags = DecoratorFlags.NONE;
  /** Member elements. */
  members: Map<string,DeclaredElement> | null = null;
  /** Shadowing type in type space, if any. */
  shadowType: TypeDefinition | null = null;

  /** Constructs a new program element. */
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
      assert(this.kind == ElementKind.FILE);
      this.parent = this; // special case to keep this.parent non-nullable
    }
  }

  /** Gets the enclosing file. */
  get file(): File {
    var current: Element = this;
    do if ((current = current.parent).kind == ElementKind.FILE) return <File>current;
    while (true);
  }

  /** Tests if this element has a specific flag or flags. */
  is(flag: CommonFlags): bool { return (this.flags & flag) == flag; }
  /** Tests if this element has any of the specified flags. */
  isAny(flags: CommonFlags): bool { return (this.flags & flags) != 0; }
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void { this.flags |= flag; }
  /** Unsets the specific flag or flags. */
  unset(flag: CommonFlags): void {this.flags &= ~flag; }
  /** Tests if this element has a specific decorator flag or flags. */
  hasDecorator(flag: DecoratorFlags): bool { return (this.decoratorFlags & flag) == flag; }

  /** Looks up the element with the specified name within this element. */
  lookupInSelf(name: string): DeclaredElement | null {
    var members = this.members;
    if (members && members.has(name)) return members.get(name)!;
    return null;
  }

  /** Looks up the element with the specified name relative to this element, like in JS. */
  abstract lookup(name: string): Element | null;

  /** Adds an element as a member of this one. Reports and returns `false` if a duplicate. */
  add(name: string, element: DeclaredElement): bool {
    var originalDeclaration = element.declaration;
    var members = this.members;
    if (!members) this.members = members = new Map();
    else if (members.has(name)) {
      let existing = members.get(name)!;
      if (existing.parent !== this) {
        // override non-own element
      } else {
        let merged = tryMerge(existing, element);
        if (merged) {
          element = merged; // use merged element
        } else {
          if (isDeclaredElement(existing.kind)) {
            this.program.errorRelated(
              DiagnosticCode.Duplicate_identifier_0,
              element.identifierNode.range,
              (<DeclaredElement>existing).declaration.name.range,
              element.identifierNode.text
            );
          } else {
            this.program.error(
              DiagnosticCode.Duplicate_identifier_0,
              element.identifierNode.range, element.identifierNode.text
            );
          }
          return false;
        }
      }
    }
    members.set(name, element);
    var program = this.program;
    if (element.kind != ElementKind.FUNCTION_PROTOTYPE || !(<FunctionPrototype>element).isBound) {
      // prefer unbound prototypes in global lookup maps
      program.elementsByName.set(element.internalName, element);
      program.elementsByDeclaration.set(originalDeclaration, element);
    }
    return true;
  }

  /** Returns a string representation of this element. */
  toString(): string {
    return ElementKind[this.kind] + ":" + this.internalName;
  }
}

// Kinds of all declared elements
var declaredElements = new Set<ElementKind>();

/** Tests if the specified element kind indicates a declared element. */
export function isDeclaredElement(kind: ElementKind): bool {
  return declaredElements.has(kind);
}

/** Base class of elements with an associated declaration statement. */
export abstract class DeclaredElement extends Element {

  /** Constructs a new declared program element. */
  protected constructor(
    /** Specific element kind. */
    kind: ElementKind,
    /** Simple name. */
    name: string,
    /** Internal name referring to this element. */
    internalName: string,
    /** Containing {@link Program}. */
    program: Program,
    /** Parent element. */
    parent: Element | null,
    /** Declaration reference. */
    public declaration: DeclarationStatement
  ) {
    super(kind, name, internalName, program, parent);
    declaredElements.add(kind);
    // It is necessary to have access to identifiers of all members and exports
    // for reporting purposes and this is the lowest common denominator. Comes
    // at the expense of not having more specific type information in derived
    // classes, though. Instead, derived classes implement getters for other
    // important AST nodes directly through manual casting, allowing the resolver
    // etc. to not worry about actual declarations.
    this.declaration = declaration;
    this.flags = declaration.flags; // inherit
  }

  /** Tests if this element is a library element. */
  get isDeclaredInLibrary(): bool {
    return this.declaration.range.source.isLibrary;
  }

  /** Gets the associated identifier node. */
  get identifierNode(): IdentifierExpression {
    return this.declaration.name;
  }

  /** Gets the assiciated decorator nodes. */
  get decoratorNodes(): DecoratorNode[] | null {
    return this.declaration.decorators;
  }
}

// Kinds of all typed elements
var typedElements = new Set<ElementKind>();

/** Checks if the specified element kind indicates a typed element. */
export function isTypedElement(kind: ElementKind): bool {
  return typedElements.has(kind);
}

/** Base class of elements that can be resolved to a concrete type. */
export abstract class TypedElement extends DeclaredElement {

  /** Resolved type. Set once `is(RESOLVED)`, otherwise void. */
  type: Type = Type.void;

  constructor(
    /** Specific element kind. */
    kind: ElementKind,
    /** Simple name. */
    name: string,
    /** Internal name referring to this element. */
    internalName: string,
    /** Containing {@link Program}. */
    program: Program,
    /** Parent element. */
    parent: Element | null,
    /** Declaration reference. */
    declaration: DeclarationStatement
  ) {
    super(kind, name, internalName, program, parent, declaration);
    typedElements.add(kind);
  }

  /** Sets the resolved type of this element. */
  setType(type: Type): void {
    assert(!this.is(CommonFlags.RESOLVED));
    this.type = type;
    this.set(CommonFlags.RESOLVED);
  }
}

/** A file representing the implicit top-level namespace of a source. */
export class File extends Element {

  /** File exports. */
  exports: Map<string,DeclaredElement> | null = null;
  /** File re-exports. */
  exportsStar: File[] | null = null;
  /** Top-level start function of this file. */
  startFunction: Function;

  /** Constructs a new file. */
  constructor(
    /** Program this file belongs to. */
    program: Program,
    /** Source of this file. */
    public source: Source
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
    var startFunction = this.program.makeNativeFunction(
      "start:" + this.internalName,
      new Signature(program, null, Type.void),
      this
    );
    startFunction.internalName = startFunction.name;
    this.startFunction = startFunction;
  }

  /* @override */
  add(name: string, element: DeclaredElement, isImport: bool = false): bool {
    if (element.hasDecorator(DecoratorFlags.GLOBAL)) {
      element = this.program.ensureGlobal(name, element); // possibly merged globally
    }
    if (!super.add(name, element)) return false;
    element = assert(this.lookupInSelf(name)); // possibly merged locally
    if (element.is(CommonFlags.EXPORT) && !isImport) {
      this.ensureExport(
        element.name,
        element
      );
    }
    return true;
  }

  /* @override */
  lookupInSelf(name: string): DeclaredElement | null {
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

  /** Ensures that an element is an export of this file. */
  ensureExport(name: string, element: DeclaredElement): void {
    var exports = this.exports;
    if (!exports) this.exports = exports = new Map();
    exports.set(name, element);
    if (this.source.sourceKind == SourceKind.LIBRARY_ENTRY) this.program.ensureGlobal(name, element);
  }

  /** Ensures that another file is a re-export of this file. */
  ensureExportStar(file: File): void {
    var exportsStar = this.exportsStar;
    if (!exportsStar) this.exportsStar = exportsStar = [];
    else if (exportsStar.includes(file)) return;
    exportsStar.push(file);
  }

  /** Looks up the export of the specified name. */
  lookupExport(name: string): DeclaredElement | null {
    var exports = this.exports;
    if (exports && exports.has(name)) return exports.get(name)!;
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

/** A type definition. */
export class TypeDefinition extends TypedElement {

  /** Constructs a new type definition. */
  constructor(
    /** Simple name. */
    name: string,
    /** Parent element, usually a file or namespace. */
    parent: Element,
    /** Declaration reference. */
    declaration: TypeDeclaration,
    /** Pre-checked flags indicating built-in decorators. */
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.TYPEDEFINITION,
      name,
      mangleInternalName(name, parent, false),
      parent.program,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
  }

  /** Gets the associated type parameter nodes. */
  get typeParameterNodes(): TypeParameterNode[] | null {
    return (<TypeDeclaration>this.declaration).typeParameters;
  }

  /** Gets the associated type node. */
  get typeNode(): TypeNode {
    return (<TypeDeclaration>this.declaration).type;
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** A namespace that differs from a file in being user-declared with a name. */
export class Namespace extends DeclaredElement {

  /** Constructs a new namespace. */
  constructor(
    /** Simple name. */
    name: string,
    /** Parent element, usually a file or another namespace. */
    parent: Element,
    /** Declaration reference. */
    declaration: NamespaceDeclaration,
    /** Pre-checked flags indicating built-in decorators. */
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.NAMESPACE,
      name,
      mangleInternalName(name, parent, false),
      parent.program,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.lookupInSelf(name)
        || this.parent.lookup(name);
  }
}

/** An enum. */
export class Enum extends TypedElement {

  /** Constructs a new enum. */
  constructor(
    /** Simple name. */
    name: string,
    /** Parent element, usually a file or namespace. */
    parent: Element,
    /** Declaration reference. */
    declaration: EnumDeclaration,
    /** Pre-checked flags indicating built-in decorators. */
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.ENUM,
      name,
      mangleInternalName(name, parent, false),
      parent.program,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
    this.setType(Type.i32);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.lookupInSelf(name)
        || this.parent.lookup(name);
  }
}

/** Indicates the kind of an inlined constant value. */
export const enum ConstantValueKind {
  /** No constant value. */
  NONE,
  /** Constant integer value. */
  INTEGER,
  /** Constant float value. */
  FLOAT
}

/** Base class of all variable-like program elements. */
export abstract class VariableLikeElement extends TypedElement {

  /** Constant value kind. */
  constantValueKind: ConstantValueKind = ConstantValueKind.NONE;
  /** Constant integer value, if applicable. */
  constantIntegerValue: I64;
  /** Constant float value, if applicable. */
  constantFloatValue: f64;

  /** Constructs a new variable-like element. */
  protected constructor(
    /** Specific element kind. */
    kind: ElementKind,
    /** Simple name. */
    name: string,
    /** Parent element, usually a file, namespace or class. */
    parent: Element,
    /** Declaration reference. Creates a native declaration if omitted. */
    declaration: VariableLikeDeclarationStatement = parent.program.makeNativeVariableDeclaration(name)
  ) {
    super(
      kind,
      name,
      mangleInternalName(name, parent, false),
      parent.program,
      parent,
      declaration
    );
    this.flags = declaration.flags;
  }

  /** Gets the associated type node.s */
  get typeNode(): TypeNode | null {
    return (<VariableLikeDeclarationStatement>this.declaration).type;
  }

  /** Gets the associated initializer node. */
  get initializerNode(): Expression | null {
    return (<VariableLikeDeclarationStatement>this.declaration).initializer;
  }

  /** Applies a constant integer value to this element. */
  setConstantIntegerValue(value: I64, type: Type): void {
    assert(type.is(TypeFlags.INTEGER));
    this.type = type;
    this.constantValueKind = ConstantValueKind.INTEGER;
    this.constantIntegerValue = value;
    this.set(CommonFlags.CONST | CommonFlags.INLINED | CommonFlags.RESOLVED);
  }

  /** Applies a constant float value to this element. */
  setConstantFloatValue(value: f64, type: Type): void {
    assert(type.is(TypeFlags.FLOAT));
    this.type = type;
    this.constantValueKind = ConstantValueKind.FLOAT;
    this.constantFloatValue = value;
    this.set(CommonFlags.CONST | CommonFlags.INLINED | CommonFlags.RESOLVED);
  }

  /** @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** An enum value. */
export class EnumValue extends VariableLikeElement {

  /** Constructs a new enum value. */
  constructor(
    /** Simple name. */
    name: string,
    /** Parent enum. */
    parent: Enum,
    /** Declaration reference. */
    declaration: EnumValueDeclaration,
    /** Pre-checked flags indicating built-in decorators. */
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.ENUMVALUE,
      name,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
    this.setType(Type.i32);
  }

  /** Whether this enum value is immutable. */
  isImmutable: bool = false;

  /** Gets the associated value node. */
  get valueNode(): Expression | null {
    return (<EnumValueDeclaration>this.declaration).value;
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** A global variable. */
export class Global extends VariableLikeElement {

  /** Constructs a new global variable. */
  constructor(
    /** Simple name. */
    name: string,
    /** Parent element, usually a file, namespace or static class. */
    parent: Element,
    /** Pre-checked flags indicating built-in decorators. */
    decoratorFlags: DecoratorFlags,
    /** Declaration reference. Creates a native declaration if omitted. */
    declaration: VariableLikeDeclarationStatement = parent.program.makeNativeVariableDeclaration(name)
  ) {
    super(
      ElementKind.GLOBAL,
      name,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
  }
}

/** A function parameter. */
export class Parameter {
  /** Constructs a new function parameter. */
  constructor(
    /** Parameter name. */
    public name: string,
    /** Parameter type. */
    public type: Type,
    /** Parameter initializer, if present. */
    public initializer: Expression | null = null
  ) {}
}

/** A local variable. */
export class Local extends VariableLikeElement {

  /** Constructs a new local variable. */
  constructor(
    /** Simple name. */
    name: string,
    /** Zero-based index within the enclosing function. `-1` indicates a virtual local. */
    public index: i32,
    /** Resolved type. */
    type: Type,
    /** Parent function. */
    parent: Function,
    /** Declaration reference. */
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
    this.setType(type);
  }
}

/** A yet unresolved function prototype. */
export class FunctionPrototype extends DeclaredElement {

  /** Operator kind, if an overload. */
  operatorKind: OperatorKind = OperatorKind.INVALID;
  /** Already resolved instances. */
  instances: Map<string,Function> | null = null;

  /** Clones of this prototype that are bounds to specific classes. */
  private boundPrototypes: Map<Class,FunctionPrototype> | null = null;

  /** Constructs a new function prototype. */
  constructor(
    /** Simple name */
    name: string,
    /** Parent element, usually a file, namespace or class (if a method). */
    parent: Element,
    /** Declaration reference. */
    declaration: FunctionDeclaration,
    /** Pre-checked flags indicating built-in decorators. */
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.FUNCTION_PROTOTYPE,
      name,
      mangleInternalName(name, parent, declaration.is(CommonFlags.INSTANCE)),
      parent.program,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
  }

  /** Gets the associated type parameter nodes. */
  get typeParameterNodes(): TypeParameterNode[] | null {
    return (<FunctionDeclaration>this.declaration).typeParameters;
  }

  /** Gets the associated function type node. */
  get functionTypeNode(): FunctionTypeNode {
    return (<FunctionDeclaration>this.declaration).signature;
  }

  /** Gets the associated body node. */
  get bodyNode(): Statement | null {
    return (<FunctionDeclaration>this.declaration).body;
  }

  /** Gets the arrow function kind. */
  get arrowKind(): ArrowKind {
    return (<FunctionDeclaration>this.declaration).arrowKind;
  }

  /** Tests if this prototype is bound to a class. */
  get isBound(): bool {
    var parent = this.parent;
    return parent.kind == ElementKind.CLASS
        || parent.kind == ElementKind.PROPERTY_PROTOTYPE && parent.parent.kind == ElementKind.CLASS;
  }

  /** Creates a clone of this prototype that is bound to a concrete class instead. */
  toBound(classInstance: Class): FunctionPrototype {
    assert(this.is(CommonFlags.INSTANCE));
    assert(!this.isBound);
    var boundPrototypes = this.boundPrototypes;
    if (!boundPrototypes) this.boundPrototypes = boundPrototypes = new Map();
    else if (boundPrototypes.has(classInstance)) return boundPrototypes.get(classInstance)!;
    var declaration = this.declaration; assert(declaration.kind == NodeKind.METHODDECLARATION);
    var bound = new FunctionPrototype(
      this.name,
      classInstance, // !
      <MethodDeclaration>declaration,
      this.decoratorFlags
    );
    bound.flags = this.flags;
    bound.operatorKind = this.operatorKind;
    // NOTE: this.instances holds instances per bound class / unbound
    boundPrototypes.set(classInstance, bound);
    return bound;
  }

  /** Gets the resolved instance for the specified instance key, if already resolved. */
  getResolvedInstance(instanceKey: string): Function | null {
    var instances = this.instances;
    if (instances && instances.has(instanceKey)) return <Function>instances.get(instanceKey);
    return null;
  }

  /** Sets the resolved instance for the specified instance key. */
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
export class Function extends TypedElement {

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

  /** Counting id of inline operations involving this function. */
  nextInlineId: i32 = 0;
  /** Counting id of anonymous inner functions. */
  nextAnonymousId: i32 = 0;
  /** Counting id of autorelease variables. */
  nextAutoreleaseId: i32 = 0;

  /** Constructs a new concrete function. */
  constructor(
    /** Name incl. type parameters, i.e. `foo<i32>`. */
    nameInclTypeParameters: string,
    /** Respective function prototype. */
    prototype: FunctionPrototype,
    /** Concrete signature. */
    signature: Signature, // pre-resolved
    /** Contextual type arguments inherited from its parent class, if any. */
    contextualTypeArguments: Map<string,Type> | null = null
  ) {
    super(
      ElementKind.FUNCTION,
      nameInclTypeParameters,
      mangleInternalName(nameInclTypeParameters, prototype.parent, prototype.is(CommonFlags.INSTANCE)),
      prototype.program,
      prototype.parent,
      prototype.declaration
    );
    this.prototype = prototype;
    this.signature = signature;
    this.flags = prototype.flags | CommonFlags.RESOLVED;
    this.decoratorFlags = prototype.decoratorFlags;
    this.contextualTypeArguments = contextualTypeArguments;
    var program = prototype.program;
    this.type = program.options.usizeType.asFunction(signature);
    if (!prototype.is(CommonFlags.AMBIENT)) {
      let localIndex = 0;
      if (this.is(CommonFlags.INSTANCE)) {
        let local = new Local(
          CommonNames.this_,
          localIndex++,
          assert(signature.thisType),
          this
        );
        this.localsByName.set(CommonNames.this_, local);
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
    registerConcreteElement(program, this);
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
    if (locals.has(name)) return locals.get(name)!;
    return this.parent.lookup(name);
  }

  // used by flows to keep track of temporary locals
  tempI32s: Local[] | null = null;
  tempI64s: Local[] | null = null;
  tempF32s: Local[] | null = null;
  tempF64s: Local[] | null = null;
  tempV128s: Local[] | null = null;
  tempAnyrefs: Local[] | null = null;
  tempExnrefs: Local[] | null = null;

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

var nextFunctionTarget = 0;

/** A resolved function target, that is a function called indirectly by an index and signature. */
export class FunctionTarget extends Element {

  /** Underlying signature. */
  signature: Signature;
  /** Function type. */
  type: Type;

  /** Constructs a new function target. */
  constructor(
    /** Concrete signature. */
    signature: Signature,
    /** Program reference. */
    program: Program
  ) {
    super(
      ElementKind.FUNCTION_TARGET,
      "~sig" + nextFunctionTarget.toString(),
      "~sig" + nextFunctionTarget.toString(),
      program,
      program.nativeFile
    );
    ++nextFunctionTarget;
    this.signature = signature;
    this.flags = CommonFlags.RESOLVED;
    this.type = program.options.usizeType.asFunction(signature);
  }

  /* @override */
  lookup(name: string): Element | null {
    return null;
  }
}

/** A yet unresolved instance field prototype. */
export class FieldPrototype extends DeclaredElement {

  /** Constructs a new field prototype. */
  constructor(
    /** Simple name. */
    name: string,
    /** Parent class. */
    parent: ClassPrototype,
    /** Declaration reference. */
    declaration: FieldDeclaration,
    /** Pre-checked flags indicating built-in decorators. */
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE
  ) {
    super(
      ElementKind.FIELD_PROTOTYPE,
      name,
      mangleInternalName(name, parent, assert(declaration.is(CommonFlags.INSTANCE))),
      parent.program,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
  }

  /** Gets the associated type node. */
  get typeNode(): TypeNode | null {
    return (<FieldDeclaration>this.declaration).type;
  }

  /** Gets the associated initializer node. */
  get initializerNode(): Expression | null {
    return (<FieldDeclaration>this.declaration).initializer;
  }

  /** Gets the associated parameter index. Set if declared as a constructor parameter, otherwise `-1`. */
  get parameterIndex(): i32 {
    return (<FieldDeclaration>this.declaration).parameterIndex;
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
    /** Respective field prototype. */
    prototype: FieldPrototype,
    /** Parent class. */
    parent: Class,
    /** Concrete type. */
    type: Type
  ) {
    super(
      ElementKind.FIELD,
      prototype.name,
      parent,
      <VariableLikeDeclarationStatement>prototype.declaration
    );
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.decoratorFlags = prototype.decoratorFlags;
    assert(type != Type.void);
    this.setType(type);
    registerConcreteElement(this.program, this);
  }
}

/** A property comprised of a getter and a setter function. */
export class PropertyPrototype extends DeclaredElement {

  /** Getter prototype. */
  getterPrototype: FunctionPrototype | null = null;
  /** Setter prototype. */
  setterPrototype: FunctionPrototype | null = null;

  /** Constructs a new property prototype. */
  constructor(
    /** Simple name. */
    name: string,
    /** Parent class. */
    parent: ClassPrototype,
    /** Declaration of the getter or setter introducing the property. */
    firstDeclaration: FunctionDeclaration
  ) {
    super(
      ElementKind.PROPERTY_PROTOTYPE,
      name,
      mangleInternalName(name, parent, firstDeclaration.is(CommonFlags.INSTANCE)),
      parent.program,
      parent,
      firstDeclaration
    );
    this.flags &= ~(CommonFlags.GET | CommonFlags.SET);
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
    /** Respective property prototype. */
    prototype: PropertyPrototype,
    /** Parent element, usually a static class prototype or class instance. */
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
    this.flags = prototype.flags;
    this.decoratorFlags = prototype.decoratorFlags;
    registerConcreteElement(this.program, this);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** An resolved index signature. */
export class IndexSignature extends VariableLikeElement {

  /** Constructs a new index prototype. */
  constructor(
    /** Parent class. */
    parent: Class
  ) {
    super(ElementKind.INDEXSIGNATURE, parent.internalName + "[]", parent);
  }

  /** Obtains the getter instance. */
  getGetterInstance(isUnchecked: bool): Function | null {
    return (<Class>this.parent).lookupOverload(OperatorKind.INDEXED_GET, isUnchecked);
  }

  /** Obtains the setter instance. */
  getSetterInstance(isUnchecked: bool): Function | null {
    return (<Class>this.parent).lookupOverload(OperatorKind.INDEXED_SET, isUnchecked);
  }

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }
}

/** A yet unresolved class prototype. */
export class ClassPrototype extends DeclaredElement {

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
    /** Simple name. */
    name: string,
    /** Parent element, usually a file or namespace. */
    parent: Element,
    /** Declaration reference. */
    declaration: ClassDeclaration,
    /** Pre-checked flags indicating built-in decorators. */
    decoratorFlags: DecoratorFlags = DecoratorFlags.NONE,
    _isInterface: bool = false // FIXME
  ) {
    super(
      _isInterface ? ElementKind.INTERFACE_PROTOTYPE : ElementKind.CLASS_PROTOTYPE,
      name,
      mangleInternalName(name, parent, declaration.is(CommonFlags.INSTANCE)),
      parent.program,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
  }

  /** Gets the associated type parameter nodes. */
  get typeParameterNodes(): TypeParameterNode[] | null {
    return (<ClassDeclaration>this.declaration).typeParameters;
  }
  /** Gets the associated extends node. */
  get extendsNode(): NamedTypeNode | null {
    return (<ClassDeclaration>this.declaration).extendsType;
  }
  /** Gets the associated implements nodes. */
  get implementsNodes(): NamedTypeNode[] | null {
    return (<ClassDeclaration>this.declaration).implementsTypes;
  }

  /** Tests if this prototype is of a builtin array type (Array/TypedArray). */
  get isBuiltinArray(): bool {
    var arrayBufferViewInstance = this.program.arrayBufferViewInstance;
    return arrayBufferViewInstance !== null
        && this.extends(arrayBufferViewInstance.prototype);
  }

  /** Tests if this prototype extends the specified. */
  extends(basePtototype: ClassPrototype | null): bool {
    var current: ClassPrototype | null = this;
    do if (current === basePtototype) return true;
    while (current = current.basePrototype);
    return false;
  }

  /** Adds an element as an instance member of this one. Returns the previous element if a duplicate. */
  addInstance(name: string, element: DeclaredElement): bool {
    var originalDeclaration = element.declaration;
    var instanceMembers = this.instanceMembers;
    if (!instanceMembers) this.instanceMembers = instanceMembers = new Map();
    else if (instanceMembers.has(name)) {
      let existing = instanceMembers.get(name)!;
      let merged = tryMerge(existing, element);
      if (!merged) {
        if (isDeclaredElement(existing.kind)) {
          this.program.errorRelated(
            DiagnosticCode.Duplicate_identifier_0,
            element.identifierNode.range,
            (<DeclaredElement>existing).declaration.name.range,
            element.identifierNode.text
          );
        } else {
          this.program.error(
            DiagnosticCode.Duplicate_identifier_0,
            element.identifierNode.range, element.identifierNode.text
          );
        }
        return false;
      }
      element = merged;
    }
    instanceMembers.set(name, element);
    if (element.is(CommonFlags.EXPORT) && this.is(CommonFlags.MODULE_EXPORT)) {
      element.set(CommonFlags.MODULE_EXPORT); // propagate
    }
    this.program.elementsByDeclaration.set(originalDeclaration, element);
    return true;
  }

  /** Gets the resolved instance for the specified instance key, if already resolved. */
  getResolvedInstance(instanceKey: string): Class | null {
    var instances = this.instances;
    if (instances && instances.has(instanceKey)) return <Class>instances.get(instanceKey);
    return null;
  }

  /** Sets the resolved instance for the specified instance key. */
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

const enum AcyclicState {
  UNKNOWN,
  ACYCLIC,
  NOT_ACYCLIC
}

/** A resolved class. */
export class Class extends TypedElement {

  /** Class prototype. */
  prototype: ClassPrototype;
  /** Resolved type arguments. */
  typeArguments: Type[] | null;
  /** Base class, if applicable. */
  base: Class | null;
  /** Contextual type arguments for fields and methods. */
  contextualTypeArguments: Map<string,Type> | null = null;
  /** Current member memory offset. */
  nextMemoryOffset: u32 = 0;
  /** Constructor instance. */
  constructorInstance: Function | null = null;
  /** Operator overloads. */
  overloads: Map<OperatorKind,Function> | null = null;
  /** Index signature, if present. */
  indexSignature: IndexSignature | null = null;
  /** Unique class id. */
  private _id: u32 = 0;
  /** Remembers acyclic state. */
  private _acyclic: AcyclicState = AcyclicState.UNKNOWN;
  /** Runtime type information flags. */
  rttiFlags: u32 = 0;
  /** Wrapped type, if a wrapper for a basic type. */
  wrappedType: Type | null = null;

  /** Gets the unique runtime id of this class. */
  get id(): u32 {
    return this._id; // unmanaged remains 0 (=ArrayBuffer)
  }

  /** Tests if this class is of a builtin array type (Array/TypedArray). */
  get isBuiltinArray(): bool {
    return this.prototype.isBuiltinArray;
  }

  /** Tests if this class is array-like. */
  get isArrayLike(): bool {
    if (this.isBuiltinArray) return true;
    var lengthField = this.lookupInSelf("length");
    return lengthField !== null && (
      lengthField.kind == ElementKind.FIELD ||
      (
        lengthField.kind == ElementKind.PROPERTY &&
        (<Property>lengthField).getterInstance !== null // TODO: resolve & check type?
      )
    ) && (
      this.lookupOverload(OperatorKind.INDEXED_GET) !== null ||
      this.lookupOverload(OperatorKind.UNCHECKED_INDEXED_GET) !== null
    );
  }

  /** Constructs a new class. */
  constructor(
    /** Name incl. type parameters, i.e. `Foo<i32>`. */
    nameInclTypeParameters: string,
    /** The respective class prototype. */
    prototype: ClassPrototype,
    /** Concrete type arguments, if any. */
    typeArguments: Type[] | null = null,
    _isInterface: bool = false // FIXME
  ) {
    super(
      _isInterface ? ElementKind.INTERFACE : ElementKind.CLASS,
      nameInclTypeParameters,
      mangleInternalName(nameInclTypeParameters, prototype.parent, prototype.is(CommonFlags.INSTANCE)),
      prototype.program,
      prototype.parent,
      prototype.declaration
    );
    var program = this.program;
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.decoratorFlags = prototype.decoratorFlags;
    this.typeArguments = typeArguments;
    this.setType(program.options.usizeType.asClass(this));

    if (!this.hasDecorator(DecoratorFlags.UNMANAGED)) {
      let id = program.nextClassId++;
      this._id = id;
      program.managedClasses.set(id, this);
    }

    // apply pre-checked instance-specific contextual type arguments
    var typeParameters = prototype.typeParameterNodes;
    if (typeArguments) {
      let numTypeArguments = typeArguments.length;
      if (!typeParameters || numTypeArguments != typeParameters.length) {
        throw new Error("type argument count mismatch");
      }
      if (numTypeArguments) {
        if (!this.contextualTypeArguments) this.contextualTypeArguments = new Map();
        for (let i = 0; i < numTypeArguments; ++i) {
          this.contextualTypeArguments.set(typeParameters[i].name.text, typeArguments[i]);
        }
      }
    } else if (typeParameters && typeParameters.length) {
      throw new Error("type argument count mismatch");
    }
    registerConcreteElement(program, this);
  }

  /** Sets the base class. */
  setBase(base: Class): void {
    assert(!this.base);
    this.base = base;

    // Inherit contextual type arguments from base class
    var inheritedTypeArguments = base.contextualTypeArguments;
    if (inheritedTypeArguments) {
      let contextualTypeArguments = this.contextualTypeArguments;
      for (let [baseName, baseType] of inheritedTypeArguments) {
        if (!contextualTypeArguments) {
          this.contextualTypeArguments = contextualTypeArguments = new Map();
          contextualTypeArguments.set(baseName, baseType);
        } else if (!contextualTypeArguments.has(baseName)) {
          contextualTypeArguments.set(baseName, baseType);
        }
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

  /* @override */
  lookup(name: string): Element | null {
    return this.parent.lookup(name);
  }

  /** Calculates the memory offset of the specified field. */
  offsetof(fieldName: string): u32 {
    var members = assert(this.members);
    assert(members.has(fieldName));
    var field = <Element>members.get(fieldName);
    assert(field.kind == ElementKind.FIELD);
    return (<Field>field).memoryOffset;
  }

  /** Writes a field value to a buffer and returns the number of bytes written. */
  writeField<T>(name: string, value: T, buffer: Uint8Array, baseOffset: i32): i32 {
    var field = this.lookupInSelf(name);
    if (field !== null && field.kind == ElementKind.FIELD) {
      let offset = baseOffset + (<Field>field).memoryOffset;
      switch ((<Field>field).type.kind) {
        case TypeKind.I8:
        case TypeKind.U8: {
          writeI8(i32(value), buffer, offset);
          return 1;
        }
        case TypeKind.I16:
        case TypeKind.U16: {
          writeI16(i32(value), buffer, offset);
          return 2;
        }
        case TypeKind.I32:
        case TypeKind.U32: {
          writeI32(i32(value), buffer, offset);
          return 4;
        }
        case TypeKind.ISIZE:
        case TypeKind.USIZE: {
          assert(!this.program.options.isWasm64); // TODO
          writeI32(i32(value), buffer, offset);
          return 4;
        }
        case TypeKind.F32: {
          writeF32(f32(value), buffer, offset);
          return 4;
        }
        case TypeKind.F64: {
          writeF64(f64(value), buffer, offset);
          return 8;
        }
      }
    }
    assert(false);
    return 0;
  }

  /** Tests if this class extends the specified prototype. */
  extends(prototype: ClassPrototype): bool {
    return this.prototype.extends(prototype);
  }

  /** Gets the concrete type arguments to the specified extendend prototype. */
  getTypeArgumentsTo(extendedPrototype: ClassPrototype): Type[] | null {
    var current: Class | null = this;
    do if (current.prototype === extendedPrototype) return current.typeArguments;
    while (current = current.base);
    return null;
  }

  /** Gets the value type of an array. Must be an array. */
  getArrayValueType(): Type {
    var current: Class = this;
    var program = this.program;
    var abvInstance = program.arrayBufferViewInstance;
    while (current.base !== abvInstance) {
      current = assert(current.base);
    }
    switch (current.prototype) {
      case program.i8ArrayPrototype: return Type.i8;
      case program.i16ArrayPrototype: return Type.i16;
      case program.i32ArrayPrototype: return Type.i32;
      case program.i64ArrayPrototype: return Type.i64;
      case program.u8ArrayPrototype:
      case program.u8ClampedArrayPrototype: return Type.u8;
      case program.u16ArrayPrototype: return Type.u16;
      case program.u32ArrayPrototype: return Type.u32;
      case program.u64ArrayPrototype: return Type.u64;
      case program.f32ArrayPrototype: return Type.f32;
      case program.f64ArrayPrototype: return Type.f64;
      case program.arrayPrototype: return assert(this.getTypeArgumentsTo(program.arrayPrototype))[0];
      default: assert(false);
    }
    return Type.void;
  }

  /** Tests if this class is inherently acyclic. */
  get isAcyclic(): bool {
    var acyclic = this._acyclic;
    if (acyclic == AcyclicState.UNKNOWN) {
      let hasCycle = this.cyclesTo(this);
      if (hasCycle) this._acyclic = acyclic = AcyclicState.NOT_ACYCLIC;
      else this._acyclic = acyclic = AcyclicState.ACYCLIC;
    }
    return acyclic == AcyclicState.ACYCLIC;
  }

  /** Tests if this class potentially forms a reference cycle to another one. */
  private cyclesTo(other: Class, except: Set<Class> = new Set()): bool {
    // TODO: The pure RC paper describes acyclic data structures as classes that may contain
    //
    // - scalars
    // - references to classes that are both acyclic and final (here: Java); and
    // - arrays (in our case: also sets, maps) of either of the above
    //
    // Our implementation, however, treats all objects that do not reference themselves directly
    // or indirectly as acylic, allowing them to contain inner cycles of other non-acyclic objects.
    // This contradicts the second assumption and must be revisited when actually implementing RC.

    if (except.has(this)) return false;
    except.add(this); // don't recurse indefinitely

    // Find out if any field references 'other' directly or indirectly
    var current: Class | null;
    var members = this.members;
    if (members) {
      for (let member of members.values()) {
        if (member.kind == ElementKind.FIELD) {
          let type = (<Field>member).type;
          if (type.is(TypeFlags.REFERENCE)) {
            if ((current = type.classReference) !== null && (
              current === other ||
              current.cyclesTo(other, except)
            )) return true;
          }
        }
      }
    }

    // Do the same for non-field data
    var basePrototype: ClassPrototype | null;

    // Array<T->other?>
    if ((basePrototype = this.program.arrayPrototype) && this.prototype.extends(basePrototype)) {
      let typeArguments = assert(this.getTypeArgumentsTo(basePrototype));
      assert(typeArguments.length == 1);
      if (
        (current = typeArguments[0].classReference) !== null &&
        (
          current === other ||
          current.cyclesTo(other, except)
        )
      ) return true;

    // Set<K->other?>
    } else if ((basePrototype = this.program.setPrototype) && this.prototype.extends(basePrototype)) {
      let typeArguments = assert(this.getTypeArgumentsTo(basePrototype));
      assert(typeArguments.length == 1);
      if (
        (current = typeArguments[0].classReference) !== null &&
        (
          current === other ||
          current.cyclesTo(other, except)
        )
      ) return true;

    // Map<K->other?,V->other?>
    } else if ((basePrototype = this.program.mapPrototype) && this.prototype.extends(basePrototype)) {
      let typeArguments = assert(this.getTypeArgumentsTo(basePrototype));
      assert(typeArguments.length == 2);
      if (
        (current = typeArguments[0].classReference) !== null &&
        (
          current === other ||
          current.cyclesTo(other, except)
        )
      ) return true;
      if (
        (current = typeArguments[1].classReference) !== null &&
        (
          current === other ||
          current.cyclesTo(other, except)
        )
      ) return true;
    }
    return false;
  }
}

/** A yet unresolved interface. */
export class InterfacePrototype extends ClassPrototype { // FIXME

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
    typeArguments: Type[] = []
  ) {
    super(
      nameInclTypeParameters,
      prototype,
      typeArguments,
      true
    );
  }
}

/** Registers a concrete element with a program. */
function registerConcreteElement(program: Program, element: Element): void {
  assert(!program.instancesByName.has(element.internalName));
  program.instancesByName.set(element.internalName, element);
}

/** Attempts to merge two elements. Returns the merged element on success. */
function tryMerge(older: Element, newer: Element): DeclaredElement | null {
  // NOTE: some of the following cases are not supported by TS, not sure why exactly.
  // suggesting to just merge what seems to be possible for now and revisit later.
  assert(older.program === newer.program);
  assert(!newer.members);
  var merged: DeclaredElement | null = null;
  switch (older.kind) {
    case ElementKind.FUNCTION_PROTOTYPE: {
      switch (newer.kind) {
        case ElementKind.NAMESPACE: {
          copyMembers(newer, older);
          merged = <DeclaredElement>older;
          break;
        }
        case ElementKind.TYPEDEFINITION: {
          if (!older.shadowType) {
            older.shadowType = <TypeDefinition>newer;
            copyMembers(newer, older);
            merged = <DeclaredElement>older;
          }
          break;
        }
      }
      break;
    }
    case ElementKind.CLASS_PROTOTYPE:
    case ElementKind.ENUM: {
      if (newer.kind == ElementKind.NAMESPACE) {
        copyMembers(newer, older);
        merged = <DeclaredElement>older;
        break;
      }
      break;
    }
    case ElementKind.NAMESPACE: {
      switch (newer.kind) {
        case ElementKind.ENUM:
        case ElementKind.CLASS_PROTOTYPE:      // TS2434
        case ElementKind.FUNCTION_PROTOTYPE: { // TS2434
          copyMembers(older, newer);
          merged = <DeclaredElement>newer;
          break;
        }
        case ElementKind.NAMESPACE: {
          copyMembers(newer, older);
          merged = <DeclaredElement>older;
          break;
        }
        case ElementKind.TYPEDEFINITION: {
          if (!older.shadowType) {
            older.shadowType = <TypeDefinition>newer;
            copyMembers(newer, older);
            merged = <DeclaredElement>older;
          }
          break;
        }
      }
      break;
    }
    case ElementKind.GLOBAL: {
      if (newer.kind == ElementKind.TYPEDEFINITION) {
        if (!older.shadowType) {
          older.shadowType = <TypeDefinition>newer;
          copyMembers(newer, older);
          merged = <DeclaredElement>older;
        }
      }
      break;
    }
    case ElementKind.TYPEDEFINITION: {
      switch (newer.kind) {
        case ElementKind.GLOBAL:
        case ElementKind.FUNCTION_PROTOTYPE:
        case ElementKind.NAMESPACE: {
          if (!newer.shadowType) {
            newer.shadowType = <TypeDefinition>older;
            copyMembers(older, newer);
            merged = <DeclaredElement>newer;
          }
          break;
        }
      }
      break;
    }
  }
  if (merged) {
    let olderIsExport = older.is(CommonFlags.EXPORT) || older.hasDecorator(DecoratorFlags.GLOBAL);
    let newerIsExport = newer.is(CommonFlags.EXPORT) || newer.hasDecorator(DecoratorFlags.GLOBAL);
    if (olderIsExport != newerIsExport) {
      older.program.error(
        DiagnosticCode.Individual_declarations_in_merged_declaration_0_must_be_all_exported_or_all_local,
        merged.identifierNode.range, merged.identifierNode.text
      );
    }
  }
  return merged;
}

/** Copies the members of `src` to `dest`. */
function copyMembers(src: Element, dest: Element): void {
  var srcMembers = src.members;
  if (srcMembers) {
    let destMembers = dest.members;
    if (!destMembers) dest.members = destMembers = new Map();
    for (let [memberName, member] of srcMembers) {
      destMembers.set(memberName, member);
    }
  }
}

/** Mangles the internal name of an element with the specified name that is a child of the given parent. */
export function mangleInternalName(name: string, parent: Element, isInstance: bool, asGlobal: bool = false): string {
  switch (parent.kind) {
    case ElementKind.FILE: {
      if (asGlobal) return name;
      return parent.internalName + PATH_DELIMITER + name;
    }
    case ElementKind.FUNCTION: {
      if (asGlobal) return name;
      assert(!isInstance);
      return parent.internalName + INNER_DELIMITER + name;
    }
    default: {
      return mangleInternalName(parent.name, parent.parent, parent.is(CommonFlags.INSTANCE), asGlobal)
           + (isInstance ? INSTANCE_DELIMITER : STATIC_DELIMITER) + name;
    }
  }
}
