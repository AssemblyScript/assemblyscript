@builtin
export declare const NaN: f64; // | f32

@builtin
export declare const Infinity: f64; // | f32

@builtin
export declare function isNaN<T>(value: T): bool;

@builtin
export declare function isFinite<T>(value: T): bool;

@builtin
export declare function clz<T>(value: T): T;

@builtin
export declare function ctz<T>(value: T): T;

@builtin
export declare function popcnt<T>(value: T): T;

@builtin
export declare function rotl<T>(value: T, shift: T): T;

@builtin
export declare function rotr<T>(value: T, shift: T): T;

@builtin
export declare function abs<T>(value: T): T;

@builtin
export declare function max<T>(left: T, right: T): T;

@builtin
export declare function min<T>(left: T, right: T): T;

@builtin
export declare function ceil<T>(value: T): T;

@builtin
export declare function floor<T>(value: T): T;

@builtin
export declare function copysign<T>(left: T, right: T): T;

@builtin
export declare function nearest<T>(left: T, right: T): T;

@builtin
export declare function reinterpret<T>(value: void): T;

@builtin
export declare function sqrt<T>(value: T): T;

@builtin
export declare function trunc<T>(value: T): T;

@builtin
export declare function load<T>(offset: usize, constantOffset?: usize): T;

@builtin
export declare function store<T>(offset: usize, value: void, constantOffset?: usize): T;

@builtin
export declare function sizeof<T>(): usize;

@builtin
export declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;

@builtin
export declare function unreachable(): void;

@builtin
export declare function current_memory(): i32;

@builtin
export declare function grow_memory(pages: i32): i32;

// @builtin
// export declare function move_memory(dest: usize, src: usize: n: usize): void;

// @builtin
// export declare function set_memory(dest: usize, value: u32, n: usize): void;

@builtin
export declare function changetype<T>(value: void): T;

@builtin
export declare function assert<T>(isTrueish: T, message?: string): T;

@builtin
export declare function abort(
  message?: string | null,
  fileName?: string | null,
  lineNumber?: u32,
  columnNumber?: u32
): void;

@builtin
declare function i8(value: void): i8;
namespace i8 {
  export const MIN_VALUE: i8 = -128;
  export const MAX_VALUE: i8 = 127;
}
export { i8 };

@builtin
declare function i16(value: void): i16;
namespace i16 {
  export const MIN_VALUE: i16 = -32768;
  export const MAX_VALUE: i16 = 32767;
}
export { i16 };

@builtin
declare function i32(value: void): i32;
namespace i32 {
  export const MIN_VALUE: i32 = -2147483648;
  export const MAX_VALUE: i32 = 2147483647;
}
export { i32 };

@builtin
declare function i64(value: void): i64;
namespace i64 {
  export const MIN_VALUE: i64 = -9223372036854775808;
  export const MAX_VALUE: i64 = 9223372036854775807;
}
export { i64 };

@builtin
declare function isize(value: void): isize;
namespace isize {
  export const MIN_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? -2147483648
    : <usize>-9223372036854775808;
  export const MAX_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? 2147483647
    : <usize>9223372036854775807;
}
export { isize };

@builtin
declare function u8(value: void): u8;
namespace u8 {
  export const MIN_VALUE: u8 = 0;
  export const MAX_VALUE: u8 = 255;
}
export { u8 };

@builtin
declare function u16(value: void): u16;
namespace u16 {
  export const MIN_VALUE: u16 = 0;
  export const MAX_VALUE: u16 = 65535;
}
export { u16 };

@builtin
declare function u32(value: void): u32;
namespace u32 {
  export const MIN_VALUE: u32 = 0;
  export const MAX_VALUE: u32 = 4294967295;
}
export { u32 };

@builtin
declare function u64(value: void): u64;
namespace u64 {
  export const MIN_VALUE: u64 = 0;
  export const MAX_VALUE: u64 = 18446744073709551615;
}
export { u64 };

@builtin
declare function usize(value: void): usize;
namespace usize {
  export const MIN_VALUE: usize = 0;
  export const MAX_VALUE: usize = sizeof<u32>() == sizeof<usize>()
    ? 4294967295
    : <usize>18446744073709551615;
}
export { usize };

@builtin
declare function bool(value: void): bool;
namespace bool {
  export const MIN_VALUE: bool = 0;
  export const MAX_VALUE: bool = 1;
}
export { bool };

@builtin
declare function f32(value: void): f32;
namespace f32 {
  export const MIN_VALUE: f32 = -3.40282347e+38;
  export const MAX_VALUE: f32 = 3.40282347e+38;
  export const MIN_SAFE_INTEGER: f32 = -16777215;
  export const MAX_SAFE_INTEGER: f32 = 16777215;
  export const EPSILON: f32 = 1.19209290e-07;
}
export { f32 };

@builtin
declare function f64(value: void): f64;
namespace f64 {
  export const MIN_VALUE: f64 = -1.7976931348623157e+308;
  export const MAX_VALUE: f64 = 1.7976931348623157e+308;
  export const MIN_SAFE_INTEGER: f64 = -9007199254740991;
  export const MAX_SAFE_INTEGER: f64 = 9007199254740991;
  export const EPSILON: f64 = 2.2204460492503131e-16;
}
export{ f64 };

@builtin
export declare const HEAP_BASE: usize;

@builtin
export declare function start(): void;
