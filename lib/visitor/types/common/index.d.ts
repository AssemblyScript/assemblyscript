

/** Path delimiter inserted between file system levels. */
declare const PATH_DELIMITER = "/";
/** Substitution used to indicate the parent directory. */
declare const PARENT_SUBST = "..";
/** Function name prefix used for getters. */
declare const GETTER_PREFIX = "get:";
/** Function name prefix used for setters. */
declare const SETTER_PREFIX = "set:";
/** Delimiter used between class names and instance members. */
declare const INSTANCE_DELIMITER = "#";
/** Delimiter used between class and namespace names and static members. */
declare const STATIC_DELIMITER = ".";
/** Delimiter used between a function and its inner elements. */
declare const INNER_DELIMITER = "~";
/** Substitution used to indicate a library directory. */
declare const LIBRARY_SUBST: "~lib";
/** Library directory prefix. */
declare const LIBRARY_PREFIX: string; // = LIBRARY_SUBST + PATH_DELIMITER;
/** Path index suffix. */
declare const INDEX_SUFFIX: string; // = PATH_DELIMITER + "index";
declare namespace CommonSymbols {
  const i8 = "i8";
  /** Common compiler symbols. */
  // special
  const EMPTY = "";
  // types

  const i16 = "i16";
  const i32 = "i32";
  const i64 = "i64";
  const isize = "isize";
  const u8 = "u8";
  const u16 = "u16";
  const u32 = "u32";
  const u64 = "u64";
  const usize = "usize";
  const bool = "bool";
  const f32 = "f32";
  const f64 = "f64";
  const v128 = "v128";
  const anyref = "anyref";
  const i8x16 = "i8x16";
  const u8x16 = "u8x16";
  const i16x8 = "i16x8";
  const u16x8 = "u16x8";
  const i32x4 = "i32x4";
  const u32x4 = "u32x4";
  const i64x2 = "i64x2";
  const u64x2 = "u64x2";
  const f32x4 = "f32x4";
  const f64x2 = "f64x2";
  const void_ = "void";
  const number = "number";
  const boolean = "boolean";
  const string = "string";
  const native = "native";
  const indexof = "indexof";
  const valueof = "valueof";
  const returnof = "returnof";
  // aliases
  const null_ = "null";
  const true_ = "true";
  const false_ = "false";
  // objects
  const this_ = "this";
  const super_ = "super";
  const constructor = "constructor";
  // constants
  const ASC_TARGET = "ASC_TARGET";
  const ASC_NO_TREESHAKING = "ASC_NO_TREESHAKING";
  const ASC_NO_ASSERT = "ASC_NO_ASSERT";
  const ASC_MEMORY_BASE = "ASC_MEMORY_BASE";
  const ASC_OPTIMIZE_LEVEL = "ASC_OPTIMIZE_LEVEL";
  const ASC_SHRINK_LEVEL = "ASC_SHRINK_LEVEL";
  const ASC_FEATURE_SIGN_EXTENSION = "ASC_FEATURE_SIGN_EXTENSION";
  const ASC_FEATURE_MUTABLE_GLOBALS = "ASC_FEATURE_MUTABLE_GLOBALS";
  const ASC_FEATURE_NONTRAPPING_F2I = "ASC_FEATURE_NONTRAPPING_F2I";
  const ASC_FEATURE_BULK_MEMORY = "ASC_FEATURE_BULK_MEMORY";
  const ASC_FEATURE_SIMD = "ASC_FEATURE_SIMD";
  const ASC_FEATURE_THREADS = "ASC_FEATURE_THREADS";
  const ASC_FEATURE_EXCEPTION_HANDLING = "ASC_FEATURE_EXCEPTION_HANDLING";
  const ASC_FEATURE_TAIL_CALLS = "ASC_FEATURE_TAIL_CALLS";
  const ASC_FEATURE_REFERENCE_TYPES = "ASC_FEATURE_REFERENCE_TYPES";
  // classes
  const I8 = "I8";
  const I16 = "I16";
  const I32 = "I32";
  const I64 = "I64";
  const Isize = "Isize";
  const U8 = "U8";
  const U16 = "U16";
  const U32 = "U32";
  const U64 = "U64";
  const Usize = "Usize";
  const Bool = "Bool";
  const F32 = "F32";
  const F64 = "F64";
  const V128 = "V128";
  const Anyref = "Anyref";
  const String = "String";
  const Array = "Array";
  const FixedArray = "FixedArray";
  const Set = "Set";
  const Map = "Map";
  const ArrayBufferView = "ArrayBufferView";
  const ArrayBuffer = "ArrayBuffer";
  const Math = "Math";
  const Mathf = "Mathf";
  const Int8Array = "Int8Array";
  const Int16Array = "Int16Array";
  const Int32Array = "Int32Array";
  const Int64Array = "Int64Array";
  const Uint8Array = "Uint8Array";
  const Uint8ClampedArray = "Uint8ClampedArray";
  const Uint16Array = "Uint16Array";
  const Uint32Array = "Uint32Array";
  const Uint64Array = "Uint64Array";
  const Float32Array = "Float32Array";
  const Float64Array = "Float64Array";
  // runtime
  const abort = "abort";
  const pow = "pow";
  const mod = "mod";
  const __alloc = "__alloc";
  const __realloc = "__realloc";
  const __free = "__free";
  const __retain = "__retain";
  const __release = "__release";
  const __collect = "__collect";
  const __typeinfo = "__typeinfo";
  const __instanceof = "__instanceof";
  const __visit = "__visit";
  const __allocArray = "__allocArray";
}

declare type CommonSymbols = 
// special types
"EMPTY"
| "i16"
| "i32"
| "i64"
| "isize"
| "u8"
| "u16"
| "u32"
| "u64"
| "usize"
| "bool"
| "f32"
| "f64"
| "v128"
| "anyref"
| "i8x16"
| "u8x16"
| "i16x8"
| "u16x8"
| "i32x4"
| "u32x4"
| "i64x2"
| "u64x2"
| "f32x4"
| "f64x2"
| "void"
| "number"
| "boolean"
| "string"
| "native"
| "indexof"
| "valueof"
| "returnof"
// aliases
| "null"
| "true"
| "false"
// objects
| "this"
| "super"
| "constructor"
// constants
| "ASC_TARGET"
| "ASC_NO_TREESHAKING"
| "ASC_NO_ASSERT"
| "ASC_MEMORY_BASE"
| "ASC_OPTIMIZE_LEVEL"
| "ASC_SHRINK_LEVEL"
| "ASC_FEATURE_SIGN_EXTENSION"
| "ASC_FEATURE_MUTABLE_GLOBALS"
| "ASC_FEATURE_NONTRAPPING_F2I"
| "ASC_FEATURE_BULK_MEMORY"
| "ASC_FEATURE_SIMD"
| "ASC_FEATURE_THREADS"
| "ASC_FEATURE_EXCEPTION_HANDLING"
| "ASC_FEATURE_TAIL_CALLS"
| "ASC_FEATURE_REFERENCE_TYPES"
// classes
| "I8"
| "I16"
| "I32"
| "I64"
| "Isize"
| "U8"
| "U16"
| "U32"
| "U64"
| "Usize"
| "Bool"
| "F32"
| "F64"
| "V128"
| "Anyref"
| "String"
| "Array"
| "FixedArray"
| "Set"
| "Map"
| "ArrayBufferView"
| "ArrayBuffer"
| "Math"
| "Mathf"
| "Int8Array"
| "Int16Array"
| "Int32Array"
| "Int64Array"
| "Uint8Array"
| "Uint8ClampedArray"
| "Uint16Array"
| "Uint32Array"
| "Uint64Array"
| "Float32Array"
| "Float64Array"
// runtime
| "abort"
| "pow"
| "mod"
| "__alloc"
| "__realloc"
| "__free"
| "__retain"
| "__release"
| "__collect"
| "__typeinfo"
| "__instanceof"
| "__visit"
| "__allocArray"

/** An enum of named character codes. */
declare enum CharCode {

  NULL = 0,
  LINEFEED = 0x0A,
  CARRIAGERETURN = 0x0D,
  LINESEPARATOR = 0x2028,
  PARAGRAPHSEPARATOR = 0x2029,
  NEXTLINE = 0x0085,

  SPACE = 0x20,
  NONBREAKINGSPACE = 0xA0,
  ENQUAD = 0x2000,
  EMQUAD = 0x2001,
  ENSPACE = 0x2002,
  EMSPACE = 0x2003,
  THREEPEREMSPACE = 0x2004,
  FOURPEREMSPACE = 0x2005,
  SIXPEREMSPACE = 0x2006,
  FIGURESPACE = 0x2007,
  PUNCTUATIONSPACE = 0x2008,
  THINSPACE = 0x2009,
  HAIRSPACE = 0x200A,
  ZEROWIDTHSPACE = 0x200B,
  NARROWNOBREAKSPACE = 0x202F,
  IDEOGRAPHICSPACE = 0x3000,
  MATHEMATICALSPACE = 0x205F,
  OGHAM = 0x1680,

  _ = 0x5F,

  _0 = 0x30,
  _1 = 0x31,
  _2 = 0x32,
  _3 = 0x33,
  _4 = 0x34,
  _5 = 0x35,
  _6 = 0x36,
  _7 = 0x37,
  _8 = 0x38,
  _9 = 0x39,

  a = 0x61,
  b = 0x62,
  c = 0x63,
  d = 0x64,
  e = 0x65,
  f = 0x66,
  g = 0x67,
  h = 0x68,
  i = 0x69,
  j = 0x6A,
  k = 0x6B,
  l = 0x6C,
  m = 0x6D,
  n = 0x6E,
  o = 0x6F,
  p = 0x70,
  q = 0x71,
  r = 0x72,
  s = 0x73,
  t = 0x74,
  u = 0x75,
  v = 0x76,
  w = 0x77,
  x = 0x78,
  y = 0x79,
  z = 0x7A,

  A = 0x41,
  B = 0x42,
  C = 0x43,
  D = 0x44,
  E = 0x45,
  F = 0x46,
  G = 0x47,
  H = 0x48,
  I = 0x49,
  J = 0x4A,
  K = 0x4B,
  L = 0x4C,
  M = 0x4D,
  N = 0x4E,
  O = 0x4F,
  P = 0x50,
  Q = 0x51,
  R = 0x52,
  S = 0x53,
  T = 0x54,
  U = 0x55,
  V = 0x56,
  W = 0x57,
  X = 0x58,
  Y = 0x59,
  Z = 0x5a,

  AMPERSAND = 0x26,
  ASTERISK = 0x2A,
  AT = 0x40,
  BACKSLASH = 0x5C,
  BACKTICK = 0x60,
  BAR = 0x7C,
  CARET = 0x5E,
  CLOSEBRACE = 0x7D,
  CLOSEBRACKET = 0x5D,
  CLOSEPAREN = 0x29,
  COLON = 0x3A,
  COMMA = 0x2C,
  DOLLAR = 0x24,
  DOT = 0x2E,
  DOUBLEQUOTE = 0x22,
  EQUALS = 0x3D,
  EXCLAMATION = 0x21,
  GREATERTHAN = 0x3E,
  HASH = 0x23,
  LESSTHAN = 0x3C,
  MINUS = 0x2D,
  OPENBRACE = 0x7B,
  OPENBRACKET = 0x5B,
  OPENPAREN = 0x28,
  PERCENT = 0x25,
  PLUS = 0x2B,
  QUESTION = 0x3F,
  SEMICOLON = 0x3B,
  SINGLEQUOTE = 0x27,
  SLASH = 0x2F,
  TILDE = 0x7E,

  BACKSPACE = 0x08,
  FORMFEED = 0x0C,
  BYTEORDERMARK = 0xFEFF,
  TAB = 0x09,
  VERTICALTAB = 0x0B
}

/** @module glue/js *//***/

declare type I64 = { __Long__: true }; // opaque

declare const i64_zero: I64;
declare const i64_one: I64;

declare function i64_new(lo: i32, hi?: i32): I64;
declare function i64_low(value: I64): i32;
declare function i64_high(value: I64): i32;

declare function i64_add(left: I64, right: I64): I64;
declare function i64_sub(left: I64, right: I64): I64;
declare function i64_mul(left: I64, right: I64): I64;
declare function i64_div(left: I64, right: I64): I64;
declare function i64_div_u(left: I64, right: I64): I64;
declare function i64_rem(left: I64, right: I64): I64;
declare function i64_rem_u(left: I64, right: I64): I64;
declare function i64_and(left: I64, right: I64): I64;
declare function i64_or(left: I64, right: I64): I64;
declare function i64_xor(left: I64, right: I64): I64;
declare function i64_shl(left: I64, right: I64): I64;
declare function i64_shr(left: I64, right: I64): I64;
declare function i64_shr_u(left: I64, right: I64): I64;
declare function i64_not(value: I64): I64;

declare function i64_eq(left: I64, right: I64): bool;
declare function i64_ne(left: I64, right: I64): bool;

declare function i64_align(value: I64, alignment: i32): I64;

declare function i64_is_i8(value: I64): bool;
declare function i64_is_i16(value: I64): bool;
declare function i64_is_i32(value: I64): bool;
declare function i64_is_u8(value: I64): bool;
declare function i64_is_u16(value: I64): bool;
declare function i64_is_u32(value: I64): bool;
declare function i64_is_bool(value: I64): bool;
declare function i64_is_f32(value: I64): bool;
declare function i64_is_f64(value: I64): bool;

declare function i64_to_f32(value: I64): f64;
declare function i64_to_f64(value: I64): f64;
declare function i64_to_string(value: I64, unsigned?: bool): string;
