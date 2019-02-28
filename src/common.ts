/**
 * Common constants.
 * @module common
 *//***/

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
  DEFINITE_ASSIGNMENT = 1 << 13,

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
  /** Has a constant value and is therefore inlined. */
  INLINED = 1 << 23,
  /** Is scoped. */
  SCOPED = 1 << 24,
  /** Is a trampoline. */
  TRAMPOLINE = 1 << 25,
  /** Is a virtual method. */
  VIRTUAL = 1 << 26,
  /** Is the main function. */
  MAIN = 1 << 27,

  // Other

  QUOTED = 1 << 28
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

/** Common compiler symbols. */
export namespace CommonSymbols {
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
  // aliases
  export const null_ = "null";
  export const true_ = "true";
  export const false_ = "false";
  // objects
  export const this_ = "this";
  export const super_ = "super";
  export const constructor = "constructor";
}

/** Common standard library symbols. */
export namespace LibrarySymbols {
  // constants
  export const ASC_TARGET = "ASC_TARGET";
  export const ASC_NO_TREESHAKING = "ASC_NO_TREESHAKING";
  export const ASC_NO_ASSERT = "ASC_NO_ASSERT";
  export const ASC_MEMORY_BASE = "ASC_MEMORY_BASE";
  export const ASC_OPTIMIZE_LEVEL = "ASC_OPTIMIZE_LEVEL";
  export const ASC_SHRINK_LEVEL = "ASC_SHRINK_LEVEL";
  export const ASC_FEATURE_MUTABLE_GLOBAL = "ASC_FEATURE_MUTABLE_GLOBAL";
  export const ASC_FEATURE_SIGN_EXTENSION = "ASC_FEATURE_SIGN_EXTENSION";
  export const ASC_FEATURE_BULK_MEMORY = "ASC_FEATURE_BULK_MEMORY";
  export const ASC_FEATURE_SIMD = "ASC_FEATURE_SIMD";
  export const ASC_FEATURE_THREADS = "ASC_FEATURE_THREADS";
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
  export const String = "String";
  export const Array = "Array";
  export const ArrayBuffer = "ArrayBuffer";
  export const Math = "Math";
  export const Mathf = "Mathf";
  // runtime
  export const memory = "memory";
  export const allocate = "allocate";
  export const abort = "abort";
  export const main = "main";
  // other
  export const length = "length";
  export const byteLength = "byteLength";
  export const pow = "pow";
  export const mod = "mod";
}
