/**
 * @fileoverview 64-bit integer glue code for WebAssembly.
 * @license Apache-2.0
 */

/* eslint-disable @typescript-eslint/no-unused-vars */

// @ts-ignore: decorator
@global const i64_zero: i64 = 0;

// @ts-ignore: decorator
@global const i64_one: i64 = 1;

// @ts-ignore: decorator
@global const i64_neg_one: i64 = -1;

// @ts-ignore: decorator
@global @inline
function i64_is<T>(value: T): bool {
  return isInteger<T>() && sizeof<T>() == 8;
}

// @ts-ignore: decorator
@global @inline
function i64_new(lo: i32, hi: i32 = 0): i64 {
  return <i64><u32>lo | (<i64>hi << 32);
}

// @ts-ignore: decorator
@global @inline
function i64_low(value: i64): i32 {
  return <i32>value;
}

// @ts-ignore: decorator
@global @inline
function i64_high(value: i64): i32 {
  return <i32>(value >>> 32);
}

// @ts-ignore: decorator
@global @inline
function i64_add(left: i64, right: i64): i64 {
  return left + right;
}

// @ts-ignore: decorator
@global @inline
function i64_sub(left: i64, right: i64): i64 {
  return left - right;
}

// @ts-ignore: decorator
@global @inline
function i64_mul(left: i64, right: i64): i64 {
  return left * right;
}

// @ts-ignore: decorator
@global
function i64_pow(left: i64, right: i64): i64 {
  if (right <= 0) {
    if (left == -1) return select<i64>(-1, 1, right & 1);
    return i64(right == 0) | i64(left == 1);
  }
  if (right == 1) return left;
  if (right == 2) return left * left;
  var result: i64 = 1;
  while (right) {
    if (right & 1) result *= left;
    right >>>= 1;
    left *= left;
  }
  return result;
}

// @ts-ignore: decorator
@global @inline
function i64_div(left: i64, right: i64): i64 {
  return left / right;
}

// @ts-ignore: decorator
@global @inline
function i64_div_u(left: i64, right: i64): i64 {
  return <u64>left / <u64>right;
}

// @ts-ignore: decorator
@global @inline
function i64_rem(left: i64, right: i64): i64 {
  return left % right;
}

// @ts-ignore: decorator
@global @inline
function i64_rem_u(left: i64, right: i64): i64 {
  return <u64>left % <u64>right;
}

// @ts-ignore: decorator
@global @inline
function i64_and(left: i64, right: i64): i64 {
  return left & right;
}

// @ts-ignore: decorator
@global @inline
function i64_or(left: i64, right: i64): i64 {
  return left | right;
}

// @ts-ignore: decorator
@global @inline
function i64_xor(left: i64, right: i64): i64 {
  return left ^ right;
}

// @ts-ignore: decorator
@global @inline
function i64_shl(left: i64, right: i64): i64 {
  return left << right;
}

// @ts-ignore: decorator
@global @inline
function i64_shr(left: i64, right: i64): i64 {
  return left >> right;
}

// @ts-ignore: decorator
@global @inline
function i64_shr_u(left: i64, right: i64): i64 {
  return left >>> right;
}

// @ts-ignore: decorator
@global @inline
function i64_not(value: i64): i64 {
  return ~value;
}

// @ts-ignore: decorator
@global @inline
function i64_eq(left: i64, right: i64): bool {
  return left == right;
}

// @ts-ignore: decorator
@global @inline
function i64_ne(left: i64, right: i64): bool {
  return left != right;
}

// @ts-ignore: decorator
@global @inline
function i64_gt(left: i64, right: i64): bool {
  return left > right;
}

// @ts-ignore: decorator
@global @inline
function i64_align(value: i64, alignment: i64): i64 {
  var mask: i64 = alignment - 1;
  assert(alignment && (alignment & mask) == 0);
  return (value + mask) & ~mask;
}

// @ts-ignore: decorator
@global @inline
function i64_is_i8(value: i64): bool {
  return value >= i8.MIN_VALUE && value <= <i64>i8.MAX_VALUE;
}

// @ts-ignore: decorator
@global @inline
function i64_is_i16(value: i64): bool {
  return value >= i16.MIN_VALUE && value <= <i64>i16.MAX_VALUE;
}

// @ts-ignore: decorator
@global @inline
function i64_is_i32(value: i64): bool {
  return value >= i32.MIN_VALUE && value <= <i64>i32.MAX_VALUE;
}

// @ts-ignore: decorator
@global @inline
function i64_is_u8(value: i64): bool {
  return <u64>value <= <u64>u8.MAX_VALUE;
}

// @ts-ignore: decorator
@global @inline
function i64_is_u16(value: i64): bool {
  return <u64>value <= <u64>u16.MAX_VALUE;
}

// @ts-ignore: decorator
@global @inline
function i64_is_u32(value: i64): bool {
  return <u64>value <= <u64>u32.MAX_VALUE;
}

// @ts-ignore: decorator
@global @inline
function i64_is_bool(value: i64): bool {
  return (value & ~1) == 0;
}

// @ts-ignore: decorator
@global @inline
function i64_is_f32(value: i64): bool {
  return value >= <i64>f32.MIN_SAFE_INTEGER && value <= <i64>f32.MAX_SAFE_INTEGER;
}

// @ts-ignore: decorator
@global @inline
function i64_is_f64(value: i64): bool {
  return value >= <i64>f64.MIN_SAFE_INTEGER && value <= <i64>f64.MAX_SAFE_INTEGER;
}

// @ts-ignore: decorator
@global @inline
function i64_to_f32(value: i64): f32 {
  return <f32>value;
}

// @ts-ignore: decorator
@global @inline
function i64_to_f64(value: i64): f64 {
  return <f64>value;
}

// @ts-ignore: decorator
@global @inline
function i64_to_string(value: i64, unsigned: bool = false): string {
  return unsigned ? u64(value).toString() : value.toString();
}
