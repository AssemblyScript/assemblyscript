import {
  itoa,
  dtoa
} from "./internal/number";

import {
  isNaN as builtin_isNaN,
  isFinite as builtin_isFinite
} from "./builtins";

@sealed
export abstract class I8 {

  @lazy static readonly MIN_VALUE: i8 = i8.MIN_VALUE;
  @lazy static readonly MAX_VALUE: i8 = i8.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): i8 {
    return <i8>parseI32(value, radix);
  }

  toString(this: i8): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class I16 {

  @lazy static readonly MIN_VALUE: i16 = i16.MIN_VALUE;
  @lazy static readonly MAX_VALUE: i16 = i16.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): i16 {
    return <i16>parseI32(value, radix);
  }

  toString(this: i16): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class I32 {

  @lazy static readonly MIN_VALUE: i32 = i32.MIN_VALUE;
  @lazy static readonly MAX_VALUE: i32 = i32.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): i32 {
    return <i32>parseI32(value, radix);
  }

  toString(this: i32): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class I64 {

  @lazy static readonly MIN_VALUE: i64 = i64.MIN_VALUE;
  @lazy static readonly MAX_VALUE: i64 = i64.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): i64 {
    return <i64>parseI64(value, radix);
  }

  toString(this: i64): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class Isize {

  @lazy static readonly MIN_VALUE: isize = isize.MIN_VALUE;
  @lazy static readonly MAX_VALUE: isize = isize.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): isize {
    return <isize>parseI64(value, radix);
  }

  toString(this: isize): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class U8 {

  @lazy static readonly MIN_VALUE: u8 = u8.MIN_VALUE;
  @lazy static readonly MAX_VALUE: u8 = u8.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): u8 {
    return <u8>parseI32(value, radix);
  }

  toString(this: u8): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class U16 {

  @lazy static readonly MIN_VALUE: u16 = u16.MIN_VALUE;
  @lazy static readonly MAX_VALUE: u16 = u16.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): u16 {
    return <u16>parseI32(value, radix);
  }

  toString(this: u16): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class U32 {

  @lazy static readonly MIN_VALUE: u32 = u32.MIN_VALUE;
  @lazy static readonly MAX_VALUE: u32 = u32.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): u32 {
    return <u32>parseI32(value, radix);
  }

  toString(this: u32): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class U64 {

  @lazy static readonly MIN_VALUE: u64 = u64.MIN_VALUE;
  @lazy static readonly MAX_VALUE: u64 = u64.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): u64 {
    return <u64>parseI64(value, radix);
  }

  toString(this: u64): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class Usize {

  @lazy static readonly MIN_VALUE: usize = usize.MIN_VALUE;
  @lazy static readonly MAX_VALUE: usize = usize.MAX_VALUE;

  static parseInt(value: string, radix: i32 = 0): usize {
    return <usize>parseI64(value, radix);
  }

  toString(this: usize): String {
    // TODO: radix
    return itoa(this);
  }
}

@sealed
export abstract class Bool {

  @lazy static readonly MIN_VALUE: bool = bool.MIN_VALUE;
  @lazy static readonly MAX_VALUE: bool = bool.MAX_VALUE;

  toString(this: bool): String {
    // TODO: radix?
    return this ? "true" : "false";
  }
}

export { Bool as Boolean };

@sealed
export abstract class F32 {

  @lazy static readonly EPSILON: f32 = f32.EPSILON;
  @lazy static readonly MIN_VALUE: f32 = f32.MIN_VALUE;
  @lazy static readonly MAX_VALUE: f32 = f32.MAX_VALUE;
  @lazy static readonly MIN_SAFE_INTEGER: f32 = f32.MIN_SAFE_INTEGER;
  @lazy static readonly MAX_SAFE_INTEGER: f32 = f32.MAX_SAFE_INTEGER;
  @lazy static readonly POSITIVE_INFINITY: f32 = Infinity;
  @lazy static readonly NEGATIVE_INFINITY: f32 = -Infinity;
  @lazy static readonly NaN: f32 = NaN;

  static isNaN(value: f32): bool {
    return isNaN<f32>(value);
  }

  static isFinite(value: f32): bool {
    return isFinite<f32>(value);
  }

  static isSafeInteger(value: f32): bool {
    return abs<f32>(value) <= f32.MAX_SAFE_INTEGER && trunc<f32>(value) == value;
  }

  static isInteger(value: f32): bool {
    return isFinite<f32>(value) && trunc<f32>(value) == value;
  }

  static parseInt(value: string, radix: i32 = 0): f32 {
    return <f32>parseI64(value, radix);
  }

  static parseFloat(value: string): f32 {
    return <f32>parseFloat(value);
  }

  toString(this: f32): String {
    // TODO: radix
    return dtoa(this);
  }
}

@sealed
export abstract class F64 {

  @lazy static readonly EPSILON: f64 = f64.EPSILON;
  @lazy static readonly MIN_VALUE: f64 = f64.MIN_VALUE;
  @lazy static readonly MAX_VALUE: f64 = f64.MAX_VALUE;
  @lazy static readonly MIN_SAFE_INTEGER: f64 = f64.MIN_SAFE_INTEGER;
  @lazy static readonly MAX_SAFE_INTEGER: f64 = f64.MAX_SAFE_INTEGER;
  @lazy static readonly POSITIVE_INFINITY: f64 = Infinity;
  @lazy static readonly NEGATIVE_INFINITY: f64 = -Infinity;
  @lazy static readonly NaN: f64 = NaN;

  static isNaN(value: f64): bool {
    return builtin_isNaN<f64>(value);
  }

  static isFinite(value: f64): bool {
    return builtin_isFinite<f64>(value);
  }

  static isSafeInteger(value: f64): bool {
    return abs<f64>(value) <= f64.MAX_SAFE_INTEGER && trunc<f64>(value) == value;
  }

  static isInteger(value: f64): bool {
    return builtin_isFinite<f64>(value) && trunc<f64>(value) == value;
  }

  static parseInt(value: string, radix: i32 = 0): f64 {
    return <f64>parseI64(value, radix);
  }

  static parseFloat(value: string): f64 {
    return parseFloat(value);
  }

  toString(this: f64): String {
    // TODO: radix
    return dtoa(this);
  }
}

export { F64 as Number };
