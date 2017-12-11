// Definitions for the "portable AssemblyScript" subset.

// Portable types

// Note that semantic differences require additional explicit conversions for full compatibility.
// For example, when casting an i32 to an u8, doing `<u8>(someI32 & 0xff)` will yield the same
// result when compiling to WebAssembly or JS while `<u8>someI32` alone does nothing in JS.

// Note that i64's are not portable (JS numbers are IEEE754 doubles with a maximum safe integer value
// of 2^53-1) and instead require a compatibility layer to work in JS as well. See: src/util/i64.ts

declare type i8 = number;
declare type u8 = number;
declare type i16 = number;
declare type u16 = number;
declare type i32 = number;
declare type u32 = number;
declare type isize = number;
declare type usize = number;
declare type f32 = number;
declare type f64 = number;
declare type bool = boolean;

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
/** Loads a value of the specified type from memory. Type must be `u8`. */
declare function load<T = u8>(offset: usize): T;
/** Stores a value of the specified type to memory. Type must be `u8`. */
declare function store<T = u8>(offset: usize, value: T): void;
/** Emits an unreachable operation that results in a runtime error when executed. */
declare function unreachable(): any; // sic

/** Changes the type of a value to another one. Useful for casting class instances to their pointer values and vice-versa. */
declare function changetype<T1,T2>(value: T1): T2;
/** Traps if the specified value evaluates to `false`. */
declare function assert(isTrue: bool): void;

// Portable standard library
// Everything marked @deprecated is a temporary filler. Do not use.

declare const NaN: f32 | f64;
declare const Infinity: f32 | f64;

declare class Array<T> {
  [key: number]: T;
  length: i32;
  constructor(capacity?: i32);
  push(value: T): void;
  pop(): T;
  join(delim: string): string;
  slice(from: i32, to?: i32): T[];
  splice(index: i32, count: i32): T[];
}

declare class Uint8Array extends Array<u8> {}
declare class Uint16Array extends Array<u16> {}
declare class Uint32Array extends Array<u32> {}
declare class Int8Array extends Array<i8> {}
declare class Int16Array extends Array<i16> {}
declare class Int32Array extends Array<i32> {}

declare class String {
  static fromCharCode(ls: i32, hs?: i32): string;
  readonly length: i32;
  indexOf(subject: string): i32;
  charCodeAt(index: i32): i32;
  substring(from: i32, to?: i32): string;
  startsWith(subject: string): bool;
  endsWith(subject: string): bool;
  replace(search: string, replacement: string): string;
}

declare class Boolean {}

declare class Number {
  toString(radix: i32): string;
}

declare class Object {}

declare class Function {
  /** @deprecated */
  apply(subject: any): any;
}

declare class RegExp {}

declare interface IArguments {}

declare class Error {
  constructor(message: string);
  message: string;
  stack: string | null;
}

declare class Symbol {
  static iterator: symbol;
}

declare class Set<T> {
  constructor(entries?: T[]);
  add(value: T): void;
  has(value: T): bool;
  clear(): void;
  [Symbol.iterator](): Iterator<T>;
}

declare class Map<K,V> {
  constructor(entries?: [K, V][]);
  set(key: K, value: V): void;
  has(key: K): bool;
  get(key: K): V | null;
  clear(): void;
  [Symbol.iterator](): Iterator<[K, V]>;
}

declare interface Iterator<T> {}

declare namespace JSON {
  /** @deprecated */
  function stringify(subject: any): string;
}

declare namespace console {
  /** @deprecated */
  function log(message: string): void;
}

/** @deprecated */
declare function parseFloat(str: string): f64;
