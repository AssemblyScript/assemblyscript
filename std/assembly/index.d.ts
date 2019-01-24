/**
 * Environment definitions for compiling AssemblyScript to WebAssembly using asc.
 * @module std/assembly
 *//***/

/// <reference no-default-lib="true"/>

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
declare type bool = boolean | number;
/** A 32-bit float. */
declare type f32 = number;
/** A 64-bit float. */
declare type f64 = number;

// Compiler hints

/** Compiler target. 0 = JS, 1 = WASM32, 2 = WASM64. */
declare const ASC_TARGET: i32;
/** Provided noTreeshaking option. */
declare const ASC_NO_TREESHAKING: bool;
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
declare function load<T>(ptr: usize, constantOffset?: usize): T;
/** Stores a value of the specified type to memory. Equivalent to dereferencing a pointer in other languages when assigning a value. */
declare function store<T>(ptr: usize, value: any, constantOffset?: usize): void;
/** Emits an unreachable operation that results in a runtime error when executed. Both a statement and an expression of any type. */
declare function unreachable(): any; // sic

/** NaN (not a number) as a 32-bit or 64-bit float depending on context. */
declare const NaN: f32 | f64;
/** Positive infinity as a 32-bit or 64-bit float depending on context. */
declare const Infinity: f32 | f64;
/** Heap base offset. */
declare const HEAP_BASE: usize;
/** Determines the byte size of the specified underlying core type. Compiles to a constant. */
declare function sizeof<T>(): usize;
/** Determines the alignment (log2) of the specified underlying core type. Compiles to a constant. */
declare function alignof<T>(): usize;
/** Determines the offset of the specified field within the given class type. Returns the class type's end offset if field name has been omitted. Compiles to a constant. */
declare function offsetof<T>(fieldName?: string): usize;
/** Changes the type of any value of `usize` kind to another one of `usize` kind. Useful for casting class instances to their pointer values and vice-versa. Beware that this is unsafe.*/
declare function changetype<T>(value: any): T;
/** Explicitly requests no bounds checks on the provided expression. Useful for array accesses. */
declare function unchecked<T>(value: T): T;
/** Emits a `call_indirect` instruction, calling the specified function in the function table by index with the specified arguments. Does result in a runtime error if the arguments do not match the called function. */
declare function call_indirect<T>(target: Function | u32, ...args: any[]): T;
/** Instantiates a new instance of `T` using the specified constructor arguments. */
declare function instantiate<T>(...args: any[]): T;
/** Tests if a 32-bit or 64-bit float is `NaN`. */
declare function isNaN<T = f32 | f64>(value: T): bool;
/** Tests if a 32-bit or 64-bit float is finite, that is not `NaN` or +/-`Infinity`. */
declare function isFinite<T = f32 | f64>(value: T): bool;
/** Tests if the specified type *or* expression is of an integer type and not a reference. Compiles to a constant. */
declare function isInteger<T>(value?: any): value is number;
/** Tests if the specified type *or* expression is of a float type. Compiles to a constant. */
declare function isFloat<T>(value?: any): value is number;
/** Tests if the specified type *or* expression can represent negative numbers. Compiles to a constant. */
declare function isSigned<T>(value?: any): value is number;
/** Tests if the specified type *or* expression is of a reference type. Compiles to a constant. */
declare function isReference<T>(value?: any): value is object | string;
/** Tests if the specified type *or* expression can be used as a string. Compiles to a constant. */
declare function isString<T>(value?: any): value is string | String;
/** Tests if the specified type *or* expression can be used as an array. Compiles to a constant. */
declare function isArray<T>(value?: any): value is Array<any>;
/** Tests if the specified expression resolves to a defined element. Compiles to a constant. */
declare function isDefined(expression: any): bool;
/** Tests if the specified expression evaluates to a constant value. Compiles to a constant. */
declare function isConstant(expression: any): bool;
/** Tests if the specified type *or* expression is of a managed type. Compiles to a constant. */
declare function isManaged<T>(value?: any): bool;
/** Traps if the specified value is not true-ish, otherwise returns the (non-nullable) value. */
declare function assert<T>(isTrueish: T, message?: string): T & object; // any better way to model `: T != null`?
/** Parses an integer string to a 64-bit float. */
declare function parseInt(str: string, radix?: i32): f64;
/** Parses an integer string to a 32-bit integer. */
declare function parseI32(str: string, radix?: i32): i32;
/** Parses an integer string to a 64-bit integer. */
declare function parseI64(str: string, radix?: i32): i64;
/** Parses a string to a 64-bit float. */
declare function parseFloat(str: string): f64;
/** Returns the 64-bit floating-point remainder of `x/y`. */
declare function fmod(x: f64, y: f64): f64;
/** Returns the 32-bit floating-point remainder of `x/y`. */
declare function fmodf(x: f32, y: f32): f32;

/** Converts any other numeric value to an 8-bit signed integer. */
declare function i8(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i8;
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
declare function i16(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i8;
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
declare function i32(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i32;
declare namespace i32 {
  /** Smallest representable value. */
  export const MIN_VALUE: i32;
  /** Largest representable value. */
  export const MAX_VALUE: i32;
  /** Loads an 8-bit signed integer from memory and returns it as a 32-bit integer. */
  export function load8_s(offset: usize, constantOffset?: usize): i32;
  /** Loads an 8-bit unsigned integer from memory and returns it as a 32-bit integer. */
  export function load8_u(offset: usize, constantOffset?: usize): i32;
  /** Loads a 16-bit signed integer from memory and returns it as a 32-bit integer. */
  export function load16_s(offset: usize, constantOffset?: usize): i32;
  /** Loads a 16-bit unsigned integer from memory and returns it as a 32-bit integer. */
  export function load16_u(offset: usize, constantOffset?: usize): i32;
  /** Loads a 32-bit integer from memory. */
  export function load(offset: usize, constantOffset?: usize): i32;
  /** Stores a 32-bit integer to memory as an 8-bit integer. */
  export function store8(offset: usize, value: i32, constantOffset?: usize): void;
  /** Stores a 32-bit integer to memory as a 16-bit integer. */
  export function store16(offset: usize, value: i32, constantOffset?: usize): void;
  /** Stores a 32-bit integer to memory. */
  export function store(offset: usize, value: i32, constantOffset?: usize): void;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): i32;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): i32;
}
/** Converts any other numeric value to a 64-bit signed integer. */
declare function i64(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i64;
declare namespace i64 {
  /** Smallest representable value. */
  export const MIN_VALUE: i64;
  /** Largest representable value. */
  export const MAX_VALUE: i64;
  /** Loads an 8-bit signed integer from memory and returns it as a 64-bit signed integer. */
  export function load8_s(offset: usize, constantOffset?: usize): i64;
  /** Loads an 8-bit unsigned integer from memory and returns it as a 64-bit unsigned integer. */
  export function load8_u(offset: usize, constantOffset?: usize): u64;
  /** Loads a 16-bit signed integer from memory and returns it as a 64-bit signed integer. */
  export function load16_s(offset: usize, constantOffset?: usize): i64;
  /** Loads a 16-bit unsigned integer from memory and returns it as a 64-bit unsigned integer. */
  export function load16_u(offset: usize, constantOffset?: usize): u64;
  /** Loads a 32-bit signed integer from memory and returns it as a 64-bit signed integer. */
  export function load32_s(offset: usize, constantOffset?: usize): i64;
  /** Loads a 32-bit unsigned integer from memory and returns it as a 64-bit unsigned integer. */
  export function load32_u(offset: usize, constantOffset?: usize): u64;
  /** Loads a 64-bit unsigned integer from memory. */
  export function load(offset: usize, constantOffset?: usize): i64;
  /** Stores a 64-bit integer to memory as an 8-bit integer. */
  export function store8(offset: usize, value: i64, constantOffset?: usize): void;
  /** Stores a 64-bit integer to memory as a 16-bit integer. */
  export function store16(offset: usize, value: i64, constantOffset?: usize): void;
  /** Stores a 64-bit integer to memory as a 32-bit integer. */
  export function store32(offset: usize, value: i64, constantOffset?: usize): void;
  /** Stores a 64-bit integer to memory. */
  export function store(offset: usize, value: i64, constantOffset?: usize): void;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): i64;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): i64;
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) signed integer. */
declare var isize: typeof i32 | typeof i64;
/** Converts any other numeric value to an 8-bit unsigned integer. */
declare function u8(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i8;
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
declare function u16(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i8;
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
declare function u32(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i32;
declare namespace u32 {
  /** Smallest representable value. */
  export const MIN_VALUE: u32;
  /** Largest representable value. */
  export const MAX_VALUE: u32;
  /** Converts a string to a floating-point number and cast to target integer after. */
  export function parseFloat(string: string): u64;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): u64;
}
/** Converts any other numeric value to a 64-bit unsigned integer. */
declare function u64(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): i64;
declare namespace u64 {
  /** Smallest representable value. */
  export const MIN_VALUE: u64;
  /** Largest representable value. */
  export const MAX_VALUE: u64;
  /** Converts a string to a floating-point number. */
  export function parseFloat(string: string): u64;
  /** Converts A string to an integer. */
  export function parseInt(string: string, radix?: i32): u64;
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) unsigned integer. */
declare var usize: typeof u32 | typeof u64;
/** Converts any other numeric value to a 1-bit unsigned integer. */
declare function bool(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): bool;
declare namespace bool {
  /** Smallest representable value. */
  export const MIN_VALUE: bool;
  /** Largest representable value. */
  export const MAX_VALUE: bool;
}
/** Converts any other numeric value to a 32-bit float. */
declare function f32(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): f32;
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
  /** Returns the floating-point remainder of `x / y` (rounded towards zero). */
  export function mod(x: f32, y: f32): f32;
  /** Returns the floating-point remainder of `x / y` (rounded to nearest). */
  export function rem(x: f32, y: f32): f32;
  /** Loads a 32-bit float from memory. */
  export function load(offset: usize, constantOffset?: usize): f32;
  /** Stores a 32-bit float to memory. */
  export function store(offset: usize, value: f32, constantOffset?: usize): void;
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
  /** Converts a string to an integer. */
  export function parseInt(string: string, radix?: i32): f32;
}
/** Converts any other numeric value to a 64-bit float. */
declare function f64(value: i8 | i16 | i32 | i64 | isize | u8 | u16 | u32 | u64 | usize | bool | f32 | f64): f64;
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
  /** Loads a 64-bit float from memory. */
  export function load(offset: usize, constantOffset?: usize): f64;
  /** Stores a 64-bit float to memory. */
  export function store(offset: usize, value: f64, constantOffset?: usize): void;
}
/** Macro type evaluating to the underlying native WebAssembly type. */
declare type NATIVE<T> = T;

/** Pseudo-class representing the backing class of integer types. */
declare class _Integer {
  /** Smallest representable value. */
  static readonly MIN_VALUE: number;
  /** Largest representable value. */
  static readonly MAX_VALUE: number;
  /** Converts a string to an integer of this type. */
  static parseInt(value: string, radix?: number): number;
  /** Converts this integer to a string. */
  toString(): string;
}

/** Pseudo-class representing the backing class of floating-point types. */
declare class _Float {
  /** Difference between 1 and the smallest representable value greater than 1. */
  static readonly EPSILON: f32 | f64;
  /** Smallest representable value. */
  static readonly MIN_VALUE: f32 | f64;
  /** Largest representable value. */
  static readonly MAX_VALUE: f32 | f64;
  /** Smallest safely representable integer value. */
  static readonly MIN_SAFE_INTEGER: f32 | f64;
  /** Largest safely representable integer value. */
  static readonly MAX_SAFE_INTEGER: f32 | f64;
  /** Value representing positive infinity. */
  static readonly POSITIVE_INFINITY: f32 | f64;
  /** Value representing negative infinity. */
  static readonly NEGATIVE_INFINITY: f32 | f64;
  /** Value representing 'not a number'. */
  static readonly NaN: f32 | f64;
  /** Returns a boolean value that indicates whether a value is the reserved value NaN (not a number). */
  static isNaN(value: f32 | f64): bool;
  /** Returns true if passed value is finite. */
  static isFinite(value: f32 | f64): bool;
  /** Returns true if the value passed is a safe integer. */
  static isSafeInteger(value: f32 | f64): bool;
  /** Returns true if the value passed is an integer, false otherwise. */
  static isInteger(value: f32 | f64): bool;
  /** Converts A string to an integer. */
  static parseInt(value: string, radix?: i32): f32 | f64;
  /** Converts a string to a floating-point number. */
  static parseFloat(value: string): f32 | f64;
  /** Converts this floating-point number to a string. */
  toString(this: f64): string;
}

/** Backing class of signed 8-bit integers. */
declare const I8: typeof _Integer;
/** Backing class of signed 16-bit integers. */
declare const I16: typeof _Integer;
/** Backing class of signed 32-bit integers. */
declare const I32: typeof _Integer;
/** Backing class of signed 64-bit integers. */
declare const I64: typeof _Integer;
/** Backing class of signed size integers. */
declare const Isize: typeof _Integer;
/** Backing class of unsigned 8-bit integers. */
declare const U8: typeof _Integer;
/** Backing class of unsigned 16-bit integers. */
declare const U16: typeof _Integer;
/** Backing class of unsigned 32-bit integers. */
declare const U32: typeof _Integer;
/** Backing class of unsigned 64-bit integers. */
declare const U64: typeof _Integer;
/** Backing class of unsigned size integers. */
declare const Usize: typeof _Integer;
/** Backing class of 32-bit floating-point values. */
declare const F32: typeof _Float;
/** Backing class of 64-bit floating-point values. */
declare const F64: typeof _Float;

// User-defined diagnostic macros

/** Emits a user-defined diagnostic error when encountered. */
declare function ERROR(message?: any): void;
/** Emits a user-defined diagnostic warning when encountered. */
declare function WARNING(message?: any): void;
/** Emits a user-defined diagnostic info when encountered. */
declare function INFO(message?: any): void;

// Polyfills

/** Performs the sign-agnostic reverse bytes **/
declare function bswap<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64 | isize | usize>(value: T): T;
/** Performs the sign-agnostic reverse bytes only for last 16-bit **/
declare function bswap16<T = i8 | u8 | i16 | u16 | i32 | u32>(value: T): T;

// Standard library

/** Memory operations. */
declare namespace memory {
  /** Returns the current memory size in units of pages. One page is 64kb. */
  export function size(): i32;
  /** Grows linear memory by a given unsigned delta of pages. One page is 64kb. Returns the previous memory size in units of pages or `-1` on failure. */
  export function grow(value: i32): i32;
  /** Sets n bytes beginning at the specified destination in memory to the specified byte value. */
  export function fill(dst: usize, value: u8, count: usize): void;
  /** Copies n bytes from the specified source to the specified destination in memory. These regions may overlap. */
  export function copy(dst: usize, src: usize, n: usize): void;
  /** Copies elements from a passive element segment to a table. */
  // export function init(segmentIndex: u32, srcOffset: usize, dstOffset: usize, n: usize): void;
  /** Prevents further use of a passive element segment. */
  // export function drop(segmentIndex: u32): void;
  /** Copies elements from one region of a table to another region. */
  export function allocate(size: usize): usize;
  /** Disposes a chunk of memory by its pointer. */
  export function free(ptr: usize): void;
  /** Compares two chunks of memory. Returns `0` if equal, otherwise the difference of the first differing bytes. */
  export function compare(vl: usize, vr: usize, n: usize): i32;
  /** Resets the allocator to its initial state, if supported. */
  export function reset(): void;
}

/** Garbage collector operations. */
declare namespace gc {
  /** Allocates a managed object identified by its visitor function. */
  export function allocate(size: usize, visitFn: (ref: usize) => void): usize;
  /** Performs a full garbage collection cycle. */
  export function collect(): void;
}

/** Table operations. */
declare namespace table {
  /** Copies elements from a passive element segment to a table. */
  // export function init(elementIndex: u32, srcOffset: u32, dstOffset: u32, n: u32): void;
  /** Prevents further use of a passive element segment. */
  // export function drop(elementIndex: u32): void;
  /** Copies elements from one region of a table to another region. */
  // export function copy(dest: u32, src: u32, n: u32): void;
}

/** Class representing a generic, fixed-length raw binary data buffer. */
declare class ArrayBuffer {
  /** The size, in bytes, of the array. */
  readonly byteLength: i32;
  /** Unsafe pointer to the start of the data in memory. */
  readonly data: usize;
  /** Constructs a new array buffer of the given length in bytes. */
  constructor(length: i32, unsafe?: bool);
  /** Returns a copy of this array buffer's bytes from begin, inclusive, up to end, exclusive. */
  slice(begin?: i32, end?: i32): ArrayBuffer;
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
  /** The `getInt64()` method gets a signed 64-bit integer (long long) at the specified byte offset from the start of the `DataView`. */
  getInt64(byteOffset: i32, littleEndian?: boolean): i64;
  /** The `getUint8()` method gets an unsigned 8-bit integer (unsigned byte) at the specified byte offset from the start of the `DataView`. */
  getUint8(byteOffset: i32): u8;
  /** The `getUint16()` method gets an unsigned 16-bit integer (unsigned short) at the specified byte offset from the start of the `DataView`. */
  getUint16(byteOffset: i32, littleEndian?: boolean): u16;
  /** The `getUint32()` method gets an unsigned 32-bit integer (unsigned long) at the specified byte offset from the start of the `DataView`. */
  getUint32(byteOffset: i32, littleEndian?: boolean): u32;
  /** The `getUint64()` method gets an unsigned 64-bit integer (unsigned long long) at the specified byte offset from the start of the `DataView`. */
  getUint64(byteOffset: i32, littleEndian?: boolean): u64;
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
  /** The `setInt64()` method stores a signed 64-bit integer (long long) value at the specified byte offset from the start of the `DataView`. */
  setInt64(byteOffset: i32, value: i64, littleEndian?: boolean): void;
  /** The `setUint8()` method stores an unsigned 8-bit integer (byte) value at the specified byte offset from the start of the `DataView`. */
  setUint8(byteOffset: i32, value: u8): void;
  /** The `setUint16()` method stores an unsigned 16-bit integer (unsigned short) value at the specified byte offset from the start of the `DataView`. */
  setUint16(byteOffset: i32, value: u16, littleEndian?: boolean): void;
  /** The `setUint32()` method stores an unsigned 32-bit integer (unsigned long) value at the specified byte offset from the start of the `DataView`. */
  setUint32(byteOffset: i32, value: u32, littleEndian?: boolean): void;
  /** The `setUint64()` method stores an unsigned 64-bit integer (unsigned long long) value at the specified byte offset from the start of the `DataView`. */
  setUint64(byteOffset: i32, value: u64, littleEndian?: boolean): void;
  /** Returns a string representation of DataView. */
  toString(): string;
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

/* @internal */
declare abstract class TypedArray<T> implements ArrayBufferView<T> {
  [key: number]: T;
  /** Number of bytes per element. */
  static readonly BYTES_PER_ELEMENT: usize;
  /** Constructs a new typed array. */
  constructor(length: i32);
  /** The {@link ArrayBuffer} referenced by this view. */
  readonly buffer: ArrayBuffer;
  /** The offset in bytes from the start of the referenced {@link ArrayBuffer}. */
  readonly byteOffset: i32;
  /** The length in bytes from the start of the referenced {@link ArrayBuffer}. */
  readonly byteLength: i32;
  /** The length (in elements). */
  readonly length: i32;
  /** Returns a new TypedArray of this type on the same ArrayBuffer from begin inclusive to end exclusive. */
  subarray(begin?: i32, end?: i32): this;
  /**  The reduce() method applies a function against an accumulator and each value of the typed array (from left-to-right) has to reduce it to a single value. This method has the same algorithm as Array.prototype.reduce(). */
  reduce<W>(
    callbackfn: (accumulator: W, value: T, index: i32, self: this) => W,
    initialValue: W,
  ): W;
  /**  The reduceRight() method applies a function against an accumulator and each value of the typed array (from left-to-right) has to reduce it to a single value, starting from the end of the array. This method has the same algorithm as Array.prototype.reduceRight(). */
  reduceRight<W>(
    callbackfn: (accumulator: W, value: T, index: i32, self: this) => W,
    initialValue: W,
  ): W;
  /** The some() method tests whether some element in the typed array passes the test implemented by the provided function. This method has the same algorithm as Array.prototype.some().*/
  some(callbackfn: (value: T, index: i32, self: this) => bool): bool;
  /** The map() method creates a new typed array with the results of calling a provided function on every element in this typed array. This method has the same algorithm as Array.prototype.map().*/
  map(callbackfn: (value: T, index: i32, self: this) => T): this;
  /** The sort() method sorts the elements of a typed array numerically in place and returns the typed array. This method has the same algorithm as Array.prototype.sort(), except that sorts the values numerically instead of as strings. TypedArray is one of the typed array types here. */
  sort(callback?: (a: T, b: T) => i32): this;
  /** The fill() method fills all the elements of a typed array from a start index to an end index with a static value. This method has the same algorithm as Array.prototype.fill(). */
  fill(value: T, start?: i32, end?: i32): this;
  /** The findIndex() method returns an index in the typed array, if an element in the typed array satisfies the provided testing function. Otherwise -1 is returned. See also the find() [not implemented] method, which returns the value of a found element in the typed array instead of its index. */
  findIndex(callbackfn: (value: T, index: i32, self: this) => bool): i32;
  /** The every() method tests whether all elements in the typed array pass the test implemented by the provided function. This method has the same algorithm as Array.prototype.every(). */
  every(callbackfn: (value: T, index: i32, self: this) => bool): i32;
}

/** An array of twos-complement 8-bit signed integers. */
declare class Int8Array extends TypedArray<i8> {}
/** An array of 8-bit unsigned integers. */
declare class Uint8Array extends TypedArray<u8> {}
/** A clamped array of 8-bit unsigned integers. */
declare class Uint8ClampedArray extends TypedArray<u8> {}
/** An array of twos-complement 16-bit signed integers. */
declare class Int16Array extends TypedArray<i16> {}
/** An array of 16-bit unsigned integers. */
declare class Uint16Array extends TypedArray<u16> {}
/** An array of twos-complement 32-bit signed integers. */
declare class Int32Array extends TypedArray<i32> {}
/** An array of 32-bit unsigned integers. */
declare class Uint32Array extends TypedArray<u32> {}
/** An array of twos-complement 64-bit signed integers. */
declare class Int64Array extends TypedArray<i64> {}
/** An array of 64-bit unsigned integers. */
declare class Uint64Array extends TypedArray<u64> {}
/** An array of 32-bit floating point numbers. */
declare class Float32Array extends TypedArray<f32> {}
/** An array of 64-bit floating point numbers. */
declare class Float64Array extends TypedArray<f64> {}

/** Class representing a sequence of values of type `T`. */
declare class Array<T> {

  static isArray<U>(value: any): value is Array<any>;

  [key: number]: T;
  /** Current length of the array. */
  length: i32;
  /** Constructs a new array. */
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
  slice(from: i32, to?: i32): Array<T>;
  splice(start: i32, deleteCount?: i32): Array<T>;
  sort(comparator?: (a: T, b: T) => i32): this;
  join(separator?: string): string;
  reverse(): T[];
  toString(): string;
}

/** Class representing a sequence of characters. */
declare class String {

  static fromCharCode(ls: i32, hs?: i32): string;
  static fromCharCodes(arr: u16[]): string;
  static fromCodePoint(code: i32): string;
  static fromCodePoints(arr: i32[]): string;

  readonly length: i32;
  readonly lengthUTF8: i32;

  charAt(index: u32): string;
  charCodeAt(index: u32): u16;
  concat(other: string): string;
  endsWith(other: string): bool;
  indexOf(other: string, fromIndex?: i32): u32;
  lastIndexOf(other: string, fromIndex?: i32): i32;
  includes(other: string): bool;
  startsWith(other: string): bool;
  substr(start: u32, length?: u32): string;
  substring(start: u32, end?: u32): string;
  trim(): string;
  trimLeft(): string;
  trimRight(): string;
  trimStart(): string;
  trimEnd(): string;
  padStart(targetLength: i32, padString?: string): string;
  padEnd(targetLength: i32, padString?: string): string;
  repeat(count?: i32): string;
  slice(beginIndex: i32, endIndex?: i32): string;
  split(separator?: string, limit?: i32): string[];
  toString(): string;
  static fromUTF8(ptr: usize, len: usize): string;
  toUTF8(): usize;
}

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
declare class TypeError extends Error { }

/** Class for indicating an error when trying to interpret syntactically invalid code. */
declare class SyntaxError extends Error { }

interface Boolean {}
interface Function {}
interface IArguments {}
interface Number {}
interface Object {}
interface RegExp {}

declare class Map<K,V> {
  readonly size: i32;
  has(key: K): bool;
  set(key: K, value: V): void;
  get(key: K): V;
  delete(key: K): bool;
  clear(): void;
  toString(): string;
}

declare class Set<T> {
  readonly size: i32;
  has(value: T): bool;
  add(value: T): void;
  delete(value: T): bool;
  clear(): void;
  toString(): string;
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

interface IMath<T> {
  /** The base of natural logarithms, e, approximately 2.718. */
  readonly E: T;
  /** The natural logarithm of 2, approximately 0.693. */
  readonly LN2: T;
  /** The natural logarithm of 10, approximately 2.302. */
  readonly LN10: T;
  /** The base 2 logarithm of e, approximately 1.442. */
  readonly LOG2E: T;
  /** The base 10 logarithm of e, approximately 0.434. */
  readonly LOG10E: T;
  /** The ratio of the circumference of a circle to its diameter, approximately 3.14159. */
  readonly PI: T;
  /** The square root of 1/2, approximately 0.707. */
  readonly SQRT1_2: T;
  /** The square root of 2, approximately 1.414. */
  readonly SQRT2: T;
  /** Returns the absolute value of `x`. */
  abs(x: T): T;
  /** Returns the arccosine (in radians) of `x`. */
  acos(x: T): T;
  /** Returns the hyperbolic arc-cosine of `x`. */
  acosh(x: T): T;
  /** Returns the arcsine (in radians) of `x` */
  asin(x: T): T;
  /** Returns the hyperbolic arcsine of `x`. */
  asinh(x: T): T;
  /** Returns the arctangent (in radians) of `x`. */
  atan(x: T): T;
  /** Returns the arctangent of the quotient of its arguments. */
  atan2(y: T, x: T): T;
  /** Returns the hyperbolic arctangent of `x`. */
  atanh(x: T): T;
  /** Returns the cube root of `x`. */
  cbrt(x: T): T;
  /** Returns the smallest integer greater than or equal to `x`. */
  ceil(x: T): T;
  /** Returns the number of leading zero bits in the 32-bit binary representation of `x`. */
  clz32(x: T): T;
  /** Returns the cosine (in radians) of `x`. */
  cos(x: T): T;
  /** Returns the hyperbolic cosine of `x`. */
  cosh(x: T): T;
  /** Returns e to the power of `x`. */
  exp(x: T): T;
  /** Returns e to the power of `x`, minus 1. */
  expm1(x: T): T;
  /** Returns the largest integer less than or equal to `x`. */
  floor(x: T): T;
  /** Returns the nearest 32-bit single precision float representation of `x`. */
  fround(x: T): f32;
  /** Returns the square root of the sum of squares of its arguments. */
  hypot(value1: T, value2: T): T; // TODO: rest
  /** Returns the result of the C-like 32-bit multiplication of `a` and `b`. */
  imul(a: T, b: T): T;
  /** Returns the natural logarithm (base e) of `x`. */
  log(x: T): T;
  /** Returns the base 10 logarithm of `x`. */
  log10(x: T): T;
  /** Returns the natural logarithm (base e) of 1 + `x`. */
  log1p(x: T): T;
  /** Returns the base 2 logarithm of `x`. */
  log2(x: T): T;
  /** Returns the largest-valued number of its arguments. */
  max(value1: T, value2: T): T; // TODO: rest
  /** Returns the lowest-valued number of its arguments. */
  min(value1: T, value2: T): T; // TODO: rest
  /** Returns `base` to the power of `exponent`. */
  pow(base: T, exponent: T): T;
  /** Returns a pseudo-random number in the range from 0.0 inclusive up to but not including 1.0. */
  random(): T;
  /** Returns the value of `x` rounded to the nearest integer. */
  round(x: T): T;
  /** Returns the sign of `x`, indicating whether the number is positive, negative or zero. */
  sign(x: T): T;
  /** Returns whether the sign bit of `x` is set */
  signbit(x: T): bool;
  /** Returns the sine of `x`. */
  sin(x: T): T;
  /** Returns the hyperbolic sine of `x`. */
  sinh(x: T): T;
  /** Returns the square root of `x`. */
  sqrt(x: T): T;
  /** Returns the tangent of `x`. */
  tan(x: T): T;
  /** Returns the hyperbolic tangent of `x`. */
  tanh(x: T): T;
  /** Returns the integer part of `x` by removing any fractional digits. */
  trunc(x: T): T;
}

interface INativeMath<T> extends IMath<T> {
  /** Seeds the random number generator. */
  seedRandom(value: i64): void;
  /** Returns the floating-point remainder of `x / y` (rounded towards zero). */
  mod(x: T, y: T): T;
  /** Returns the floating-point remainder of `x / y` (rounded to nearest). */
  rem(x: T, y: T): T;
}

/** Double precision math imported from JavaScript. */
declare const JSMath: IMath<f64>;
/** Double precision math implemented natively. */
declare const NativeMath: INativeMath<f64>;
/** Single precision math implemented natively. */
declare const NativeMathf: INativeMath<f32>;
/** Alias of {@link NativeMath} or {@link JSMath} respectively. Defaults to `NativeMath`. */
declare const Math: IMath<f64>;
/** Alias of {@link NativeMathf} or {@link JSMath} respectively. Defaults to `NativeMathf`. */
declare const Mathf: IMath<f32>;

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
  ): i64;
  /** Returns the current UTC timestamp in milliseconds. */
  static now(): i64;
  /** Constructs a new date object from an UTC timestamp in milliseconds. */
  constructor(value: i64);
  /** Returns the UTC timestamp of this date in milliseconds. */
  getTime(): i64;
  /** Sets the UTC timestamp of this date in milliseconds. */
  setTime(value: i64): i64;
}

/** Environmental tracing function for debugging purposes. */
declare function trace(msg: string, n?: i32, a0?: f64, a1?: f64, a2?: f64, a3?: f64, a4?: f64): void;

// Decorators

interface TypedPropertyDescriptor<T> {
  configurable?: boolean;
  enumerable?: boolean;
  writable?: boolean;
  value?: T;
  get?(): T;
  set?(value: T): void;
}

/** Annotates an element as a program global. */
declare function global(
  target: any,
  propertyKey: string,
  descriptor: TypedPropertyDescriptor<any>
): TypedPropertyDescriptor<any> | void;

/** Annotates a method as a binary operator overload for the specified `token`. */
declare function operator(token: string): (
  target: any,
  propertyKey: string,
  descriptor: TypedPropertyDescriptor<Function>
) => TypedPropertyDescriptor<Function> | void;

declare namespace operator {
  /** Annotates a method as a binary operator overload for the specified `token`. */
  export function binary(token: string): (
    target: any,
    propertyKey: string,
    descriptor: TypedPropertyDescriptor<Function>
  ) => TypedPropertyDescriptor<Function> | void;
  /** Annotates a method as an unary prefix operator overload for the specified `token`. */
  export function prefix(token: string): (
    target: any,
    propertyKey: string,
    descriptor: TypedPropertyDescriptor<Function>
  ) => TypedPropertyDescriptor<Function> | void;
  /** Annotates a method as an unary postfix operator overload for the specified `token`. */
  export function postfix(token: string): (
    target: any,
    propertyKey: string,
    descriptor: TypedPropertyDescriptor<Function>
  ) => TypedPropertyDescriptor<Function> | void;
}

/** Annotates a class as being unmanaged with limited capabilities. */
declare function unmanaged(constructor: Function): void;

/** Annotates a class as being sealed / non-derivable. */
declare function sealed(constructor: Function): void;

/** Annotates a method or function as always inlined. */
declare function inline(
  target: any,
  propertyKey: string,
  descriptor: TypedPropertyDescriptor<Function>
): TypedPropertyDescriptor<Function> | void;

/** Annotates an explicit external name of a function or global. */
declare function external(namespace: string, name: string): (
  target: any,
  propertyKey: string,
  descriptor: TypedPropertyDescriptor<Function>
) => TypedPropertyDescriptor<Function> | void;
