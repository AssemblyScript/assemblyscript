/**
 * @fileoverview AssemblyScript's intermediate representation.
 *
 * The compiler uses Binaryen IR, which is fairly low level, as its
 * primary intermediate representation, with the following structures
 * holding any higher level information that cannot be represented by
 * Binaryen IR alone, for example higher level types.
 *
 * Similar to the AST being composed of `Node`s in `Source`s, the IR is
 * composed of `Element`s in a `Program`. Each class or function is
 * represented by a "prototype" holding all the relevant information,
 * including each's concrete instances. If a class or function is not
 * generic, there is exactly one instance, otherwise there is one for
 * each concrete set of type arguments.
 *
 * @license Apache-2.0
 */

// Element                    Base class of all elements
// ├─DeclaredElement          Base class of elements with a declaration
// │ ├─TypedElement           Base class of elements resolving to a type
// │ │ ├─TypeDefinition       Type alias declaration
// │ │ ├─VariableLikeElement  Base class of all variable-like elements
// │ │ │ ├─EnumValue          Enum value
// │ │ │ ├─Global             File global
// │ │ │ ├─Local              Function local
// │ │ │ ├─Field              Class field (instance only)
// │ │ │ └─Property           Class property
// │ │ ├─IndexSignature       Class index signature
// │ │ ├─Function             Concrete function instance
// │ │ └─Class                Concrete class instance
// │ ├─Namespace              Namespace with static members
// │ ├─FunctionPrototype      Prototype of concrete function instances
// │ ├─FieldPrototype         Prototype of concrete field instances
// │ ├─PropertyPrototype      Prototype of concrete property instances
// │ └─ClassPrototype         Prototype of concrete classe instances
// └─File                     File, analogous to Source in the AST

import {
  CommonFlags,
  PATH_DELIMITER,
  STATIC_DELIMITER,
  INSTANCE_DELIMITER,
  GETTER_PREFIX,
  SETTER_PREFIX,
  INNER_DELIMITER,
  LIBRARY_PREFIX,
  INDEX_SUFFIX,
  STUB_DELIMITER,
  CommonNames,
  Feature,
  Target
} from "./common";

import {
  Options
} from "./compiler";

import {
  Range,
  DiagnosticCode,
  DiagnosticMessage,
  DiagnosticEmitter
} from "./diagnostics";

import {
  Type,
  TypeKind,
  Signature,
  TypeFlags
} from "./types";

import {
  Token
} from "./tokenizer";

import {
  Node,
  NodeKind,
  Source,
  SourceKind,
  DecoratorNode,
  DecoratorKind,
  TypeParameterNode,
  TypeNode,
  NamedTypeNode,
  FunctionTypeNode,
  ArrowKind,

  Expression,
  IdentifierExpression,
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
  VariableStatement,
  ParameterKind
} from "./ast";

import {
  Module,
  FunctionRef,
  MemorySegment,
  getFunctionName
} from "./module";

import {
  CharCode,
  writeI8,
  writeI16,
  writeI32,
  writeF32,
  writeF64,
  writeI64,
  writeI32AsI64,
  writeI64AsI32
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

import {
  BuiltinNames
} from "./builtins";

// Memory manager constants
const AL_SIZE = 16;
const AL_MASK = AL_SIZE - 1;

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
  Invalid,

  // indexed access
  IndexedGet,          // a[]
  IndexedSet,          // a[]=b
  UncheckedIndexedGet, // unchecked(a[])
  UncheckedIndexedSet, // unchecked(a[]=b)

  // binary
  Add,                 // a + b
  Sub,                 // a - b
  Mul,                 // a * b
  Div,                 // a / b
  Rem,                 // a % b
  Pow,                 // a ** b
  BitwiseAnd,          // a & b
  BitwiseOr,           // a | b
  BitwiseXor,          // a ^ b
  BitwiseShl,          // a << b
  BitwiseShr,          // a >> b
  BitwiseShrU,         // a >>> b
  Eq,                  // a == b, a === b
  Ne,                  // a != b, a !== b
  Gt,                  // a > b
  Ge,                  // a >= b
  Lt,                  // a < b
  Le,                  // a <= b

  // unary prefix
  Plus,                // +a
  Minus,               // -a
  Not,                 // !a
  BitwiseNot,          // ~a
  PrefixInc,           // ++a
  PrefixDec,           // --a

  // unary postfix
  PostfixInc,          // a++
  PostfixDec           // a--

  // not overridable:
  // LogicalAnd        // a && b
  // LogicalOr         // a || b
}

export namespace OperatorKind {

  /** Returns the operator kind represented by the specified decorator and string argument. */
  export function fromDecorator(decoratorKind: DecoratorKind, arg: string): OperatorKind {
    assert(arg.length);
    switch (decoratorKind) {
      case DecoratorKind.Operator:
      case DecoratorKind.OperatorBinary: {
        switch (arg.charCodeAt(0)) {
          case CharCode.OpenBracket: {
            if (arg == "[]") return OperatorKind.IndexedGet;
            if (arg == "[]=") return OperatorKind.IndexedSet;
            break;
          }
          case CharCode.OpenBrace: {
            if (arg == "{}") return OperatorKind.UncheckedIndexedGet;
            if (arg == "{}=") return OperatorKind.UncheckedIndexedSet;
            break;
          }
          case CharCode.Plus: {
            if (arg == "+") return OperatorKind.Add;
            break;
          }
          case CharCode.Minus: {
            if (arg == "-") return OperatorKind.Sub;
            break;
          }
          case CharCode.Asterisk: {
            if (arg == "*") return OperatorKind.Mul;
            if (arg == "**") return OperatorKind.Pow;
            break;
          }
          case CharCode.Slash: {
            if (arg == "/") return OperatorKind.Div;
            break;
          }
          case CharCode.Percent: {
            if (arg == "%") return OperatorKind.Rem;
            break;
          }
          case CharCode.Ampersand: {
            if (arg == "&") return OperatorKind.BitwiseAnd;
            break;
          }
          case CharCode.Bar: {
            if (arg == "|") return OperatorKind.BitwiseOr;
            break;
          }
          case CharCode.Caret: {
            if (arg == "^") return OperatorKind.BitwiseXor;
            break;
          }
          case CharCode.Equals: {
            if (arg == "==") return OperatorKind.Eq;
            break;
          }
          case CharCode.Exclamation: {
            if (arg == "!=") return OperatorKind.Ne;
            break;
          }
          case CharCode.GreaterThan: {
            if (arg == ">") return OperatorKind.Gt;
            if (arg == ">=") return OperatorKind.Ge;
            if (arg == ">>") return OperatorKind.BitwiseShr;
            if (arg == ">>>") return OperatorKind.BitwiseShrU;
            break;
          }
          case CharCode.LessThan: {
            if (arg == "<") return OperatorKind.Lt;
            if (arg == "<=") return OperatorKind.Le;
            if (arg == "<<") return OperatorKind.BitwiseShl;
            break;
          }
        }
        break;
      }
      case DecoratorKind.OperatorPrefix: {
        switch (arg.charCodeAt(0)) {
          case CharCode.Plus: {
            if (arg == "+") return OperatorKind.Plus;
            if (arg == "++") return OperatorKind.PrefixInc;
            break;
          }
          case CharCode.Minus: {
            if (arg == "-") return OperatorKind.Minus;
            if (arg == "--") return OperatorKind.PrefixDec;
            break;
          }
          case CharCode.Exclamation: {
            if (arg == "!") return OperatorKind.Not;
            break;
          }
          case CharCode.Tilde: {
            if (arg == "~") return OperatorKind.BitwiseNot;
            break;
          }
        }
        break;
      }
      case DecoratorKind.OperatorPostfix: {
        switch (arg.charCodeAt(0)) {
          case CharCode.Plus: {
            if (arg == "++") return OperatorKind.PostfixInc;
            break;
          }
          case CharCode.Minus: {
            if (arg == "--") return OperatorKind.PostfixDec;
            break;
          }
        }
        break;
      }
    }
    return OperatorKind.Invalid;
  }

  /** Converts a binary operator token to the respective operator kind. */
  export function fromBinaryToken(token: Token): OperatorKind {
    switch (token) {
      case Token.Plus:
      case Token.Plus_Equals: return OperatorKind.Add;
      case Token.Minus:
      case Token.Minus_Equals: return OperatorKind.Sub;
      case Token.Asterisk:
      case Token.Asterisk_Equals: return OperatorKind.Mul;
      case Token.Slash:
      case Token.Slash_Equals: return OperatorKind.Div;
      case Token.Percent:
      case Token.Percent_Equals: return OperatorKind.Rem;
      case Token.Asterisk_Asterisk:
      case Token.Asterisk_Asterisk_Equals: return OperatorKind.Pow;
      case Token.Ampersand:
      case Token.Ampersand_Equals: return OperatorKind.BitwiseAnd;
      case Token.Bar:
      case Token.Bar_Equals: return OperatorKind.BitwiseOr;
      case Token.Caret:
      case Token.Caret_Equals: return OperatorKind.BitwiseXor;
      case Token.LessThan_LessThan:
      case Token.LessThan_LessThan_Equals: return OperatorKind.BitwiseShl;
      case Token.GreaterThan_GreaterThan:
      case Token.GreaterThan_GreaterThan_Equals: return OperatorKind.BitwiseShr;
      case Token.GreaterThan_GreaterThan_GreaterThan:
      case Token.GreaterThan_GreaterThan_GreaterThan_Equals: return OperatorKind.BitwiseShrU;
      case Token.Equals_Equals: return OperatorKind.Eq;
      case Token.Exclamation_Equals: return OperatorKind.Ne;
      case Token.GreaterThan: return OperatorKind.Gt;
      case Token.GreaterThan_Equals: return OperatorKind.Ge;
      case Token.LessThan: return OperatorKind.Lt;
      case Token.LessThan_Equals: return OperatorKind.Le;
    }
    return OperatorKind.Invalid;
  }

  /** Converts a unary prefix operator token to the respective operator kind. */
  export function fromUnaryPrefixToken(token: Token): OperatorKind {
    switch (token) {
      case Token.Plus: return OperatorKind.Plus;
      case Token.Minus: return OperatorKind.Minus;
      case Token.Exclamation: return OperatorKind.Not;
      case Token.Tilde: return OperatorKind.BitwiseNot;
      case Token.Plus_Plus: return OperatorKind.PrefixInc;
      case Token.Minus_Minus: return OperatorKind.PrefixDec;
    }
    return OperatorKind.Invalid;
  }

  /** Converts a unary postfix operator token to the respective operator kind. */
  export function fromUnaryPostfixToken(token: Token): OperatorKind {
    switch (token) {
      case Token.Plus_Plus: return OperatorKind.PostfixInc;
      case Token.Minus_Minus: return OperatorKind.PostfixDec;
    }
    return OperatorKind.Invalid;
  }
}

/** Represents an AssemblyScript program. */
export class Program extends DiagnosticEmitter {

  /** Constructs a new program, optionally inheriting parser diagnostics. */
  constructor(
    /** Compiler options. */
    public options: Options,
    /** Shared array of diagnostic messages (emitted so far). */
    diagnostics: DiagnosticMessage[] | null = null
  ) {
    super(diagnostics);
    let nativeSource = new Source(SourceKind.LibraryEntry, LIBRARY_PREFIX + "native.ts", "[native code]");
    this.nativeSource = nativeSource;
    this.parser = new Parser(this.diagnostics, this.sources);
    this.resolver = new Resolver(this);
    let nativeFile = new File(this, nativeSource);
    this.nativeFile = nativeFile;
    this.filesByName.set(nativeFile.internalName, nativeFile);
  }

  /** Parser instance. */
  parser: Parser;
  /** Resolver instance. */
  resolver!: Resolver;
  /** Array of sources. */
  sources: Source[] = [];
  /** Diagnostic offset used where successively obtaining the next diagnostic. */
  diagnosticsOffset: i32 = 0;
  /** Special native code source. */
  nativeSource: Source;
  /** Special native code range. */
  get nativeRange(): Range { return this.nativeSource.range; }
  /** Special native code file. */
  nativeFile!: File;
  /** Next class id. */
  nextClassId: u32 = 0;
  /** Next signature id. */
  nextSignatureId: i32 = 0;
  /** An indicator if the program has been initialized. */
  initialized: bool = false;

  // Lookup maps

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
  /** Module exports. */
  moduleExports: Map<string,Element> = new Map();
  /** Module imports. */
  moduleImports: Map<string,Map<string,Element>> = new Map();

  // Standard library

  /** Gets the standard `ArrayBufferView` instance. */
  get arrayBufferViewInstance(): Class {
    let cached = this._arrayBufferViewInstance;
    if (!cached) this._arrayBufferViewInstance = cached = this.requireClass(CommonNames.ArrayBufferView);
    return cached;
  }
  private _arrayBufferViewInstance: Class | null = null;

  /** Gets the standard `ArrayBuffer` instance. */
  get arrayBufferInstance(): Class {
    let cached = this._arrayBufferInstance;
    if (!cached) this._arrayBufferInstance = cached = this.requireClass(CommonNames.ArrayBuffer);
    return cached;
  }
  private _arrayBufferInstance: Class | null = null;

  /** Gets the standard `Array` prototype. */
  get arrayPrototype(): ClassPrototype {
    let cached = this._arrayPrototype;
    if (!cached) this._arrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _arrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `StaticArray` prototype. */
  get staticArrayPrototype(): ClassPrototype {
    let cached = this._staticArrayPrototype;
    if (!cached) this._staticArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.StaticArray, ElementKind.ClassPrototype);
    return cached;
  }
  private _staticArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Set` prototype. */
  get setPrototype(): ClassPrototype {
    let cached = this._setPrototype;
    if (!cached) this._setPrototype = cached = <ClassPrototype>this.require(CommonNames.Set, ElementKind.ClassPrototype);
    return cached;
  }
  private _setPrototype: ClassPrototype | null = null;

  /** Gets the standard `Map` prototype. */
  get mapPrototype(): ClassPrototype {
    let cached = this._mapPrototype;
    if (!cached) this._mapPrototype = cached = <ClassPrototype>this.require(CommonNames.Map, ElementKind.ClassPrototype);
    return cached;
  }
  private _mapPrototype: ClassPrototype | null = null;

  /** Gets the standard `Function` prototype. */
  get functionPrototype(): ClassPrototype {
    let cached = this._functionPrototype;
    if (!cached) this._functionPrototype = cached = <ClassPrototype>this.require(CommonNames.Function, ElementKind.ClassPrototype);
    return cached;
  }
  private _functionPrototype: ClassPrototype | null = null;

  /** Gets the standard `Int8Array` prototype. */
  get int8ArrayPrototype(): ClassPrototype {
    let cached = this._int8ArrayPrototype;
    if (!cached) this._int8ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Int8Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _int8ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Int16Array` prototype. */
  get int16ArrayPrototype(): ClassPrototype {
    let cached = this._int16ArrayPrototype;
    if (!cached) this._int16ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Int16Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _int16ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Int32Array` prototype. */
  get int32ArrayPrototype(): ClassPrototype {
    let cached = this._int32ArrayPrototype;
    if (!cached) this._int32ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Int32Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _int32ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Int64Array` prototype. */
  get int64ArrayPrototype(): ClassPrototype {
    let cached = this._int64ArrayPrototype;
    if (!cached) this._int64ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Int64Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _int64ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Uint8Array` prototype. */
  get uint8ArrayPrototype(): ClassPrototype {
    let cached = this._uint8ArrayPrototype;
    if (!cached) this._uint8ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Uint8Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _uint8ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Uint8ClampedArray` prototype. */
  get uint8ClampedArrayPrototype(): ClassPrototype {
    let cached = this._uint8ClampedArrayPrototype;
    if (!cached) this._uint8ClampedArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Uint8ClampedArray, ElementKind.ClassPrototype);
    return cached;
  }
  private _uint8ClampedArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Uint16Array` prototype. */
  get uint16ArrayPrototype(): ClassPrototype {
    let cached = this._uint16ArrayPrototype;
    if (!cached) this._uint16ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Uint16Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _uint16ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Uint32Array` prototype. */
  get uint32ArrayPrototype(): ClassPrototype {
    let cached = this._uint32ArrayPrototype;
    if (!cached) this._uint32ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Uint32Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _uint32ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Uint64Array` prototype. */
  get uint64ArrayPrototype(): ClassPrototype {
    let cached = this._uint64ArrayPrototype;
    if (!cached) this._uint64ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Uint64Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _uint64ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Float32Array` prototype. */
  get float32ArrayPrototype(): ClassPrototype {
    let cached = this._float32ArrayPrototype;
    if (!cached) this._float32ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Float32Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _float32ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `Float64Array` prototype. */
  get float64ArrayPrototype(): ClassPrototype {
    let cached = this._float64ArrayPrototype;
    if (!cached) this._float64ArrayPrototype = cached = <ClassPrototype>this.require(CommonNames.Float64Array, ElementKind.ClassPrototype);
    return cached;
  }
  private _float64ArrayPrototype: ClassPrototype | null = null;

  /** Gets the standard `String` instance. */
  get stringInstance(): Class {
    let cached = this._stringInstance;
    if (!cached) this._stringInstance = cached = this.requireClass(CommonNames.String);
    return cached;
  }
  private _stringInstance: Class | null = null;

  /** Gets the standard `RegExp` instance. */
  get regexpInstance(): Class {
    let cached = this._regexpInstance;
    if (!cached) this._regexpInstance = cached = this.requireClass(CommonNames.RegExp);
    return cached;
  }
  private _regexpInstance: Class | null = null;

  /** Gets the standard `Object` instance. */
  get objectInstance(): Class {
    let cached = this._objectInstance;
    if (!cached) this._objectInstance = cached = this.requireClass(CommonNames.Object);
    return cached;
  }
  private _objectInstance: Class | null = null;

  /** Gets the standard `TemplateStringsArray` instance. */
  get templateStringsArrayInstance(): Class {
    let cached = this._templateStringsArrayInstance;
    if (!cached) this._templateStringsArrayInstance = cached = this.requireClass(CommonNames.TemplateStringsArray);
    return cached;
  }
  private _templateStringsArrayInstance: Class | null = null;

  /** Gets the standard `abort` instance, if not explicitly disabled. */
  get abortInstance(): Function | null {
    let prototype = this.lookup(CommonNames.abort);
    if (!prototype || prototype.kind != ElementKind.FunctionPrototype) return null;
    return this.resolver.resolveFunction(<FunctionPrototype>prototype, null);
  }

  // Runtime interface

  /** Gets the runtime `__alloc(size: usize): usize` instance. */
  get allocInstance(): Function {
    let cached = this._allocInstance;
    if (!cached) this._allocInstance = cached = this.requireFunction(CommonNames.alloc);
    return cached;
  }
  private _allocInstance: Function | null = null;

  /** Gets the runtime `__realloc(ptr: usize, newSize: usize): usize` instance. */
  get reallocInstance(): Function {
    let cached = this._reallocInstance;
    if (!cached) this._reallocInstance = cached = this.requireFunction(CommonNames.realloc);
    return cached;
  }
  private _reallocInstance: Function | null = null;

  /** Gets the runtime `__free(ptr: usize): void` instance. */
  get freeInstance(): Function {
    let cached = this._freeInstance;
    if (!cached) this._freeInstance = cached = this.requireFunction(CommonNames.free);
    return cached;
  }
  private _freeInstance: Function | null = null;

  /** Gets the runtime `__new(size: usize, id: u32): usize` instance. */
  get newInstance(): Function {
    let cached = this._newInstance;
    if (!cached) this._newInstance = cached = this.requireFunction(CommonNames.new_);
    return cached;
  }
  private _newInstance: Function | null = null;

  /** Gets the runtime `__renew(ptr: usize, size: usize): usize` instance. */
  get renewInstance(): Function {
    let cached = this._renewInstance;
    if (!cached) this._renewInstance = cached = this.requireFunction(CommonNames.renew);
    return cached;
  }
  private _renewInstance: Function | null = null;

  /** Gets the runtime `__link(parentPtr: usize, childPtr: usize, expectMultiple: bool): void` instance. */
  get linkInstance(): Function {
    let cached = this._linkInstance;
    if (!cached) this._linkInstance = cached = this.requireFunction(CommonNames.link);
    return cached;
  }
  private _linkInstance: Function | null = null;

  /** Gets the runtime `__collect(): void` instance. */
  get collectInstance(): Function {
    let cached = this._collectInstance;
    if (!cached) this._collectInstance = cached = this.requireFunction(CommonNames.collect);
    return cached;
  }
  private _collectInstance: Function | null = null;

  /** Gets the runtime `__visit(ptr: usize, cookie: u32): void` instance. */
  get visitInstance(): Function {
    let cached = this._visitInstance;
    if (!cached) this._visitInstance = cached = this.requireFunction(CommonNames.visit);
    return cached;
  }
  private _visitInstance: Function | null = null;

  /** Gets the runtime `__typeinfo(id: u32): RTTIFlags` instance. */
  get typeinfoInstance(): Function {
    let cached = this._typeinfoInstance;
    if (!cached) this._typeinfoInstance = cached = this.requireFunction(CommonNames.typeinfo);
    return cached;
  }
  private _typeinfoInstance: Function | null = null;

  /** Gets the runtime `__instanceof(ptr: usize, superId: u32): bool` instance. */
  get instanceofInstance(): Function {
    let cached = this._instanceofInstance;
    if (!cached) this._instanceofInstance = cached = this.requireFunction(CommonNames.instanceof_);
    return cached;
  }
  private _instanceofInstance: Function | null = null;

  /** Gets the runtime `__newBuffer(size: usize, id: u32, data: usize = 0): usize` instance. */
  get newBufferInstance(): Function {
    let cached = this._newBufferInstance;
    if (!cached) this._newBufferInstance = cached = this.requireFunction(CommonNames.newBuffer);
    return cached;
  }
  private _newBufferInstance: Function | null = null;

  /** Gets the runtime `__newArray(length: i32, alignLog2: usize, id: u32, data: usize = 0): usize` instance. */
  get newArrayInstance(): Function {
    let cached = this._newArrayInstance;
    if (!cached) this._newArrayInstance = cached = this.requireFunction(CommonNames.newArray);
    return cached;
  }
  private _newArrayInstance: Function | null = null;

  /** Gets the runtime's internal `BLOCK` instance. */
  get BLOCKInstance(): Class {
    let cached = this._BLOCKInstance;
    if (!cached) this._BLOCKInstance = cached = this.requireClass(CommonNames.BLOCK);
    return cached;
  }
  private _BLOCKInstance: Class | null = null;

  /** Gets the runtime's internal `OBJECT` instance. */
  get OBJECTInstance(): Class {
    let cached = this._OBJECTInstance;
    if (!cached) this._OBJECTInstance = cached = this.requireClass(CommonNames.OBJECT);
    return cached;
  }
  private _OBJECTInstance: Class | null = null;

  // Utility

  /** Obtains the source matching the specified internal path. */
  getSource(internalPath: string): string | null {
    let sources = this.sources;
    for (let i = 0; i < sources.length; ++i) {
      let source = sources[i];
      if (source.internalPath == internalPath) return source.text;
    }
    return null;
  }

  /** Gets the overhead of a memory manager block. */
  get blockOverhead(): i32 {
    // BLOCK | data...
    //       ^ 16b alignment
    return this.BLOCKInstance.nextMemoryOffset;
  }

  /** Gets the overhead of a managed object, excl. block overhead, incl. alignment. */
  get objectOverhead(): i32 {
    // OBJECT+align | data...
    //        └ 0 ┘ ^ 16b alignment
    return (this.OBJECTInstance.nextMemoryOffset - this.blockOverhead + AL_MASK) & ~AL_MASK;
  }

  /** Gets the total overhead of a managed object, incl. block overhead. */
  get totalOverhead(): i32 {
    // BLOCK | OBJECT+align | data...
    // └     = TOTAL      ┘ ^ 16b alignment
    return this.blockOverhead + this.objectOverhead;
  }

  searchFunctionByRef(ref: FunctionRef): Function | null {
    const modifiedFunctionName = getFunctionName(ref);
    if (modifiedFunctionName) {
      const instancesByName = this.instancesByName;
      if (instancesByName.has(modifiedFunctionName)) {
        const element = assert(instancesByName.get(modifiedFunctionName));
        if (element.kind == ElementKind.Function) {
          return <Function>element;
        }
      }
    }
    return null;
  }

  /** Computes the next properly aligned offset of a memory manager block, given the current bump offset. */
  computeBlockStart(currentOffset: i32): i32 {
    let blockOverhead = this.blockOverhead;
    return ((currentOffset + blockOverhead + AL_MASK) & ~AL_MASK) - blockOverhead;
  }

  /** Computes the next properly aligned offset of a memory manager block, given the current bump offset. */
  computeBlockStart64(currentOffset: i64): i64 {
    let blockOverhead = i64_new(this.blockOverhead);
    return i64_sub(i64_align(i64_add(currentOffset, blockOverhead), AL_SIZE), blockOverhead);
  }

  /** Computes the size of a memory manager block, excl. block overhead. */
  computeBlockSize(payloadSize: i32, isManaged: bool): i32 {
    // see: std/rt/tlsf.ts, computeSize; becomes mmInfo
    if (isManaged) payloadSize += this.objectOverhead;
    // we know that payload must be aligned, and that block sizes must be chosen
    // so that blocks are adjacent with the next payload aligned. hence, block
    // size is payloadSize rounded up to where the next block would start:
    let blockSize = this.computeBlockStart(payloadSize);
    // make sure that block size is valid according to TLSF requirements
    let blockOverhead = this.blockOverhead;
    let blockMinsize = ((3 * this.options.usizeType.byteSize + blockOverhead + AL_MASK) & ~AL_MASK) - blockOverhead;
    if (blockSize < blockMinsize) blockSize = blockMinsize;
    const blockMaxsize = 1 << 30; // 1 << (FL_BITS + SB_BITS - 1), exclusive
    const tagsMask = 3;
    if (blockSize >= blockMaxsize || (blockSize & tagsMask) != 0) {
      throw new Error("invalid block size");
    }
    return blockSize;
  }

  /** Creates a native variable declaration. */
  makeNativeVariableDeclaration(
    /** The simple name of the variable */
    name: string,
    /** Flags indicating specific traits, e.g. `CONST`. */
    flags: CommonFlags = CommonFlags.None
  ): VariableDeclaration {
    let range = this.nativeSource.range;
    return Node.createVariableDeclaration(
      Node.createIdentifierExpression(name, range),
      null, flags, null, null, range
    );
  }

  /** Creates a native type declaration. */
  makeNativeTypeDeclaration(
    /** The simple name of the type. */
    name: string,
    /** Flags indicating specific traits, e.g. `GENERIC`. */
    flags: CommonFlags = CommonFlags.None
  ): TypeDeclaration {
    let range = this.nativeSource.range;
    let identifier = Node.createIdentifierExpression(name, range);
    return Node.createTypeDeclaration(
      identifier,
      null, flags, null,
      Node.createOmittedType(range),
      range
    );
  }

  // a dummy signature for programmatically generated native functions
  private nativeDummySignature: FunctionTypeNode | null = null;

  /** Creates a native function declaration. */
  makeNativeFunctionDeclaration(
    /** The simple name of the function. */
    name: string,
    /** Flags indicating specific traits, e.g. `DECLARE`. */
    flags: CommonFlags = CommonFlags.None
  ): FunctionDeclaration {
    let range = this.nativeSource.range;
    let signature = this.nativeDummySignature;
    if (!signature) {
      this.nativeDummySignature = signature = Node.createFunctionType([],
        Node.createNamedType( // ^ AST signature doesn't really matter, is overridden anyway
          Node.createSimpleTypeName(CommonNames.void_, range),
          null, false, range
        ),
        null, false, range
      );
    }
    return Node.createFunctionDeclaration(
      Node.createIdentifierExpression(name, range),
      null, flags, null, signature, null, ArrowKind.None, range
    );
  }

  /** Creates a native namespace declaration. */
  makeNativeNamespaceDeclaration(
    /** The simple name of the namespace. */
    name: string,
    /** Flags indicating specific traits, e.g. `EXPORT`. */
    flags: CommonFlags = CommonFlags.None
  ): NamespaceDeclaration {
    let range = this.nativeSource.range;
    return Node.createNamespaceDeclaration(
      Node.createIdentifierExpression(name, range),
      null, flags, [], range
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
    flags: CommonFlags = CommonFlags.None,
    /** Decorator flags representing built-in decorators. */
    decoratorFlags: DecoratorFlags = DecoratorFlags.None
  ): Function {
    return new Function(
      name,
      new FunctionPrototype(
        name,
        parent,
        this.makeNativeFunctionDeclaration(name, flags),
        decoratorFlags
      ),
      null,
      signature
    );
  }

  /** Gets the (possibly merged) program element linked to the specified declaration. */
  getElementByDeclaration(declaration: DeclarationStatement): DeclaredElement | null {
    let elementsByDeclaration = this.elementsByDeclaration;
    return elementsByDeclaration.has(declaration)
      ? assert(elementsByDeclaration.get(declaration))
      : null;
  }

  /** Initializes the program and its elements prior to compilation. */
  initialize(): void {
    if (this.initialized) return;
    this.initialized = true;

    let options = this.options;

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
      this.makeNativeTypeDeclaration(CommonNames.native, CommonFlags.Export | CommonFlags.Generic),
      DecoratorFlags.Builtin
    ));
    this.nativeFile.add(CommonNames.indexof, new TypeDefinition(
      CommonNames.indexof,
      this.nativeFile,
      this.makeNativeTypeDeclaration(CommonNames.indexof, CommonFlags.Export | CommonFlags.Generic),
      DecoratorFlags.Builtin
    ));
    this.nativeFile.add(CommonNames.valueof, new TypeDefinition(
      CommonNames.valueof,
      this.nativeFile,
      this.makeNativeTypeDeclaration(CommonNames.valueof, CommonFlags.Export | CommonFlags.Generic),
      DecoratorFlags.Builtin
    ));
    this.nativeFile.add(CommonNames.returnof, new TypeDefinition(
      CommonNames.returnof,
      this.nativeFile,
      this.makeNativeTypeDeclaration(CommonNames.returnof, CommonFlags.Export | CommonFlags.Generic),
      DecoratorFlags.Builtin
    ));
    this.nativeFile.add(CommonNames.nonnull, new TypeDefinition(
      CommonNames.nonnull,
      this.nativeFile,
      this.makeNativeTypeDeclaration(CommonNames.nonnull, CommonFlags.Export | CommonFlags.Generic),
      DecoratorFlags.Builtin
    ));

    // The following types might not be enabled by compiler options, so the
    // compiler needs to check this condition whenever such a value is created
    // respectively stored or loaded.
    this.registerNativeType(CommonNames.v128, Type.v128);
    this.registerNativeType(CommonNames.funcref, Type.funcref);
    this.registerNativeType(CommonNames.externref, Type.externref);
    this.registerNativeType(CommonNames.anyref, Type.anyref);
    this.registerNativeType(CommonNames.eqref, Type.eqref);
    this.registerNativeType(CommonNames.i31ref, Type.i31ref);
    this.registerNativeType(CommonNames.dataref, Type.dataref);
    this.registerNativeType(CommonNames.arrayref, Type.arrayref);
    this.registerNativeType(CommonNames.stringref, Type.stringref);
    this.registerNativeType(CommonNames.stringview_wtf8, Type.stringview_wtf8);
    this.registerNativeType(CommonNames.stringview_wtf16, Type.stringview_wtf16);
    this.registerNativeType(CommonNames.stringview_iter, Type.stringview_iter);

    // register compiler hints
    this.registerConstantInteger(CommonNames.ASC_TARGET, Type.i32,
      i64_new(options.isWasm64 ? Target.Wasm64 : Target.Wasm32));
    this.registerConstantInteger(CommonNames.ASC_RUNTIME, Type.i32,
      i64_new(options.runtime));
    this.registerConstantInteger(CommonNames.ASC_NO_ASSERT, Type.bool,
      i64_new(options.noAssert ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_MEMORY_BASE, Type.i32,
      i64_new(options.memoryBase, 0));
    this.registerConstantInteger(CommonNames.ASC_TABLE_BASE, Type.i32,
      i64_new(options.tableBase, 0));
    this.registerConstantInteger(CommonNames.ASC_OPTIMIZE_LEVEL, Type.i32,
      i64_new(options.optimizeLevelHint, 0));
    this.registerConstantInteger(CommonNames.ASC_SHRINK_LEVEL, Type.i32,
      i64_new(options.shrinkLevelHint, 0));
    this.registerConstantInteger(CommonNames.ASC_LOW_MEMORY_LIMIT, Type.i32,
      i64_new(options.lowMemoryLimit, 0));
    this.registerConstantInteger(CommonNames.ASC_EXPORT_RUNTIME, Type.bool,
      i64_new(options.exportRuntime ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_VERSION_MAJOR, Type.i32,
      i64_new(options.bundleMajorVersion));
    this.registerConstantInteger(CommonNames.ASC_VERSION_MINOR, Type.i32,
      i64_new(options.bundleMinorVersion));
    this.registerConstantInteger(CommonNames.ASC_VERSION_PATCH, Type.i32,
      i64_new(options.bundlePatchVersion));

    // register feature hints
    this.registerConstantInteger(CommonNames.ASC_FEATURE_SIGN_EXTENSION, Type.bool,
      i64_new(options.hasFeature(Feature.SignExtension) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_MUTABLE_GLOBALS, Type.bool,
      i64_new(options.hasFeature(Feature.MutableGlobals) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_NONTRAPPING_F2I, Type.bool,
      i64_new(options.hasFeature(Feature.NontrappingF2I) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_BULK_MEMORY, Type.bool,
      i64_new(options.hasFeature(Feature.BulkMemory) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_SIMD, Type.bool,
      i64_new(options.hasFeature(Feature.Simd) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_THREADS, Type.bool,
      i64_new(options.hasFeature(Feature.Threads) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_EXCEPTION_HANDLING, Type.bool,
      i64_new(options.hasFeature(Feature.ExceptionHandling) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_TAIL_CALLS, Type.bool,
      i64_new(options.hasFeature(Feature.TailCalls) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_REFERENCE_TYPES, Type.bool,
      i64_new(options.hasFeature(Feature.ReferenceTypes) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_MULTI_VALUE, Type.bool,
      i64_new(options.hasFeature(Feature.MultiValue) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_GC, Type.bool,
      i64_new(options.hasFeature(Feature.GC) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_MEMORY64, Type.bool,
      i64_new(options.hasFeature(Feature.Memory64) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_RELAXED_SIMD, Type.bool,
      i64_new(options.hasFeature(Feature.RelaxedSimd) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_EXTENDED_CONST, Type.bool,
      i64_new(options.hasFeature(Feature.ExtendedConst) ? 1 : 0, 0));
    this.registerConstantInteger(CommonNames.ASC_FEATURE_STRINGREF, Type.bool,
      i64_new(options.hasFeature(Feature.Stringref) ? 1 : 0, 0));

    // remember deferred elements
    let queuedImports = new Array<QueuedImport>();
    let queuedExports = new Map<File,Map<string,QueuedExport>>();
    let queuedExportsStar = new Map<File,QueuedExportStar[]>();
    let queuedExtends = new Array<ClassPrototype>();
    let queuedImplements = new Array<ClassPrototype>();

    // initialize relevant declaration-like statements of the entire program
    for (let i = 0, k = this.sources.length; i < k; ++i) {
      let source = this.sources[i];
      let file = new File(this, source);
      this.filesByName.set(file.internalName, file);
      let statements = source.statements;
      for (let j = 0, l = statements.length; j < l; ++j) {
        let statement = statements[j];
        switch (statement.kind) {
          case NodeKind.Export: {
            this.initializeExports(<ExportStatement>statement, file, queuedExports, queuedExportsStar);
            break;
          }
          case NodeKind.ExportDefault: {
            this.initializeExportDefault(<ExportDefaultStatement>statement, file, queuedExtends, queuedImplements);
            break;
          }
          case NodeKind.Import: {
            this.initializeImports(<ImportStatement>statement, file, queuedImports, queuedExports);
            break;
          }
          case NodeKind.Variable: {
            this.initializeVariables(<VariableStatement>statement, file);
            break;
          }
          case NodeKind.ClassDeclaration: {
            this.initializeClass(<ClassDeclaration>statement, file, queuedExtends, queuedImplements);
            break;
          }
          case NodeKind.EnumDeclaration: {
            this.initializeEnum(<EnumDeclaration>statement, file);
            break;
          }
          case NodeKind.FunctionDeclaration: {
            this.initializeFunction(<FunctionDeclaration>statement, file);
            break;
          }
          case NodeKind.InterfaceDeclaration: {
            this.initializeInterface(<InterfaceDeclaration>statement, file, queuedExtends);
            break;
          }
          case NodeKind.NamespaceDeclaration: {
            this.initializeNamespace(<NamespaceDeclaration>statement, file, queuedExtends, queuedImplements);
            break;
          }
          case NodeKind.TypeDeclaration: {
            this.initializeTypeDefinition(<TypeDeclaration>statement, file);
            break;
          }
        }
      }
    }

    // queued exports * should be linkable now that all files have been processed
    // TODO: for (let [file, starExports] of queuedExportsStar) {
    for (let _keys = Map_keys(queuedExportsStar), i = 0, k = _keys.length; i < k; ++i) {
      let file = _keys[i];
      let starExports = assert(queuedExportsStar.get(file));
      for (let j = 0, l = starExports.length; j < l; ++j) {
        let exportStar = unchecked(starExports[j]);
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

    // queued imports should be resolvable now through traversing exports and queued exports.
    // note that imports may depend upon imports, so repeat until there's no more progress.
    do {
      let i = 0, madeProgress = false;
      while (i < queuedImports.length) {
        let queuedImport = queuedImports[i];
        let localIdentifier = queuedImport.localIdentifier;
        let foreignIdentifier = queuedImport.foreignIdentifier;
        // File must be found here, as it would otherwise already have been reported by the parser
        let foreignFile = assert(this.lookupForeignFile(queuedImport.foreignPath, queuedImport.foreignPathAlt));
        if (foreignIdentifier) { // i.e. import { foo [as bar] } from "./baz"
          let element = this.lookupForeign(
            foreignIdentifier.text,
            foreignFile,
            queuedExports
          );
          if (element) {
            queuedImport.localFile.add(
              localIdentifier.text,
              element,
              localIdentifier // isImport
            );
            queuedImports.splice(i, 1);
            madeProgress = true;
          } else {
            ++i;
          }
        } else { // i.e. import * as bar from "./bar"
          let localFile = queuedImport.localFile;
          let localName = localIdentifier.text;
          localFile.add(
            localName,
            foreignFile.asAliasNamespace(
              localName,
              localFile,
              localIdentifier
            ),
            localIdentifier // isImport
          );
          queuedImports.splice(i, 1);
          madeProgress = true;
        }
      }
      if (!madeProgress) {
        // report queued imports we were unable to resolve
        for (let j = 0, l = queuedImports.length; j < l; ++j) {
          let queuedImport = queuedImports[j];
          let foreignIdentifier = queuedImport.foreignIdentifier;
          if (foreignIdentifier) {
            this.error(
              DiagnosticCode.Module_0_has_no_exported_member_1,
              foreignIdentifier.range, queuedImport.foreignPath, foreignIdentifier.text
            );
          }
        }
        break;
      }
    } while (true);

    // queued exports should be resolvable now that imports are finalized
    // TODO: for (let [file, exports] of queuedExports) {
    for (let _keys = Map_keys(queuedExports), i = 0, k = _keys.length; i < k; ++i) {
      let file = unchecked(_keys[i]);
      let exports = assert(queuedExports.get(file));
      // TODO: for (let [exportName, queuedExport] of exports) {
      for (let exportNames = Map_keys(exports), j = 0, l = exportNames.length; j < l; ++j) {
        let exportName = unchecked(exportNames[j]);
        let queuedExport = assert(exports.get(exportName));
        let localName = queuedExport.localIdentifier.text;
        let foreignPath = queuedExport.foreignPath;
        if (foreignPath) { // i.e. export { foo [as bar] } from "./baz"
          // File must be found here, as it would otherwise already have been reported by the parser
          let foreignFile = assert(this.lookupForeignFile(foreignPath, assert(queuedExport.foreignPathAlt)));
          let element = this.lookupForeign(localName, foreignFile, queuedExports);
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
          let element = file.getMember(localName);
          if (element) {
            file.ensureExport(exportName, element);
          } else {
            let globalElement = this.lookup(localName);
            if (globalElement && isDeclaredElement(globalElement.kind)) { // export { memory }
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
    assert(this.arrayBufferInstance.id == 0);
    assert(this.stringInstance.id == 1);
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
    if (options.hasFeature(Feature.Simd)) this.registerWrapperClass(Type.v128, CommonNames.V128);
    if (options.hasFeature(Feature.ReferenceTypes)) {
      this.registerWrapperClass(Type.funcref, CommonNames.Funcref);
      this.registerWrapperClass(Type.externref, CommonNames.Externref);
      if (options.hasFeature(Feature.GC)) {
        this.registerWrapperClass(Type.anyref, CommonNames.Anyref);
        this.registerWrapperClass(Type.eqref, CommonNames.Eqref);
        this.registerWrapperClass(Type.i31ref, CommonNames.I31ref);
        this.registerWrapperClass(Type.dataref, CommonNames.Dataref);
        this.registerWrapperClass(Type.arrayref, CommonNames.Arrayref);
      }
    }

    // resolve prototypes of extended classes or interfaces
    let resolver = this.resolver;
    for (let i = 0, k = queuedExtends.length; i < k; ++i) {
      let thisPrototype = queuedExtends[i];
      let extendsNode = assert(thisPrototype.extendsNode); // must be present if in queuedExtends
      let baseElement = resolver.resolveTypeName(extendsNode.name, thisPrototype.parent);
      if (!baseElement) continue;
      if (thisPrototype.kind == ElementKind.ClassPrototype) {
        if (baseElement.kind == ElementKind.ClassPrototype) {
          let basePrototype = <ClassPrototype>baseElement;
          if (basePrototype.hasDecorator(DecoratorFlags.Final)) {
            this.error(
              DiagnosticCode.Class_0_is_final_and_cannot_be_extended,
              extendsNode.range, basePrototype.identifierNode.text
            );
          }
          if (
            basePrototype.hasDecorator(DecoratorFlags.Unmanaged) !=
            thisPrototype.hasDecorator(DecoratorFlags.Unmanaged)
          ) {
            this.error(
              DiagnosticCode.Unmanaged_classes_cannot_extend_managed_classes_and_vice_versa,
              Range.join(thisPrototype.identifierNode.range, extendsNode.range)
            );
          }
          if (!thisPrototype.extends(basePrototype)) {
            thisPrototype.basePrototype = basePrototype;
          } else {
            this.error(
              DiagnosticCode._0_is_referenced_directly_or_indirectly_in_its_own_base_expression,
              basePrototype.identifierNode.range,
              basePrototype.identifierNode.text,
            );
          }
        } else {
          this.error(
            DiagnosticCode.A_class_may_only_extend_another_class,
            extendsNode.range
          );
        }
      } else if (thisPrototype.kind == ElementKind.InterfacePrototype) {
        if (baseElement.kind == ElementKind.InterfacePrototype) {
          const basePrototype = <InterfacePrototype>baseElement;
          if (!thisPrototype.extends(basePrototype)) {
            thisPrototype.basePrototype = basePrototype;
          } else {
            this.error(
              DiagnosticCode._0_is_referenced_directly_or_indirectly_in_its_own_base_expression,
              basePrototype.identifierNode.range,
              basePrototype.identifierNode.text,
            );
          }
        } else {
          this.error(
            DiagnosticCode.An_interface_can_only_extend_an_interface,
            extendsNode.range
          );
        }
      }
    }

    // check override
    for (let i = 0, k = queuedExtends.length; i < k; i++) {
      let prototype = queuedExtends[i];
      let instanesMembers = prototype.instanceMembers;
      if (instanesMembers) {
        let members = Map_values(instanesMembers);
        for (let j = 0, k = members.length; j < k; j++) {
          let member = members[j];
          let declaration = member.declaration;
          if (declaration.is(CommonFlags.Override)) {
            let basePrototype = prototype.basePrototype;
            let hasOverride = false;
            while (basePrototype) {
              let instanceMembers = basePrototype.instanceMembers;
              if (instanceMembers) {
                if (instanceMembers.has(member.name)) {
                  hasOverride = true;
                  break;
                }
              }
              basePrototype = basePrototype.basePrototype;
            }
            if (!hasOverride) {
              let basePrototype = assert(prototype.basePrototype);
              this.error(
                DiagnosticCode.This_member_cannot_have_an_override_modifier_because_it_is_not_declared_in_the_base_class_0,
                declaration.name.range,
                basePrototype.name
              );
            }
          }
        }
      }
    }

    // resolve prototypes of implemented interfaces
    for (let i = 0, k = queuedImplements.length; i < k; ++i) {
      let thisPrototype = queuedImplements[i];
      let implementsNodes = assert(thisPrototype.implementsNodes); // must be present if in queuedImplements
      for (let j = 0, l = implementsNodes.length; j < l; ++j) {
        let implementsNode = implementsNodes[j];
        let interfaceElement = resolver.resolveTypeName(implementsNode.name, thisPrototype.parent);
        if (!interfaceElement) continue;
        if (interfaceElement.kind == ElementKind.InterfacePrototype) {
          let interfacePrototype = <InterfacePrototype>interfaceElement;
          let interfacePrototypes = thisPrototype.interfacePrototypes;
          if (!interfacePrototypes) thisPrototype.interfacePrototypes = interfacePrototypes = new Array();
          interfacePrototypes.push(interfacePrototype);
        } else {
          this.error(
            DiagnosticCode.A_class_can_only_implement_an_interface,
            implementsNode.range
          );
        }
      }
    }

    // check for virtual overloads in extended classes and implemented interfaces
    for (let i = 0, k = queuedExtends.length; i < k; ++i) {
      let thisPrototype = queuedExtends[i];
      let basePrototype = thisPrototype.basePrototype;
      if (basePrototype) {
        this.markVirtuals(thisPrototype, basePrototype);
      }
    }
    for (let i = 0, k = queuedImplements.length; i < k; ++i) {
      let thisPrototype = queuedImplements[i];
      let basePrototype = thisPrototype.basePrototype;
      let interfacePrototypes = thisPrototype.interfacePrototypes;
      if (basePrototype) {
        this.markVirtuals(thisPrototype, basePrototype);
      }
      if (interfacePrototypes) {
        for (let j = 0, l = interfacePrototypes.length; j < l; ++j) {
          this.markVirtuals(thisPrototype, interfacePrototypes[j]);
        }
      }
    }

    // set up global aliases
    {
      let globalAliases = options.globalAliases;
      if (!globalAliases) globalAliases = new Map();
      if (!globalAliases.has(CommonNames.abort)) {
        globalAliases.set(CommonNames.abort, BuiltinNames.abort);
      }
      if (!globalAliases.has(CommonNames.trace)) {
        globalAliases.set(CommonNames.trace, BuiltinNames.trace);
      }
      if (!globalAliases.has(CommonNames.seed)) {
        globalAliases.set(CommonNames.seed, BuiltinNames.seed);
      }
      if (!globalAliases.has(CommonNames.Math)) {
        globalAliases.set(CommonNames.Math, CommonNames.NativeMath);
      }
      if (!globalAliases.has(CommonNames.Mathf)) {
        globalAliases.set(CommonNames.Mathf, CommonNames.NativeMathf);
      }
      // TODO: for (let [alias, name] of globalAliases) {
      for (let _keys = Map_keys(globalAliases), i = 0, k = _keys.length; i < k; ++i) {
        let alias = unchecked(_keys[i]);
        let name = changetype<string>(globalAliases.get(alias));
        assert(name != null);
        if (!name.length) {
          this.elementsByName.delete(alias);
          continue;
        }
        let firstChar = name.charCodeAt(0);
        if (firstChar >= CharCode._0 && firstChar <= CharCode._9) {
          this.registerConstantInteger(alias, Type.i32, i64_new(<i32>parseInt(name, 10)));
        } else {
          let elementsByName = this.elementsByName;
          if (elementsByName.has(name)) {
            elementsByName.set(alias, assert(elementsByName.get(name)));
          } else {
            this.error(DiagnosticCode.Element_0_not_found, null, name);
          }
        }
      }
    }

    // mark module exports, i.e. to apply proper wrapping behavior on the boundaries
    // TODO: for (let file of this.filesByName.values()) {
    for (let _values = Map_values(this.filesByName), i = 0, k = _values.length; i < k; ++i) {
      let file = unchecked(_values[i]);
      if (file.source.sourceKind == SourceKind.UserEntry) {
        this.markModuleExports(file);
      }
    }
  }

  /** Marks virtual members in a base class overloaded in this class. */
  private markVirtuals(thisPrototype: ClassPrototype, basePrototype: ClassPrototype): void {
    // TODO: make this work with interfaaces as well
    let thisInstanceMembers = thisPrototype.instanceMembers;
    if (thisInstanceMembers) {
      let thisMembers = Map_values(thisInstanceMembers);
      do {
        let baseInstanceMembers = basePrototype.instanceMembers;
        if (baseInstanceMembers) {
          for (let j = 0, l = thisMembers.length; j < l; ++j) {
            let thisMember = thisMembers[j];
            if (
              !thisMember.isAny(CommonFlags.Constructor | CommonFlags.Private) &&
              baseInstanceMembers.has(thisMember.name)
            ) {
              let baseMember = assert(baseInstanceMembers.get(thisMember.name));
              if (
                thisMember.kind == ElementKind.FunctionPrototype &&
                baseMember.kind == ElementKind.FunctionPrototype
              ) {
                let thisMethod = <FunctionPrototype>thisMember;
                let baseMethod = <FunctionPrototype>baseMember;
                if (!thisMethod.visibilityEquals(baseMethod)) {
                  this.errorRelated(
                    DiagnosticCode.Overload_signatures_must_all_be_public_private_or_protected,
                    thisMethod.identifierNode.range, baseMethod.identifierNode.range
                  );
                }
                baseMember.set(CommonFlags.Virtual);
                let overloads = baseMethod.overloads;
                if (!overloads) baseMethod.overloads = overloads = new Set();
                overloads.add(<FunctionPrototype>thisMember);
                let baseMethodInstances = baseMethod.instances;
                if (baseMethodInstances) {
                  for (let _values = Map_values(baseMethodInstances), a = 0, b = _values.length; a < b; ++a) {
                    let baseMethodInstance = _values[a];
                    baseMethodInstance.set(CommonFlags.Virtual);
                  }
                }
              } else if (
                thisMember.kind == ElementKind.PropertyPrototype &&
                baseMember.kind == ElementKind.PropertyPrototype
              ) {
                let thisProperty = <PropertyPrototype>thisMember;
                let baseProperty = <PropertyPrototype>baseMember;
                if (!thisProperty.visibilityEquals(baseProperty)) {
                  this.errorRelated(
                    DiagnosticCode.Overload_signatures_must_all_be_public_private_or_protected,
                    thisProperty.identifierNode.range, baseProperty.identifierNode.range
                  );
                }
                baseProperty.set(CommonFlags.Virtual);
                let baseGetter = baseProperty.getterPrototype;
                if (baseGetter) {
                  baseGetter.set(CommonFlags.Virtual);
                  let thisGetter = thisProperty.getterPrototype;
                  if (thisGetter) {
                    let overloads = baseGetter.overloads;
                    if (!overloads) baseGetter.overloads = overloads = new Set();
                    overloads.add(thisGetter);
                  }
                  let baseGetterInstances = baseGetter.instances;
                  if (baseGetterInstances) {
                    for (let _values = Map_values(baseGetterInstances), a = 0, b = _values.length; a < b; ++a) {
                      let baseGetterInstance = _values[a];
                      baseGetterInstance.set(CommonFlags.Virtual);
                    }
                  }
                }
                let baseSetter = baseProperty.setterPrototype;
                if (baseSetter && thisProperty.setterPrototype) {
                  baseSetter.set(CommonFlags.Virtual);
                  let thisSetter = thisProperty.setterPrototype;
                  if (thisSetter) {
                    let overloads = baseSetter.overloads;
                    if (!overloads) baseSetter.overloads = overloads = new Set();
                    overloads.add(thisSetter);
                  }
                  let baseSetterInstances = baseSetter.instances;
                  if (baseSetterInstances) {
                    for (let _values = Map_values(baseSetterInstances), a = 0, b = _values.length; a < b; ++a) {
                      let baseSetterInstance = _values[a];
                      baseSetterInstance.set(CommonFlags.Virtual);
                    }
                  }
                }
              }
            }
          }
        }
        let nextPrototype = basePrototype.basePrototype;
        if (!nextPrototype) break;
        basePrototype = nextPrototype;
      } while (true);
    }
  }

  /** Looks up the element of the specified name in the global scope. */
  lookup(name: string): Element | null {
    let elements = this.elementsByName;
    if (elements.has(name)) return assert(elements.get(name));
    return null;
  }

  /** Requires that a global library element of the specified kind is present and returns it. */
  private require(name: string, kind: ElementKind): Element {
    let element = this.lookup(name);
    if (!element) throw new Error(`Missing standard library component: ${name}`);
    if (element.kind != kind) throw Error(`Invalid standard library component kind: ${name}`);
    return element;
  }

  /** Requires that a global variable is present and returns it. */
  requireGlobal(name: string): Global {
    return <Global>this.require(name, ElementKind.Global);
  }

  /** Requires that a non-generic global class is present and returns it. */
  requireClass(name: string): Class {
    let prototype = this.require(name, ElementKind.ClassPrototype);
    let resolved = this.resolver.resolveClass(<ClassPrototype>prototype, null);
    if (!resolved) throw new Error(`Invalid standard library class: ${name}`);
    return resolved;
  }

  /** Requires that a global function is present and returns it. */
  requireFunction(name: string, typeArguments: Type[] | null = null): Function {
    let prototype = <FunctionPrototype>this.require(name, ElementKind.FunctionPrototype);
    let resolved = this.resolver.resolveFunction(prototype, typeArguments);
    if (!resolved) throw new Error(`Invalid standard library function: ${name}`);
    return resolved;
  }

  /** Marks all exports of the specified file as module exports. */
  private markModuleExports(file: File): void {
    let exports = file.exports;
    if (exports) {
      // TODO: for (let element of exports.values()) {
      for (let _values = Map_values(exports), j = 0, l = _values.length; j < l; ++j) {
        let element = unchecked(_values[j]);
        this.markModuleExport(element);
      }
    }
    let exportsStar = file.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        this.markModuleExports(exportsStar[i]);
      }
    }
  }

  /** Marks an element and its children as a module export. */
  private markModuleExport(element: Element): void {
    element.set(CommonFlags.ModuleExport);
    switch (element.kind) {
      case ElementKind.ClassPrototype: {
        let instanceMembers = (<ClassPrototype>element).instanceMembers;
        if (instanceMembers) {
          // TODO: for (let member of instanceMembers.values()) {
          for (let _values = Map_values(instanceMembers), i = 0, k = _values.length; i < k; ++i) {
            let member = unchecked(_values[i]);
            this.markModuleExport(member);
          }
        }
        break;
      }
      case ElementKind.PropertyPrototype: {
        let propertyPrototype = <PropertyPrototype>element;
        let getterPrototype = propertyPrototype.getterPrototype;
        if (getterPrototype) this.markModuleExport(getterPrototype);
        let setterPrototype = propertyPrototype.setterPrototype;
        if (setterPrototype) this.markModuleExport(setterPrototype);
        break;
      }
      case ElementKind.Property:
      case ElementKind.Function:
      case ElementKind.Field:
      case ElementKind.Class: assert(false); // assumes that there are no instances yet
    }
    let staticMembers = element.members;
    if (staticMembers) {
      // TODO: for (let member of staticMembers.values()) {
      for (let _values = Map_values(staticMembers), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        this.markModuleExport(member);
      }
    }
  }

  /** Marks an element as a module import. */
  markModuleImport(moduleName: string, name: string, element: Element): void {
    element.set(CommonFlags.ModuleImport);
    let moduleImports = this.moduleImports;
    let module: Map<string,Element>;
    if (moduleImports.has(moduleName)) {
      module = assert(moduleImports.get(moduleName));
    } else {
      module = new Map();
      moduleImports.set(moduleName, module);
    }
    module.set(name, element);
  }

  /** Registers a native type with the program. */
  private registerNativeType(name: string, type: Type): void {
    let element = new TypeDefinition(
      name,
      this.nativeFile,
      this.makeNativeTypeDeclaration(name, CommonFlags.Export),
      DecoratorFlags.Builtin
    );
    element.setType(type);
    this.nativeFile.add(name, element);
  }

  /** Registers the wrapper class of a non-class type. */
  private registerWrapperClass(type: Type, className: string): void {
    let wrapperClasses = this.wrapperClasses;
    assert(!type.isInternalReference && !wrapperClasses.has(type));
    let element = assert(this.lookup(className));
    assert(element.kind == ElementKind.ClassPrototype);
    let classElement = assert(this.resolver.resolveClass(<ClassPrototype>element, null));
    classElement.wrappedType = type;
    wrapperClasses.set(type, classElement);
  }

  /** Registers a constant integer value within the global scope. */
  registerConstantInteger(name: string, type: Type, value: i64): void {
    assert(type.isIntegerInclReference);
    let global = new Global(
      name,
      this.nativeFile,
      DecoratorFlags.None,
      this.makeNativeVariableDeclaration(name, CommonFlags.Const | CommonFlags.Export)
    );
    global.setConstantIntegerValue(value, type);
    this.nativeFile.add(name, global);
  }

  /** Registers a constant float value within the global scope. */
  private registerConstantFloat(name: string, type: Type, value: f64): void {
    assert(type.isFloatValue);
    let global = new Global(
      name,
      this.nativeFile,
      DecoratorFlags.None,
      this.makeNativeVariableDeclaration(name, CommonFlags.Const | CommonFlags.Export)
    );
    global.setConstantFloatValue(value, type);
    this.nativeFile.add(name, global);
  }

  /** Ensures that the given global element exists. Attempts to merge duplicates. */
  ensureGlobal(name: string, element: DeclaredElement): DeclaredElement {
    let elementsByName = this.elementsByName;
    if (elementsByName.has(name)) {
      let existing = assert(elementsByName.get(name));
      // NOTE: this is effectively only performed when merging native types with
      // their respective namespaces in std/builtins, but can also trigger when a
      // user has multiple global elements of the same name in different files,
      // which might result in unexpected shared symbols accross files. considering
      // this a wonky feature for now that we might want to revisit later.
      if (existing != element) {
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

  /** Tries to locate a foreign file given its normalized path. */
  private lookupForeignFile(
    /** Normalized path to the other file. */
    foreignPath: string,
    /** Alternative normalized path to the other file. */
    foreignPathAlt: string
  ): File | null {
    let filesByName = this.filesByName;
    return filesByName.has(foreignPath)
      ? assert(filesByName.get(foreignPath))
      : filesByName.has(foreignPathAlt)
        ? assert(filesByName.get(foreignPathAlt))
        : null;
  }

  /** Tries to locate a foreign element by traversing exports and queued exports. */
  private lookupForeign(
    /** Identifier within the other file. */
    foreignName: string,
    /** The other file. */
    foreignFile: File,
    /** So far queued exports. */
    queuedExports: Map<File,Map<string,QueuedExport>>
  ): DeclaredElement | null {
    do {
      // check if already resolved
      let element = foreignFile.lookupExport(foreignName);
      if (element) return element;

      // follow queued exports
      if (queuedExports.has(foreignFile)) {
        let fileQueuedExports = assert(queuedExports.get(foreignFile));
        if (fileQueuedExports.has(foreignName)) {
          let queuedExport = assert(fileQueuedExports.get(foreignName));
          let queuedExportForeignPath = queuedExport.foreignPath;

          // re-exported from another file
          if (queuedExportForeignPath) {
            let otherFile = this.lookupForeignFile(queuedExportForeignPath, assert(queuedExport.foreignPathAlt));
            if (!otherFile) return null;
            foreignName = queuedExport.localIdentifier.text;
            foreignFile = otherFile;
            continue;
          }

          // exported from this file
          element = foreignFile.getMember(queuedExport.localIdentifier.text);
          if (element) return element;
        }
      }
      break;
    } while (true);

    // follow star exports
    let exportsStar = foreignFile.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        let element = this.lookupForeign(foreignName, exportsStar[i], queuedExports);
        if (element) return element;
      }
    }
    return null;
  }

  /** Validates that only supported decorators are present. */
  private checkDecorators(
    /** Decorators present on an element. */
    decorators: DecoratorNode[] | null,
    /** Accepted decorator flags. Emits diagnostics if any other decorators are present. */
    acceptedFlags: DecoratorFlags
  ): DecoratorFlags {
    let flags = DecoratorFlags.None;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        let decorator = decorators[i];
        let kind = DecoratorKind.fromNode(decorator.name);
        let flag = DecoratorFlags.fromKind(kind);
        if (flag) {
          if (flag == DecoratorFlags.Builtin) {
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
    let name = declaration.name.text;
    let element = new ClassPrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.Global |
        DecoratorFlags.Final |
        DecoratorFlags.Unmanaged
      )
    );
    if (!parent.add(name, element)) return null;

    // remember classes that implement interfaces
    let implementsTypes = declaration.implementsTypes;
    if (implementsTypes) {
      let numImplementsTypes = implementsTypes.length;
      if (numImplementsTypes) {
        // cannot implement interfaces when unmanaged
        if (element.hasDecorator(DecoratorFlags.Unmanaged)) {
          this.error(
            DiagnosticCode.Unmanaged_classes_cannot_implement_interfaces,
            Range.join(
              declaration.name.range,
              implementsTypes[numImplementsTypes - 1].range
            )
          );
        } else {
          queuedImplements.push(element);
        }
      }
    }

    // remember classes that extend another class
    if (declaration.extendsType) queuedExtends.push(element);

    // initialize members
    let memberDeclarations = declaration.members;
    for (let i = 0, k = memberDeclarations.length; i < k; ++i) {
      let memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {
        case NodeKind.FieldDeclaration: {
          this.initializeField(<FieldDeclaration>memberDeclaration, element);
          break;
        }
        case NodeKind.MethodDeclaration: {
          let methodDeclaration = <MethodDeclaration>memberDeclaration;
          if (memberDeclaration.isAny(CommonFlags.Get | CommonFlags.Set)) {
            this.initializeProperty(methodDeclaration, element);
          } else {
            let method = this.initializeMethod(methodDeclaration, element);
            if (method && methodDeclaration.name.kind == NodeKind.Constructor) {
              element.constructorPrototype = method;
            }
          }
          break;
        }
        case NodeKind.IndexSignature: break; // ignored for now
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
    let name = declaration.name.text;
    let decorators = declaration.decorators;
    let element: DeclaredElement;
    let acceptedFlags: DecoratorFlags = DecoratorFlags.Unsafe;
    if (parent.is(CommonFlags.Ambient)) {
      acceptedFlags |= DecoratorFlags.External;
    }
    if (declaration.is(CommonFlags.Static)) { // global variable
      assert(parent.kind != ElementKind.InterfacePrototype);
      acceptedFlags |= DecoratorFlags.Lazy;
      if (declaration.is(CommonFlags.Readonly)) {
        acceptedFlags |= DecoratorFlags.Inline;
      }
      element = new Global(
        name,
        parent,
        this.checkDecorators(decorators, acceptedFlags),
        declaration
      );
      if (!parent.add(name, element)) return;
    } else { // actual instance field
      assert(!declaration.isAny(CommonFlags.Abstract | CommonFlags.Get | CommonFlags.Set));
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
  ): FunctionPrototype | null {
    let name = declaration.name.text;
    let isStatic = declaration.is(CommonFlags.Static);
    let acceptedFlags = DecoratorFlags.Inline | DecoratorFlags.Unsafe;
    if (!declaration.is(CommonFlags.Generic)) {
      acceptedFlags |= DecoratorFlags.OperatorBinary
                    |  DecoratorFlags.OperatorPrefix
                    |  DecoratorFlags.OperatorPostfix;
    }
    if (parent.is(CommonFlags.Ambient)) {
      acceptedFlags |= DecoratorFlags.External;
    }
    let element = new FunctionPrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators, acceptedFlags)
    );
    if (isStatic) { // global function
      assert(declaration.name.kind != NodeKind.Constructor);
      if (!parent.add(name, element)) return null;
    } else { // actual instance method
      if (!parent.addInstance(name, element)) return null;
    }
    this.checkOperatorOverloads(declaration.decorators, element, parent);
    return element;
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
          case DecoratorKind.Operator:
          case DecoratorKind.OperatorBinary:
          case DecoratorKind.OperatorPrefix:
          case DecoratorKind.OperatorPostfix: {
            let args = decorator.args;
            let numArgs = args ? args.length : 0;
            if (numArgs == 1) {
              let firstArg = (<Expression[]>decorator.args)[0];
              if (firstArg.isLiteralKind(LiteralKind.String)) {
                let text = (<StringLiteralExpression>firstArg).value;
                let kind = OperatorKind.fromDecorator(decorator.decoratorKind, text);
                if (kind == OperatorKind.Invalid) {
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
                decorator.range, "1", numArgs.toString()
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
    let name = declaration.name.text;
    if (declaration.is(CommonFlags.Static)) {
      let parentMembers = parent.members;
      if (parentMembers && parentMembers.has(name)) {
        let element = assert(parentMembers.get(name));
        if (element.kind == ElementKind.PropertyPrototype) return <PropertyPrototype>element;
      } else {
        let element = new PropertyPrototype(name, parent, declaration);
        if (!parent.add(name, element)) return null;
        return element;
      }
    } else {
      let parentMembers = parent.instanceMembers;
      if (parentMembers && parentMembers.has(name)) {
        let element = assert(parentMembers.get(name));
        if (element.kind == ElementKind.PropertyPrototype) return <PropertyPrototype>element;
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
    let property = this.ensureProperty(declaration, parent);
    if (!property) return;
    let name = declaration.name.text;
    let isGetter = declaration.is(CommonFlags.Get);
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
    let element = new FunctionPrototype(
      (isGetter ? GETTER_PREFIX : SETTER_PREFIX) + name,
      property,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.Inline | DecoratorFlags.Unsafe
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
    let name = declaration.name.text;
    let element = new Enum(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.Global |
        DecoratorFlags.Inline |
        DecoratorFlags.Lazy
      )
    );
    if (!parent.add(name, element)) return null;
    let values = declaration.values;
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
    let name = declaration.name.text;
    let element = new EnumValue(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.None
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
    let members = statement.members;
    if (members) { // export { foo, bar } [from "./baz"]
      for (let i = 0, k = members.length; i < k; ++i) {
        this.initializeExport(members[i], parent, statement.internalPath, queuedExports);
      }
    } else { // export * from "./baz"
      let queued: QueuedExportStar[];
      if (queuedExportsStar.has(parent)) queued = assert(queuedExportsStar.get(parent));
      else queuedExportsStar.set(parent, queued = []);
      let foreignPath = statement.internalPath!; // must be set for export *
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
    let localName = member.localName.text;
    let foreignName = member.exportedName.text;

    // check for duplicates
    let element = localFile.lookupExport(foreignName);
    if (element) {
      this.error(
        DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
        member.exportedName.range, foreignName
      );
      return;
    }
    // local element, i.e. export { foo [as bar] }
    if (foreignPath == null) {

      // resolve right away if the local element already exists
      if (element = localFile.getMember(localName)) {
        localFile.ensureExport(foreignName, element);

      // otherwise queue it
      } else {
        let queued: Map<string,QueuedExport>;
        if (queuedExports.has(localFile)) queued = assert(queuedExports.get(localFile));
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
      if (queuedExports.has(localFile)) queued = assert(queuedExports.get(localFile));
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
    let declaration = statement.declaration;
    let element: DeclaredElement | null = null;
    switch (declaration.kind) {
      case NodeKind.EnumDeclaration: {
        element = this.initializeEnum(<EnumDeclaration>declaration, parent);
        break;
      }
      case NodeKind.FunctionDeclaration: {
        element = this.initializeFunction(<FunctionDeclaration>declaration, parent);
        break;
      }
      case NodeKind.ClassDeclaration: {
        element = this.initializeClass(<ClassDeclaration>declaration, parent, queuedExtends, queuedImplements);
        break;
      }
      case NodeKind.InterfaceDeclaration: {
        element = this.initializeInterface(<InterfaceDeclaration>declaration, parent, queuedExtends);
        break;
      }
      case NodeKind.NamespaceDeclaration: {
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
          let existing = assert(exports.get("default"));
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
    let declarations = statement.declarations;
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
    } else {
      let namespaceName = statement.namespaceName;
      if (namespaceName) { // import * as foo from "./bar"
        queuedImports.push(new QueuedImport(
          parent,
          namespaceName,
          null, // indicates import *
          statement.internalPath,
          statement.internalPath + INDEX_SUFFIX
        ));
      } else {
        // import "./foo"
      }
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
    let foreignPathAlt = foreignPath.endsWith(INDEX_SUFFIX) // strip or add index depending on what's already present
      ? foreignPath.substring(0, foreignPath.length - INDEX_SUFFIX.length)
      : foreignPath + INDEX_SUFFIX;

    // resolve right away if the element exists
    let foreignFile = this.lookupForeignFile(foreignPath, foreignPathAlt);
    if (foreignFile) {
      let element = this.lookupForeign(declaration.foreignName.text, foreignFile, queuedExports);
      if (element) {
        parent.add(declaration.name.text, element, declaration.name /* isImport */);
        return;
      }
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
    let name = declaration.name.text;
    let validDecorators = DecoratorFlags.Unsafe | DecoratorFlags.Builtin;
    if (declaration.is(CommonFlags.Ambient)) {
      validDecorators |= DecoratorFlags.External | DecoratorFlags.ExternalJs;
    } else {
      validDecorators |= DecoratorFlags.Inline;
      if (declaration.range.source.isLibrary || declaration.is(CommonFlags.Export)) {
        validDecorators |= DecoratorFlags.Lazy;
      }
    }
    if (!declaration.is(CommonFlags.Instance)) {
      if (parent.kind != ElementKind.ClassPrototype) {
        validDecorators |= DecoratorFlags.Global;
      }
    }
    let element = new FunctionPrototype(
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
    parent: Element,
    /** So far queued `extends` clauses. */
    queuedExtends: ClassPrototype[],
  ): InterfacePrototype | null {
    let name = declaration.name.text;
    let element = new InterfacePrototype(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators,
        DecoratorFlags.Global
      )
    );
    if (!parent.add(name, element)) return null;

    // remember interfaces that extend another interface
    if (declaration.extendsType) queuedExtends.push(element);

    let memberDeclarations = declaration.members;
    for (let i = 0, k = memberDeclarations.length; i < k; ++i) {
      let memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {
        case NodeKind.FieldDeclaration: {
          this.initializeFieldAsProperty(<FieldDeclaration>memberDeclaration, element);
          break;
        }
        case NodeKind.MethodDeclaration: {
          let methodDeclaration = <MethodDeclaration>memberDeclaration;
          if (memberDeclaration.isAny(CommonFlags.Get | CommonFlags.Set)) {
            this.initializeProperty(methodDeclaration, element);
          } else {
            this.initializeMethod(methodDeclaration, element);
          }
          break;
        }
        default: assert(false); // interface member expected
      }
    }
    return element;
  }

  /** Initializes a field of an interface, as a property. */
  private initializeFieldAsProperty(
    /** Field declaration. */
    declaration: FieldDeclaration,
    /** Parent interface. */
    parent: InterfacePrototype
  ): void {
    let typeNode = declaration.type;
    if (!typeNode) typeNode = Node.createOmittedType(declaration.name.range.atEnd);
    this.initializeProperty(
      Node.createMethodDeclaration(
        declaration.name,
        declaration.decorators,
        declaration.flags | CommonFlags.Get,
        null,
        Node.createFunctionType(
          [],
          typeNode,
          null,
          false,
          declaration.range
        ),
        null,
        declaration.range
      ),
      parent
    );
    if (!declaration.is(CommonFlags.Readonly)) {
      this.initializeProperty(
        Node.createMethodDeclaration(
          declaration.name,
          declaration.decorators,
          declaration.flags | CommonFlags.Set,
          null,
          Node.createFunctionType(
            [
              Node.createParameter(
                ParameterKind.Default,
                declaration.name,
                typeNode,
                null,
                declaration.name.range
              )
            ],
            Node.createOmittedType(declaration.name.range.atEnd),
            null,
            false,
            declaration.range
          ),
          null,
          declaration.range
        ),
        parent
      );
    }
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
  ): DeclaredElement | null {
    let name = declaration.name.text;
    let original = new Namespace(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators, DecoratorFlags.Global)
    );
    if (!parent.add(name, original)) return null;
    let element = assert(parent.getMember(name)); // possibly merged
    let members = declaration.members;
    for (let i = 0, k = members.length; i < k; ++i) {
      let member = members[i];
      switch (member.kind) {
        case NodeKind.ClassDeclaration: {
          this.initializeClass(<ClassDeclaration>member, original, queuedExtends, queuedImplements);
          break;
        }
        case NodeKind.EnumDeclaration: {
          this.initializeEnum(<EnumDeclaration>member, original);
          break;
        }
        case NodeKind.FunctionDeclaration: {
          this.initializeFunction(<FunctionDeclaration>member, original);
          break;
        }
        case NodeKind.InterfaceDeclaration: {
          this.initializeInterface(<InterfaceDeclaration>member, original, queuedExtends);
          break;
        }
        case NodeKind.NamespaceDeclaration: {
          this.initializeNamespace(<NamespaceDeclaration>member, original, queuedExtends, queuedImplements);
          break;
        }
        case NodeKind.TypeDeclaration: {
          this.initializeTypeDefinition(<TypeDeclaration>member, original);
          break;
        }
        case NodeKind.Variable: {
          this.initializeVariables(<VariableStatement>member, original);
          break;
        }
        default: assert(false); // namespace member expected
      }
    }
    if (original != element) copyMembers(original, element); // keep original parent
    return element;
  }

  /** Initializes a `type` definition. */
  private initializeTypeDefinition(
    /** The declaration to initialize. */
    declaration: TypeDeclaration,
    /** Parent element, usually a file or namespace. */
    parent: Element
  ): void {
    let name = declaration.name.text;
    let element = new TypeDefinition(
      name,
      parent,
      declaration,
      this.checkDecorators(declaration.decorators, DecoratorFlags.None)
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
    let declarations = statement.declarations;
    for (let i = 0, k = declarations.length; i < k; ++i) {
      let declaration = declarations[i];
      let name = declaration.name.text;
      let acceptedFlags = DecoratorFlags.Global | DecoratorFlags.Lazy;
      if (declaration.is(CommonFlags.Ambient)) {
        acceptedFlags |= DecoratorFlags.External;
      }
      if (declaration.is(CommonFlags.Const)) {
        acceptedFlags |= DecoratorFlags.Inline;
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
  //   let current: Class | null = target;
  //   let arrayPrototype = this.arrayPrototype;
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
export const enum ElementKind {
  /** A {@link Global}. */
  Global,
  /** A {@link Local}. */
  Local,
  /** An {@link Enum}. */
  Enum,
  /** An {@link EnumValue}. */
  EnumValue,
  /** A {@link FunctionPrototype}. */
  FunctionPrototype,
  /** A {@link Function}. */
  Function,
  /** A {@link ClassPrototype}. */
  ClassPrototype,
  /** A {@link Class}. */
  Class,
  /** An {@link InterfacePrototype}. */
  InterfacePrototype,
  /** An {@link Interface}. */
  Interface,
  /** A {@link FieldPrototype}. */
  FieldPrototype,
  /** A {@link Field}. */
  Field,
  /** A {@link PropertyPrototype}.  */
  PropertyPrototype,
  /** A {@link Property}. */
  Property,
  /** A {@link Namespace}. */
  Namespace,
  /** A {@link File}. */
  File,
  /** A {@link TypeDefinition}.  */
  TypeDefinition,
  /** An {@link IndexSignature}. */
  IndexSignature
}

/** Indicates built-in decorators that are present. */
export enum DecoratorFlags {
  /** No flags set. */
  None = 0,
  /** Is a program global. */
  Global = 1 << 0,
  /** Is a binary operator overload. */
  OperatorBinary = 1 << 1,
  /** Is a unary prefix operator overload. */
  OperatorPrefix = 1 << 2,
  /** Is a unary postfix operator overload. */
  OperatorPostfix = 1 << 3,
  /** Is an unmanaged class. */
  Unmanaged = 1 << 4,
  /** Is a final class. */
  Final = 1 << 5,
  /** Is always inlined. */
  Inline = 1 << 6,
  /** Is using a different external name. */
  External = 1 << 7,
  /** Has external JavaScript code. */
  ExternalJs = 1 << 8,
  /** Is a builtin. */
  Builtin = 1 << 9,
  /** Is compiled lazily. */
  Lazy = 1 << 10,
  /** Is considered unsafe code. */
  Unsafe = 1 << 11
}

export namespace DecoratorFlags {

  /** Translates a decorator kind to the respective decorator flag. */
  export function fromKind(kind: DecoratorKind): DecoratorFlags {
    switch (kind) {
      case DecoratorKind.Global: return DecoratorFlags.Global;
      case DecoratorKind.Operator:
      case DecoratorKind.OperatorBinary: return DecoratorFlags.OperatorBinary;
      case DecoratorKind.OperatorPrefix: return DecoratorFlags.OperatorPrefix;
      case DecoratorKind.OperatorPostfix: return DecoratorFlags.OperatorPostfix;
      case DecoratorKind.Unmanaged: return DecoratorFlags.Unmanaged;
      case DecoratorKind.Final: return DecoratorFlags.Final;
      case DecoratorKind.Inline: return DecoratorFlags.Inline;
      case DecoratorKind.External: return DecoratorFlags.External;
      case DecoratorKind.ExternalJs: return DecoratorFlags.ExternalJs;
      case DecoratorKind.Builtin: return DecoratorFlags.Builtin;
      case DecoratorKind.Lazy: return DecoratorFlags.Lazy;
      case DecoratorKind.Unsafe: return DecoratorFlags.Unsafe;
      default: return DecoratorFlags.None;
    }
  }
}

/** Base class of all program elements. */
export abstract class Element {

  /** Parent element. */
  parent!: Element;
  /** Common flags indicating specific traits. */
  flags: CommonFlags = CommonFlags.None;
  /** Decorator flags indicating annotated traits. */
  decoratorFlags: DecoratorFlags = DecoratorFlags.None;
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
      assert(this.kind == ElementKind.File);
      this.parent = this; // special case to keep this.parent non-nullable
    }
  }

  /** Gets the enclosing file. */
  get file(): File {
    let current: Element = this;
    do {
      current = current.parent;
      if (current.kind == ElementKind.File) return <File>current;
    } while (true);
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
  /** Tests if this element has any of the specified decorator flags. */
  hasAnyDecorator(flags: DecoratorFlags): bool { return (this.decoratorFlags & flags) != 0; }

  /** Get the member with the specified name, if any. */
  getMember(name: string): DeclaredElement | null {
    let members = this.members;
    if (members && members.has(name)) return assert(members.get(name));
    return null;
  }

  /** Looks up the element with the specified name relative to this element. */
  lookup(name: string, isType: bool = false): Element | null {
    return this.parent.lookup(name, isType);
  }

  /** Adds an element as a member of this one. Reports and returns `false` if a duplicate. */
  add(name: string, element: DeclaredElement, localIdentifierIfImport: IdentifierExpression | null = null): bool {
    let originalDeclaration = element.declaration;
    let members = this.members;
    if (!members) this.members = members = new Map();
    else if (members.has(name)) {
      let existing = assert(members.get(name));
      if (existing.parent != this) {
        // override non-own element
      } else {
        let merged = tryMerge(existing, element);
        if (merged) {
          element = merged; // use merged element
        } else {
          let reportedIdentifier = localIdentifierIfImport
            ? localIdentifierIfImport
            : element.identifierNode;
          if (isDeclaredElement(existing.kind)) {
            this.program.errorRelated(
              DiagnosticCode.Duplicate_identifier_0,
              reportedIdentifier.range,
              (<DeclaredElement>existing).identifierNode.range,
              reportedIdentifier.text
            );
          } else {
            this.program.error(
              DiagnosticCode.Duplicate_identifier_0,
              reportedIdentifier.range, reportedIdentifier.text
            );
          }
          return false;
        }
      }
    }
    members.set(name, element);
    let program = this.program;
    if (element.kind != ElementKind.FunctionPrototype || !(<FunctionPrototype>element).isBound) {
      // prefer unbound prototypes in global lookup maps
      program.elementsByName.set(element.internalName, element);
      program.elementsByDeclaration.set(originalDeclaration, element);
    }
    return true;
  }

  /** Checks if this element is public, explicitly or implicitly. */
  get isPublic(): bool {
    return !this.isAny(CommonFlags.Private | CommonFlags.Protected);
  }

  /** Checks if this element is implicitly public, i.e. not explicitly declared to be. */
  get isImplicitlyPublic(): bool {
    return this.isPublic && !this.is(CommonFlags.Public);
  }

  /** Checks if the visibility of this element equals the specified. */
  visibilityEquals(other: Element): bool {
    if (this.isPublic == other.isPublic) return true;
    const vis = CommonFlags.Private | CommonFlags.Protected;
    return (this.flags & vis) == (other.flags & vis);
  }

  /** Returns a string representation of this element. */
  toString(): string {
    return `${this.internalName}, kind=${this.kind}`;
  }
}

// Kinds of all declared elements
let declaredElements = new Set<ElementKind>();

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

  /** Gets the signature node, if applicable, along the identifier node. */
  get identifierAndSignatureRange(): Range {
    let declaration = this.declaration;
    let identifierNode = declaration.name;
    if (declaration.kind == NodeKind.FunctionDeclaration || declaration.kind == NodeKind.MethodDeclaration) {
      let signatureNode = (<FunctionDeclaration>declaration).signature;
      return Range.join(identifierNode.range, signatureNode.range);
    }
    return identifierNode.range;
  }

  /** Gets the assiciated decorator nodes. */
  get decoratorNodes(): DecoratorNode[] | null {
    return this.declaration.decorators;
  }

  /** Checks if this element is a compatible override of the specified. */
  isCompatibleOverride(base: DeclaredElement): bool {
    let self: DeclaredElement = this; // TS
    let kind = self.kind;
    let checkCompatibleOverride = false;
    if (kind == base.kind) {
      switch (kind) {
        case ElementKind.FunctionPrototype : {
          let selfFunction = this.program.resolver.resolveFunction(<FunctionPrototype>self, null);
          if (!selfFunction) return false;
          let baseFunction = this.program.resolver.resolveFunction(<FunctionPrototype>base, null);
          if (!baseFunction) return false;
          self = selfFunction;
          base = baseFunction;
          checkCompatibleOverride = true;
          // fall-through
        }
        case ElementKind.Function: {
          return (<Function>self).signature.isAssignableTo((<Function>base).signature, checkCompatibleOverride);
        }
        case ElementKind.PropertyPrototype: {
          let selfProperty = this.program.resolver.resolveProperty(<PropertyPrototype>self);
          if (!selfProperty) return false;
          let baseProperty = this.program.resolver.resolveProperty(<PropertyPrototype>base);
          if (!baseProperty) return false;
          self = selfProperty;
          base = baseProperty;
          // fall-through
        }
        case ElementKind.Property: {
          let selfProperty = <Property>self;
          let baseProperty = <Property>base;
          let selfGetter = selfProperty.getterInstance;
          let baseGetter = baseProperty.getterInstance;
          if (selfGetter) {
            if (!baseGetter || !selfGetter.signature.isAssignableTo(baseGetter.signature, true)) {
              return false;
            }
          } else if (baseGetter) {
            return false;
          }
          let selfSetter = selfProperty.setterInstance;
          let baseSetter = baseProperty.setterInstance;
          if (selfSetter) {
            if (!baseSetter || !selfSetter.signature.isAssignableTo(baseSetter.signature, true)) {
              return false;
            }
          } else if (baseSetter) {
            return false;
          }
          return true;
        }
        // TODO: Implement properties overriding fields and vice-versa. Challenge is that anything overridable requires
        // a virtual stub, but fields aren't functions. Either all (such) fields should become property-like, with a
        // getter and a setter that can participate as a virtual stub, or it's allowed one-way, with fields integrated
        // into what can be a virtual stub as get=load and set=store, then not necessarily with own accessor functions.
      }
    }
    return false;
  }
}

// Kinds of all typed elements
let typedElements = new Set<ElementKind>();

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
    assert(!this.is(CommonFlags.Resolved));
    this.type = type;
    this.set(CommonFlags.Resolved);
  }
}

/** A file representing the implicit top-level namespace of a source. */
export class File extends Element {

  /** File exports. */
  exports: Map<string,DeclaredElement> | null = null;
  /** File re-exports. */
  exportsStar: File[] | null = null;
  /** Top-level start function of this file. */
  startFunction!: Function;
  /** Array of `import * as X` alias namespaces of this file. */
  aliasNamespaces: Array<Namespace> = new Array<Namespace>();

  /** Constructs a new file. */
  constructor(
    /** Program this file belongs to. */
    program: Program,
    /** Source of this file. */
    public source: Source
  ) {
    super(
      ElementKind.File,
      source.normalizedPath,
      source.internalPath,
      program,
      null // special case for files
    );
    this.source = source;
    assert(!program.filesByName.has(this.internalName));
    program.filesByName.set(this.internalName, this);
    let startFunction = this.program.makeNativeFunction(
      `start:${this.internalName}`,
      new Signature(program, null, Type.void),
      this
    );
    startFunction.internalName = startFunction.name;
    this.startFunction = startFunction;
  }

  /* @override */
  add(name: string, element: DeclaredElement, localIdentifierIfImport: IdentifierExpression | null = null): bool {
    if (element.hasDecorator(DecoratorFlags.Global)) {
      element = this.program.ensureGlobal(name, element); // possibly merged globally
    }
    if (!super.add(name, element, localIdentifierIfImport)) return false;
    element = assert(this.getMember(name)); // possibly merged locally
    if (element.is(CommonFlags.Export) && !localIdentifierIfImport) {
      this.ensureExport(
        element.name,
        element
      );
    }
    return true;
  }

  /* @override */
  getMember(name: string): DeclaredElement | null {
    let element = super.getMember(name);
    if (element) return element;
    let exportsStar = this.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        if (element = exportsStar[i].getMember(name)) return element;
      }
    }
    return null;
  }

  /* @override */
  lookup(name: string, isType: bool = false): Element | null {
    let element = this.getMember(name);
    if (element) return element;
    return this.program.lookup(name); // has no meaningful parent
  }

  /** Ensures that an element is an export of this file. */
  ensureExport(name: string, element: DeclaredElement): void {
    let exports = this.exports;
    if (!exports) this.exports = exports = new Map();
    exports.set(name, element);
    if (this.source.sourceKind == SourceKind.LibraryEntry) this.program.ensureGlobal(name, element);

    // Also, add to the namespaces that capture our exports
    for(let i = 0; i < this.aliasNamespaces.length; i++) {
      let ns = this.aliasNamespaces[i];
      ns.add(name, element);
    }
  }

  /** Ensures that another file is a re-export of this file. */
  ensureExportStar(file: File): void {
    let exportsStar = this.exportsStar;
    if (!exportsStar) this.exportsStar = exportsStar = [];
    else if (exportsStar.includes(file)) return;
    exportsStar.push(file);
  }

  /** Looks up the export of the specified name. */
  lookupExport(name: string): DeclaredElement | null {
    let exports = this.exports;
    if (exports && exports.has(name)) return assert(exports.get(name));
    let exportsStar = this.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        let element = exportsStar[i].lookupExport(name);
        if (element) return element;
      }
    }
    return null;
  }

  /** Creates an imported namespace from this file. */
  asAliasNamespace(
    name: string,
    parent: Element,
    localIdentifier: IdentifierExpression
  ): Namespace {
    let declaration = this.program.makeNativeNamespaceDeclaration(name);
    declaration.name = localIdentifier;
    let ns = new Namespace(name, parent, declaration);
    ns.set(CommonFlags.Scoped);
    this.copyExportsToNamespace(ns);
    // NOTE: Some exports are still queued, and can't yet be added here,
    // so we remember all the alias namespaces and add to them as well
    // when adding an element to the file.
    this.aliasNamespaces.push(ns);
    return ns;
  }

  /** Recursively copies the exports of this file to the specified namespace. */
  private copyExportsToNamespace(ns: Namespace): void {
    let exports = this.exports;
    if (exports) {
      // TODO: for (let [memberName, member] of exports) {
      for (let _keys = Map_keys(exports), i = 0, k = _keys.length; i < k; ++i) {
        let memberName = unchecked(_keys[i]);
        let member = assert(exports.get(memberName));
        ns.add(memberName, member);
      }
    }
    let exportsStar = this.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        exportsStar[i].copyExportsToNamespace(ns);
      }
    }
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
    decoratorFlags: DecoratorFlags = DecoratorFlags.None
  ) {
    super(
      ElementKind.TypeDefinition,
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
    decoratorFlags: DecoratorFlags = DecoratorFlags.None
  ) {
    super(
      ElementKind.Namespace,
      name,
      mangleInternalName(name, parent, false),
      parent.program,
      parent,
      declaration
    );
    this.decoratorFlags = decoratorFlags;
  }

  /* @override */
  lookup(name: string, isType: bool = false): Element | null {
    let member = this.getMember(name);
    if (member) return member;
    return super.lookup(name, isType);
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
    decoratorFlags: DecoratorFlags = DecoratorFlags.None
  ) {
    super(
      ElementKind.Enum,
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
  lookup(name: string, isType: bool = false): Element | null {
    let member = this.getMember(name);
    if (member) return member;
    return super.lookup(name, isType);
  }
}

/** Indicates the kind of an inlined constant value. */
export const enum ConstantValueKind {
  /** No constant value. */
  None,
  /** Constant integer value. */
  Integer,
  /** Constant float value. */
  Float
}

/** Base class of all variable-like program elements. */
export abstract class VariableLikeElement extends TypedElement {

  /** Constant value kind. */
  constantValueKind: ConstantValueKind = ConstantValueKind.None;
  /** Constant integer value, if applicable. */
  constantIntegerValue: i64 = i64_zero;
  /** Constant float value, if applicable. */
  constantFloatValue: f64 = 0;

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
      mangleInternalName(name, parent, declaration.is(CommonFlags.Instance)),
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
  setConstantIntegerValue(value: i64, type: Type): void {
    assert(type.isIntegerInclReference);
    this.type = type;
    this.constantValueKind = ConstantValueKind.Integer;
    this.constantIntegerValue = value;
    this.set(CommonFlags.Const | CommonFlags.Inlined | CommonFlags.Resolved);
  }

  /** Applies a constant float value to this element. */
  setConstantFloatValue(value: f64, type: Type): void {
    assert(type.isFloatValue);
    this.type = type;
    this.constantValueKind = ConstantValueKind.Float;
    this.constantFloatValue = value;
    this.set(CommonFlags.Const | CommonFlags.Inlined | CommonFlags.Resolved);
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
    decoratorFlags: DecoratorFlags = DecoratorFlags.None
  ) {
    super(
      ElementKind.EnumValue,
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
    return (<EnumValueDeclaration>this.declaration).initializer;
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
      ElementKind.Global,
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

  /** Original name of the (temporary) local. */
  private originalName: string;

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
      ElementKind.Local,
      name,
      parent,
      declaration
    );
    this.originalName = name;
    this.index = index;
    assert(type != Type.void);
    this.setType(type);
  }
}

/** A yet unresolved function prototype. */
export class FunctionPrototype extends DeclaredElement {

  /** Operator kind, if an overload. */
  operatorKind: OperatorKind = OperatorKind.Invalid;
  /** Already resolved instances. */
  instances: Map<string,Function> | null = null;
  /** Methods overloading this one, if any. These are unbound. */
  overloads: Set<FunctionPrototype> | null = null;

  /** Clones of this prototype that are bound to specific classes. */
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
    decoratorFlags: DecoratorFlags = DecoratorFlags.None
  ) {
    super(
      ElementKind.FunctionPrototype,
      name,
      mangleInternalName(name, parent, declaration.is(CommonFlags.Instance)),
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
    let parent = this.parent;
    let parentKind = parent.kind;
    if (parentKind == ElementKind.PropertyPrototype) parentKind = parent.parent.kind;
    return parentKind == ElementKind.Class || parentKind == ElementKind.Interface;
  }

  /** Creates a clone of this prototype that is bound to a concrete class instead. */
  toBound(classInstance: Class): FunctionPrototype {
    assert(this.is(CommonFlags.Instance));
    assert(!this.isBound);
    let boundPrototypes = this.boundPrototypes;
    if (!boundPrototypes) this.boundPrototypes = boundPrototypes = new Map();
    else if (boundPrototypes.has(classInstance)) return assert(boundPrototypes.get(classInstance));
    let declaration = this.declaration;
    assert(declaration.kind == NodeKind.MethodDeclaration);
    let bound = new FunctionPrototype(
      this.name,
      classInstance, // !
      <MethodDeclaration>declaration,
      this.decoratorFlags
    );
    bound.flags = this.flags;
    bound.operatorKind = this.operatorKind;
    bound.overloads = this.overloads;
    // NOTE: this.instances holds instances per bound class / unbound
    boundPrototypes.set(classInstance, bound);
    return bound;
  }

  /** Gets the resolved instance for the specified instance key, if already resolved. */
  getResolvedInstance(instanceKey: string): Function | null {
    let instances = this.instances;
    if (instances && instances.has(instanceKey)) return assert(instances.get(instanceKey));
    return null;
  }

  /** Sets the resolved instance for the specified instance key. */
  setResolvedInstance(instanceKey: string, instance: Function): void {
    let instances = this.instances;
    if (!instances) this.instances = instances = new Map();
    else assert(!instances.has(instanceKey));
    instances.set(instanceKey, instance);
  }
}

/** A resolved function. */
export class Function extends TypedElement {

  /** Function prototype. */
  prototype: FunctionPrototype;
  /** Function signature. */
  signature: Signature;
  /** Array of locals by index. */
  localsByIndex: Local[] = [];
  /** Concrete type arguments. */
  typeArguments: Type[] | null;
  /** Contextual type arguments. */
  contextualTypeArguments: Map<string,Type> | null;
  /** Default control flow. */
  flow!: Flow;
  /** Remembered debug locations. */
  debugLocations: Range[] = [];
  /** Function reference, if compiled. */
  ref: FunctionRef = 0;
  /** Varargs stub for calling with omitted arguments. */
  varargsStub: Function | null = null;
  /** Virtual stub for calling overloads. */
  virtualStub: Function | null = null;
  /** Runtime memory segment, if created. */
  memorySegment: MemorySegment | null = null;
  /** Original function, if a stub. Otherwise `this`. */
  original!: Function;

  /** Counting id of inline operations involving this function. */
  nextInlineId: i32 = 0;
  /** Counting id of anonymous inner functions. */
  nextAnonymousId: i32 = 0;

  /** Constructs a new concrete function. */
  constructor(
    /** Name incl. type parameters, i.e. `foo<i32>`. */
    nameInclTypeParameters: string,
    /** Respective function prototype. */
    prototype: FunctionPrototype,
    /** Concrete type arguments. */
    typeArguments: Type[] | null,
    /** Concrete signature. */
    signature: Signature, // pre-resolved
    /** Contextual type arguments inherited from its parent class, if any. */
    contextualTypeArguments: Map<string,Type> | null = null
  ) {
    super(
      ElementKind.Function,
      nameInclTypeParameters,
      mangleInternalName(nameInclTypeParameters, prototype.parent, prototype.is(CommonFlags.Instance)),
      prototype.program,
      prototype.parent,
      prototype.declaration
    );
    this.prototype = prototype;
    this.typeArguments = typeArguments;
    this.signature = signature;
    this.flags = prototype.flags | CommonFlags.Resolved;
    this.decoratorFlags = prototype.decoratorFlags;
    this.contextualTypeArguments = contextualTypeArguments;
    this.original = this;
    let program = prototype.program;
    this.type = signature.type;
    this.flow = Flow.createDefault(this);
    if (!prototype.is(CommonFlags.Ambient)) {
      let localIndex = 0;
      let thisType = signature.thisType;
      if (thisType) {
        let local = new Local(
          CommonNames.this_,
          localIndex++,
          thisType,
          this
        );
        let scopedLocals = this.flow.scopedLocals;
        if (!scopedLocals) this.flow.scopedLocals = scopedLocals = new Map();
        scopedLocals.set(CommonNames.this_, local);
        this.localsByIndex[local.index] = local;
      }
      let parameterTypes = signature.parameterTypes;
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        let parameterType = parameterTypes[i];
        let parameterName = this.getParameterName(i);
        let local = new Local(
          parameterName,
          localIndex++,
          parameterType,
          this
        );
        let scopedLocals = this.flow.scopedLocals;
        if (!scopedLocals) this.flow.scopedLocals = scopedLocals = new Map();
        scopedLocals.set(parameterName, local);
        this.localsByIndex[local.index] = local;
      }
    }
    registerConcreteElement(program, this);
  }

  /** Gets the types of additional locals that are not parameters. */
  getNonParameterLocalTypes(): Type[] {
    let localsByIndex = this.localsByIndex;
    let signature = this.signature;
    let numTotal = localsByIndex.length;
    let numFixed = signature.parameterTypes.length;
    if (signature.thisType) ++numFixed;
    let numAdditional = numTotal - numFixed;
    let types = new Array<Type>(numAdditional);
    for (let i = 0; i < numAdditional; ++i) {
      types[i] = localsByIndex[numFixed + i].type;
    }
    return types;
  }

  /** Gets the name of the parameter at the specified index. */
  getParameterName(index: i32): string {
    let parameters = (<FunctionDeclaration>this.declaration).signature.parameters;
    return parameters.length > index
      ? parameters[index].name.text
      : getDefaultParameterName(index);
  }

  /** Gets the class or interface this function belongs to, if an instance method. */
  getClassOrInterface(): Class | null {
    let parent = this.parent;
    if (parent.kind == ElementKind.Property) parent = parent.parent;
    if (parent.kind == ElementKind.Class || parent.kind == ElementKind.Interface) {
      return <Class>parent;
    }
    return null;
  }

  /** Creates a stub for use with this function, i.e. for varargs or virtual calls. */
  newStub(postfix: string): Function {
    let stub = new Function(
      this.original.name + STUB_DELIMITER + postfix,
      this.prototype,
      this.typeArguments,
      this.signature.clone(),
      this.contextualTypeArguments
    );
    stub.original = this.original;
    stub.set(this.flags & ~CommonFlags.Compiled | CommonFlags.Stub);
    return stub;
  }

  /** Adds a local of the specified type, with an optional name. */
  addLocal(type: Type, name: string | null = null, declaration: VariableDeclaration | null = null): Local {
    // if it has a name, check previously as this method will throw otherwise
    let localsByIndex = this.localsByIndex;
    let localIndex = localsByIndex.length;
    let localName = name != null ? name : localIndex.toString();
    if (!declaration) declaration = this.program.makeNativeVariableDeclaration(localName);
    let local = new Local(localName, localIndex, type, this, declaration);
    if (name) {
      let defaultFlow = this.flow;
      let scopedLocals = defaultFlow.scopedLocals;
      if (!scopedLocals) defaultFlow.scopedLocals = scopedLocals = new Map();
      if (scopedLocals.has(name)) throw new Error("duplicate local name");
      scopedLocals.set(name, local);
    }
    localsByIndex[localIndex] = local;
    return local;
  }

  /* @override */
  lookup(name: string, isType: bool = false): Element | null {
    if (!isType) {
      let scopedLocals = this.flow.scopedLocals;
      if (scopedLocals && scopedLocals.has(name)) {
        return assert(scopedLocals.get(name));
      }
    }
    return super.lookup(name, isType);
  }

  // used by flows to keep track of break labels
  nextBreakId: i32 = 0;
  breakStack: i32[] | null = null;
  breakLabel: string | null = null;

  /** Finalizes the function once compiled, releasing no longer needed resources. */
  finalize(module: Module, ref: FunctionRef): void {
    this.ref = ref;
    let breakStack = this.breakStack;
    assert(!breakStack || !breakStack.length); // internal error
    this.breakStack = breakStack = null;
    this.breakLabel = null;
    this.addDebugInfo(module, ref);
  }

  addDebugInfo(module: Module, ref: FunctionRef): void {
    if (this.program.options.sourceMap) {
      let debugLocations = this.debugLocations;
      for (let i = 0, k = debugLocations.length; i < k; ++i) {
        let range = debugLocations[i];
        let source = range.source;
        module.setDebugLocation(
          ref,
          range.debugInfoRef,
          source.debugInfoIndex,
          source.lineAt(range.start),
          source.columnAt() - 1 // source maps are 0-based
        );
      }
    }
    if (this.program.options.debugInfo) {
      let localNameMap = new Set<string>();
      let localsByIndex = this.localsByIndex;
      for (let i = 0, k = localsByIndex.length; i < k; i++) {
        let localName = localsByIndex[i].name;
        if (localNameMap.has(localName)) {
          localName = `${localName}|${i}`;
        }
        localNameMap.add(localName);
        module.setLocalName(ref, i, localName);
      }
    }
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
    decoratorFlags: DecoratorFlags = DecoratorFlags.None
  ) {
    super(
      ElementKind.FieldPrototype,
      name,
      mangleInternalName(name, parent, assert(declaration.is(CommonFlags.Instance))),
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
}

/** A resolved instance field. */
export class Field extends VariableLikeElement {

  /** Field prototype reference. */
  prototype: FieldPrototype;
  /** Field memory offset, if an instance field. */
  memoryOffset: i32 = -1;
  /** Getter function reference, if compiled. */
  getterRef: FunctionRef = 0;
  /** Setter function reference, if compiled. */
  setterRef: FunctionRef = 0;

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
      ElementKind.Field,
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

  /** Gets the field's `this` type. */
  get thisType(): Type {
    let parent = this.parent;
    assert(parent.kind == ElementKind.Class);
    return (<Class>parent).type;
  }

  /** Gets the internal name of the respective getter function. */
  get internalGetterName(): string {
    let cached = this._internalGetterName;
    if (cached == null) {
      this._internalGetterName = cached = `${this.parent.internalName}${INSTANCE_DELIMITER}${GETTER_PREFIX}${this.name}`;
    }
    return cached;
  }
  private _internalGetterName: string | null = null;

  /** Gets the internal name of the respective setter function. */
  get internalSetterName(): string {
    let cached = this._internalSetterName;
    if (cached == null) {
      this._internalSetterName = cached = `${this.parent.internalName}${INSTANCE_DELIMITER}${SETTER_PREFIX}${this.name}`;
    }
    return cached;
  }
  private _internalSetterName: string | null = null;

  /** Gets the signature of the respective getter function. */
  get internalGetterSignature(): Signature {
    let cached = this._internalGetterSignature;
    if (!cached) {
      this._internalGetterSignature = cached = new Signature(this.program, null, this.type, this.thisType);
    }
    return cached;
  }
  private _internalGetterSignature: Signature | null = null;

  /** Gets the signature of the respective setter function. */
  get internalSetterSignature(): Signature {
    let cached = this._internalSetterSignature;
    if (!cached) {
      this._internalSetterSignature = cached = new Signature(this.program, [ this.type ], Type.void, this.thisType);
    }
    return cached;
  }
  private _internalSetterSignature: Signature | null = null;
}

/** A property comprised of a getter and a setter function. */
export class PropertyPrototype extends DeclaredElement {

  /** Getter prototype. */
  getterPrototype: FunctionPrototype | null = null;
  /** Setter prototype. */
  setterPrototype: FunctionPrototype | null = null;
  /** Property instance, if resolved. */
  instance: Property | null = null;

  /** Clones of this prototype that are bound to specific classes. */
  private boundPrototypes: Map<Class,PropertyPrototype> | null = null;

  /** Constructs a new property prototype. */
  constructor(
    /** Simple name. */
    name: string,
    /** Parent element. Either a class prototype or instance. */
    parent: Element,
    /** Declaration of the getter or setter introducing the property. */
    firstDeclaration: FunctionDeclaration
  ) {
    super(
      ElementKind.PropertyPrototype,
      name,
      mangleInternalName(name, parent, firstDeclaration.is(CommonFlags.Instance)),
      parent.program,
      parent,
      firstDeclaration
    );
    this.flags &= ~(CommonFlags.Get | CommonFlags.Set);
  }

  /** Tests if this prototype is bound to a class. */
  get isBound(): bool {
    switch (this.parent.kind) {
      case ElementKind.Class:
      case ElementKind.Interface: return true;
    }
    return false;
  }

  /** Creates a clone of this prototype that is bound to a concrete class instead. */
  toBound(classInstance: Class): PropertyPrototype {
    assert(this.is(CommonFlags.Instance));
    assert(!this.isBound);
    let boundPrototypes = this.boundPrototypes;
    if (!boundPrototypes) this.boundPrototypes = boundPrototypes = new Map();
    else if (boundPrototypes.has(classInstance)) return assert(boundPrototypes.get(classInstance));
    let firstDeclaration = this.declaration;
    assert(firstDeclaration.kind == NodeKind.MethodDeclaration);
    let bound = new PropertyPrototype(
      this.name,
      classInstance, // !
      <MethodDeclaration>firstDeclaration
    );
    bound.flags = this.flags;
    let getterPrototype = this.getterPrototype;
    if (getterPrototype) {
      bound.getterPrototype = getterPrototype.toBound(classInstance);
    }
    let setterPrototype = this.setterPrototype;
    if (setterPrototype) {
      bound.setterPrototype = setterPrototype.toBound(classInstance);
    }
    boundPrototypes.set(classInstance, bound);
    return bound;
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
      ElementKind.Property,
      prototype.name,
      parent,
      Node.createVariableDeclaration(
        prototype.identifierNode,
        null,
        prototype.is(CommonFlags.Instance)
          ? CommonFlags.Instance
          : CommonFlags.None,
        null, null,
        prototype.identifierNode.range
      )
    );
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.decoratorFlags = prototype.decoratorFlags;
    if (this.is(CommonFlags.Instance)) {
      registerConcreteElement(this.program, this);
    }
  }
}

/** A resolved index signature. */
export class IndexSignature extends TypedElement {

  /** Constructs a new index prototype. */
  constructor(
    /** Parent class. */
    parent: Class
  ) {
    super(
      ElementKind.IndexSignature,
      "[]",
      parent.internalName + "[]",
      parent.program,
      parent,
      parent.program.makeNativeVariableDeclaration("[]") // is fine
    );
  }

  /** Obtains the getter instance. */
  getGetterInstance(isUnchecked: bool): Function | null {
    return (<Class>this.parent).lookupOverload(OperatorKind.IndexedGet, isUnchecked);
  }

  /** Obtains the setter instance. */
  getSetterInstance(isUnchecked: bool): Function | null {
    return (<Class>this.parent).lookupOverload(OperatorKind.IndexedSet, isUnchecked);
  }
}

/** A yet unresolved class prototype. */
export class ClassPrototype extends DeclaredElement {

  /** Instance member prototypes. */
  instanceMembers: Map<string,DeclaredElement> | null = null;
  /** Base class prototype, if applicable. */
  basePrototype: ClassPrototype | null = null;
  /** Interface prototypes, if applicable. */
  interfacePrototypes: InterfacePrototype[] | null = null;
  /** Constructor prototype. */
  constructorPrototype: FunctionPrototype | null = null;
  /** Operator overload prototypes. */
  overloadPrototypes: Map<OperatorKind, FunctionPrototype> = new Map();
  /** Already resolved instances. */
  instances: Map<string,Class> | null = null;
  /** Classes extending this class. */
  extendees: Set<ClassPrototype> = new Set();

  constructor(
    /** Simple name. */
    name: string,
    /** Parent element, usually a file or namespace. */
    parent: Element,
    /** Declaration reference. */
    declaration: ClassDeclaration,
    /** Pre-checked flags indicating built-in decorators. */
    decoratorFlags: DecoratorFlags = DecoratorFlags.None,
    _isInterface: bool = false // FIXME
  ) {
    super(
      _isInterface ? ElementKind.InterfacePrototype : ElementKind.ClassPrototype,
      name,
      mangleInternalName(name, parent, declaration.is(CommonFlags.Instance)),
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
    let arrayBufferViewInstance = this.program.arrayBufferViewInstance;
    return arrayBufferViewInstance && this.extends(arrayBufferViewInstance.prototype);
  }

  /** Tests if this prototype extends the specified. */
  extends(basePtototype: ClassPrototype | null): bool {
    let current: ClassPrototype | null = this;
    let seen = new Set<ClassPrototype>();
    do {
      // cannot directly or indirectly extend itself
      if (seen.has(current)) break;
      seen.add(current);
      if (current == basePtototype) return true;
      current = current.basePrototype;
    } while (current);
    return false;
  }

  /** Adds an element as an instance member of this one. Returns the previous element if a duplicate. */
  addInstance(name: string, element: DeclaredElement): bool {
    let originalDeclaration = element.declaration;
    let instanceMembers = this.instanceMembers;
    if (!instanceMembers) this.instanceMembers = instanceMembers = new Map();
    else if (instanceMembers.has(name)) {
      let existing = assert(instanceMembers.get(name));
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
    if (element.is(CommonFlags.Export) && this.is(CommonFlags.ModuleExport)) {
      element.set(CommonFlags.ModuleExport); // propagate
    }
    this.program.elementsByDeclaration.set(originalDeclaration, element);
    return true;
  }

  /** Gets the resolved instance for the specified instance key, if already resolved. */
  getResolvedInstance(instanceKey: string): Class | null {
    let instances = this.instances;
    if (instances && instances.has(instanceKey)) return <Class>instances.get(instanceKey);
    return null;
  }

  /** Sets the resolved instance for the specified instance key. */
  setResolvedInstance(instanceKey: string, instance: Class): void {
    let instances = this.instances;
    if (!instances) this.instances = instances = new Map();
    else assert(!instances.has(instanceKey));
    instances.set(instanceKey, instance);
  }
}

/** A resolved class. */
export class Class extends TypedElement {

  /** Class prototype. */
  prototype: ClassPrototype;
  /** Resolved type arguments. */
  typeArguments: Type[] | null;
  /** Base class, if applicable. */
  base: Class | null = null;
  /** Implemented interfaces, if applicable. */
  interfaces: Set<Interface> | null = null;
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
  /** Runtime type information flags. */
  rttiFlags: u32 = 0;
  /** Wrapped type, if a wrapper for a basic type. */
  wrappedType: Type | null = null;
  /** Classes directly extending this class. */
  extendees: Set<Class> | null = null;
  /** Classes implementing this interface. */
  implementers: Set<Class> | null = null;
  /** Whether the field initialization check has already been performed. */
  didCheckFieldInitialization: bool = false;
  /** Runtime visitor function reference. */
  visitRef: FunctionRef = 0;

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
    let lengthField = this.getMember("length");
    if (!lengthField) return false;
    return (
      lengthField.kind == ElementKind.Field ||
      (
        lengthField.kind == ElementKind.PropertyPrototype &&
        (<PropertyPrototype>lengthField).getterPrototype != null // TODO: resolve & check type?
      )
    ) && (
      this.lookupOverload(OperatorKind.IndexedGet) != null ||
      this.lookupOverload(OperatorKind.UncheckedIndexedGet) != null
    );
  }

  /** Tests if this is an interface. */
  get isInterface(): bool {
    return this.kind == ElementKind.Interface;
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
      _isInterface ? ElementKind.Interface : ElementKind.Class,
      nameInclTypeParameters,
      mangleInternalName(nameInclTypeParameters, prototype.parent, prototype.is(CommonFlags.Instance)),
      prototype.program,
      prototype.parent,
      prototype.declaration
    );
    let program = this.program;
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.decoratorFlags = prototype.decoratorFlags;
    this.typeArguments = typeArguments;
    let usizeType = program.options.usizeType;
    let type = new Type(usizeType.kind, usizeType.flags & ~TypeFlags.Value | TypeFlags.Reference, usizeType.size);
    type.classReference = this;
    this.setType(type);

    if (!this.hasDecorator(DecoratorFlags.Unmanaged)) {
      let id = program.nextClassId++;
      this._id = id;
      program.managedClasses.set(id, this);
    }

    // apply pre-checked instance-specific contextual type arguments
    let typeParameters = prototype.typeParameterNodes;
    if (typeArguments) {
      let numTypeArguments = typeArguments.length;
      if (!typeParameters || numTypeArguments != typeParameters.length) {
        throw new Error("type argument count mismatch");
      }
      if (numTypeArguments) {
        let contextualTypeArguments = this.contextualTypeArguments;
        if (!contextualTypeArguments) this.contextualTypeArguments = contextualTypeArguments = new Map();
        for (let i = 0; i < numTypeArguments; ++i) {
          contextualTypeArguments.set(typeParameters[i].name.text, typeArguments[i]);
        }
      }
    } else if (typeParameters && typeParameters.length > 0) {
      throw new Error("type argument count mismatch");
    }
    registerConcreteElement(program, this);
  }

  /** Sets the base class. */
  setBase(base: Class): void {
    assert(!this.base);
    this.base = base;
    let extendees = base.extendees;
    if (!extendees) base.extendees = extendees = new Set();
    extendees.add(this);

    // Inherit contextual type arguments from base class
    let inheritedTypeArguments = base.contextualTypeArguments;
    if (inheritedTypeArguments) {
      let contextualTypeArguments = this.contextualTypeArguments;
      // TODO: for (let [baseName, baseType] of inheritedTypeArguments) {
      for (let _keys = Map_keys(inheritedTypeArguments), i = 0, k = _keys.length; i < k; ++i) {
        let baseName = unchecked(_keys[i]);
        let baseType = assert(inheritedTypeArguments.get(baseName));
        if (!contextualTypeArguments) {
          this.contextualTypeArguments = contextualTypeArguments = new Map();
          contextualTypeArguments.set(baseName, baseType);
        } else if (!contextualTypeArguments.has(baseName)) {
          contextualTypeArguments.set(baseName, baseType);
        }
      }
    }
  }

  /** Adds an interface. */
  addInterface(iface: Interface): void {
    let interfaces = this.interfaces;
    if (!interfaces) this.interfaces = interfaces = new Set();
    interfaces.add(iface);
    let implementers = iface.implementers;
    if (!implementers) iface.implementers = implementers = new Set();
    implementers.add(this);
  }

  /** Tests if a value of this class type is assignable to a target of the specified class type. */
  isAssignableTo(target: Class): bool {
    let current: Class | null = this;
    do {
      if (current == target) return true;
      if (target.kind == ElementKind.Interface) {
        let interfaces = current.interfaces;
        if (interfaces) {
          for (let _values = Set_values(interfaces), i = 0, k = _values.length; i < k; ++i) {
            let iface = _values[i];
            if (iface.isAssignableTo(target)) return true;
          }
        }
      }
      current = current.base;
    } while (current);
    return false;
  }

  /** Looks up the operator overload of the specified kind. */
  lookupOverload(kind: OperatorKind, unchecked: bool = false): Function | null {
    if (unchecked) {
      switch (kind) {
        case OperatorKind.IndexedGet: {
          let uncheckedOverload = this.lookupOverload(OperatorKind.UncheckedIndexedGet);
          if (uncheckedOverload) return uncheckedOverload;
          break;
        }
        case OperatorKind.IndexedSet: {
          let uncheckedOverload = this.lookupOverload(OperatorKind.UncheckedIndexedSet);
          if (uncheckedOverload) return uncheckedOverload;
          break;
        }
        default: assert(false);
      }
    }
    let instance: Class | null = this;
    do {
      let overloads = instance.overloads;
      if (overloads != null && overloads.has(kind)) {
        return assert(overloads.get(kind));
      }
      instance = instance.base;
    } while (instance);
    return null;
  }

  /** Gets the method of the specified name, resolved with the given type arguments. */
  getMethod(name: string, typeArguments: Type[] | null = null): Function | null {
    let member = this.getMember(name);
    if (member && member.kind == ElementKind.FunctionPrototype) {
      return this.program.resolver.resolveFunction(<FunctionPrototype>member, typeArguments);
    }
    return null;
  }

  /** Calculates the memory offset of the specified field. */
  offsetof(fieldName: string): u32 {
    let member = assert(this.getMember(fieldName));
    assert(member.kind == ElementKind.Field);
    return (<Field>member).memoryOffset;
  }

  /** Creates a buffer suitable to hold a runtime instance of this class. */
  createBuffer(overhead: i32 = 0): Uint8Array {
    let program = this.program;
    let payloadSize = this.nextMemoryOffset + overhead;
    let blockSize = program.computeBlockSize(payloadSize, true); // excl. overhead
    let buffer = new Uint8Array(program.blockOverhead + blockSize);
    let OBJECT = program.OBJECTInstance;
    OBJECT.writeField("mmInfo", blockSize, buffer, 0);
    OBJECT.writeField("gcInfo", 0, buffer, 0);
    OBJECT.writeField("gcInfo2", 0, buffer, 0);
    OBJECT.writeField("rtId", this.id, buffer, 0);
    OBJECT.writeField("rtSize", payloadSize, buffer, 0);
    return buffer;
  }

  /** Writes a field value to a buffer and returns the number of bytes written. */
  writeField<T>(name: string, value: T, buffer: Uint8Array, baseOffset: i32 = this.program.totalOverhead): i32 {
    let member = this.getMember(name);
    if (member && member.kind == ElementKind.Field) {
      let fieldInstance = <Field>member;
      let offset = baseOffset + fieldInstance.memoryOffset;
      let typeKind = fieldInstance.type.kind;
      switch (typeKind) {
        case TypeKind.I8:
        case TypeKind.U8: {
          assert(!i64_is(value));
          writeI8(i32(value), buffer, offset);
          return 1;
        }
        case TypeKind.I16:
        case TypeKind.U16: {
          assert(!i64_is(value));
          writeI16(i32(value), buffer, offset);
          return 2;
        }
        case TypeKind.I32:
        case TypeKind.U32: {
          assert(!i64_is(value));
          writeI32(i32(value), buffer, offset);
          return 4;
        }
        case TypeKind.Isize:
        case TypeKind.Usize: {
          if (this.program.options.isWasm64) {
            if (i64_is(value)) {
              writeI64(value, buffer, offset);
            } else {
              writeI32AsI64(i32(value), buffer, offset, typeKind == TypeKind.Usize);
            }
            return 8;
          } else {
            if (i64_is(value)) {
              writeI64AsI32(value, buffer, offset, typeKind == TypeKind.Usize);
            } else {
              writeI32(i32(value), buffer, offset);
            }
            return 4;
          }
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          if (i64_is(value)) {
            writeI64(value, buffer, offset);
          } else {
            writeI32AsI64(i32(value), buffer, offset, typeKind == TypeKind.U64);
          }
          return 8;
        }
        case TypeKind.F32: {
          assert(!i64_is(value));
          writeF32(f32(value), buffer, offset);
          return 4;
        }
        case TypeKind.F64: {
          assert(!i64_is(value));
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
    let current: Class | null = this;
    do {
      if (current.prototype == extendedPrototype) return current.typeArguments;
      current = current.base;
    } while (current);
    return null;
  }

  /** Gets the value type of an array. Must be an array. */
  getArrayValueType(): Type {
    let current: Class = this;
    let program = this.program;
    let arrayPrototype = program.arrayPrototype;
    if (this.extends(arrayPrototype)) {
      return this.getTypeArgumentsTo(arrayPrototype)![0];
    }
    let staticArrayPrototype = program.staticArrayPrototype;
    if (this.extends(staticArrayPrototype)) {
      return this.getTypeArgumentsTo(staticArrayPrototype)![0];
    }
    let abvInstance = program.arrayBufferViewInstance;
    while (current.base != abvInstance) {
      current = assert(current.base);
    }
    let prototype = current.prototype;
    switch (prototype.name.charCodeAt(0)) {
      case CharCode.F: {
        if (prototype == program.float32ArrayPrototype) return Type.f32;
        if (prototype == program.float64ArrayPrototype) return Type.f64;
        break;
      }
      case CharCode.I: {
        if (prototype == program.int8ArrayPrototype) return Type.i8;
        if (prototype == program.int16ArrayPrototype) return Type.i16;
        if (prototype == program.int32ArrayPrototype) return Type.i32;
        if (prototype == program.int64ArrayPrototype) return Type.i64;
        break;
      }
      case CharCode.U: {
        if (prototype == program.uint8ArrayPrototype) return Type.u8;
        if (prototype == program.uint8ClampedArrayPrototype) return Type.u8;
        if (prototype == program.uint16ArrayPrototype) return Type.u16;
        if (prototype == program.uint32ArrayPrototype) return Type.u32;
        if (prototype == program.uint64ArrayPrototype) return Type.u64;
        break;
      }
    }
    assert(false);
    return Type.void;
  }

  /** Tests if this class is pointerfree. Useful to know for the GC. */
  get isPointerfree(): bool {
    let program = this.program;

    let instanceMembers = this.members;
    if (instanceMembers) {

      // Check that there are no managed instance fields
      for (let _values = Map_values(instanceMembers), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        if (member.kind == ElementKind.Field) {
          let fieldType = (<Field>member).type;
          if (fieldType.isManaged) return false;
        }
      }

      // Check that this isn't a managed collection
      if (instanceMembers.has(CommonNames.visit)) {
        let prototype = this.prototype;
        if (
          prototype == program.arrayPrototype ||
          prototype == program.staticArrayPrototype ||
          prototype == program.setPrototype ||
          prototype == program.mapPrototype
        ) {
          // Note that we cannot know for sure anymore as soon as the collection
          // is extended, because user code may implement a custom visitor.
          let typeArguments = assert(this.getTypeArgumentsTo(prototype));
          for (let i = 0, k = typeArguments.length; i < k; ++i) {
            if (typeArguments[i].isManaged) return false;
          }
          return true;
        }
        return false; // has a custom __visit
      }
    }
    return true;
  }

  /** Gets all extendees of this class (that do not have the specified instance member). */
  getAllExtendees(exceptIfMember: string | null = null, out: Set<Class> = new Set()): Set<Class> {
    let extendees = this.extendees;
    if (extendees) {
      for (let _values = Set_values(extendees), i = 0, k = _values.length; i < k; ++i) {
        let extendee = _values[i];
        if (exceptIfMember) {
          let instanceMembers = extendee.prototype.instanceMembers;
          if (instanceMembers && instanceMembers.has(exceptIfMember)) continue;
        }
        out.add(extendee);
        extendee.getAllExtendees(exceptIfMember, out);
      }
    }
    return out;
  }
}

/** A yet unresolved interface. */
export class InterfacePrototype extends ClassPrototype {

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
    /** Name incl. type parameters, i.e. `Foo<i32>`. */
    nameInclTypeParameters: string,
    /** The respective class prototype. */
    prototype: InterfacePrototype,
    /** Concrete type arguments, if any. */
    typeArguments: Type[] | null = null,
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
  assert(older.program == newer.program);
  if (newer.members) return null;
  let merged: DeclaredElement | null = null;
  switch (older.kind) {
    case ElementKind.FunctionPrototype: {
      switch (newer.kind) {
        case ElementKind.Namespace: {
          copyMembers(newer, older);
          merged = <DeclaredElement>older;
          break;
        }
        case ElementKind.TypeDefinition: {
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
    case ElementKind.ClassPrototype:
    case ElementKind.Enum: {
      if (newer.kind == ElementKind.Namespace) {
        copyMembers(newer, older);
        merged = <DeclaredElement>older;
        break;
      }
      break;
    }
    case ElementKind.Namespace: {
      switch (newer.kind) {
        case ElementKind.Enum:
        case ElementKind.ClassPrototype:      // TS2434
        case ElementKind.FunctionPrototype: { // TS2434
          copyMembers(older, newer);
          merged = <DeclaredElement>newer;
          break;
        }
        case ElementKind.Namespace: {
          copyMembers(newer, older);
          merged = <DeclaredElement>older;
          break;
        }
        case ElementKind.TypeDefinition: {
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
    case ElementKind.Global: {
      if (newer.kind == ElementKind.TypeDefinition) {
        if (!older.shadowType) {
          older.shadowType = <TypeDefinition>newer;
          copyMembers(newer, older);
          merged = <DeclaredElement>older;
        }
      }
      break;
    }
    case ElementKind.TypeDefinition: {
      switch (newer.kind) {
        case ElementKind.Global:
        case ElementKind.FunctionPrototype:
        case ElementKind.Namespace: {
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
    let olderIsExport = older.is(CommonFlags.Export) || older.hasDecorator(DecoratorFlags.Global);
    let newerIsExport = newer.is(CommonFlags.Export) || newer.hasDecorator(DecoratorFlags.Global);
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
  let srcMembers = src.members;
  if (srcMembers) {
    let destMembers = dest.members;
    if (!destMembers) dest.members = destMembers = new Map();
    // TODO: for (let [memberName, member] of srcMembers) {
    for (let _keys = Map_keys(srcMembers), i = 0, k = _keys.length; i < k; ++i) {
      let memberName = unchecked(_keys[i]);
      let member = assert(srcMembers.get(memberName));
      destMembers.set(memberName, member);
    }
  }
}

/** Mangles the internal name of an element with the specified name that is a child of the given parent. */
export function mangleInternalName(
  name: string,
  parent: Element,
  isInstance: bool,
  asGlobal: bool = false
): string {
  switch (parent.kind) {
    case ElementKind.File: {
      if (asGlobal) return name;
      return parent.internalName + PATH_DELIMITER + name;
    }
    case ElementKind.Function: {
      if (asGlobal) return name;
      assert(!isInstance);
      return parent.internalName + INNER_DELIMITER + name;
    }
    case ElementKind.PropertyPrototype: // properties are just containers
    case ElementKind.Property: {         //
      parent = parent.parent;
      // fall-through
    }
    default: {
      return (
        mangleInternalName(parent.name, parent.parent, parent.is(CommonFlags.Instance), asGlobal) +
        (isInstance ? INSTANCE_DELIMITER : STATIC_DELIMITER) + name
      );
    }
  }
}

// Cached default parameter names used where names are unknown.
let cachedDefaultParameterNames: string[] = [];

/** Gets the cached default parameter name for the specified index. */
export function getDefaultParameterName(index: i32): string {
  for (let i = cachedDefaultParameterNames.length; i <= index; ++i) {
    cachedDefaultParameterNames.push(`$${i}`);
  }
  return cachedDefaultParameterNames[index];
}
