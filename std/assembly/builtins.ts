/* tslint:disable */

@builtin @inline export const NaN: f64 = 0 / 0;
@builtin @inline export const Infinity: f64 = 1 / 0;

@builtin export declare function isInteger<T>(value?: T): bool;
@builtin export declare function isFloat<T>(value?: T): bool;
@builtin export declare function isSigned<T>(value?: T): bool;
@builtin export declare function isReference<T>(value?: T): bool;
@builtin export declare function isString<T>(value?: T): bool;
@builtin export declare function isArray<T>(value?: T): bool;
@builtin export declare function isDefined(expression: void): bool;
@builtin export declare function isConstant(expression: void): bool;
@builtin export declare function isManaged<T>(value?: T): bool;
@inline export function isNaN<T>(value: T): bool { return value != value; }
@inline export function isFinite<T>(value: T): bool { return value - value == 0; }

@builtin export declare function clz<T>(value: T): T;
@builtin export declare function ctz<T>(value: T): T;
@builtin export declare function popcnt<T>(value: T): T;
@builtin export declare function rotl<T>(value: T, shift: T): T;
@builtin export declare function rotr<T>(value: T, shift: T): T;
@builtin export declare function abs<T>(value: T): T;
@builtin export declare function max<T>(left: T, right: T): T;
@builtin export declare function min<T>(left: T, right: T): T;
@builtin export declare function ceil<T>(value: T): T;
@builtin export declare function floor<T>(value: T): T;
@builtin export declare function copysign<T>(left: T, right: T): T;
@builtin export declare function nearest<T>(value: T): T;
@builtin export declare function reinterpret<T>(value: void): T;
@builtin export declare function sqrt<T>(value: T): T;
@builtin export declare function trunc<T>(value: T): T;
@builtin export declare function load<T>(offset: usize, constantOffset?: usize): T;
@builtin export declare function store<T>(offset: usize, value: void, constantOffset?: usize): void;
@builtin export declare function sizeof<T>(): usize; // | u32 / u64
@builtin export declare function alignof<T>(): usize; // | u32 / u64
@builtin export declare function offsetof<T>(fieldName?: string): usize; // | u32 / u64
@builtin export declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;
@builtin export declare function unreachable(): void;
@builtin export declare function changetype<T>(value: void): T;
@builtin export declare function assert<T>(isTrueish: T, message?: string): T;
@builtin export declare function unchecked<T>(expr: T): T;
@builtin export declare function call_indirect<T>(target: void, ...args: void[]): T;
@builtin export declare function instantiate<T>(...args: void[]): T;

@builtin export declare function i8(value: void): i8;
export namespace i8 {
  export const MIN_VALUE: i8 = -128;
  export const MAX_VALUE: i8 =  127;
}

@builtin export declare function i16(value: void): i16;
export namespace i16 {
  export const MIN_VALUE: i16 = -32768;
  export const MAX_VALUE: i16 =  32767;
}

@builtin export declare function i32(value: void): i32;
export namespace i32 {
  export const MIN_VALUE: i32 = -2147483648;
  export const MAX_VALUE: i32 =  2147483647;
  @builtin export declare function clz(value: i32): i32;
  @builtin export declare function ctz(value: i32): i32;
  @builtin export declare function popcnt(value: i32): i32;
  @builtin export declare function rotl(value: i32, shift: i32): i32;
  @builtin export declare function rotr(value: i32, shift: i32): i32;
  @builtin export declare function reinterpret_f32(value: f32): i32;
  @builtin export declare function load8_s(offset: usize, constantOffset?: usize): i32;
  @builtin export declare function load8_u(offset: usize, constantOffset?: usize): i32;
  @builtin export declare function load16_s(offset: usize, constantOffset?: usize): i32;
  @builtin export declare function load16_u(offset: usize, constantOffset?: usize): i32;
  @builtin export declare function load(offset: usize, constantOffset?: usize): i32;
  @builtin export declare function store8(offset: usize, value: i32, constantOffset?: usize): void;
  @builtin export declare function store16(offset: usize, value: i32, constantOffset?: usize): void;
  @builtin export declare function store(offset: usize, value: i32, constantOffset?: usize): void;
}

@builtin export declare function i64(value: void): i64;
export namespace i64 {
  export const MIN_VALUE: i64 = -9223372036854775808;
  export const MAX_VALUE: i64 =  9223372036854775807;
  @builtin export declare function clz(value: i64): i64;
  @builtin export declare function ctz(value: i64): i64;
  @builtin export declare function load8_s(offset: usize, constantOffset?: usize): i64;
  @builtin export declare function load8_u(offset: usize, constantOffset?: usize): u64;
  @builtin export declare function load16_s(offset: usize, constantOffset?: usize): i64;
  @builtin export declare function load16_u(offset: usize, constantOffset?: usize): u64;
  @builtin export declare function load32_s(offset: usize, constantOffset?: usize): i64;
  @builtin export declare function load32_u(offset: usize, constantOffset?: usize): u64;
  @builtin export declare function load(offset: usize, constantOffset?: usize): i64;
  @builtin export declare function popcnt(value: i64): i64;
  @builtin export declare function rotl(value: i64, shift: i64): i64;
  @builtin export declare function rotr(value: i64, shift: i64): i64;
  @builtin export declare function reinterpret_f64(value: f64): i64;
  @builtin export declare function store8(offset: usize, value: i64, constantOffset?: usize): void;
  @builtin export declare function store16(offset: usize, value: i64, constantOffset?: usize): void;
  @builtin export declare function store32(offset: usize, value: i64, constantOffset?: usize): void;
  @builtin export declare function store(offset: usize, value: i64, constantOffset?: usize): void;
}

@builtin export declare function isize(value: void): isize;
export namespace isize {
  export const MIN_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? -2147483648
    : <isize>-9223372036854775808;
  export const MAX_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? 2147483647
    : <isize>9223372036854775807;
}

@builtin export declare function u8(value: void): u8;
export namespace u8 {
  export const MIN_VALUE: u8 = 0;
  export const MAX_VALUE: u8 = 255;
}

@builtin export declare function u16(value: void): u16;
export namespace u16 {
  export const MIN_VALUE: u16 = 0;
  export const MAX_VALUE: u16 = 65535;
}

@builtin export declare function u32(value: void): u32;
export namespace u32 {
  export const MIN_VALUE: u32 = 0;
  export const MAX_VALUE: u32 = 4294967295;
}

@builtin export declare function u64(value: void): u64;
export namespace u64 {
  export const MIN_VALUE: u64 = 0;
  export const MAX_VALUE: u64 = 18446744073709551615;
}

@builtin export declare function usize(value: void): usize;
export namespace usize {
  export const MIN_VALUE: usize = 0;
  export const MAX_VALUE: usize = sizeof<u32>() == sizeof<usize>()
    ? 4294967295
    : <usize>18446744073709551615;
}

@builtin export declare function bool(value: void): bool;
export namespace bool {
  export const MIN_VALUE: bool = false;
  export const MAX_VALUE: bool = true;
}

@builtin export declare function f32(value: void): f32;
export namespace f32 {
  export const EPSILON = reinterpret<f32>(0x34000000); // 0x1p-23f
  export const MIN_VALUE = reinterpret<f32>(0x00000001); // 0x0.000001p+0f
  export const MAX_VALUE = reinterpret<f32>(0x7F7FFFFF); // 0x1.fffffep+127f
  export const MIN_NORMAL_VALUE = reinterpret<f32>(0x00800000); // 0x1p-126f
  export const MIN_SAFE_INTEGER: f32 = -16777215;
  export const MAX_SAFE_INTEGER: f32 =  16777215;
  @builtin export declare function abs(value: f32): f32;
  @builtin export declare function ceil(value: f32): f32;
  @builtin export declare function copysign(x: f32, y: f32): f32;
  @builtin export declare function floor(value: f32): f32;
  @builtin export declare function load(offset: usize, constantOffset?: usize): f32;
  @builtin export declare function max(left: f32, right: f32): f32;
  @builtin export declare function min(left: f32, right: f32): f32;
  @builtin export declare function nearest(value: f32): f32;
  @builtin export declare function reinterpret_i32(value: i32): f32;
  @builtin export declare function sqrt(value: f32): f32;
  @builtin export declare function store(offset: usize, value: f32, constantOffset?: usize): void;
  @builtin export declare function trunc(value: f32): f32;
}

@builtin export declare function f64(value: void): f64;
export namespace f64 {
  export const EPSILON = reinterpret<f64>(0x3CB0000000000000); // 0x1p-52
  export const MIN_VALUE = reinterpret<f64>(0x0000000000000001); // 0x0.0000000000001p+0
  export const MAX_VALUE = reinterpret<f64>(0x7FEFFFFFFFFFFFFF); // 0x1.fffffffffffffp+1023
  export const MIN_NORMAL_VALUE = reinterpret<f64>(0x0010000000000000); // 0x1p-1022
  export const MIN_SAFE_INTEGER: f64 = -9007199254740991;
  export const MAX_SAFE_INTEGER: f64 =  9007199254740991;
  @builtin export declare function abs(value: f64): f64;
  @builtin export declare function ceil(value: f64): f64;
  @builtin export declare function copysign(x: f64, y: f64): f64;
  @builtin export declare function floor(value: f64): f64;
  @builtin export declare function load(offset: usize, constantOffset?: usize): f64;
  @builtin export declare function max(left: f64, right: f64): f64;
  @builtin export declare function min(left: f64, right: f64): f64;
  @builtin export declare function nearest(value: f64): f64;
  @builtin export declare function reinterpret_i64(value: i64): f64;
  @builtin export declare function sqrt(value: f64): f64;
  @builtin export declare function store(offset: usize, value: f64, constantOffset?: usize): void;
  @builtin export declare function trunc(value: f64): f64;
}

@builtin export declare function start(): void;
