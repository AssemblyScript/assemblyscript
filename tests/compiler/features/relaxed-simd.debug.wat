(module
 (type $none_=>_none (func))
 (global $features/relaxed-simd/v v128 (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000))
 (global $features/relaxed-simd/r (mut v128) (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:features/relaxed-simd
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i8x16.relaxed_swizzle
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i8x16.relaxed_swizzle
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  i32x4.relaxed_trunc_f32x4_s
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  i32x4.relaxed_trunc_f32x4_s
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  i32x4.relaxed_trunc_f32x4_u
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  i32x4.relaxed_trunc_f32x4_u
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  i32x4.relaxed_trunc_f64x2_s_zero
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  i32x4.relaxed_trunc_f64x2_s_zero
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  i32x4.relaxed_trunc_f64x2_u_zero
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  i32x4.relaxed_trunc_f64x2_u_zero
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f32x4.relaxed_fma
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f32x4.relaxed_fma
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f32x4.relaxed_fms
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f32x4.relaxed_fms
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f64x2.relaxed_fma
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f64x2.relaxed_fma
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f64x2.relaxed_fms
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f64x2.relaxed_fms
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i8x16.laneselect
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i8x16.laneselect
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i16x8.laneselect
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i16x8.laneselect
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i32x4.laneselect
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i32x4.laneselect
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i64x2.laneselect
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i64x2.laneselect
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f32x4.relaxed_min
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f32x4.relaxed_min
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f32x4.relaxed_max
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f32x4.relaxed_max
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f64x2.relaxed_min
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f64x2.relaxed_min
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f64x2.relaxed_max
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  f64x2.relaxed_max
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i16x8.relaxed_q15mulr_s
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i16x8.relaxed_q15mulr_s
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i16x8.dot_i8x16_i7x16_s
  global.set $features/relaxed-simd/r
  global.get $features/relaxed-simd/v
  global.get $features/relaxed-simd/v
  i16x8.dot_i8x16_i7x16_s
  global.set $features/relaxed-simd/r
 )
 (func $~start
  call $start:features/relaxed-simd
 )
)
