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
/** Emits an unreachable operation that results in a runtime error when executed. */
declare function unreachable(): any; // sic

/** Traps if the specified value evaluates to `false`. */
declare function assert(isTrue: bool): void;
