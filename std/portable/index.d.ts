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

/** Special type evaluating the indexed access index type. */
declare type indexof<T extends unknown[]> = keyof T;
/** Special type evaluating the indexed access value type. */
declare type valueof<T extends unknown[]> = T[0];

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
/** Emits an unreachable operation that results in a runtime error when executed. */
declare function unreachable(): any; // sic

/** Changes the type of any value of `usize` kind to another one of `usize` kind. Useful for casting class instances to their pointer values and vice-versa. Beware that this is unsafe.*/
declare function changetype<T>(value: any): T;
/** Explicitly requests no bounds checks on the provided expression. Useful for array accesses. */
declare function unchecked<T>(value: T): T;
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
declare function assert<T>(isTrueish: T, message?: string): T & (object | string | number); // any better way to model `: T != null`?
/** Parses an integer string to a 64-bit float. */
declare function parseInt(str: string, radix?: i32): f64;
/** Parses a floating point string to a 64-bit float. */
declare function parseFloat(str: string): f64;
/** Returns the 64-bit floating-point remainder of `x/y`. */
declare function fmod(x: f64, y: f64): f64;
/** Returns the 32-bit floating-point remainder of `x/y`. */
declare function fmodf(x: f32, y: f32): f32;

/** Converts any other numeric value to an 8-bit signed integer. */
declare function i8(value: any): i8;
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
declare function i16(value: any): i16;
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
declare function i32(value: any): i32;
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
declare function isize(value: any): isize;
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
declare function u8(value: any): u8;
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
declare function u16(value: any): u16;
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
declare function u32(value: any): u32;
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
declare function usize(value: any): isize;
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
declare function bool(value: any): bool;
declare namespace bool {
  /** Smallest representable value. */
  export const MIN_VALUE: bool;
  /** Largest representable value. */
  export const MAX_VALUE: bool;
}
/** Converts any other numeric value to a 32-bit float. */
declare function f32(value: any): f32;
declare namespace f32 {
  /** Smallest representable value. */
  export const MIN_VALUE: f32;
  /** Largest representable value. */
  export const MAX_VALUE: f32;
  /** Smallest normalized positive value. */
  export const MIN_NORMAL_VALUE: f32;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f32;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f32;
  /** Positive infinity value. */
  export const POSITIVE_INFINITY: f32;
  /** Negative infinity value. */
  export const NEGATIVE_INFINITY: f32;
  /** Not a number value. */
  /* eslint no-shadow-restricted-names: "off" */
  export const NaN: f32;
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
declare function f64(value: any): f64;
declare namespace f64 {
  /** Smallest representable value. */
  export const MIN_VALUE: f64;
  /** Largest representable value. */
  export const MAX_VALUE: f64;
  /** Smallest normalized positive value. */
  export const MIN_NORMAL_VALUE: f64;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f64;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f64;
  /** Positive infinity value. */
  export const POSITIVE_INFINITY: f64;
  /** Negative infinity value. */
  export const NEGATIVE_INFINITY: f64;
  /** Not a number value. */
  /* eslint no-shadow-restricted-names: "off" */
  export const NaN: f64;
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

declare const Mathf: typeof Math;
declare const JSMath: typeof Math;

declare interface StringConstructor {
  /** Equivalent to calling `String.fromCharCode` with multiple arguments. */
  fromCharCodes(arr: u16[]): string;
  /** Equivalent to calling `String.fromCodePoint` with multiple arguments. */
  fromCodePoints(arr: i32[]): string;
}

declare interface String {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): string;
}

/** Annotates a class as being unmanaged with limited capabilities. */
declare function unmanaged(constructor: Function): void;

/** Environmental tracing function. */
declare function trace(msg: string, n?: i32, a0?: f64, a1?: f64, a2?: f64, a3?: f64, a4?: f64): void;

declare interface Array<T> {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): T;
  /** Returns an index start searching from the end in the array */
  findLastIndex(callbackfn: (value: T, index: i32, self: Array<T>) => bool): i32;
}

declare interface Int8ArrayConstructor {
  /** Equivalent to calling `new Int8Array` with multiple arguments. */
  wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Int8Array;
}

declare interface Int8Array {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): i8;
  /** Returns an index start searching from the end in the typedarray */
  findLastIndex(callbackfn: (value: i8, index: i32, self: Int8Array) => bool): i32;
}

declare interface Uint8ArrayConstructor {
  /** Equivalent to calling `new Uint8Array` with multiple arguments. */
  wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Uint8Array;
}

declare interface Uint8Array {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): u8;
  /** Returns an index start searching from the end in the typedarray */
  findLastIndex(callbackfn: (value: u8, index: i32, self: Uint8Array) => bool): i32;
}

declare interface Uint8ClampedArrayConstructor {
  /** Equivalent to calling `new Uint8ClampedArray` with multiple arguments. */
  wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Uint8ClampedArray;
}

declare interface Uint8ClampedArray {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): u8;
  /** Returns an index start searching from the end in the typedarray */
  findLastIndex(callbackfn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): i32;
}

declare interface Int16ArrayConstructor {
  /** Equivalent to calling `new Int16Array` with multiple arguments. */
  wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Int16Array;
}

declare interface Int16Array {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): i16;
  /** Returns an index start searching from the end in the typedarray */
  findLastIndex(callbackfn: (value: i16, index: i32, self: Int16Array) => bool): i32;
}

declare interface Uint16ArrayConstructor {
  /** Equivalent to calling `new Uint16Array` with multiple arguments. */
  wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Uint16Array;
}

declare interface Uint16Array {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): u16;
  /** Returns an index start searching from the end in the typedarray */
  findLastIndex(callbackfn: (value: u16, index: i32, self: Uint16Array) => bool): i32;
}

declare interface Int32ArrayConstructor {
  /** Equivalent to calling `new Int32Array` with multiple arguments. */
  wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Int32Array;
}

declare interface Int32Array {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): i32;
  /** Returns an index start searching from the end in the typedarray */
  findLastIndex(callbackfn: (value: i32, index: i32, self: Int32Array) => bool): i32;
}

declare interface Uint32ArrayConstructor {
  /** Equivalent to calling `new Uint32Array` with multiple arguments. */
  wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Uint32Array;
}

declare interface Uint32Array {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): u32;
  /** Returns an index start searching from the end in the typedarray */
  findLastIndex(callbackfn: (value: u32, index: i32, self: Uint32Array) => bool): i32;
}

declare interface Float32ArrayConstructor {
  /** Equivalent to calling `new Float32Array` with multiple arguments. */
  wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Float32Array;
}

declare interface Float32Array {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): f32;
  /** Returns an index start searching from the end in the typedarray */
  findLastIndex(callbackfn: (value: f32, index: i32, self: Float32Array) => bool): i32;
}

declare interface Float64ArrayConstructor {
  /** Equivalent to calling `new Float64Array` with multiple arguments. */
  wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Float64Array;
}

declare interface Float64Array {
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): f64;
  /** Returns an index start searching from the end in the typedarray */
  findLastIndex(callbackfn: (value: f64, index: i32, self: Float64Array) => bool): i32;
}

// FIXME: remove
declare function offsetof<T>(fieldName?: string): usize;
declare function idof<T>(): u32;
