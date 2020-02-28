/** @module glue/wasm *//***/

@global
const i64_zero: i64 = 0;

@global
const i64_one: i64 = 1;

@global
function i64_new(lo: i32, hi: i32 = 0): i64 {
  return lo | (hi << 32);
}

@global
function i64_low(value: i64): i32 {
  return <i32>value;
}

@global
function i64_high(value: i64): i32 {
  return <i32>(value >>> 32);
}

@global
function i64_add(left: i64, right: i64): i64 {
  return left + right;
}

@global
function i64_sub(left: i64, right: i64): i64 {
  return left - right;
}

@global
function i64_mul(left: i64, right: i64): i64 {
  return left * right;
}

@global
function i64_div(left: i64, right: i64): i64 {
  return left / right;
}

@global
function i64_div_u(left: i64, right: i64): i64 {
  return <u64>left / <u64>right;
}

@global
function i64_rem(left: i64, right: i64): i64 {
  return left % right;
}

@global
function i64_rem_u(left: i64, right: i64): i64 {
  return <u64>left % <u64>right;
}

@global
function i64_and(left: i64, right: i64): i64 {
  return left & right;
}

@global
function i64_or(left: i64, right: i64): i64 {
  return left | right;
}

@global
function i64_xor(left: i64, right: i64): i64 {
  return left ^ right;
}

@global
function i64_shl(left: i64, right: i64): i64 {
  return left << right;
}

@global
function i64_shr(left: i64, right: i64): i64 {
  return left >> right;
}

@global
function i64_shr_u(left: i64, right: i64): i64 {
  return left >>> right;
}

@global
function i64_not(value: i64): i64 {
  return ~value;
}

@global
function i64_eq(left: i64, right: i64): bool {
  return left == right;
}

@global
function i64_ne(left: i64, right: i64): bool {
  return left != right;
}

@global
function i64_align(value: i64, alignment: i64): i64 {
  var mask: i64 = alignment - 1;
  assert(alignment && (alignment & mask) == 0);
  return (value + mask) & ~mask;
}

@global
function i64_is_i8(value: i64): bool {
  return value >= i8.MIN_VALUE && value <= i8.MAX_VALUE;
}

@global
function i64_is_i16(value: i64): bool {
  return value >= i16.MIN_VALUE && value <= i16.MAX_VALUE;
}

@global
function i64_is_i32(value: i64): bool {
  return value >= i32.MIN_VALUE && value <= i32.MAX_VALUE;
}

@global
function i64_is_u8(value: i64): bool {
  return value >= 0 && value <= u8.MAX_VALUE;
}

@global
function i64_is_u16(value: i64): bool {
  return value >= 0 && value <= u16.MAX_VALUE;
}

@global
function i64_is_u32(value: i64): bool {
  return value >= 0 && value <= u32.MAX_VALUE;
}

@global
function i64_is_bool(value: i64): bool {
  return value === 0 || value === 1;
}

@global
function i64_is_f32(value: i64): bool {
  return value >= f32.MIN_SAFE_INTEGER && value <= f32.MAX_SAFE_INTEGER;
}

@global
function i64_is_f64(value: i64): bool {
  return value >= f64.MIN_SAFE_INTEGER && value <= f64.MAX_SAFE_INTEGER;
}

@global
function i64_to_f32(value: i64): f32 {
  return <f32>value;
}

@global
function i64_to_f64(value: i64): f64 {
  return <f64>value;
}

import { CharCode } from "../../util";

@global
function i64_to_string(value: i64, unsigned: bool = false): string {
  var chars = new Array<u16>();
  if (!unsigned && value < 0) {
    chars.push(CharCode.MINUS);
    value = -value;
  }
  do {
    chars.push(CharCode._0 + (<u64>value % 10));
    value = <u64>value / 10;
  } while (value);
  return String.fromCharCodes(chars);
}
