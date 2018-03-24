export declare function isInteger(value: void): bool;

export declare function isFloat(value: void): bool;

export declare function isReference(value: void): bool;

export declare function isString(value: void): bool;

export declare function isArray(value: void): bool;

export declare const NaN: f64; // | f32

export declare const Infinity: f64; // | f32

export declare function isNaN<T>(value: T): bool;

export declare function isFinite<T>(value: T): bool;

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
  export const MAX_VALUE: i8 = 127;
}

export declare function i16(value: void): i16;
export namespace i16 {
  export const MIN_VALUE: i16 = -32768;
  export const MAX_VALUE: i16 = 32767;
}

export declare function i32(value: void): i32;
export namespace i32 {
  export const MIN_VALUE: i32 = -2147483648;
  export const MAX_VALUE: i32 = 2147483647;
}

export declare function i64(value: void): i64;
export namespace i64 {
  export const MIN_VALUE: i64 = -9223372036854775808;
  export const MAX_VALUE: i64 = 9223372036854775807;
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
  export const MIN_VALUE: f32 = -3.40282347e+38;
  export const MAX_VALUE: f32 = 3.40282347e+38;
  export const MIN_POSITIVE_VALUE: f32 = 1.175494351e-38;
  export const MIN_SAFE_INTEGER: f32 = -16777215;
  export const MAX_SAFE_INTEGER: f32 = 16777215;
  export const EPSILON: f32 = 1.19209290e-07;
}

export declare function f64(value: void): f64;
export namespace f64 {
  export const MIN_VALUE: f64 = -1.7976931348623157e+308;
  export const MAX_VALUE: f64 = 1.7976931348623157e+308;
  export const MIN_POSITIVE_VALUE: f64 = 2.2250738585072014e-308;
  export const MIN_SAFE_INTEGER: f64 = -9007199254740991;
  export const MAX_SAFE_INTEGER: f64 = 9007199254740991;
  export const EPSILON: f64 = 2.2204460492503131e-16;
}

export declare const HEAP_BASE: usize;

export declare function start(): void;

export function fmod(x: f64, y: f64): f64 {
  // based on musl's implementation of fmod
  var ux = reinterpret<u64>(x);
  var uy = reinterpret<u64>(y);
  var ex = <i32>(ux >> 52 & 0x7ff);
  var ey = <i32>(uy >> 52 & 0x7ff);
  var sx = <i32>(ux >> 63);

  if (uy << 1 == 0 || isNaN<f64>(y) || ex == 0x7ff) {
    return (x * y) / (x * y);
  }
  if (ux << 1 <= uy << 1) {
    if (ux << 1 == uy << 1) return 0 * x;
    return x;
  }

  // normalize x and y
  var i: u64;
  if (!ex) {
    for (i = ux << 12; !(i >> 63); i <<= 1) --ex;
    ux <<= -ex + 1;
  } else {
    ux &= <u64>-1 >> 12;
    ux |= 1 << 52;
  }
  if (!ey) {
    for (i = uy << 12; !(i >> 63); i <<= 1) --ey;
    uy <<= -ey + 1;
  } else {
    uy &= <u64>-1 >> 12;
    uy |= 1 << 52;
  }

  // x mod y
  for (; ex > ey; ex--) {
    i = ux - uy;
    if (!(i >> 63)) {
      if (!i) return 0 * x;
      ux = i;
    }
    ux <<= 1;
  }
  i = ux - uy;
  if (!(i >> 63)) {
    if (!i) return 0 * x;
    ux = i;
  }
  for (; !(ux >> 52); ux <<= 1) --ex;

  // scale result
  if (ex > 0) {
    ux -= 1 << 52;
    ux |= <u64>ex << 52;
  } else {
    ux >>= -ex + 1;
  }
  ux |= <u64>sx << 63;
  return reinterpret<f64>(ux);
}

export function fmodf(x: f32, y: f32): f32 {
  // based on musl's implementation of fmodf
  var ux = reinterpret<u32>(x);
  var uy = reinterpret<u32>(y);
  var ex = <i32>(ux >> 23 & 0xff);
  var ey = <i32>(uy >> 23 & 0xff);
  var sx = ux & 0x80000000;

  if (uy << 1 == 0 || isNaN<f32>(y) || ex == 0xff) {
    return (x * y) / (x * y);
  }
  if (ux << 1 <= uy << 1) {
    if (ux << 1 == uy << 1) return 0 * x;
    return x;
  }

  // normalize x and y
  var i: u32;
  if (!ex) {
    for (i = ux << 9; !(i >> 31); i <<= 1) --ex;
    ux <<= -ex + 1;
  } else {
    ux &= <u32>-1 >> 9;
    ux |= 1 << 23;
  }
  if (!ey) {
    for (i = uy << 9; !(i >> 31); i <<= 1) --ey;
    uy <<= -ey + 1;
  } else {
    uy &= <u32>-1 >> 9;
    uy |= 1 << 23;
  }

  // x mod y
  for (; ex > ey; --ex) {
    i = ux - uy;
    if (!(i >> 31)) {
      if (!i) return 0 * x;
      ux = i;
    }
    ux <<= 1;
  }
  i = ux - uy;
  if (!(i >> 31)) {
    if (!i) return 0 * x;
    ux = i;
  }
  for (; !(ux >> 23); ux <<= 1) --ex;

  // scale result
  if (ex > 0) {
    ux -= 1 << 23;
    ux |= <u32>ex << 23;
  } else {
    ux >>= -ex + 1;
  }
  ux |= sx;
  return reinterpret<f32>(ux);
}
