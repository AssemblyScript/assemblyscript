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
/** Reinterprets the bits of a value of type `T1` as type `T2`. Valid reinterpretations are i32 to/from f32 and i64 to/from f64. */
declare function reinterpret<T1 = i32 | i64 | f32 | f64, T2 = i32 | i64 | f32 | f64>(value: T1): T2;
/** Selects one of two pre-evaluated values depending on the condition. */
declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;
/** Calculates the square root of a 32-bit or 64-bit float. */
declare function sqrt<T = f32 | f64>(value: T): T;
/** Rounds to the nearest integer towards zero of a 32-bit or 64-bit float. */
declare function trunc<T = f32 | f64>(value: T): T;
/** Loads a value of the specified type from memory. */
declare function load<T>(offset: usize): T;
/** Stores a value of the specified type to memory. */
declare function store<T>(offset: usize, value: T): void;
/** Returns the current memory size in units of pages. One page is 64kb. */
declare function current_memory(): i32;
/** Grows linear memory by a given unsigned delta of pages. One page is 64kb. Returns the previous memory size in units of pages or `-1` on failure. */
declare function grow_memory(value: i32): i32;
/** Emits an unreachable operation that results in a runtime error when executed. */
declare function unreachable(): any; // sic

/** NaN (not a number) as a 32-bit or 64-bit float depending on context. */
declare const NaN: f32 | f64;
/** Positive infinity as a 32-bit or 64-bit float depending on context. */
declare const Infinity: f32 | f64;
/** Heap start offset. */
declare const HEAP_START: usize;
/** Determines the byte size of the specified core or class type. Compiles to a constant. */
declare function sizeof<T>(): usize;
/** Changes the type of a value to another one. Useful for casting class instances to their pointer values and vice-versa. */
declare function changetype<T1,T2>(value: T1): T2;
/** Tests if a 32-bit or 64-bit float is NaN. */
declare function isNaN<T = f32 | f64>(value: T): bool;
/** Tests if a 32-bit or 64-bit float is finite, that is not NaN or +/-Infinity. */
declare function isFinite<T = f32 | f64>(value: T): bool;
/** Traps if the specified value evaluates to `false`. */
declare function assert(isTrue: bool): void;
/** Parses an integer string to a 64-bit float. */
declare function parseInt(str: string, radix?: i32): f64;
/** Parses a string to a 64-bit float. */
declare function parseFloat(str: string): f64;

// Internal decorators (not yet implemented)

/** Annotates an element being part of the global namespace. */
declare function global(): any;
/** Annotates a function being always inlined. */
declare function inline(): any;
/** Annotates a class using a C-style memory layout. */
declare function struct(): any;

// Standard library (not yet implemented)

/// <reference path="./std/heap.d.ts" />

interface Array<T> {}
interface Boolean {}
interface Function {}
interface IArguments {}
interface Number {}
interface Object {}
interface RegExp {}

declare class String {
  static fromCharCode(ls: i32, hs?: i32): string;
  static fromCharCodes(arr: u16[]): string;
  static fromCodePoint(cp: i32): string;
  static fromCodePoints(arr: i32[]): string;
}
