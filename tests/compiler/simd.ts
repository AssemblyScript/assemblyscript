// hint: asc tests/compiler/simd --enable simd --validate

function test_i8x16(): void {
  var i8_1 = i8x16(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 127);
  var i8_2 = i8x16.splat(1);
  var i8_3 = i8x16.add(i8_1, i8_2);
  assert(i8x16.extract_lane_s(i8_3, 0) == 2);
  assert(i8x16.extract_lane_s(i8_3, 15) == -128);
  assert(i8x16.extract_lane_u(i8_3, 15) == 128);
  var i8_4 = i8x16.replace_lane(i8_3, 15, 16);
  assert(i8x16.extract_lane_u(i8_4, 15) == 16);
}

function test_i16x8(): void {
  var i16_1 = i16x8(1, 2, 3, 4, 5, 6, 7, 32767);
  var i16_2 = i16x8.splat(1);
  var i16_3 = i16x8.add(i16_1, i16_2);
  assert(i16x8.extract_lane_s(i16_3, 0) == 2);
  assert(i16x8.extract_lane_s(i16_3, 7) == -32768);
  assert(i16x8.extract_lane_u(i16_3, 7) == 32768);
  var i16_4 = i16x8.replace_lane(i16_3, 7, 8);
  assert(i16x8.extract_lane_u(i16_4, 7) == 8);
}

function test_i32x4(): void {
  var i32_1 = i32x4(1, 2, 3, 4);
  var i32_2 = i32x4.splat(1);
  var i32_3 = i32x4.add(i32_1, i32_2);
  assert(i32x4.extract_lane(i32_3, 0) == 2);
  assert(i32x4.extract_lane(i32_3, 3) == 5);
  var i32_4 = i32x4.replace_lane(i32_3, 3, 4);
  assert(i32x4.extract_lane(i32_4, 3) == 4);
}

function test_i64x2(): void {
  var i64_1 = i64x2(1, 2);
  var i64_2 = i64x2.splat(1);
  var i64_3 = i64x2.add(i64_1, i64_2);
  assert(i64x2.extract_lane(i64_3, 0) == 2);
  assert(i64x2.extract_lane(i64_3, 1) == 3);
  var i64_4 = i64x2.replace_lane(i64_3, 1, 2);
  assert(i64x2.extract_lane(i64_4, 1) == 2);
}

function test_f32x4(): void {
  var f32_1 = f32x4(1.5, 2.5, 3.5, 4.5);
  var f32_2 = f32x4.splat(0.25);
  var f32_3 = f32x4.add(f32_1, f32_2);
  assert(f32x4.extract_lane(f32_3, 0) == 1.75);
  assert(f32x4.extract_lane(f32_3, 3) == 4.75);
  var f32_4 = f32x4.replace_lane(f32_3, 3, 4.5);
  assert(f32x4.extract_lane(f32_4, 3) == 4.5);
}

function test_f64x2(): void {
  var f64_1 = f64x2(1.5, 2.5);
  var f64_2 = f64x2.splat(0.25);
  var f64_3 = f64x2.add(f64_1, f64_2);
  assert(f64x2.extract_lane(f64_3, 0) == 1.75);
  assert(f64x2.extract_lane(f64_3, 1) == 2.75);
  var f64_4 = f64x2.replace_lane(f64_3, 1, 2.5);
  assert(f64x2.extract_lane(f64_4, 1) == 2.5);
}

if (ASC_FEATURE_SIMD) {
  test_i8x16();
  test_i16x8();
  test_i32x4();
  test_i64x2();
  test_f32x4();
  test_f64x2();
}
