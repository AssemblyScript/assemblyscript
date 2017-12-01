/// <reference path="../assembly.d.ts" />

/** Performs the sign-agnostic count leading zero bits operation on a 32-bit or 64-bit integer. All zero bits are considered leading if the value is zero. */
declare function clz<T>(value: T): T;
/** Performs the sign-agnostic count tailing zero bits operation on a 32-bit or 64-bit integer. All zero bits are considered trailing if the value is zero. */
declare function ctz<T>(value: T): T;
/** Performs the sign-agnostic count number of one bits operation on a 32-bit or 64-bit integer. */
declare function popcnt<T>(value: T): T;
/** Performs the sign-agnostic rotate left operation on a 32-bit or 64-bit integer. */
declare function rotl<T>(value: T, shift: T): T;
/** Performs the sign-agnostic rotate right operation on a 32-bit or 64-bit integer. */
declare function rotr<T>(value: T, shift: T): T;

/** Computes the absolute value of a 32-bit or 64-bit float. */
declare function abs<T>(value: T): T;
/** Performs the ceiling operation on a 32-bit or 64-bit float. */
declare function ceil<T>(value: T): T;
/** Composes a 32-bit or 64-bit float from the magnitude of `x` and the sign of `y`. */
declare function copysign<T>(x: T, y: T): T;
/** Performs the floor operation on a 32-bit or 64-bit float. */
declare function floor<T>(value: T): T;
/** Determines the maximum of two 32-bit or 64-bit floats. If either operand is `NaN`, returns `NaN`. */
declare function max<T>(left: T, right: T): T;
/** Determines the minimum of two 32-bit or 64-bit floats. If either operand is `NaN`, returns `NaN`. */
declare function min<T>(left: T, right: T): T;
/** Rounds to the nearest integer tied to even of a 32-bit or 64-bit float. */
declare function nearest<T>(value: T): T;
/** Reinterprets the bits of a value of type `T1` as type `T2`. Valid reinterpretations are i32 to/from f32 and i64 to/from f64. */
declare function reinterpret<T1,T2>(value: T1): T2;
/** Calculates the square root of a 32-bit or 64-bit float. */
declare function sqrt<T>(value: T): T;
/** Rounds to the nearest integer towards zero of a 32-bit or 64-bit float. */
declare function trunc<T>(value: T): T;

/** Returns the current memory size in units of pages. One page is 64kb. */
declare function current_memory(): i32;
/** Grows linear memory by a given unsigned delta of pages. One page is 64kb. Returns the previous memory size in units of pages or `-1` on failure. */
declare function grow_memory(value: i32): i32;
/** Emits an unreachable operation that results in a runtime error when executed. */
declare function unreachable(): void;

/** Loads a value of the specified type from memory. */
declare function load<T>(offset: usize): T;
/** Stores a value of the specified type to memory. */
declare function store<T>(offset: usize, value: T): void;
/** Determines the byte size of the specified core or class type. Compiles to a constant. */
declare function sizeof<T>(): usize;

// standard library

/** NaN (not a number) as a 32-bit or 64-bit float depending on context. */
declare const NaN: number;
/** Positive infinity as a 32-bit or 64-bit float depending on context. */
declare const Infinity: number;

/** Tests if a 32-bit or 64-bit float is NaN. */
declare function isNaN<T>(value: T): bool;
/** Tests if a 32-bit or 64-bit float is finite, that is not NaN or +/-Infinity. */
declare function isFinite<T>(value: T): bool;
