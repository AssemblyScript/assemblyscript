/** @module glue/wasm *//***/

type I64 = i64;

@global
const i64_zero: I64 = 0;

@global
const i64_one: I64 = 1;

@global
function i64_new(lo: i32, hi: i32 = 0): I64 {
  return lo | (hi << 32);
}

@global
function i64_low(value: I64): i32 {
  return <i32>value;
}

@global
function i64_high(value: I64): i32 {
  return <i32>(value >>> 32);
}

@global
function i64_add(left: I64, right: I64): I64 {
  return left + right;
}

@global
function i64_sub(left: I64, right: I64): I64 {
  return left - right;
}

@global
function i64_mul(left: I64, right: I64): I64 {
  return left * right;
}

@global
function i64_div(left: I64, right: I64): I64 {
  return left / right;
}

@global
function i64_div_u(left: I64, right: I64): I64 {
  return <u64>left / <u64>right;
}

@global
function i64_rem(left: I64, right: I64): I64 {
  return left % right;
}

@global
function i64_rem_u(left: I64, right: I64): I64 {
  return <u64>left % <u64>right;
}

@global
function i64_and(left: I64, right: I64): I64 {
  return left & right;
}

@global
function i64_or(left: I64, right: I64): I64 {
  return left | right;
}

@global
function i64_xor(left: I64, right: I64): I64 {
  return left ^ right;
}

@global
function i64_shl(left: I64, right: I64): I64 {
  return left << right;
}

@global
function i64_shr(left: I64, right: I64): I64 {
  return left >> right;
}

@global
function i64_shr_u(left: I64, right: I64): I64 {
  return left >>> right;
}

@global
function i64_not(value: I64): I64 {
  return ~value;
}

@global
function i64_eq(left: I64, right: I64): bool {
  return left == right;
}

@global
function i64_ne(left: I64, right: I64): bool {
  return left != right;
}

@global
function i64_align(value: I64, alignment: i64): I64 {
  var mask: i64 = alignment - 1;
  assert(alignment && (alignment & mask) == 0);
  return (value + mask) & ~mask;
}

@global
function i64_is_i8(value: I64): bool {
  return value >= i8.MIN_VALUE && value <= i8.MAX_VALUE;
}

@global
function i64_is_i16(value: I64): bool {
  return value >= i16.MIN_VALUE && value <= i16.MAX_VALUE;
}

@global
function i64_is_i32(value: I64): bool {
  return value >= i32.MIN_VALUE && value <= i32.MAX_VALUE;
}

@global
function i64_is_u8(value: I64): bool {
  return value >= 0 && value <= u8.MAX_VALUE;
}

@global
function i64_is_u16(value: I64): bool {
  return value >= 0 && value <= u16.MAX_VALUE;
}

@global
function i64_is_u32(value: I64): bool {
  return value >= 0 && value <= u32.MAX_VALUE;
}

@global
function i64_is_bool(value: I64): bool {
  return value === 0 || value === 1;
}

@global
function i64_is_f32(value: I64): bool {
  return value >= f32.MIN_SAFE_INTEGER && value <= f32.MAX_SAFE_INTEGER;
}

@global
function i64_is_f64(value: I64): bool {
  return value >= f64.MIN_SAFE_INTEGER && value <= f64.MAX_SAFE_INTEGER;
}

@global
function i64_to_f32(value: I64): f32 {
  return <f32>value;
}

@global
function i64_to_f64(value: I64): f64 {
  return <f64>value;
}

import { CharCode } from "../../util";

@global
function i64_to_string(value: I64, unsigned: bool = false): string {
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
