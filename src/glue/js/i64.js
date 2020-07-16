/**
 * @fileoverview 64-bit integer glue code for JavaScript.
 * @license Apache-2.0
 */

/* eslint-disable no-undef */

const Long = global.Long || require("long");

global.i64_zero    = Long.ZERO;
global.i64_one     = Long.ONE;
global.i64_neg_one = Long.fromInt(-1);

global.i64_is = function i64_is(value) {
  return Long.isLong(value);
};

global.i64_new = function i64_new(lo, hi) {
  return Long.fromBits(lo, hi);
};

global.i64_low = function i64_low(value) {
  return value.low;
};

global.i64_high = function i64_high(value) {
  return value.high;
};

global.i64_add = function i64_add(left, right) {
  return left.add(right);
};

global.i64_sub = function i64_sub(left, right) {
  return left.sub(right);
};

global.i64_mul = function i64_mul(left, right) {
  return left.mul(right);
};

global.i64_pow = function i64_pow(left, right) {
  var rightLo = right.low;
  var rightHi = right.high;
  if (rightHi <= 0) {
    if (rightHi < 0) {
      if (left.eq(global.i64_neg_one)) {
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

global.i64_div = function i64_div(left, right) {
  return left.div(right);
};

global.i64_div_u = function i64_div_u(left, right) {
  return left.toUnsigned().div(right.toUnsigned()).toSigned();
};

global.i64_rem = function i64_rem(left, right) {
  return left.mod(right);
};

global.i64_rem_u = function i64_rem_u(left, right) {
  return left.toUnsigned().mod(right.toUnsigned()).toSigned();
};

global.i64_and = function i64_and(left, right) {
  return left.and(right);
};

global.i64_or = function i64_or(left, right) {
  return left.or(right);
};

global.i64_xor = function i64_xor(left, right) {
  return left.xor(right);
};

global.i64_shl = function i64_shl(left, right) {
  return left.shl(right);
};

global.i64_shr = function i64_shr(left, right) {
  return left.shr(right);
};

global.i64_shr_u = function i64_shr_u(left, right) {
  return left.shru(right);
};

global.i64_not = function i64_not(value) {
  return value.not();
};

global.i64_eq = function i64_eq(left, right) {
  return left.eq(right);
};

global.i64_ne = function i64_ne(left, right) {
  return left.ne(right);
};

global.i64_gt = function i64_gt(left, right) {
  return left.gt(right);
};

global.i64_align = function i64_align(value, alignment) {
  assert(alignment && (alignment & (alignment - 1)) == 0);
  var mask = Long.fromInt(alignment - 1);
  return value.add(mask).and(mask.not());
};

global.i64_is_i8 = function i64_is_i8(value) {
  return value.high === 0 && (value.low >= 0 && value.low <= i8.MAX_VALUE)
      || value.high === -1 && (value.low >= i8.MIN_VALUE && value.low < 0);
};

global.i64_is_i16 = function i64_is_i16(value) {
  return value.high === 0 && (value.low >= 0 && value.low <= i16.MAX_VALUE)
      || value.high === -1 && (value.low >= i16.MIN_VALUE && value.low < 0);
};

global.i64_is_i32 = function i64_is_i32(value) {
  return (value.high === 0 && value.low >= 0)
      || (value.high === -1 && value.low < 0);
};

global.i64_is_u8 = function i64_is_u8(value) {
  return value.high === 0 && (value.low >>> 0) <= u8.MAX_VALUE;
};

global.i64_is_u16 = function i64_is_u16(value) {
  return value.high === 0 && (value.low >>> 0) <= u16.MAX_VALUE;
};

global.i64_is_u32 = function i64_is_u32(value) {
  return value.high === 0;
};

global.i64_is_bool = function i64_is_bool(value) {
  return (value.high | (value.low & ~1)) === 0;
};

const minSafeF32 = Long.fromNumber(f32.MIN_SAFE_INTEGER);
const maxSafeF32 = Long.fromNumber(f32.MAX_SAFE_INTEGER);

global.i64_is_f32 = function i64_is_f32(value) {
  return value.gte(minSafeF32) && value.lte(maxSafeF32);
};

const minSafeF64 = Long.fromNumber(f64.MIN_SAFE_INTEGER);
const maxSafeF64 = Long.fromNumber(f64.MAX_SAFE_INTEGER);

global.i64_is_f64 = function i64_is_f64(value) {
  return value.gte(minSafeF64) && value.lte(maxSafeF64);
};

global.i64_to_f32 = function i64_to_f32(value) {
  return global.Math.fround(value.toNumber());
};

global.i64_to_f64 = function i64_to_f64(value) {
  return value.toNumber();
};

global.i64_to_string = function i64_to_string(value, unsigned) {
  return unsigned ? value.toUnsigned().toString() : value.toString();
};
