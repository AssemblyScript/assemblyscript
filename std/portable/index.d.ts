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

/// <reference no-default-lib="true"/>

// Types

declare type bool = boolean;
declare type i8 = number;
declare type i16 = number;
declare type i32 = number;
declare type isize = number;
declare type u8 = number;
declare type u16 = number;
declare type u32 = number;
declare type usize = number;
declare type f32 = number;
declare type f64 = number;

// Compiler hints

/** Compiler target. 0 = JS, 1 = WASM32, 2 = WASM64. */
declare const ASC_TARGET: i32;
/** Provided noAssert option. */
declare const ASC_NO_ASSERT: bool;
/** Provided memoryBase option. */
declare const ASC_MEMORY_BASE: i32;
/** Provided optimizeLevel option. */
declare const ASC_OPTIMIZE_LEVEL: i32;
/** Provided shrinkLevel option. */
declare const ASC_SHRINK_LEVEL: i32;
/** Whether the mutable global feature is enabled. */
declare const ASC_FEATURE_MUTABLE_GLOBAL: bool;
/** Whether the sign extension feature is enabled. */
declare const ASC_FEATURE_SIGN_EXTENSION: bool;

// Builtins

/** Performs the sign-agnostic count leading zero bits operation on a 32-bit integer. All zero bits are considered leading if the value is zero. */
declare function clz<T = i32>(value: T): T;
/** Performs the sign-agnostic count tailing zero bits operation on a 32-bit integer. All zero bits are considered trailing if the value is zero. */
declare function ctz<T = i32>(value: T): T;
/** Performs the sign-agnostic count number of one bits operation on a 32-bit integer. */
declare function popcnt<T = i32>(value: T): T;
/** Performs the sign-agnostic rotate left operation on a 32-bit integer. */
declare function rotl<T = i32>(value: T, shift: T): T;
/** Performs the sign-agnostic rotate right operation on a 32-bit integer. */
declare function rotr<T = i32>(value: T, shift: T): T;
/** Computes the absolute value of an integer or float. */
declare function abs<T = i32 | f32 | f64>(value: T): T;
/** Determines the maximum of two integers or floats. If either operand is `NaN`, returns `NaN`. */
declare function max<T = i32 | f32 | f64>(left: T, right: T): T;
/** Determines the minimum of two integers or floats. If either operand is `NaN`, returns `NaN`. */
declare function min<T = i32 | f32 | f64>(left: T, right: T): T;
/** Composes a 32-bit or 64-bit float from the magnitude of `x` and the sign of `y`. */
declare function copysign<T = f32 | f64>(x: T, y: T): T;
/** Performs the ceiling operation on a 32-bit or 64-bit float. */
declare function ceil<T = f32 | f64>(value: T): T;
/** Performs the floor operation on a 32-bit or 64-bit float. */
declare function floor<T = f32 | f64>(value: T): T;
/** Rounds to the nearest integer tied to even of a 32-bit or 64-bit float. */
declare function nearest<T = f32 | f64>(value: T): T;
/** Selects one of two pre-evaluated values depending on the condition. */
declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;
/** Calculates the square root of a 32-bit or 64-bit float. */
declare function sqrt<T = f32 | f64>(value: T): T;
/** Rounds to the nearest integer towards zero of a 32-bit or 64-bit float. */
declare function trunc<T = f32 | f64>(value: T): T;
/** Loads a value of the specified type from memory. Type must be `u8`. */
declare function load<T = u8>(ptr: usize, constantOffset?: usize): T;
/** Stores a value of the specified type to memory. Type must be `u8`. */
declare function store<T = u8>(ptr: usize, value: T, constantOffset?: usize): void;
/** Emits an unreachable operation that results in a runtime error when executed. */
declare function unreachable(): any; // sic

/** NaN (not a number) as a 32-bit or 64-bit float depending on context. */
declare const NaN: f32 | f64;
/** Positive infinity as a 32-bit or 64-bit float depending on context. */
declare const Infinity: f32 | f64;
/** Changes the type of any value of `usize` kind to another one of `usize` kind. Useful for casting class instances to their pointer values and vice-versa. Beware that this is unsafe.*/
declare function changetype<T>(value: any): T;
/** Explicitly requests no bounds checks on the provided expression. Useful for array accesses. */
declare function unchecked<T>(value: T): T;
/** Tests if a 32-bit or 64-bit float is `NaN`. */
declare function isNaN<T = f32 | f64>(value: T): bool;
/** Tests if a 32-bit or 64-bit float is finite, that is not `NaN` or +/-`Infinity`. */
declare function isFinite<T = f32 | f64>(value: T): bool;
/** Tests if the specified value is a valid integer. Can't distinguish an integer from an integral float. */
declare function isInteger(value: any): value is number;
/** Tests if the specified value is a valid float. Can't distinguish a float from an integer. */
declare function isFloat(value: any): value is number;
/** Tests if the specified value is of a nullable reference type. */
declare function isNullable(value: any): bool;
/** Tests if the specified value is of a reference type. */
declare function isReference(value: any): value is object | string;
/** Tests if the specified value is of a function type */
declare function isFunction(value: any): value is Function;
/** Tests if the specified value can be used as a string. */
declare function isString(value: any): value is string | String;
/** Tests if the specified value can be used as an array. */
declare function isArray(value: any): value is Array<any>;
/** Tests if the specified type *or* expression can be used as an array like object. */
declare function isArrayLike(value: any): value is ArrayLike<any>;
/** Tests if the specified expression resolves to a defined element. */
declare function isDefined(expression: any): bool;
/** Tests if the specified expression evaluates to a constant value. */
declare function isConstant(expression: any): bool;
/** Traps if the specified value is not true-ish, otherwise returns the value. */
declare function assert<T>(isTrueish: T | null, message?: string): T;
/** Parses an integer string to a 64-bit float. */
declare function parseInt(str: string, radix?: i32): f64;
/** Parses an integer string to a 32-bit integer. */
declare function parseI32(str: string, radix?: i32): i32;
/** Parses a floating point string to a 64-bit float. */
declare function parseFloat(str: string): f64;
/** Returns the 64-bit floating-point remainder of `x/y`. */
declare function fmod(x: f64, y: f64): f64;
/** Returns the 32-bit floating-point remainder of `x/y`. */
declare function fmodf(x: f32, y: f32): f32;

/** Converts any other numeric value to an 8-bit signed integer. */
declare function i8(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i8;
declare namespace i8 {
  /** Smallest representable value. */
  export const MIN_VALUE: i8;
  /** Largest representable value. */
  export const MAX_VALUE: i8;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): i8;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): i8;
}
/** Converts any other numeric value to a 16-bit signed integer. */
declare function i16(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i8;
declare namespace i16 {
  /** Smallest representable value. */
  export const MIN_VALUE: i16;
  /** Largest representable value. */
  export const MAX_VALUE: i16;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): i16;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): i16;
}
/** Converts any other numeric value to a 32-bit signed integer. */
declare function i32(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i32;
declare namespace i32 {
  /** Smallest representable value. */
  export const MIN_VALUE: i32;
  /** Largest representable value. */
  export const MAX_VALUE: i32;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): i32;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): i32;
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) signed integer. */
declare function isize(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): isize;
declare namespace isize {
  /** Smallest representable value. */
  export const MIN_VALUE: isize;
  /** Largest representable value. */
  export const MAX_VALUE: isize;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): isize;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): isize;
}
/** Converts any other numeric value to an 8-bit unsigned integer. */
declare function u8(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i8;
declare namespace u8 {
  /** Smallest representable value. */
  export const MIN_VALUE: u8;
  /** Largest representable value. */
  export const MAX_VALUE: u8;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): u8;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): u8;
}
/** Converts any other numeric value to a 16-bit unsigned integer. */
declare function u16(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i8;
declare namespace u16 {
  /** Smallest representable value. */
  export const MIN_VALUE: u16;
  /** Largest representable value. */
  export const MAX_VALUE: u16;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): u16;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): u16;
}
/** Converts any other numeric value to a 32-bit unsigned integer. */
declare function u32(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): i32;
declare namespace u32 {
  /** Smallest representable value. */
  export const MIN_VALUE: u32;
  /** Largest representable value. */
  export const MAX_VALUE: u32;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): u32;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): u32;
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) unsigned integer. */
declare function usize(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): isize;
declare namespace usize {
  /** Smallest representable value. */
  export const MIN_VALUE: usize;
  /** Largest representable value. */
  export const MAX_VALUE: usize;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): usize;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): usize;
}
/** Converts any other numeric value to a 1-bit unsigned integer. */
declare function bool(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): bool;
declare namespace bool {
  /** Smallest representable value. */
  export const MIN_VALUE: bool;
  /** Largest representable value. */
  export const MAX_VALUE: bool;
}
/** Converts any other numeric value to a 32-bit float. */
declare function f32(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): f32;
declare namespace f32 {
  /** Smallest representable value. */
  export const MIN_VALUE: f32;
  /** Largest representable value. */
  export const MAX_VALUE: f32;
  /** Smallest normalized positive value. */
  export const MIN_POSITIVE_VALUE: f32;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f32;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f32;
  /** Difference between 1 and the smallest representable value greater than 1. */
  export const EPSILON: f32;
  /** Returns a boolean value that indicates whether a value is the reserved value NaN (not a number). */
  export function isNaN(value: f32): bool;
  /** Returns true if passed value is finite. */
  export function isFinite(value: f32): bool;
  /** Returns true if the value passed is a safe integer. */
  export function isSafeInteger(value: f32): bool;
  /** Returns true if the value passed is an integer, false otherwise. */
  export function isInteger(value: f32): bool;
  /** Converts a string to a floating-point number. */
  export function parseFloat(string: string): f32;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): f32;
}
/** Converts any other numeric value to a 64-bit float. */
declare function f64(value: i8 | i16 | i32 | isize | u8 | u16 | u32 | usize | bool | f32 | f64): f64;
declare namespace f64 {
  /** Smallest representable value. */
  export const MIN_VALUE: f64;
  /** Largest representable value. */
  export const MAX_VALUE: f64;
  /** Smallest normalized positive value. */
  export const MIN_POSITIVE_VALUE: f64;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f64;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f64;
  /** Difference between 1 and the smallest representable value greater than 1. */
  export const EPSILON: f64;
  /** Returns a boolean value that indicates whether a value is the reserved value NaN (not a number). */
  export function isNaN(value: f32): bool;
  /** Returns true if passed value is finite. */
  export function isFinite(value: f32): bool;
  /** Returns true if the value passed is a safe integer. */
  export function isSafeInteger(value: f64): bool;
  /** Returns true if the value passed is an integer, false otherwise. */
  export function isInteger(value: f64): bool;
  /** Converts a string to a floating-point number. */
  export function parseFloat(string: string): f64;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): f64;
}

// Polyfills

/** [Polyfill] Performs the sign-agnostic reverse bytes **/
declare function bswap<T = i32 | u32 | isize | usize>(value: T): T;
/** [Polyfill] Performs the sign-agnostic reverse bytes only for last 16-bit **/
declare function bswap16<T = i16 | u16 | i32 | u32>(value: T): T;

// Standard library

/** Memory operations. */
declare namespace memory {
  /** Allocates a chunk of memory of the specified size and returns a pointer to it. */
  function allocate(size: usize): usize;
  /** Disposes a chunk of memory by its pointer. */
  function free(ptr: usize): void;
  /** Copies n bytes from the specified source to the specified destination in memory. These regions may overlap. */
  function copy(dst: usize, src: usize, n: usize): void;
  /** Fills size bytes from from the specified destination by same value in memory. */
  function fill(dst: usize, value: u8, size: usize): void;
  /** Resets the allocator to its initial state, if supported. */
  function reset(): void;
}

/** Class representing a generic, fixed-length raw binary data buffer. */
declare class ArrayBuffer {
  /** The size, in bytes, of the array. */
  readonly byteLength: i32;
  /** Returns true if value is one of the ArrayBuffer views, such as typed array or a DataView **/
  static isView<T>(value: T): bool;
  /** Constructs a new array buffer of the given length in bytes. */
  constructor(length: i32);
  /** Returns a copy of this array buffer's bytes from begin, inclusive, up to end, exclusive. */
  slice(begin?: i32, end?: i32): ArrayBuffer;
  /** Returns a string representation of ArrayBuffer. */
  toString(): string;
}

/** The `DataView` view provides a low-level interface for reading and writing multiple number types in a binary `ArrayBuffer`, without having to care about the platform's endianness. */
declare class DataView {
  /** The `buffer` accessor property represents the `ArrayBuffer` or `SharedArrayBuffer` referenced by the `DataView` at construction time. */
  readonly buffer: ArrayBuffer;
  /** The `byteLength` accessor property represents the length (in bytes) of this view from the start of its `ArrayBuffer` or `SharedArrayBuffer`. */
  readonly byteLength: i32;
  /** The `byteOffset` accessor property represents the offset (in bytes) of this view from the start of its `ArrayBuffer` or `SharedArrayBuffer`. */
  readonly byteOffset: i32;
  /** Constructs a new `DataView` with the given properties */
  constructor(buffer: ArrayBuffer, byteOffset?: i32, byteLength?: i32);
  /** The `getFloat32()` method gets a signed 32-bit float (float) at the specified byte offset from the start of the `DataView`. */
  getFloat32(byteOffset: i32, littleEndian?: boolean): f32;
  /** The `getFloat64()` method gets a signed 64-bit float (double) at the specified byte offset from the start of the `DataView`. */
  getFloat64(byteOffset: i32, littleEndian?: boolean): f64;
  /** The `getInt8()` method gets a signed 8-bit integer (byte) at the specified byte offset from the start of the `DataView`. */
  getInt8(byteOffset: i32): i8;
  /** The `getInt16()` method gets a signed 16-bit integer (short) at the specified byte offset from the start of the `DataView`. */
  getInt16(byteOffset: i32, littleEndian?: boolean): i16;
  /** The `getInt32()` method gets a signed 32-bit integer (long) at the specified byte offset from the start of the `DataView`. */
  getInt32(byteOffset: i32, littleEndian?: boolean): i32;
  /** The `getUint8()` method gets an unsigned 8-bit integer (unsigned byte) at the specified byte offset from the start of the `DataView`. */
  getUint8(byteOffset: i32): u8;
  /** The `getUint16()` method gets an unsigned 16-bit integer (unsigned short) at the specified byte offset from the start of the `DataView`. */
  getUint16(byteOffset: i32, littleEndian?: boolean): u16;
  /** The `getUint32()` method gets an unsigned 32-bit integer (unsigned long) at the specified byte offset from the start of the `DataView`. */
  getUint32(byteOffset: i32, littleEndian?: boolean): u32;
  /** The `setFloat32()` method stores a signed 32-bit float (float) value at the specified byte offset from the start of the `DataView`. */
  setFloat32(byteOffset: i32, value: f32, littleEndian?: boolean): void;
  /** The `setFloat64()` method stores a signed 64-bit float (double) value at the specified byte offset from the start of the `DataView`. */
  setFloat64(byteOffset: i32, value: f64, littleEndian?: boolean): void;
  /** The `setInt8()` method stores a signed 8-bit integer (byte) value at the specified byte offset from the start of the `DataView`. */
  setInt8(byteOffset: i32, value: i8): void;
  /** The `setInt16()` method stores a signed 16-bit integer (short) value at the specified byte offset from the start of the `DataView`. */
  setInt16(byteOffset: i32, value: i16, littleEndian?: boolean): void;
  /** The `setInt32()` method stores a signed 32-bit integer (long) value at the specified byte offset from the start of the `DataView`. */
  setInt32(byteOffset: i32, value: i32, littleEndian?: boolean): void;
  /** The `setUint8()` method stores an unsigned 8-bit integer (byte) value at the specified byte offset from the start of the `DataView`. */
  setUint8(byteOffset: i32, value: u8): void;
  /** The `setUint16()` method stores an unsigned 16-bit integer (unsigned short) value at the specified byte offset from the start of the `DataView`. */
  setUint16(byteOffset: i32, value: u16, littleEndian?: boolean): void;
  /** The `setUint32()` method stores an unsigned 32-bit integer (unsigned long) value at the specified byte offset from the start of the `DataView`. */
  setUint32(byteOffset: i32, value: u32, littleEndian?: boolean): void;
  /** Returns a string representation of DataView. */
  toString(): string;
}

declare class Array<T> {

  static isArray<U>(value: any): value is Array<any>;

  [key: number]: T;
  length: i32;
  constructor(capacity?: i32);

  fill(value: T, start?: i32, end?: i32): this;
  every(callbackfn: (element: T, index: i32, array?: Array<T>) => bool): bool;
  findIndex(predicate: (element: T, index: i32, array?: Array<T>) => bool): i32;
  includes(searchElement: T, fromIndex?: i32): bool;
  indexOf(searchElement: T, fromIndex?: i32): i32;
  lastIndexOf(searchElement: T, fromIndex?: i32): i32;
  push(element: T): i32;
  concat(items: T[]): T[];
  copyWithin(target: i32, start: i32, end?: i32): this;
  pop(): T;
  forEach(callbackfn: (value: T, index: i32, array: Array<T>) => void): void;
  map<U>(callbackfn: (value: T, index: i32, array: Array<T>) => U): Array<U>;
  filter(callbackfn: (value: T, index: i32, array: Array<T>) => bool): Array<T>;
  reduce<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U, initialValue: U): U;
  reduceRight<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U, initialValue: U): U;
  shift(): T;
  some(callbackfn: (element: T, index: i32, array?: Array<T>) => bool): bool;
  unshift(element: T): i32;
  slice(from?: i32, to?: i32): Array<T>;
  splice(start: i32, deleteCount?: i32): Array<T>;
  sort(comparator?: (a: T, b: T) => i32): this;
  join(separator?: string): string;
  reverse(): T[];
  toString(): string;
}

declare class Uint8Array extends Array<u8> {}
declare class Uint8ClampedArray extends Array<u8> {}
declare class Uint16Array extends Array<u16> {}
declare class Uint32Array extends Array<u32> {}
declare class Int8Array extends Array<i8> {}
declare class Int16Array extends Array<i16> {}
declare class Int32Array extends Array<i32> {}
declare class Float32Array extends Array<f32> {}
declare class Float64Array extends Array<f64> {}

interface ArrayLike<T> {
  length: i32;
  [key: number]: T;
}

/** Interface for a typed view on an array buffer. */
interface ArrayBufferView<T> {
  [key: number]: T;
  /** The {@link ArrayBuffer} referenced by this view. */
  readonly buffer: ArrayBuffer;
  /** The offset in bytes from the start of the referenced {@link ArrayBuffer}. */
  readonly byteOffset: i32;
  /** The length in bytes from the start of the referenced {@link ArrayBuffer}. */
  readonly byteLength: i32;
}

declare class String {

  static fromCharCode(ls: i32, hs?: i32): string;
  static fromCharCodes(arr: u16[]): string;
  static fromCodePoint(code: i32): string;
  static fromCodePoints(arr: i32[]): string;

  readonly length: i32;

  private constructor();

  charAt(index: i32): string;
  charCodeAt(index: i32): i32;
  concat(other: string): string;
  indexOf(other: string, fromIndex?: i32): i32;
  lastIndexOf(other: string, fromIndex?: i32): i32;
  includes(other: string): bool;
  startsWith(other: string): bool;
  endsWith(other: string): bool;
  substr(start: u32, length?: u32): string;
  substring(from: i32, to?: i32): string;
  trim(): string;
  trimLeft(): string;
  trimRight(): string;
  trimStart(): string;
  trimEnd(): string;
  padStart(targetLength: i32, padString?: string): string;
  padEnd(targetLength: i32, padString?: string): string;
  replace(search: string, replacement: string): string;
  repeat(count?: i32): string;
  slice(beginIndex: i32, endIndex?: i32): string;
  split(separator?: string, limit?: i32): string[];
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

/** Class for representing a runtime error. Base class of all errors. */
declare class Error {

  /** Error name. */
  name: string;

  /** Message provided on construction. */
  message: string;

  /** Stack trace. */
  stack?: string;

  /** Constructs a new error, optionally with a message. */
  constructor(message?: string);

  /** Method returns a string representing the specified Error class. */
  toString(): string;
}

/** Class for indicating an error when a value is not in the set or range of allowed values. */
declare class RangeError extends Error { }

/** Class for indicating an error when a value is not of the expected type. */
declare class TypeError  extends Error { }

/** Class for indicating an error when trying to interpret syntactically invalid code. */
declare class SyntaxError extends Error { }

declare class Set<T> {
  constructor(entries?: T[]);
  readonly size: i32;
  has(value: T): bool;
  add(value: T): void;
  delete(value: T): bool;
  clear(): void;
  toString(): string;
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
  delete(key: K): bool;
  toString(): string;
  [Symbol.iterator](): Iterator<[K,V]>;
}

interface SymbolConstructor {
  readonly hasInstance: symbol;
  readonly isConcatSpreadable: symbol;
  readonly isRegExp: symbol;
  readonly iterator: symbol;
  readonly match: symbol;
  readonly replace: symbol;
  readonly search: symbol;
  readonly species: symbol;
  readonly split: symbol;
  readonly toPrimitive: symbol;
  readonly toStringTag: symbol;
  readonly unscopables: symbol;
  (description?: string | null): symbol;
  for(key: string): symbol;
  keyFor(sym: symbol): string | null;
}
declare const Symbol: SymbolConstructor;

interface Iterable<T> {
  [Symbol.iterator](): Iterator<T>;
}

interface Iterator<T> {}

interface IMath {
  readonly E: f64;
  readonly LN2: f64;
  readonly LN10: f64;
  readonly LOG2E: f64;
  readonly LOG10E: f64;
  readonly PI: f64;
  readonly SQRT1_2: f64;
  readonly SQRT2: f64;

  sincos_sin: f64;
  sincos_cos: f64;

  abs(x: f64): f64;
  acos(x: f64): f64;
  acosh(x: f64): f64;
  asin(x: f64): f64;
  asinh(x: f64): f64;
  atan(x: f64): f64;
  atan2(y: f64, x: f64): f64;
  atanh(x: f64): f64;
  cbrt(x: f64): f64;
  ceil(x: f64): f64;
  clz32(x: f64): i32;
  cos(x: f64): f64;
  cosh(x: f64): f64;
  exp(x: f64): f64;
  expm1(x: f64): f64;
  floor(x: f64): f64;
  fround(x: f64): f32;
  hypot(value1: f64, value2: f64): f64; // TODO: see std/math
  imul(a: f64, b: f64): i32;
  log(x: f64): f64;
  log10(x: f64): f64;
  log1p(x: f64): f64;
  log2(x: f64): f64;
  max(value1: f64, value2: f64): f64; // TODO: see std/math
  min(value1: f64, value2: f64): f64; // TODO: see std/math
  pow(base: f64, exponent: f64): f64;
  random(): f64;
  round(x: f64): f64;
  sign(x: f64): f64;
  signbit(x: f64): bool;
  sin(x: f64): f64;
  sincos(x: f64): f64;
  sinh(x: f64): f64;
  sqrt(x: f64): f64;
  tan(x: f64): f64;
  tanh(x: f64): f64;
  trunc(x: f64): f64;
}

declare const Math: IMath;
declare const Mathf: IMath;
declare const JSMath: IMath;

declare class Date {
  /** Returns the UTC timestamp in milliseconds of the specified date. */
  static UTC(
    year: i32,
    month: i32,
    day: i32,
    hour: i32,
    minute: i32,
    second: i32,
    millisecond: i32
  ): number;
  /** Returns the current UTC timestamp in milliseconds. */
  static now(): number;
  /** Constructs a new date object from an UTC timestamp in milliseconds. */
  constructor(value: number);
  /** Returns the UTC timestamp of this date in milliseconds. */
  getTime(): number;
  /** Sets the UTC timestamp of this date in milliseconds. */
  setTime(value: number): number;
}

declare namespace console {
  /** @deprecated */
  function log(message: string): void;
}
