// hint: asc tests/compiler/simd --enable simd --validate

import "allocator/arena";

function test_v128(): void {
  // generic operations are tested by the aliases below already
  var base = memory.allocate(256);
  v128.store(base, v128.load(base + 16, 32), 64);
}

function test_i8x16(): void {
  var i8_1 = i8x16(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 127);
  var i8_2 = i8x16.splat(1);
  var i8_3 = i8x16.add(i8_1, i8_2);
  assert(i8x16.extract_lane_s(i8_3, 0) == 2);
  assert(i8x16.extract_lane_s(i8_3, 15) == -128);
  assert(i8x16.extract_lane_u(i8_3, 15) == 128);
  var i8_4 = i8x16.replace_lane(i8_3, 15, 16);
  assert(i8x16.extract_lane_u(i8_4, 15) == 16);
  i8x16.shuffle(i8_1, i8_1, 0, 1, 2, 3, 4, 5, 6, 7, 24, 25, 26, 27, 28, 29, 30, 31); // fixture only (1)
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
  i16x8.shuffle(i16_1, i16_1, 0, 1, 2, 3, 12, 13, 14, 15); // fixture only, same as (1)
}

function test_i32x4(): void {
  var i32_1 = i32x4(1, 2, 3, 4);
  var i32_2 = i32x4.splat(1);
  var i32_3 = i32x4.add(i32_1, i32_2);
  assert(i32x4.extract_lane(i32_3, 0) == 2);
  assert(i32x4.extract_lane(i32_3, 3) == 5);
  var i32_4 = i32x4.replace_lane(i32_3, 3, 4);
  assert(i32x4.extract_lane(i32_4, 3) == 4);
  i32x4.shuffle(i32_1, i32_1, 0, 1, 6, 7); // fixture only, same as (1)
}

function test_i64x2(): void {
  var i64_1 = i64x2(1, 2);
  var i64_2 = i64x2.splat(1);
  var i64_3 = i64x2.add(i64_1, i64_2);
  assert(i64x2.extract_lane(i64_3, 0) == 2);
  assert(i64x2.extract_lane(i64_3, 1) == 3);
  var i64_4 = i64x2.replace_lane(i64_3, 1, 2);
  assert(i64x2.extract_lane(i64_4, 1) == 2);
  i64x2.shuffle(i64_1, i64_1, 0, 3); // fixture only, same as (1)
}

function test_f32x4(): void {
  var f32_1 = f32x4(1.5, 2.5, 3.5, 4.5);
  var f32_2 = f32x4.splat(0.25);
  var f32_3 = f32x4.add(f32_1, f32_2);
  assert(f32x4.extract_lane(f32_3, 0) == 1.75);
  assert(f32x4.extract_lane(f32_3, 3) == 4.75);
  var f32_4 = f32x4.replace_lane(f32_3, 3, 4.5);
  assert(f32x4.extract_lane(f32_4, 3) == 4.5);
  f32x4.shuffle(f32_1, f32_1, 0, 1, 6, 7); // fixture only, same as (1)
}

function test_f64x2(): void {
  var f64_1 = f64x2(1.5, 2.5);
  var f64_2 = f64x2.splat(0.25);
  var f64_3 = f64x2.add(f64_1, f64_2);
  assert(f64x2.extract_lane(f64_3, 0) == 1.75);
  assert(f64x2.extract_lane(f64_3, 1) == 2.75);
  var f64_4 = f64x2.replace_lane(f64_3, 1, 2.5);
  assert(f64x2.extract_lane(f64_4, 1) == 2.5);
  f64x2.shuffle(f64_1, f64_1, 0, 3); // fixture only, same as (1)
}

function test_v8x16(): void {
  var v8_1 = i8x16( 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15);
  var v8_2 = i8x16(16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31);
  var v8_3 = v8x16.shuffle(v8_1, v8_2, 0, 17, 2, 19, 4, 21, 6, 23, 8, 25, 10, 27, 12, 29, 14, 31);
  assert(i8x16.extract_lane_u(v8_3, 0) == 0);
  assert(i8x16.extract_lane_u(v8_3, 1) == 17);
  assert(i8x16.extract_lane_u(v8_3, 2) == 2);
  assert(i8x16.extract_lane_u(v8_3, 3) == 19);
  assert(i8x16.extract_lane_u(v8_3, 4) == 4);
  assert(i8x16.extract_lane_u(v8_3, 5) == 21);
  assert(i8x16.extract_lane_u(v8_3, 6) == 6);
  assert(i8x16.extract_lane_u(v8_3, 7) == 23);
  assert(i8x16.extract_lane_u(v8_3, 8) == 8);
  assert(i8x16.extract_lane_u(v8_3, 9) == 25);
  assert(i8x16.extract_lane_u(v8_3, 10) == 10);
  assert(i8x16.extract_lane_u(v8_3, 11) == 27);
  assert(i8x16.extract_lane_u(v8_3, 12) == 12);
  assert(i8x16.extract_lane_u(v8_3, 13) == 29);
  assert(i8x16.extract_lane_u(v8_3, 14) == 14);
  assert(i8x16.extract_lane_u(v8_3, 15) == 31);
}

if (ASC_FEATURE_SIMD) {
  test_v128();
  // test_i8x16();
  // test_i16x8();
  // test_i32x4();
  // test_i64x2();
  // test_f32x4();
  // test_f64x2();
  // test_v8x16();
}
