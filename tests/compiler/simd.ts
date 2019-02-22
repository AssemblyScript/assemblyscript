// hint: asc tests/compiler/simd --enable simd

if (ASC_FEATURE_SIMD) {

  let i64_x2 = i64x2(1, 2);
  let i64_x2_splat = i64x2.splat(42);
  let i64_x2_add = i64x2.add(i64_x2, i64_x2_splat);

  let i32_x4 = i32x4(1, 2, 3, 4);
  let i32_x4_splat = i32x4.splat(42);
  let i32_x4_add = i32x4.add(i32_x4, i32_x4_splat);

  let i16_x8 = i16x8(1, 2, 3, 4, 5, 6, 7, 8);
  let i16_x8_splat = i16x8.splat(42);
  let i16_x8_add = i16x8.add(i16_x8, i16_x8_splat);

  let i8_x16 = i8x16(1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6);
  let i8_x16_splat = i8x16.splat(42);
  let i8_x16_add = i8x16.add(i8_x16, i8_x16_splat);

} // ASC_FEATURE_SIMD
