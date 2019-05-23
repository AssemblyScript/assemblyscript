/* tslint:disable */

@builtin @inline export const NaN: f64 = 0 / 0;
@builtin @inline export const Infinity: f64 = 1 / 0;

@builtin export declare function isInteger<T>(value?: T): bool;
@builtin export declare function isFloat<T>(value?: T): bool;
@builtin export declare function isSigned<T>(value?: T): bool;
@builtin export declare function isReference<T>(value?: T): bool;
@builtin export declare function isString<T>(value?: T): bool;
@builtin export declare function isArray<T>(value?: T): bool;
@builtin export declare function isArrayLike<T>(value?: T): bool;
@builtin export declare function isFunction<T>(value?: T): bool;
@builtin export declare function isNullable<T>(value?: T): bool;
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
@builtin export declare function load<T>(offset: usize, immOffset?: usize, immAlign?: usize): T;
@builtin export declare function store<T>(offset: usize, value: void, immOffset?: usize, immAlign?: usize): void;
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

export namespace atomic {
  @builtin export declare function load<T>(offset: usize, immOffset?: usize): T;
  @builtin export declare function store<T>(offset: usize, value: T, immOffset?: usize): void;
  @builtin export declare function add<T>(ptr: usize, value: T, immOffset?: usize): T;
  @builtin export declare function sub<T>(ptr: usize, value: T, immOffset?: usize): T;
  @builtin export declare function and<T>(ptr: usize, value: T, immOffset?: usize): T;
  @builtin export declare function or<T>(ptr: usize, value: T, immOffset?: usize): T;
  @builtin export declare function xor<T>(ptr: usize, value: T, immOffset?: usize): T;
  @builtin export declare function xchg<T>(ptr: usize, value: T, immOffset?: usize): T;
  @builtin export declare function cmpxchg<T>(ptr: usize, expected: T, replacement: T, immOffset?: usize): T;
  @builtin export declare function wait<T>(ptr: usize, expected: T, timeout: i64): AtomicWaitResult;
  @builtin export declare function notify(ptr: usize, count: i32): i32;
}

@lazy export const enum AtomicWaitResult {
  OK = 0,
  NOT_EQUAL = 1,
  TIMED_OUT = 2
}

@builtin export declare function i8(value: void): i8;
export namespace i8 {
  @lazy export const MIN_VALUE: i8 = -128;
  @lazy export const MAX_VALUE: i8 =  127;
}

@builtin export declare function i16(value: void): i16;
export namespace i16 {
  @lazy export const MIN_VALUE: i16 = -32768;
  @lazy export const MAX_VALUE: i16 =  32767;
}

@builtin export declare function i32(value: void): i32;
export namespace i32 {
  @lazy export const MIN_VALUE: i32 = -2147483648;
  @lazy export const MAX_VALUE: i32 =  2147483647;
  @builtin export declare function clz(value: i32): i32;
  @builtin export declare function ctz(value: i32): i32;
  @builtin export declare function popcnt(value: i32): i32;
  @builtin export declare function rotl(value: i32, shift: i32): i32;
  @builtin export declare function rotr(value: i32, shift: i32): i32;
  @builtin export declare function reinterpret_f32(value: f32): i32;
  @builtin export declare function load8_s(offset: usize, immOffset?: usize, immAlign?: usize): i32;
  @builtin export declare function load8_u(offset: usize, immOffset?: usize, immAlign?: usize): i32;
  @builtin export declare function load16_s(offset: usize, immOffset?: usize, immAlign?: usize): i32;
  @builtin export declare function load16_u(offset: usize, immOffset?: usize, immAlign?: usize): i32;
  @builtin export declare function load(offset: usize, immOffset?: usize, immAlign?: usize): i32;
  @builtin export declare function store8(offset: usize, value: i32, immOffset?: usize, immAlign?: usize): void;
  @builtin export declare function store16(offset: usize, value: i32, immOffset?: usize, immAlign?: usize): void;
  @builtin export declare function store(offset: usize, value: i32, immOffset?: usize, immAlign?: usize): void;
  
  export namespace atomic {
    @builtin export declare function load8_u(offset: usize, immOffset?: usize): i32;
    @builtin export declare function load16_u(offset: usize, immOffset?: usize): i32;
    @builtin export declare function load(offset: usize, immOffset?: usize): i32;
    @builtin export declare function store8(offset: usize, value: i32, immOffset?: usize): void;
    @builtin export declare function store16(offset: usize, value: i32, immOffset?: usize): void;
    @builtin export declare function store(offset: usize, value: i32, immOffset?: usize): void;
    @builtin export declare function wait(ptr: usize, expected: i32, timeout: i64): AtomicWaitResult;

    export namespace rmw8 {
      @builtin export declare function add_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function sub_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function and_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function or_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function xor_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function xchg_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function cmpxchg_u(offset: usize, expected: i32, replacement: i32, immOffset?: usize): i32;
    }
    export namespace rmw16 {
      @builtin export declare function add_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function sub_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function and_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function or_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function xor_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function xchg_u(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function cmpxchg_u(offset: usize, expected: i32, replacement: i32, immOffset?: usize): i32;
    }
    export namespace rmw {
      @builtin export declare function add(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function sub(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function and(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function or(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function xor(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function xchg(offset: usize, value: i32, immOffset?: usize): i32;
      @builtin export declare function cmpxchg(offset: usize, expected: i32, replacement: i32, immOffset?: usize): i32;
    }
  }
}

@builtin export declare function i64(value: void): i64;
export namespace i64 {
  @lazy export const MIN_VALUE: i64 = -9223372036854775808;
  @lazy export const MAX_VALUE: i64 =  9223372036854775807;
  @builtin export declare function clz(value: i64): i64;
  @builtin export declare function ctz(value: i64): i64;
  @builtin export declare function load8_s(offset: usize, immOffset?: usize, immAlign?: usize): i64;
  @builtin export declare function load8_u(offset: usize, immOffset?: usize, immAlign?: usize): i64;
  @builtin export declare function load16_s(offset: usize, immOffset?: usize, immAlign?: usize): i64;
  @builtin export declare function load16_u(offset: usize, immOffset?: usize, immAlign?: usize): i64;
  @builtin export declare function load32_s(offset: usize, immOffset?: usize, immAlign?: usize): i64;
  @builtin export declare function load32_u(offset: usize, immOffset?: usize, immAlign?: usize): i64;
  @builtin export declare function load(offset: usize, immOffset?: usize): i64;
  @builtin export declare function popcnt(value: i64): i64;
  @builtin export declare function rotl(value: i64, shift: i64): i64;
  @builtin export declare function rotr(value: i64, shift: i64): i64;
  @builtin export declare function reinterpret_f64(value: f64): i64;
  @builtin export declare function store8(offset: usize, value: i64, immOffset?: usize, immAlign?: usize): void;
  @builtin export declare function store16(offset: usize, value: i64, immOffset?: usize, immAlign?: usize): void;
  @builtin export declare function store32(offset: usize, value: i64, immOffset?: usize, immAlign?: usize): void;
  @builtin export declare function store(offset: usize, value: i64, immOffset?: usize, immAlign?: usize): void;

  export namespace atomic {
    @builtin export declare function load8_u(offset: usize, immOffset?: usize): i64;
    @builtin export declare function load16_u(offset: usize, immOffset?: usize): i64;
    @builtin export declare function load32_u(offset: usize, immOffset?: usize): i64;
    @builtin export declare function load(offset: usize, immOffset?: usize): i64;
    @builtin export declare function store8(offset: usize, value: i64, immOffset?: usize): void;
    @builtin export declare function store16(offset: usize, value: i64, immOffset?: usize): void;
    @builtin export declare function store32(offset: usize, value: i64, immOffset?: usize): void;
    @builtin export declare function store(offset: usize, value: i64, immOffset?: usize): void;
    @builtin export declare function wait(ptr: usize, expected: i64, timeout: i64): AtomicWaitResult;

    export namespace rmw8 {
      @builtin export declare function add_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function sub_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function and_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function or_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function xor_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function xchg_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function cmpxchg_u(offset: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }
    export namespace rmw16 {
      @builtin export declare function add_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function sub_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function and_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function or_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function xor_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function xchg_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function cmpxchg_u(offset: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }
    export namespace rmw32 {
      @builtin export declare function add_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function sub_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function and_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function or_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function xor_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function xchg_u(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function cmpxchg_u(offset: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }
    export namespace rmw {
      @builtin export declare function add(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function sub(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function and(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function or(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function xor(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function xchg(offset: usize, value: i64, immOffset?: usize): i64;
      @builtin export declare function cmpxchg(offset: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }
  }
}

@builtin export declare function isize(value: void): isize;
export namespace isize {
  @lazy export const MIN_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? -2147483648
    : <isize>-9223372036854775808;
  @lazy export const MAX_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? 2147483647
    : <isize>9223372036854775807;
}

@builtin export declare function u8(value: void): u8;
export namespace u8 {
  @lazy export const MIN_VALUE: u8 = 0;
  @lazy export const MAX_VALUE: u8 = 255;
}

@builtin export declare function u16(value: void): u16;
export namespace u16 {
  @lazy export const MIN_VALUE: u16 = 0;
  @lazy export const MAX_VALUE: u16 = 65535;
}

@builtin export declare function u32(value: void): u32;
export namespace u32 {
  @lazy export const MIN_VALUE: u32 = 0;
  @lazy export const MAX_VALUE: u32 = 4294967295;
}

@builtin export declare function u64(value: void): u64;
export namespace u64 {
  @lazy export const MIN_VALUE: u64 = 0;
  @lazy export const MAX_VALUE: u64 = 18446744073709551615;
}

@builtin export declare function usize(value: void): usize;
export namespace usize {
  @lazy export const MIN_VALUE: usize = 0;
  @lazy export const MAX_VALUE: usize = sizeof<u32>() == sizeof<usize>()
    ? 4294967295
    : <usize>18446744073709551615;
}

@builtin export declare function bool(value: void): bool;
export namespace bool {
  @lazy export const MIN_VALUE: bool = false;
  @lazy export const MAX_VALUE: bool = true;
}

@builtin export declare function f32(value: void): f32;
export namespace f32 {
  @lazy export const EPSILON = reinterpret<f32>(0x34000000); // 0x1p-23f
  @lazy export const MIN_VALUE = reinterpret<f32>(0x00000001); // 0x0.000001p+0f
  @lazy export const MAX_VALUE = reinterpret<f32>(0x7F7FFFFF); // 0x1.fffffep+127f
  @lazy export const MIN_NORMAL_VALUE = reinterpret<f32>(0x00800000); // 0x1p-126f
  @lazy export const MIN_SAFE_INTEGER: f32 = -16777215;
  @lazy export const MAX_SAFE_INTEGER: f32 =  16777215;
  @builtin export declare function abs(value: f32): f32;
  @builtin export declare function ceil(value: f32): f32;
  @builtin export declare function copysign(x: f32, y: f32): f32;
  @builtin export declare function floor(value: f32): f32;
  @builtin export declare function load(offset: usize, immOffset?: usize, immAlign?: usize): f32;
  @builtin export declare function max(left: f32, right: f32): f32;
  @builtin export declare function min(left: f32, right: f32): f32;
  @builtin export declare function nearest(value: f32): f32;
  @builtin export declare function reinterpret_i32(value: i32): f32;
  @builtin export declare function sqrt(value: f32): f32;
  @builtin export declare function store(offset: usize, value: f32, immOffset?: usize, immAlign?: usize): void;
  @builtin export declare function trunc(value: f32): f32;
}

@builtin export declare function f64(value: void): f64;
export namespace f64 {
  @lazy export const EPSILON = reinterpret<f64>(0x3CB0000000000000); // 0x1p-52
  @lazy export const MIN_VALUE = reinterpret<f64>(0x0000000000000001); // 0x0.0000000000001p+0
  @lazy export const MAX_VALUE = reinterpret<f64>(0x7FEFFFFFFFFFFFFF); // 0x1.fffffffffffffp+1023
  @lazy export const MIN_NORMAL_VALUE = reinterpret<f64>(0x0010000000000000); // 0x1p-1022
  @lazy export const MIN_SAFE_INTEGER: f64 = -9007199254740991;
  @lazy export const MAX_SAFE_INTEGER: f64 =  9007199254740991;
  @builtin export declare function abs(value: f64): f64;
  @builtin export declare function ceil(value: f64): f64;
  @builtin export declare function copysign(x: f64, y: f64): f64;
  @builtin export declare function floor(value: f64): f64;
  @builtin export declare function load(offset: usize, immOffset?: usize, immAlign?: usize): f64;
  @builtin export declare function max(left: f64, right: f64): f64;
  @builtin export declare function min(left: f64, right: f64): f64;
  @builtin export declare function nearest(value: f64): f64;
  @builtin export declare function reinterpret_i64(value: i64): f64;
  @builtin export declare function sqrt(value: f64): f64;
  @builtin export declare function store(offset: usize, value: f64, immOffset?: usize, immAlign?: usize): void;
  @builtin export declare function trunc(value: f64): f64;
}

@builtin export declare function v128(a: i8, b: i8, c: i8, d: i8, e: i8, f: i8, g: i8, h: i8, i: i8, j: i8, k: i8, l: i8, m: i8, n: i8, o: i8, p: i8): v128;
export namespace v128 {
  @builtin export declare function splat<T>(x: T): v128;
  @builtin export declare function extract_lane<T>(x: v128, idx: u8): T;
  @builtin export declare function replace_lane<T>(x: v128, idx: u8, value: T): v128;
  @builtin export declare function shuffle<T>(a: v128, b: v128, ...lanes: u8[]): v128;
  @builtin export declare function load(offset: usize, immOffset?: usize, immAlign?: usize): v128;
  @builtin export declare function store(offset: usize, value: v128, immOffset?: usize, immAlign?: usize): void;
  @builtin export declare function add<T>(a: v128, b: v128): v128;
  @builtin export declare function sub<T>(a: v128, b: v128): v128;
  @builtin export declare function mul<T>(a: v128, b: v128): v128; // except i64
  @builtin export declare function div<T>(a: v128, b: v128): v128; // f32, f64 only
  @builtin export declare function neg<T>(a: v128): v128;
  @builtin export declare function add_saturate<T>(a: v128, b: v128): v128;
  @builtin export declare function sub_saturate<T>(a: v128, b: v128): v128;
  @builtin export declare function shl<T>(a: v128, b: i32): v128;
  @builtin export declare function shr<T>(a: v128, b: i32): v128;
  @builtin export declare function and(a: v128, b: v128): v128;
  @builtin export declare function or(a: v128, b: v128): v128;
  @builtin export declare function xor(a: v128, b: v128): v128;
  @builtin export declare function not(a: v128): v128;
  @builtin export declare function bitselect(v1: v128, v2: v128, c: v128): v128;
  @builtin export declare function any_true<T>(a: v128): bool;
  @builtin export declare function all_true<T>(a: v128): bool;
  @builtin export declare function min<T>(a: v128, b: v128): v128; // f32, f64 only
  @builtin export declare function max<T>(a: v128, b: v128): v128; // f32, f64 only
  @builtin export declare function abs<T>(a: v128): v128; // f32, f64 only
  @builtin export declare function sqrt<T>(a: v128): v128; // f32, f64 only
  @builtin export declare function eq<T>(a: v128, b: v128): v128;
  @builtin export declare function ne<T>(a: v128, b: v128): v128;
  @builtin export declare function lt<T>(a: v128, b: v128): v128;
  @builtin export declare function le<T>(a: v128, b: v128): v128;
  @builtin export declare function gt<T>(a: v128, b: v128): v128;
  @builtin export declare function ge<T>(a: v128, b: v128): v128;
  @builtin export declare function convert<T>(a: v128): v128;
  @builtin export declare function trunc<T>(a: v128): v128;
}

@builtin export declare function i8x16(a: i8, b: i8, c: i8, d: i8, e: i8, f: i8, g: i8, h: i8, i: i8, j: i8, k: i8, l: i8, m: i8, n: i8, o: i8, p: i8): v128;
export namespace i8x16 {
  @builtin export declare function splat(x: i8): v128;
  @builtin export declare function extract_lane_s(x: v128, idx: u8): i8;
  @builtin export declare function extract_lane_u(x: v128, idx: u8): u8;
  @builtin export declare function replace_lane(x: v128, idx: u8, value: i8): v128;
  @builtin export declare function add(a: v128, b: v128): v128;
  @builtin export declare function sub(a: v128, b: v128): v128;
  @builtin export declare function mul(a: v128, b: v128): v128;
  @builtin export declare function neg(a: v128): v128;
  @builtin export declare function add_saturate_s(a: v128, b: v128): v128;
  @builtin export declare function add_saturate_u(a: v128, b: v128): v128;
  @builtin export declare function sub_saturate_s(a: v128, b: v128): v128;
  @builtin export declare function sub_saturate_u(a: v128, b: v128): v128;
  @builtin export declare function shl(a: v128, b: i32): v128;
  @builtin export declare function shr_s(a: v128, b: i32): v128;
  @builtin export declare function shr_u(a: v128, b: i32): v128;
  @builtin export declare function any_true(a: v128): bool;
  @builtin export declare function all_true(a: v128): bool;
  @builtin export declare function eq(a: v128, b: v128): v128;
  @builtin export declare function ne(a: v128, b: v128): v128;
  @builtin export declare function lt_s(a: v128, b: v128): v128;
  @builtin export declare function lt_u(a: v128, b: v128): v128;
  @builtin export declare function le_s(a: v128, b: v128): v128;
  @builtin export declare function le_u(a: v128, b: v128): v128;
  @builtin export declare function gt_s(a: v128, b: v128): v128;
  @builtin export declare function gt_u(a: v128, b: v128): v128;
  @builtin export declare function ge_s(a: v128, b: v128): v128;
  @builtin export declare function ge_u(a: v128, b: v128): v128;
}

@builtin export declare function i16x8(a: i16, b: i16, c: i16, d: i16, e: i16, f: i16, g: i16, h: i16): v128;
export namespace i16x8 {
  @builtin export declare function splat(x: i16): v128;
  @builtin export declare function extract_lane_s(x: v128, idx: u8): i16;
  @builtin export declare function extract_lane_u(x: v128, idx: u8): u16;
  @builtin export declare function replace_lane(x: v128, idx: u8, value: i16): v128;
  @builtin export declare function add(a: v128, b: v128): v128;
  @builtin export declare function sub(a: v128, b: v128): v128;
  @builtin export declare function mul(a: v128, b: v128): v128;
  @builtin export declare function neg(a: v128): v128;
  @builtin export declare function add_saturate_s(a: v128, b: v128): v128;
  @builtin export declare function add_saturate_u(a: v128, b: v128): v128;
  @builtin export declare function sub_saturate_s(a: v128, b: v128): v128;
  @builtin export declare function sub_saturate_u(a: v128, b: v128): v128;
  @builtin export declare function shl(a: v128, b: i32): v128;
  @builtin export declare function shr_s(a: v128, b: i32): v128;
  @builtin export declare function shr_u(a: v128, b: i32): v128;
  @builtin export declare function any_true(a: v128): bool;
  @builtin export declare function all_true(a: v128): bool;
  @builtin export declare function eq(a: v128, b: v128): v128;
  @builtin export declare function ne(a: v128, b: v128): v128;
  @builtin export declare function lt_s(a: v128, b: v128): v128;
  @builtin export declare function lt_u(a: v128, b: v128): v128;
  @builtin export declare function le_s(a: v128, b: v128): v128;
  @builtin export declare function le_u(a: v128, b: v128): v128;
  @builtin export declare function gt_s(a: v128, b: v128): v128;
  @builtin export declare function gt_u(a: v128, b: v128): v128;
  @builtin export declare function ge_s(a: v128, b: v128): v128;
  @builtin export declare function ge_u(a: v128, b: v128): v128;
}

@builtin export declare function i32x4(a: i32, b: i32, c: i32, d: i32): v128;
export namespace i32x4 {
  @builtin export declare function splat(x: i32): v128;
  @builtin export declare function extract_lane(x: v128, idx: u8): i32;
  @builtin export declare function replace_lane(x: v128, idx: u8, value: i32): v128;
  @builtin export declare function add(a: v128, b: v128): v128;
  @builtin export declare function sub(a: v128, b: v128): v128;
  @builtin export declare function mul(a: v128, b: v128): v128;
  @builtin export declare function neg(a: v128): v128;
  @builtin export declare function shl(a: v128, b: i32): v128;
  @builtin export declare function shr_s(a: v128, b: i32): v128;
  @builtin export declare function shr_u(a: v128, b: i32): v128;
  @builtin export declare function any_true(a: v128): bool;
  @builtin export declare function all_true(a: v128): bool;
  @builtin export declare function eq(a: v128, b: v128): v128;
  @builtin export declare function ne(a: v128, b: v128): v128;
  @builtin export declare function lt_s(a: v128, b: v128): v128;
  @builtin export declare function lt_u(a: v128, b: v128): v128;
  @builtin export declare function le_s(a: v128, b: v128): v128;
  @builtin export declare function le_u(a: v128, b: v128): v128;
  @builtin export declare function gt_s(a: v128, b: v128): v128;
  @builtin export declare function gt_u(a: v128, b: v128): v128;
  @builtin export declare function ge_s(a: v128, b: v128): v128;
  @builtin export declare function ge_u(a: v128, b: v128): v128;
  @builtin export declare function trunc_s_f32x4_sat(a: v128): v128;
  @builtin export declare function trunc_u_f32x4_sat(a: v128): v128;
}

@builtin export declare function i64x2(a: i64, b: i64): v128;
export namespace i64x2 {
  @builtin export declare function splat(x: i64): v128;
  @builtin export declare function extract_lane(x: v128, idx: u8): i64;
  @builtin export declare function replace_lane(x: v128, idx: u8, value: i64): v128;
  @builtin export declare function add(a: v128, b: v128): v128;
  @builtin export declare function sub(a: v128, b: v128): v128;
  @builtin export declare function mul(a: v128, b: v128): v128;
  @builtin export declare function neg(a: v128): v128;
  @builtin export declare function shl(a: v128, b: i32): v128;
  @builtin export declare function shr_s(a: v128, b: i32): v128;
  @builtin export declare function shr_u(a: v128, b: i32): v128;
  @builtin export declare function any_true(a: v128): bool;
  @builtin export declare function all_true(a: v128): bool;
  @builtin export declare function trunc_s_f64x2_sat(a: v128): v128;
  @builtin export declare function trunc_u_f64x2_sat(a: v128): v128;
}

@builtin export declare function f32x4(a: f32, b: f32, c: f32, d: f32): v128;
export namespace f32x4 {
  @builtin export declare function splat(x: f32): v128;
  @builtin export declare function extract_lane(x: v128, idx: u8): f32;
  @builtin export declare function replace_lane(x: v128, idx: u8, value: f32): v128;
  @builtin export declare function add(a: v128, b: v128): v128;
  @builtin export declare function sub(a: v128, b: v128): v128;
  @builtin export declare function mul(a: v128, b: v128): v128;
  @builtin export declare function div(a: v128, b: v128): v128;
  @builtin export declare function neg(a: v128): v128;
  @builtin export declare function min(a: v128, b: v128): v128;
  @builtin export declare function max(a: v128, b: v128): v128;
  @builtin export declare function abs(a: v128): v128;
  @builtin export declare function sqrt(a: v128): v128;
  @builtin export declare function eq(a: v128, b: v128): v128;
  @builtin export declare function ne(a: v128, b: v128): v128;
  @builtin export declare function lt(a: v128, b: v128): v128;
  @builtin export declare function le(a: v128, b: v128): v128;
  @builtin export declare function gt(a: v128, b: v128): v128;
  @builtin export declare function ge(a: v128, b: v128): v128;
  @builtin export declare function convert_s_i32x4(a: v128): v128;
  @builtin export declare function convert_u_i32x4(a: v128): v128;
}

@builtin export declare function f64x2(a: f64, b: f64): v128;
export namespace f64x2 {
  @builtin export declare function splat(x: f64): v128;
  @builtin export declare function extract_lane(x: v128, idx: u8): f64;
  @builtin export declare function replace_lane(x: v128, idx: u8, value: f64): v128;
  @builtin export declare function add(a: v128, b: v128): v128;
  @builtin export declare function sub(a: v128, b: v128): v128;
  @builtin export declare function mul(a: v128, b: v128): v128;
  @builtin export declare function div(a: v128, b: v128): v128;
  @builtin export declare function neg(a: v128): v128;
  @builtin export declare function min(a: v128, b: v128): v128;
  @builtin export declare function max(a: v128, b: v128): v128;
  @builtin export declare function abs(a: v128): v128;
  @builtin export declare function sqrt(a: v128): v128;
  @builtin export declare function eq(a: v128, b: v128): v128;
  @builtin export declare function ne(a: v128, b: v128): v128;
  @builtin export declare function lt(a: v128, b: v128): v128;
  @builtin export declare function le(a: v128, b: v128): v128;
  @builtin export declare function gt(a: v128, b: v128): v128;
  @builtin export declare function ge(a: v128, b: v128): v128;
  @builtin export declare function convert_s_i64x2(a: v128): v128;
  @builtin export declare function convert_u_i64x2(a: v128): v128;
}

export namespace v8x16 {
  @builtin export declare function shuffle(a: v128, b: v128, l0: u8, l1: u8, l2: u8, l3: u8, l4: u8, l5: u8, l6: u8, l7: u8, l8: u8, l9: u8, l10: u8, l11: u8, l12: u8, l13: u8, l14: u8, l15: u8): v128;
}

@builtin export declare function start(): void;
