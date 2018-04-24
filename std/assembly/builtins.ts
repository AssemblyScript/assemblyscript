export declare function isInteger<T>(value?: T): bool;

export declare function isFloat<T>(value?: T): bool;

export declare function isReference<T>(value?: T): bool;

export declare function isString<T>(value?: T): bool;

export declare function isArray<T>(value?: T): bool;

export declare function isDefined(expr: void): bool;

export const NaN: f64 = 0 / 0;

export const Infinity: f64 = 1 / 0;

export function isNaN<T>(value: T): bool {
  return value != value;
}

export function isFinite<T>(value: T): bool {
  return value - value == 0;
}

export declare function clz<T>(value: T): T;

export declare function ctz<T>(value: T): T;

export declare function popcnt<T>(value: T): T;

export declare function rotl<T>(value: T, shift: T): T;

export declare function rotr<T>(value: T, shift: T): T;

export declare function abs<T>(value: T): T;

export declare function max<T>(left: T, right: T): T;

export declare function min<T>(left: T, right: T): T;

export declare function ceil<T>(value: T): T;

export declare function floor<T>(value: T): T;

export declare function copysign<T>(left: T, right: T): T;

export declare function nearest<T>(value: T): T;

export declare function reinterpret<T>(value: void): T;

export declare function sqrt<T>(value: T): T;

export declare function trunc<T>(value: T): T;

export declare function load<T>(offset: usize, constantOffset?: usize): T;

export declare function store<T>(offset: usize, value: void, constantOffset?: usize): T;

export declare function sizeof<T>(): usize; // | u32 / u64

export declare function alignof<T>(): usize; // | u32 / u64

export declare function offsetof<T>(fieldName?: string): usize; // | u32 / u64

export declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;

export declare function unreachable(): void;

export declare function current_memory(): i32;

export declare function grow_memory(pages: i32): i32;

// export declare function move_memory(dest: usize, src: usize: n: usize): void;

// export declare function set_memory(dest: usize, value: u32, n: usize): void;

export declare function changetype<T>(value: void): T;

export declare function assert<T>(isTrueish: T, message?: string): T;

export declare function abort(
  message?: string | null,
  fileName?: string | null,
  lineNumber?: u32,
  columnNumber?: u32
): void;

export declare function i8(value: void): i8;
export namespace i8 {
  export const MIN_VALUE: i8 = -128;
  export const MAX_VALUE: i8 =  127;
}

export declare function i16(value: void): i16;
export namespace i16 {
  export const MIN_VALUE: i16 = -32768;
  export const MAX_VALUE: i16 =  32767;
}

export declare function i32(value: void): i32;
export namespace i32 {
  export const MIN_VALUE: i32 = -2147483648;
  export const MAX_VALUE: i32 =  2147483647;
}

export declare function i64(value: void): i64;
export namespace i64 {
  export const MIN_VALUE: i64 = -9223372036854775808;
  export const MAX_VALUE: i64 =  9223372036854775807;
}

export declare function isize(value: void): isize;
export namespace isize {
  export const MIN_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? -2147483648
    : <isize>-9223372036854775808;
  export const MAX_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? 2147483647
    : <isize>9223372036854775807;
}

export declare function u8(value: void): u8;
export namespace u8 {
  export const MIN_VALUE: u8 = 0;
  export const MAX_VALUE: u8 = 255;
}

export declare function u16(value: void): u16;
export namespace u16 {
  export const MIN_VALUE: u16 = 0;
  export const MAX_VALUE: u16 = 65535;
}

export declare function u32(value: void): u32;
export namespace u32 {
  export const MIN_VALUE: u32 = 0;
  export const MAX_VALUE: u32 = 4294967295;
}

export declare function u64(value: void): u64;
export namespace u64 {
  export const MIN_VALUE: u64 = 0;
  export const MAX_VALUE: u64 = 18446744073709551615;
}

export declare function usize(value: void): usize;
export namespace usize {
  export const MIN_VALUE: usize = 0;
  export const MAX_VALUE: usize = sizeof<u32>() == sizeof<usize>()
    ? 4294967295
    : <usize>18446744073709551615;
}

export declare function bool(value: void): bool;
export namespace bool {
  export const MIN_VALUE: bool = false;
  export const MAX_VALUE: bool = true;
}

export declare function f32(value: void): f32;
export namespace f32 {
  export const MIN_VALUE = reinterpret<f32>(0xFF7FFFFF); // -0x1.fffffep+127f
  export const MAX_VALUE = reinterpret<f32>(0x7F7FFFFF); //  0x1.fffffep+127f
  export const MIN_POSITIVE_VALUE = reinterpret<f32>(0x00800000); // 0x1p-126f
  export const MIN_SAFE_INTEGER: f32 = -16777215;
  export const MAX_SAFE_INTEGER: f32 =  16777215;
  export const EPSILON = reinterpret<f32>(0x34000000); // 0x1p-23f
}

export declare function f64(value: void): f64;
export namespace f64 {
  export const MIN_VALUE = reinterpret<f64>(0xFFEFFFFFFFFFFFFF); // -0x1.fffffffffffffp+1023
  export const MAX_VALUE = reinterpret<f64>(0x7FEFFFFFFFFFFFFF); //  0x1.fffffffffffffp+1023
  export const MIN_POSITIVE_VALUE = reinterpret<f64>(0x0010000000000000); // 0x1p-1022
  export const MIN_SAFE_INTEGER: f64 = -9007199254740991;
  export const MAX_SAFE_INTEGER: f64 =  9007199254740991;
  export const EPSILON = reinterpret<f64>(0x3CB0000000000000); // 0x1p-52
}

export declare const HEAP_BASE: usize;

export declare function start(): void;
