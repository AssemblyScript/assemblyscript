// Definitions for the "AssemblyScript" subset.

// Types

/** An 8-bit signed integer. */
declare type i8 = number;
/** A 16-bit signed integer. */
declare type i16 = number;
/** A 32-bit signed integer. */
declare type i32 = number;
/** A 64-bit signed integer. */
declare type i64 = number;
/** A 32-bit signed integer when targeting 32-bit WebAssembly or a 64-bit signed integer when targeting 64-bit WebAssembly. */
declare type isize = number;
/** An 8-bit unsigned integer. */
declare type u8 = number;
/** A 16-bit unsigned integer. */
declare type u16 = number;
/** A 32-bit unsigned integer. */
declare type u32 = number;
/** A 64-bit unsigned integer. */
declare type u64 = number;
/** A 32-bit unsigned integer when targeting 32-bit WebAssembly or a 64-bit unsigned integer when targeting 64-bit WebAssembly. */
declare type usize = number;
/** A 1-bit unsigned integer. */
declare type bool = any; // sic
/** A 32-bit float. */
declare type f32 = number;
/** A 64-bit float. */
declare type f64 = number;

/** Converts any other numeric value to an 8-bit signed integer. */
declare function i8(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i8;
declare namespace i8 {
  export const MIN_VALUE: i8;
  export const MAX_VALUE: i8;
}
/** Converts any other numeric value to a 16-bit signed integer. */
declare function i16(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i8;
declare namespace i16 {
  export const MIN_VALUE: i16;
  export const MAX_VALUE: i16;
}
/** Converts any other numeric value to a 32-bit signed integer. */
declare function i32(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i32;
declare namespace i32 {
  export const MIN_VALUE: i32;
  export const MAX_VALUE: i32;
}
/** Converts any other numeric value to a 64-bit signed integer. */
declare function i64(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i64;
declare namespace i64 {
  export const MIN_VALUE: i64;
  export const MAX_VALUE: i64;
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) signed integer. */
declare function isize(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): isize;
declare namespace isize {
  export const MIN_VALUE: isize;
  export const MAX_VALUE: isize;
}
/** Converts any other numeric value to an 8-bit unsigned integer. */
declare function u8(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i8;
declare namespace u8 {
  export const MIN_VALUE: u8;
  export const MAX_VALUE: u8;
}
/** Converts any other numeric value to a 16-bit unsigned integer. */
declare function u16(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i8;
declare namespace u16 {
  export const MIN_VALUE: u16;
  export const MAX_VALUE: u16;
}
/** Converts any other numeric value to a 32-bit unsigned integer. */
declare function u32(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i32;
declare namespace u32 {
  export const MIN_VALUE: u32;
  export const MAX_VALUE: u32;
}
/** Converts any other numeric value to a 64-bit unsigned integer. */
declare function u64(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i64;
declare namespace u64 {
  export const MIN_VALUE: u64;
  export const MAX_VALUE: u64;
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) unsigned integer. */
declare function usize(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): isize;
declare namespace usize {
  export const MIN_VALUE: usize;
  export const MAX_VALUE: usize;
}
/** Converts any other numeric value to a 1-bit unsigned integer. */
declare function bool(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): bool;
declare namespace bool {
  export const MIN_VALUE: bool;
  export const MAX_VALUE: bool;
}
/** Converts any other numeric value to a 32-bit float. */
declare function f32(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): f32;
declare namespace f32 {
  export const MIN_VALUE: f32;
  export const MAX_VALUE: f32;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f32;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f32;
  /** Difference between 1 and the smallest representable value greater than 1. */
  export const EPSILON: f32;
}
/** Converts any other numeric value to a 64-bit float. */
declare function f64(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): f64;
declare namespace f64 {
  export const MIN_VALUE: f64;
  export const MAX_VALUE: f64;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f64;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f64;
  /** Difference between 1 and the smallest representable value greater than 1. */
  export const EPSILON: f64;
}

// Built-ins

/** Performs the sign-agnostic count leading zero bits operation on a 32-bit or 64-bit integer. All zero bits are considered leading if the value is zero. */
declare function clz<T = i32 | i64>(value: T): T;
/** Performs the sign-agnostic count tailing zero bits operation on a 32-bit or 64-bit integer. All zero bits are considered trailing if the value is zero. */
declare function ctz<T = i32 | i64>(value: T): T;
/** Performs the sign-agnostic count number of one bits operation on a 32-bit or 64-bit integer. */
declare function popcnt<T = i32 | i64>(value: T): T;
/** Performs the sign-agnostic rotate left operation on a 32-bit or 64-bit integer. */
declare function rotl<T = i32 | i64>(value: T, shift: T): T;
/** Performs the sign-agnostic rotate right operation on a 32-bit or 64-bit integer. */
declare function rotr<T = i32 | i64>(value: T, shift: T): T;
/** Computes the absolute value of an integer or float. */
declare function abs<T = i32 | i64 | f32 | f64>(value: T): T;
/** Determines the maximum of two integers or floats. If either operand is `NaN`, returns `NaN`. */
declare function max<T = i32 | i64 | f32 | f64>(left: T, right: T): T;
/** Determines the minimum of two integers or floats. If either operand is `NaN`, returns `NaN`. */
declare function min<T = i32 | i64 | f32 | f64>(left: T, right: T): T;
/** Performs the ceiling operation on a 32-bit or 64-bit float. */
declare function ceil<T = f32 | f64>(value: T): T;
/** Composes a 32-bit or 64-bit float from the magnitude of `x` and the sign of `y`. */
declare function copysign<T = f32 | f64>(x: T, y: T): T;
/** Performs the floor operation on a 32-bit or 64-bit float. */
declare function floor<T = f32 | f64>(value: T): T;
/** Rounds to the nearest integer tied to even of a 32-bit or 64-bit float. */
declare function nearest<T = f32 | f64>(value: T): T;
/** Reinterprets the bits of the specified value as type `T`. Valid reinterpretations are u32/i32 to/from f32 and u64/i64 to/from f64. */
declare function reinterpret<T = i32 | i64 | f32 | f64>(value: number): T;
/** Selects one of two pre-evaluated values depending on the condition. */
declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;
/** Calculates the square root of a 32-bit or 64-bit float. */
declare function sqrt<T = f32 | f64>(value: T): T;
/** Rounds to the nearest integer towards zero of a 32-bit or 64-bit float. */
declare function trunc<T = f32 | f64>(value: T): T;
/** Loads a value of the specified type from memory. Equivalent to dereferncing a pointer in other languages. */
declare function load<T>(ptr: usize, constantOffset?: usize): any;
/** Stores a value of the specified type to memory. Equivalent to dereferencing a pointer in other languages when assigning a value. */
declare function store<T>(ptr: usize, value: any, constantOffset?: usize): void;
/** Returns the current memory size in units of pages. One page is 64kb. */
declare function current_memory(): i32;
/** Grows linear memory by a given unsigned delta of pages. One page is 64kb. Returns the previous memory size in units of pages or `-1` on failure. */
declare function grow_memory(value: i32): i32;
/** Copies n bytes from the specified source to the specified destination in memory. These regions may overlap. */
declare function move_memory(destination: usize, source: usize, n: usize): void;
/** Sets n bytes beginning at the specified destination in memory to the specified byte value. */
declare function set_memory(destination: usize, value: u8, count: usize): void;
/** Compares two chunks of memory. Returns `0` if equal, otherwise the difference of the first differing bytes. */
declare function compare_memory(vl: usize, vr: usize, n: usize): i32;
/** Allocates a chunk of memory of the specified size and returns a pointer to it. */
declare function allocate_memory(size: usize): usize;
/** Disposes a chunk of memory by its pointer. */
declare function free_memory(ptr: usize): void;
/** Emits an unreachable operation that results in a runtime error when executed. Both a statement and an expression of any type. */
declare function unreachable(): any; // sic

/** NaN (not a number) as a 32-bit or 64-bit float depending on context. */
declare const NaN: f32 | f64;
/** Positive infinity as a 32-bit or 64-bit float depending on context. */
declare const Infinity: f32 | f64;
/** Heap base offset. */
declare const HEAP_BASE: usize;
/** Determines the byte size of the specified core or class type. Compiles to a constant. */
declare function sizeof<T>(): usize;
/** Changes the type of any value of `usize` kind to another one of `usize` kind. Useful for casting class instances to their pointer values and vice-versa. Beware that this is unsafe.*/
declare function changetype<T>(value: any): T;
/** Tests if a 32-bit or 64-bit float is `NaN`. */
declare function isNaN<T = f32 | f64>(value: T): bool;
/** Tests if a 32-bit or 64-bit float is finite, that is not `NaN` or +/-`Infinity`. */
declare function isFinite<T = f32 | f64>(value: T): bool;
/** Traps if the specified value is not true-ish, otherwise returns the value. */
declare function assert<T>(isTrueish: T, message?: string): T & object; // any better way to model `: T != null`?
/** Parses an integer string to a 64-bit float. */
declare function parseInt(str: string, radix?: i32): f64;
/** Parses a string to a 64-bit float. */
declare function parseFloat(str: string): f64;

// Standard library (not yet implemented)

/** Class representing a sequence of values of type `T`. */
declare class Array<T> {
  [key: number]: T;
  /** Current length of the array. */
  length: i32;
  /** Constructs a new array. */
  constructor(capacity?: i32);
  indexOf(searchElement: T, fromIndex?: i32): i32;
  lastIndexOf(searchElement: T, fromIndex?: i32): i32;
  push(element: T): void;
  pop(): T;
  shift(): T;
  unshift(element: T): i32;
  slice(from: i32, to?: i32): T[];
  splice(start: i32, deleteCount?: i32): void;
  reverse(): T[];
}

/** Class representing a C-like array of values of type `T` with limited capabilities. */
declare class CArray<T> {
  [key: number]: T;
  private constructor();
}

/** Class representing a sequence of characters. */
declare class String {

  static fromCharCode(ls: i32, hs?: i32): string;
  static fromCharCodes(arr: u16[]): string;
  static fromCodePoint(cp: i32): string;
  static fromCodePoints(arr: i32[]): string;

  readonly length: u32;

  charAt(index: u32): string;
  charCodeAt(index: u32): u16;
  concat(other: string): string;
  endsWith(other: string): bool;
  indexOf(other: string): u32;
  includes(other: string): bool;
  startsWith(other: string): bool;
  substr(start: u32, length?: u32): string;
  substring(start: u32, end?: u32): string;
  trim(): string;
  trimLeft(): string;
  trimRight(): string;
}

/** Class for representing a runtime error. Base class of all errors. */
declare class Error {

  /** Error name. */
  name: string;

  /** Message provided on construction. */
  message: string;

  /** Stack trace. */
  stack: string;

  /** Constructs a new error, optionally with a message. */
  constructor(message?: string);
}

/** Class for indicating an error when a value is not in the set or range of allowed values. */
declare class RangeError extends Error { }

interface Boolean {}
interface Function {}
interface IArguments {}
interface Number {}
interface Object {}
interface RegExp {}

declare class Set<T> {
  readonly size: i32;
  has(value: T): bool;
  add(value: T): void;
  delete(value: T): bool;
  clear(): void;
}

// Internal decorators

/** Annotates an element as a program global. */
declare function global(target: Function): any;

/** Annotates a method as an operator overload. */
declare function operator(token: string): any;

/** Annotates a class as being unmanaged with limited capabilities. */
declare function unmanaged(target: Function): any;

/** Annotates a class field with an explicit offset. */
declare function offset(offset: usize): any;
