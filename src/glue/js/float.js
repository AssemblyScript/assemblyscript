/**
 * @fileoverview Floating point glue code for JaavaScript.
 * @license Apache-2.0
 */

/* eslint-disable no-undef */

const F64 = new Float64Array(1);
const F32 = new Float32Array(F64.buffer);
const I32 = new Int32Array(F64.buffer);

global.f32_as_i32 = function f32_as_i32(value) {
  F32[0] = value;
  return I32[0];
};

global.i32_as_f32 = function i32_as_f32(value) {
  I32[0] = value;
  return F32[0];
};

global.f64_as_i64 = function f64_as_i64(value) {
  F64[0] = value;
  return i64_new(I32[0], I32[1]);
};

global.i64_as_f64 = function i64_as_f64(value) {
  I32[0] = i64_low(value);
  I32[1] = i64_high(value);
  return F64[0];
};
