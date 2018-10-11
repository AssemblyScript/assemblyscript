/** @module glue/wasm *//***/

@global
function f32_as_i32(value: f32): i32 {
  return reinterpret<i32>(value);
}

@global
function i32_as_f32(value: i32): f32 {
  return reinterpret<f32>(value);
}

@global
function f64_as_i64(value: f64): i64 {
  return reinterpret<i64>(value);
}

@global
function i64_as_f64(value: i64): f64 {
  return reinterpret<f64>(value);
}
