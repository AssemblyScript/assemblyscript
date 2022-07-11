/**
 * @fileoverview 64-bit integer glue code for JavaScript.
 * @license Apache-2.0
 */

/* eslint-disable no-undef */

import Long from "long";

globalThis.i64_zero    = Long.ZERO;
globalThis.i64_one     = Long.ONE;
globalThis.i64_neg_one = Long.fromInt(-1);
globalThis.i64_minimum = Long.MIN_VALUE;
globalThis.i64_maximum = Long.MAX_VALUE;

globalThis.i64_is = function i64_is(value) {
  return Long.isLong(value);
};

globalThis.i64_new = function i64_new(lo, hi) {
  return Long.fromBits(lo, hi);
};

globalThis.i64_low = function i64_low(value) {
  return value.low;
};

globalThis.i64_high = function i64_high(value) {
  return value.high;
};

globalThis.i64_not = function i64_not(value) {
  return value.not();
};

globalThis.i64_neg = function i64_neg(value) {
  return value.neg();
};

globalThis.i64_clz = function i64_clz(value) {
  return value.clz();
};

globalThis.i64_ctz = function i64_ctz(value) {
  return value.ctz();
};

globalThis.i64_add = function i64_add(left, right) {
  return left.add(right);
};

globalThis.i64_sub = function i64_sub(left, right) {
  return left.sub(right);
};

globalThis.i64_mul = function i64_mul(left, right) {
  return left.mul(right);
};

globalThis.i64_pow = function i64_pow(left, right) {
  var rightLo = right.low;
  var rightHi = right.high;
  if (rightHi <= 0) {
    if (rightHi < 0) {
      if (left.eq(globalThis.i64_neg_one)) {
        return rightLo & 1 ? left : Long.ONE;
      }
      return left.eq(Long.ONE) ? left : Long.ZERO;
    }
    if (rightLo == 0) return Long.ONE;
    if (rightLo == 1) return left;
    if (rightLo == 2) return left.mul(left);
  }
  var result = Long.ONE;
  while (rightLo | rightHi) {
    if (rightLo & 1) result = result.mul(left);
    right = right.shru(1);
    left  = left.mul(left);
    rightLo = right.low;
    rightHi = right.high;
  }
  return result;
};

globalThis.i64_div = function i64_div(left, right) {
  return left.div(right);
};

globalThis.i64_div_u = function i64_div_u(left, right) {
  return left.toUnsigned().div(right.toUnsigned()).toSigned();
};

globalThis.i64_rem = function i64_rem(left, right) {
  return left.mod(right);
};

globalThis.i64_rem_u = function i64_rem_u(left, right) {
  return left.toUnsigned().mod(right.toUnsigned()).toSigned();
};

globalThis.i64_and = function i64_and(left, right) {
  return left.and(right);
};

globalThis.i64_or = function i64_or(left, right) {
  return left.or(right);
};

globalThis.i64_xor = function i64_xor(left, right) {
  return left.xor(right);
};

globalThis.i64_shl = function i64_shl(left, right) {
  return left.shl(right);
};

globalThis.i64_shr = function i64_shr(left, right) {
  return left.shr(right);
};

globalThis.i64_shr_u = function i64_shr_u(left, right) {
  return left.shru(right);
};

globalThis.i64_eq = function i64_eq(left, right) {
  return left.eq(right);
};

globalThis.i64_ne = function i64_ne(left, right) {
  return left.ne(right);
};

globalThis.i64_ge = function i64_ge(left, right) {
  return left.ge(right);
};

globalThis.i64_ge_u = function i64_ge_u(left, right) {
  return left.toUnsigned().ge(right.toUnsigned());
};

globalThis.i64_gt = function i64_gt(left, right) {
  return left.gt(right);
};

globalThis.i64_gt_u = function i64_gt_u(left, right) {
  return left.toUnsigned().gt(right.toUnsigned());
};

globalThis.i64_le = function i64_le(left, right) {
  return left.le(right);
};

globalThis.i64_le_u = function i64_le_u(left, right) {
  return left.toUnsigned().le(right.toUnsigned());
};

globalThis.i64_lt = function i64_lt(left, right) {
  return left.lt(right);
};

globalThis.i64_lt_u = function i64_lt_u(left, right) {
  return left.toUnsigned().lt(right.toUnsigned());
};

globalThis.i64_align = function i64_align(value, alignment) {
  assert(alignment && (alignment & (alignment - 1)) == 0);
  var mask = Long.fromInt(alignment - 1);
  return value.add(mask).and(mask.not());
};

globalThis.i64_signbit = function i64_signbit(value) {
  return Boolean(value.high >>> 31);
};

globalThis.i64_is_i8 = function i64_is_i8(value) {
  return value.high === 0 && (value.low >= 0 && value.low <= i8.MAX_VALUE)
      || value.high === -1 && (value.low >= i8.MIN_VALUE && value.low < 0);
};

globalThis.i64_is_i16 = function i64_is_i16(value) {
  return value.high === 0 && (value.low >= 0 && value.low <= i16.MAX_VALUE)
      || value.high === -1 && (value.low >= i16.MIN_VALUE && value.low < 0);
};

globalThis.i64_is_i32 = function i64_is_i32(value) {
  return (value.high === 0 && value.low >= 0)
      || (value.high === -1 && value.low < 0);
};

globalThis.i64_is_u8 = function i64_is_u8(value) {
  return value.high === 0 && (value.low >>> 0) <= u8.MAX_VALUE;
};

globalThis.i64_is_u16 = function i64_is_u16(value) {
  return value.high === 0 && (value.low >>> 0) <= u16.MAX_VALUE;
};

globalThis.i64_is_u32 = function i64_is_u32(value) {
  return value.high === 0;
};

globalThis.i64_is_bool = function i64_is_bool(value) {
  return (value.high | (value.low & ~1)) === 0;
};

const minSafeF32 = Long.fromNumber(f32.MIN_SAFE_INTEGER);
const maxSafeF32 = Long.fromNumber(f32.MAX_SAFE_INTEGER);

globalThis.i64_is_f32 = function i64_is_f32(value) {
  return value.gte(minSafeF32) && value.lte(maxSafeF32);
};

const minSafeF64 = Long.fromNumber(f64.MIN_SAFE_INTEGER);
const maxSafeF64 = Long.fromNumber(f64.MAX_SAFE_INTEGER);

globalThis.i64_is_f64 = function i64_is_f64(value) {
  return value.gte(minSafeF64) && value.lte(maxSafeF64);
};

globalThis.i64_to_f32 = function i64_to_f32(value) {
  return globalThis.Math.fround(value.toNumber());
};

globalThis.i64_to_f64 = function i64_to_f64(value) {
  return value.toNumber();
};

globalThis.i64_to_string = function i64_to_string(value, unsigned) {
  return unsigned ? value.toUnsigned().toString() : value.toString();
};

globalThis.i64_clone = function i64_clone(value) {
  return Long.fromBits(value.low, value.high, value.unsigned);
};
