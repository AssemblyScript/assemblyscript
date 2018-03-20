/**
 * Environment definitions for compiling AssemblyScript to JavaScript using tsc.
 *
 * Note that semantic differences require additional explicit conversions for full compatibility.
 * For example, when casting an i32 to an u8, doing `<u8>(someI32 & 0xff)` will yield the same
 * result when compiling to WebAssembly or JS while `<u8>someI32` alone does nothing in JS.
 *
 * Note that i64's are not portable (JS numbers are IEEE754 doubles with a maximum safe integer
 * value of 2^53-1) and instead require a compatibility layer to work in JS as well, as for example
 * {@link glue/js/i64} respectively {@link glue/wasm/i64}.
 *
 * @module std/portable
 *//***/

// Portable types

declare type i8 = number;
declare type i16 = number;
declare type i32 = number;
declare type isize = number;
declare type u8 = number;
declare type u16 = number;
declare type u32 = number;
declare type bool = boolean;
declare type usize = number;
declare type f32 = number;
declare type f64 = number;

/** Converts any other numeric value to an 8-bit signed integer. */
declare function i8(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i8;
declare namespace i8 {
  export const MIN_VALUE: i8;
  export const MAX_VALUE: i8;
}
/** Converts any other numeric value to a 16-bit signed integer. */
declare function i16(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i8;
declare namespace i16 {
  export const MIN_VALUE: i16;
  export const MAX_VALUE: i16;
}
/** Converts any other numeric value to a 32-bit signed integer. */
declare function i32(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i32;
declare namespace i32 {
  export const MIN_VALUE: i32;
  export const MAX_VALUE: i32;
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) signed integer. */
declare function isize(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): isize;
declare namespace isize {
  export const MIN_VALUE: isize;
  export const MAX_VALUE: isize;
}
/** Converts any other numeric value to an 8-bit unsigned integer. */
declare function u8(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i8;
declare namespace u8 {
  export const MIN_VALUE: u8;
  export const MAX_VALUE: u8;
}
/** Converts any other numeric value to a 16-bit unsigned integer. */
declare function u16(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i8;
declare namespace u16 {
  export const MIN_VALUE: u16;
  export const MAX_VALUE: u16;
}
/** Converts any other numeric value to a 32-bit unsigned integer. */
declare function u32(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i32;
declare namespace u32 {
  export const MIN_VALUE: u32;
  export const MAX_VALUE: u32;
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) unsigned integer. */
declare function usize(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): isize;
declare namespace usize {
  export const MIN_VALUE: usize;
  export const MAX_VALUE: usize;
}
/** Converts any other numeric value to a 1-bit unsigned integer. */
declare function bool(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): bool;
declare namespace bool {
  export const MIN_VALUE: bool;
  export const MAX_VALUE: bool;
}
/** Converts any other numeric value to a 32-bit float. */
declare function f32(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): f32;
declare namespace f32 {
  export const MIN_VALUE: f32;
  export const MAX_VALUE: f32;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f32;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f32;
  /** Smallest normalized positive value */
  export const MIN_NORMAL_VALUE: f32;
  /** Difference between 1 and the smallest representable value greater than 1. */
  export const EPSILON: f32;
}
/** Converts any other numeric value to a 64-bit float. */
declare function f64(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): f64;
declare namespace f64 {
  export const MIN_VALUE: f64;
  export const MAX_VALUE: f64;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f64;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f64;
  /** Smallest normalized positive value */
  export const MIN_NORMAL_VALUE: f64;
  /** Difference between 1 and the smallest representable value greater than 1. */
  export const EPSILON: f64;
}

// Portable built-ins

/** Performs the sign-agnostic count leading zero bits operation on a 32-bit integer. All zero bits are considered leading if the value is zero. */
declare function clz<T = i32>(value: T): T;
/** Computes the absolute value of an integer or float. */
declare function abs<T = i32 | f32 | f64>(value: T): T;
/** Determines the maximum of two integers or floats. If either operand is `NaN`, returns `NaN`. */
declare function max<T = i32 | f32 | f64>(left: T, right: T): T;
/** Determines the minimum of two integers or floats. If either operand is `NaN`, returns `NaN`. */
declare function min<T = i32 | f32 | f64>(left: T, right: T): T;
/** Performs the ceiling operation on a 32-bit or 64-bit float. */
declare function ceil<T = f32 | f64>(value: T): T;
/** Performs the floor operation on a 32-bit or 64-bit float. */
declare function floor<T = f32 | f64>(value: T): T;
/** Selects one of two pre-evaluated values depending on the condition. */
declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;
/** Calculates the square root of a 32-bit or 64-bit float. */
declare function sqrt<T = f32 | f64>(value: T): T;
/** Rounds to the nearest integer towards zero of a 32-bit or 64-bit float. */
declare function trunc<T = f32 | f64>(value: T): T;
/** Allocates a chunk of memory of the specified size and returns a pointer to it. */
declare function allocate_memory(size: usize): usize;
/** Disposes a chunk of memory by its pointer. */
declare function free_memory(ptr: usize): void;
/** Copies n bytes from the specified source to the specified destination in memory. These regions may overlap. */
declare function move_memory(destination: usize, source: usize, n: usize): void;
/** Loads a value of the specified type from memory. Type must be `u8`. */
declare function load<T = u8>(ptr: usize, constantOffset?: usize): T;
/** Stores a value of the specified type to memory. Type must be `u8`. */
declare function store<T = u8>(ptr: usize, value: T, constantOffset?: usize): void;
/** Emits an unreachable operation that results in a runtime error when executed. */
declare function unreachable(): any; // sic

/** [Polyfill] Performs the sign-agnostic reverse bytes **/
declare function bswap<T = i32 | u32 | isize | usize>(value: T): T;
/** [Polyfill] Performs the sign-agnostic reverse bytes only for last 16-bit **/
declare function bswap16<T = i16 | u16 | i32 | u32>(value: T): T;

/** Changes the type of any value of `usize` kind to another one of `usize` kind. Useful for casting class instances to their pointer values and vice-versa. Beware that this is unsafe.*/
declare function changetype<T>(value: any): T;
/** Tests if a 32-bit or 64-bit float is `NaN`. */
declare function isNaN<T = f32 | f64>(value: T): bool;
/** Tests if a 32-bit or 64-bit float is finite, that is not `NaN` or +/-`Infinity`. */
declare function isFinite<T = f32 | f64>(value: T): bool;
/** Tests if the specified value is a valid integer. Can't distinguish an integer from an integral float. */
declare function isInteger(value: any): value is number;
/** Tests if the specified value is a valid float. Can't distinguish a float from an integer. */
declare function isFloat(value: any): value is number;
/** Tests if the specified value is of a reference type. */
declare function isReference(value: any): value is object | string;
/** Tests if the specified value can be used as a string. */
declare function isString(value: any): value is string | String;
/** Tests if the specified value can be used as an array. */
declare function isArray(value: any): value is Array<any>;
/** Traps if the specified value is not true-ish, otherwise returns the value. */
declare function assert<T>(isTrueish: T | null, message?: string): T;
/** Parses an integer string to a 64-bit float. */
declare function parseInt(str: string, radix?: i32): f64;
/** Parses an integer string to a 32-bit integer. */
declare function parseI32(str: string, radix?: i32): i32;
/** Parses a floating point string to a 64-bit float. */
declare function parseFloat(str: string): f64;

// Portable standard library
// Everything marked @deprecated is a temporary filler. Do not use.

declare const NaN: f32 | f64;
declare const Infinity: f32 | f64;

declare class Array<T> {
  [key: number]: T;
  length: i32;
  constructor(capacity?: i32);
  includes(searchElement: T, fromIndex?: i32): bool;
  indexOf(searchElement: T, fromIndex?: i32): i32;
  lastIndexOf(searchElement: T, fromIndex?: i32): i32;
  push(element: T): void;
  pop(): T;
  shift(): T;
  unshift(element: T): i32;
  slice(from: i32, to?: i32): T[];
  splice(start: i32, deleteCount?: i32): void;
  reverse(): T[];

  join(delim: string): string;
}

declare class Uint8Array extends Array<u8> {}
declare class Uint16Array extends Array<u16> {}
declare class Uint32Array extends Array<u32> {}
declare class Int8Array extends Array<i8> {}
declare class Int16Array extends Array<i16> {}
declare class Int32Array extends Array<i32> {}
declare class Float32Array extends Array<f32> {}
declare class Float64Array extends Array<f64> {}

declare class String {
  static fromCharCode(ls: i32, hs?: i32): string;
  static fromCharCodes(arr: u16[]): string;
  static fromCodePoint(cp: i32): string;
  static fromCodePoints(arr: i32[]): string;
  readonly length: i32;
  private constructor();
  indexOf(subject: string, position?: i32): i32;
  includes(other: string): bool;
  lastIndexOf(subject: string, position?: i32): i32;
  charAt(index: i32): string;
  charCodeAt(index: i32): i32;
  substring(from: i32, to?: i32): string;
  startsWith(subject: string): bool;
  endsWith(subject: string): bool;
  replace(search: string, replacement: string): string;
  toString(): string;
}

interface Boolean {}

declare class Number {
  private constructor();
  toString(radix?: i32): string;
}

interface Object {}

interface Function {}

interface RegExp {}

interface IArguments {}

declare class Error {
  constructor(message: string);
  message: string;
  stack: string | null;
}

declare class Symbol {
  private constructor();
  static readonly iterator: symbol;
}

declare class Set<T> {
  constructor(entries?: T[]);
  has(value: T): bool;
  add(value: T): void;
  delete(value: T): bool;
  clear(): void;
  [Symbol.iterator](): Iterator<T>;
}

declare class Map<K,V> {
  constructor(entries?: [K, V][]);
  readonly size: i32;
  set(key: K, value: V): void;
  has(key: K): bool;
  get(key: K): V | null;
  clear(): void;
  entries(): Iterable<[K, V]>;
  keys(): Iterable<K>;
  values(): Iterable<V>;
  [Symbol.iterator](): Iterator<[K,V]>;
}

interface Iterable<T> {
  [Symbol.iterator](): Iterator<T>;
}

interface Iterator<T> {}

declare namespace console {
  /** @deprecated */
  function log(message: string): void;
}
