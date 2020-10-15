/**
 * @fileoverview Common constants used by various parts of the compiler.
 * @license Apache-2.0
 */

/** Indicates traits of a {@link Node} or {@link Element}. */
export enum CommonFlags {
  /** No flags set. */
  NONE = 0,

  // Basic modifiers

  /** Has an `import` modifier. */
  IMPORT = 1 << 0,
  /** Has an `export` modifier. */
  EXPORT = 1 << 1,
  /** Has a `declare` modifier. */
  DECLARE = 1 << 2,
  /** Has a `const` modifier. */
  CONST = 1 << 3,
  /** Has a `let` modifier. */
  LET = 1 << 4,
  /** Has a `static` modifier. */
  STATIC = 1 << 5,
  /** Has a `readonly` modifier. */
  READONLY = 1 << 6,
  /** Has an `abstract` modifier. */
  ABSTRACT = 1 << 7,
  /** Has a `public` modifier. */
  PUBLIC = 1 << 8,
  /** Has a `private` modifier. */
  PRIVATE = 1 << 9,
  /** Has a `protected` modifier. */
  PROTECTED = 1 << 10,
  /** Has a `get` modifier. */
  GET = 1 << 11,
  /** Has a `set` modifier. */
  SET = 1 << 12,
  /** Has a definite assignment assertion `!` as in `x!: i32;`. */
  DEFINITELY_ASSIGNED = 1 << 13,

  // Extended modifiers usually derived from basic modifiers

  /** Is ambient, that is either declared or nested in a declared element. */
  AMBIENT = 1 << 14,
  /** Is generic. */
  GENERIC = 1 << 15,
  /** Is part of a generic context. */
  GENERIC_CONTEXT = 1 << 16,
  /** Is an instance member. */
  INSTANCE = 1 << 17,
  /** Is a constructor. */
  CONSTRUCTOR = 1 << 18,
  /** Is a module export. */
  MODULE_EXPORT = 1 << 19,
  /** Is a module import. */
  MODULE_IMPORT = 1 << 20,

  // Compilation states

  /** Is resolved. */
  RESOLVED = 1 << 21,
  /** Is compiled. */
  COMPILED = 1 << 22,
  /** Did error. */
  ERRORED = 1 << 23,
  /** Has a constant value and is therefore inlined. */
  INLINED = 1 << 24,
  /** Is scoped. */
  SCOPED = 1 << 25,
  /** Is a stub. */
  STUB = 1 << 26,
  /** Is a virtual method. */
  VIRTUAL = 1 << 27,
  /** Is (part of) a closure. */
  CLOSURE = 1 << 28,

  // Other

  /** Is quoted. */
  QUOTED = 1 << 29
}

/** Path delimiter inserted between file system levels. */
export const PATH_DELIMITER = "/";
/** Substitution used to indicate the parent directory. */
export const PARENT_SUBST = "..";
/** Function name prefix used for getters. */
export const GETTER_PREFIX = "get:";
/** Function name prefix used for setters. */
export const SETTER_PREFIX = "set:";
/** Delimiter used between class names and instance members. */
export const INSTANCE_DELIMITER = "#";
/** Delimiter used between class and namespace names and static members. */
export const STATIC_DELIMITER = ".";
/** Delimiter used between a function and its inner elements. */
export const INNER_DELIMITER = "~";
/** Substitution used to indicate a library directory. */
export const LIBRARY_SUBST = "~lib";
/** Library directory prefix. */
export const LIBRARY_PREFIX = LIBRARY_SUBST + PATH_DELIMITER;
/** Path index suffix. */
export const INDEX_SUFFIX = PATH_DELIMITER + "index";
/** Stub function delimiter. */
export const STUB_DELIMITER = "@";

/** Common names. */
export namespace CommonNames {
  // special
  export const EMPTY = "";
  // types
  export const i8 = "i8";
  export const i16 = "i16";
  export const i32 = "i32";
  export const i64 = "i64";
  export const isize = "isize";
  export const u8 = "u8";
  export const u16 = "u16";
  export const u32 = "u32";
  export const u64 = "u64";
  export const usize = "usize";
  export const bool = "bool";
  export const f32 = "f32";
  export const f64 = "f64";
  export const v128 = "v128";
  export const funcref = "funcref";
  export const externref = "externref";
  export const exnref = "exnref";
  export const anyref = "anyref";
  export const i8x16 = "i8x16";
  export const u8x16 = "u8x16";
  export const i16x8 = "i16x8";
  export const u16x8 = "u16x8";
  export const i32x4 = "i32x4";
  export const u32x4 = "u32x4";
  export const i64x2 = "i64x2";
  export const u64x2 = "u64x2";
  export const f32x4 = "f32x4";
  export const f64x2 = "f64x2";
  export const void_ = "void";
  export const number = "number";
  export const boolean = "boolean";
  export const string = "string";
  export const native = "native";
  export const indexof = "indexof";
  export const valueof = "valueof";
  export const returnof = "returnof";
  // aliases
  export const null_ = "null";
  export const true_ = "true";
  export const false_ = "false";
  // objects
  export const this_ = "this";
  export const super_ = "super";
  export const constructor = "constructor";
  // constants
  export const ASC_TARGET = "ASC_TARGET";
  export const ASC_NO_TREESHAKING = "ASC_NO_TREESHAKING";
  export const ASC_NO_ASSERT = "ASC_NO_ASSERT";
  export const ASC_MEMORY_BASE = "ASC_MEMORY_BASE";
  export const ASC_TABLE_BASE = "ASC_TABLE_BASE";
  export const ASC_OPTIMIZE_LEVEL = "ASC_OPTIMIZE_LEVEL";
  export const ASC_SHRINK_LEVEL = "ASC_SHRINK_LEVEL";
  export const ASC_LOW_MEMORY_LIMIT = "ASC_LOW_MEMORY_LIMIT";
  export const ASC_WASI = "ASC_WASI";
  export const ASC_FEATURE_SIGN_EXTENSION = "ASC_FEATURE_SIGN_EXTENSION";
  export const ASC_FEATURE_MUTABLE_GLOBALS = "ASC_FEATURE_MUTABLE_GLOBALS";
  export const ASC_FEATURE_NONTRAPPING_F2I = "ASC_FEATURE_NONTRAPPING_F2I";
  export const ASC_FEATURE_BULK_MEMORY = "ASC_FEATURE_BULK_MEMORY";
  export const ASC_FEATURE_SIMD = "ASC_FEATURE_SIMD";
  export const ASC_FEATURE_THREADS = "ASC_FEATURE_THREADS";
  export const ASC_FEATURE_EXCEPTION_HANDLING = "ASC_FEATURE_EXCEPTION_HANDLING";
  export const ASC_FEATURE_TAIL_CALLS = "ASC_FEATURE_TAIL_CALLS";
  export const ASC_FEATURE_REFERENCE_TYPES = "ASC_FEATURE_REFERENCE_TYPES";
  export const ASC_FEATURE_MULTI_VALUE = "ASC_FEATURE_MULTI_VALUE";
  export const ASC_FEATURE_GC = "ASC_FEATURE_GC";
  export const ASC_FEATURE_MEMORY64 = "ASC_FEATURE_MEMORY64";
  // classes
  export const I8 = "I8";
  export const I16 = "I16";
  export const I32 = "I32";
  export const I64 = "I64";
  export const Isize = "Isize";
  export const U8 = "U8";
  export const U16 = "U16";
  export const U32 = "U32";
  export const U64 = "U64";
  export const Usize = "Usize";
  export const Bool = "Bool";
  export const F32 = "F32";
  export const F64 = "F64";
  export const V128 = "V128";
  export const Funcref = "Funcref";
  export const Externref = "Externref";
  export const Exnref = "Exnref";
  export const Anyref = "Anyref";
  export const String = "String";
  export const Array = "Array";
  export const StaticArray = "StaticArray";
  export const Set = "Set";
  export const Map = "Map";
  export const Function = "Function";
  export const ArrayBufferView = "ArrayBufferView";
  export const ArrayBuffer = "ArrayBuffer";
  export const Math = "Math";
  export const Mathf = "Mathf";
  export const NativeMath = "NativeMath";
  export const NativeMathf = "NativeMathf";
  export const Int8Array = "Int8Array";
  export const Int16Array = "Int16Array";
  export const Int32Array = "Int32Array";
  export const Int64Array = "Int64Array";
  export const Uint8Array = "Uint8Array";
  export const Uint8ClampedArray = "Uint8ClampedArray";
  export const Uint16Array = "Uint16Array";
  export const Uint32Array = "Uint32Array";
  export const Uint64Array = "Uint64Array";
  export const Float32Array = "Float32Array";
  export const Float64Array = "Float64Array";
  export const Error = "Error";
  // runtime
  export const abort = "abort";
  export const trace = "trace";
  export const seed = "seed";
  export const pow = "pow";
  export const ipow32 = "ipow32";
  export const ipow64 = "ipow64";
  export const mod = "mod";
  export const alloc = "__alloc";
  export const realloc = "__realloc";
  export const free = "__free";
  export const new_ = "__new";
  export const renew = "__renew";
  export const retain = "__retain";
  export const release = "__release";
  export const collect = "__collect";
  export const typeinfo = "__typeinfo";
  export const instanceof_ = "__instanceof";
  export const visit = "__visit";
  export const newBuffer = "__newBuffer";
  export const newArray = "__newArray";
  export const BLOCK = "~lib/rt/common/BLOCK";
  export const OBJECT = "~lib/rt/common/OBJECT";
}

// shared
export { Feature, featureToString } from "../std/assembly/shared/feature";
export { Target } from "../std/assembly/shared/target";
export { Typeinfo, TypeinfoFlags } from "../std/assembly/shared/typeinfo";
