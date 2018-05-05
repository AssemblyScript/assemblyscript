const Long = global.Long || require("long");

global.i64_zero = Long.ZERO;

global.i64_one = Long.ONE;

global.i64_new = function(lo, hi) {
  return Long.fromBits(lo, hi);
};

global.i64_low = function(value) {
  return value.low;
};

global.i64_high = function(value) {
  return value.high;
};

global.i64_add = function(left, right) {
  return left.add(right);
};

global.i64_sub = function(left, right) {
  return left.sub(right);
};

global.i64_mul = function(left, right) {
  return left.mul(right);
};

global.i64_div = function(left, right) {
  return left.div(right);
};

global.i64_div_u = function(left, right) {
  return left.toUnsigned().div(right.toUnsigned()).toSigned();
};

global.i64_rem = function(left, right) {
  return left.mod(right);
};

global.i64_rem_u = function(left, right) {
  return left.toUnsigned().mod(right.toUnsigned()).toSigned();
};

global.i64_and = function(left, right) {
  return left.and(right);
};

global.i64_or = function(left, right) {
  return left.or(right);
};

global.i64_xor = function(left, right) {
  return left.xor(right);
};

global.i64_shl = function(left, right) {
  return left.shl(right);
};

global.i64_shr = function(left, right) {
  return left.shr(right);
};

global.i64_shr_u = function(left, right) {
  return left.shru(right);
};

global.i64_not = function(value) {
  return value.not();
};

global.i64_eq = function(left, right) {
  return left.eq(right);
};

global.i64_ne = function(left, right) {
  return left.ne(right);
};

global.i64_align = function(value, alignment) {
  assert(alignment && (alignment & (alignment - 1)) == 0);
  var mask = Long.fromInt(alignment - 1);
  return value.add(mask).and(mask.not());
};

global.i64_is_i8 = function(value) {
  return value.high === 0 && (value.low >= 0 && value.low <= i8.MAX_VALUE)
      || value.high === -1 && (value.low >= i8.MIN_VALUE && value.low < 0);
};

global.i64_is_i16 = function(value) {
  return value.high === 0 && (value.low >= 0 && value.low <= i16.MAX_VALUE)
      || value.high === -1 && (value.low >= i16.MIN_VALUE && value.low < 0);
};

global.i64_is_i32 = function(value) {
  return (value.high === 0 && value.low >= 0)
      || (value.high === -1 && value.low < 0);
};

global.i64_is_u8 = function(value) {
  return value.high === 0 && value.low >= 0 && value.low <= u8.MAX_VALUE;
};

global.i64_is_u16 = function(value) {
  return value.high === 0 && value.low >= 0 && value.low <= u16.MAX_VALUE;
};

global.i64_is_u32 = function(value) {
  return value.high === 0;
};

global.i64_is_bool = function(value) {
  return value.high === 0 && (value.low === 0 || value.low === 1);
};

const minSafeF32 = Long.fromNumber(f32.MIN_SAFE_INTEGER);
const maxSafeF32 = Long.fromNumber(f32.MAX_SAFE_INTEGER);

global.i64_is_f32 = function(value) {
  return value.gte(minSafeF32) && value.lte(maxSafeF32);
};

const minSafeF64 = Long.fromNumber(f64.MIN_SAFE_INTEGER);
const maxSafeF64 = Long.fromNumber(f64.MAX_SAFE_INTEGER);

global.i64_is_f64 = function(value) {
  return value.gte(minSafeF64) && value.lte(maxSafeF64);
};

global.i64_to_f32 = function(value) {
  return global.Math.fround(value.toNumber());
};

global.i64_to_f64 = function(value) {
  return value.toNumber();
};

global.i64_to_string = function(value, unsigned) {
  return (unsigned ? value.toUnsigned() : value).toString(10);
};
