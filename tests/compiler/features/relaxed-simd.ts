const v = v128.splat<i32>(0);
let r: v128;

r = i8x16.relaxed_swizzle(v, v);
// ==
r = v128.relaxed_swizzle(v, v);

r = i32x4.relaxed_trunc_f32x4_s(v);
// ==
r = v128.relaxed_trunc<i32>(v);

r = i32x4.relaxed_trunc_f32x4_u(v);
// ==
r = v128.relaxed_trunc<u32>(v);

r = i32x4.relaxed_trunc_f64x2_s_zero(v);
// ==
r = v128.relaxed_trunc_zero<i32>(v);

r = i32x4.relaxed_trunc_f64x2_u_zero(v);
// ==
r = v128.relaxed_trunc_zero<u32>(v);

r = f32x4.relaxed_madd(v, v, v);
// ==
r = v128.relaxed_madd<f32>(v, v, v);

r = f32x4.relaxed_nmadd(v, v, v);
// ==
r = v128.relaxed_nmadd<f32>(v, v, v);

r = f64x2.relaxed_madd(v, v, v);
// ==
r = v128.relaxed_madd<f64>(v, v, v);

r = f64x2.relaxed_nmadd(v, v, v);
// ==
r = v128.relaxed_nmadd<f64>(v, v, v);

r = i8x16.relaxed_laneselect(v, v, v);
// ==
r = v128.relaxed_laneselect<i8>(v, v, v);

r = i16x8.relaxed_laneselect(v, v, v);
// ==
r = v128.relaxed_laneselect<i16>(v, v, v);

r = i32x4.relaxed_laneselect(v, v, v);
// ==
r = v128.relaxed_laneselect<i32>(v, v, v);

r = i64x2.relaxed_laneselect(v, v, v);
// ==
r = v128.relaxed_laneselect<i64>(v, v, v);

r = f32x4.relaxed_min(v, v);
// ==
r = v128.relaxed_min<f32>(v, v);

r = f32x4.relaxed_max(v, v);
// ==
r = v128.relaxed_max<f32>(v, v);

r = f64x2.relaxed_min(v, v);
// ==
r = v128.relaxed_min<f64>(v, v);

r = f64x2.relaxed_max(v, v);
// ==
r = v128.relaxed_max<f64>(v, v);

r = i16x8.relaxed_q15mulr_s(v, v);
// ==
r = v128.relaxed_q15mulr<i16>(v, v);

r = i16x8.relaxed_dot_i8x16_i7x16_s(v, v);
// ==
r = v128.relaxed_dot<i16>(v, v);

// TODO: not yet implemented in binaryen/src/wasm-interpreter.h
// r = i32x4.relaxed_dot_i8x16_i7x16_add_s(v, v, v);
// // ==
// r = v128.relaxed_dot_add<i32>(v, v, v);
