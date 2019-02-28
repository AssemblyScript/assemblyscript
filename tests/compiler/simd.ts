// hint: asc tests/compiler/simd --enable simd --validate

import "allocator/arena";

function test_v128(): void {
  // equality and inequality
  assert(
    v128(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
    == // i8x16.all_true(i8x16.eq(lhs, rhs))
    v128(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  );
  assert(
    v128(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
    != // i8x16.any_true(i8x16.ne(lhs, rhs))
    v128(2, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  );
  // bitwise
  assert(
    v128.and(
      v128(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      v128(1, 1, 1, 1, 1, 1, 1, 1, 1, 1 , 1 , 1 , 1 , 1 , 1 , 1)
    ) ==
      v128(1, 0, 1, 0, 1, 0, 1, 0, 1, 0 , 1 , 0 , 1 , 0 , 1 , 0)
  );
  assert(
    v128.or(
      v128(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      v128(1, 1, 1, 1, 1, 1, 1, 1, 1, 1 , 1 , 1 , 1 , 1 , 1 , 1)
    ) ==
      v128(1, 3, 3, 5, 5, 7, 7, 9, 9, 11, 11, 13, 13, 15, 15, 17)
  );
  assert(
    v128.xor(
      v128(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      v128(1, 1, 1, 1, 1, 1, 1, 1, 1, 1 , 1 , 1 , 1 , 1 , 1 , 1)
    ) ==
      v128(0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14, 17)
  );
  assert(
    v128.not(
      v128(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
    ) ==
      v128(-2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16, -17)
  );
  assert(
    v128.bitselect(
      v128(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      v128(16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1),
      v128(0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1),
    ) ==
      v128(16, 2, 14, 4, 12, 6, 10, 8, 8, 10, 6, 12, 4, 14, 2, 16),
  );
  // generic operations are tested by the aliases below already

  // FIXME: node/nightly currently fails to validate this. works in node/v8-canary.
  // var base = memory.allocate(256);
  // v128.store(base, v128.load(base + 16, 32), 64);
}

function test_i8x16(): void {
  var a = i8x16(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 127);
  assert(a == v128(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 127));
  var b = i8x16.splat(1);
  assert(b == v128(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1));
  var c = i8x16.add(a, b);
  assert(c == i8x16(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, -128));
  assert(i8x16.sub(c, b) == a);
  assert(i8x16.mul(c, b) == c);
  assert(
    i8x16.neg(a)
    ==
    i8x16(-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -127)
  );
  assert(i8x16.extract_lane_s(c, 0) == 2);
  assert(i8x16.extract_lane_s(c, 15) == -128);
  assert(i8x16.extract_lane_u(c, 15) == 128);
  assert(
    i8x16.replace_lane(c, 15, 17)
    ==
    i8x16(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17)
  );
  assert(
    v128.shuffle<i8>(a, b, 0, 1, 2, 3, 4, 5, 6, 7, 24, 25, 26, 27, 28, 29, 30, 31)
    ==
    i8x16(1, 2, 3, 4, 5, 6, 7, 8, 1, 1, 1, 1, 1, 1, 1, 1)
  );
  assert(
    i8x16.add_saturate_s(
      i8x16(126, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127),
      i8x16.splat(2)
    ) == i8x16.splat(127)
  );
  assert(
    i8x16.add_saturate_u(
      i8x16(-2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
      i8x16.splat(2)
    ) == i8x16.splat(-1)
  );
  assert(
    i8x16.sub_saturate_s(
      i8x16(-127, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128),
      i8x16.splat(2)
    ) == i8x16.splat(-128)
  );
  assert(
    i8x16.sub_saturate_u(
      i8x16(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
      i8x16.splat(2)
    ) == i8x16.splat(0)
  );
  assert(i8x16.shl(i8x16.splat(1), 1) == i8x16.splat(2));
  assert(i8x16.shr_s(i8x16.splat(-2), 1) == i8x16.splat(-1));
  assert(i8x16.shr_u(i8x16.splat(-1), 1) == i8x16.splat(127));
  assert(i8x16.any_true(i8x16(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == true);
  assert(i8x16.all_true(i8x16.splat(1)) == true);
  var one = i8x16.replace_lane(i8x16.splat(0), 0, 1);
  var negOne = i8x16.replace_lane(i8x16.splat(0), 0, -1);
  var only1st = negOne;
  var excl1st = v128.not(negOne);
  assert(i8x16.eq(negOne, one) == excl1st);
  assert(i8x16.ne(negOne, one) == only1st);
  assert(i8x16.lt_s(negOne, one) == only1st);
  assert(i8x16.lt_u(one, negOne) == only1st);
  assert(i8x16.le_s(one, negOne) == excl1st);
  assert(i8x16.le_u(negOne, one) == excl1st);
  assert(i8x16.gt_s(one, negOne) == only1st);
  assert(i8x16.gt_u(negOne, one) == only1st);
  assert(i8x16.ge_s(negOne, one) == excl1st);
  assert(i8x16.ge_u(one, negOne) == excl1st);
}

function test_i16x8(): void {
  var a = i16x8(1, 2, 3, 4, 5, 6, 7, 32767);
  assert(a == v128(1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, -1, 127));
  var b = i16x8.splat(1);
  assert(b == v128(1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0));
  var c = i16x8.add(a, b);
  assert(c == i16x8(2, 3, 4, 5, 6, 7, 8, -32768));
  assert(i16x8.sub(c, b) == a);
  assert(i16x8.mul(c, b) == c);
  assert(
    i16x8.neg(a)
    ==
    i16x8(-1, -2, -3, -4, -5, -6, -7, -32767)
  );
  assert(i16x8.extract_lane_s(c, 0) == 2);
  assert(i16x8.extract_lane_s(c, 7) == -32768);
  assert(i16x8.extract_lane_u(c, 7) == 32768);
  assert(
    i16x8.replace_lane(c, 7, 9)
    ==
    i16x8(2, 3, 4, 5, 6, 7, 8, 9)
  );
  assert(
    v128.shuffle<i16>(a, b, 0, 1, 2, 3, 12, 13, 14, 15)
    ==
    i16x8(1, 2, 3, 4, 1, 1, 1, 1)
  );
  assert(
    i16x8.add_saturate_s(
      i16x8(32766, 32767, 32767, 32767, 32767, 32767, 32767, 32767),
      i16x8.splat(2)
    ) == i16x8.splat(32767)
  );
  assert(
    i16x8.add_saturate_u(
      i16x8(-2, -1, -1, -1, -1, -1, -1, -1),
      i16x8.splat(2)
    ) == i16x8.splat(-1)
  );
  assert(
    i16x8.sub_saturate_s(
      i16x8(-32767, -32768, -32768, -32768, -32768, -32768, -32768, -32768),
      i16x8.splat(2)
    ) == i16x8.splat(-32768)
  );
  assert(
    i16x8.sub_saturate_u(
      i16x8(1, 0, 0, 0, 0, 0, 0, 0),
      i16x8.splat(2)
    ) == i16x8.splat(0)
  );
  assert(i16x8.shl(i16x8.splat(1), 1) == i16x8.splat(2));
  assert(i16x8.shr_s(i16x8.splat(-2), 1) == i16x8.splat(-1));
  assert(i16x8.shr_u(i16x8.splat(-1), 1) == i16x8.splat(32767));
  assert(i16x8.any_true(i16x8(1, 0, 0, 0, 0, 0, 0, 0)) == true);
  assert(i16x8.all_true(i16x8.splat(1)) == true);
  var one = i16x8.replace_lane(i16x8.splat(0), 0, 1);
  var negOne = i16x8.replace_lane(i16x8.splat(0), 0, -1);
  var only1st = negOne;
  var excl1st = v128.not(negOne);
  assert(i16x8.eq(negOne, one) == excl1st);
  assert(i16x8.ne(negOne, one) == only1st);
  assert(i16x8.lt_s(negOne, one) == only1st);
  assert(i16x8.lt_u(one, negOne) == only1st);
  assert(i16x8.le_s(one, negOne) == excl1st);
  assert(i16x8.le_u(negOne, one) == excl1st);
  assert(i16x8.gt_s(one, negOne) == only1st);
  assert(i16x8.gt_u(negOne, one) == only1st);
  assert(i16x8.ge_s(negOne, one) == excl1st);
  assert(i16x8.ge_u(one, negOne) == excl1st);
}

function test_i32x4(): void {
  var a = i32x4(1, 2, 3, 2147483647);
  assert(a == v128(1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, -1, -1, -1, 127));
  var b = i32x4.splat(1);
  assert(b == v128(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0));
  var c = i32x4.add(a, b);
  assert(c == i32x4(2, 3, 4, -2147483648));
  assert(i32x4.sub(c, b) == a);
  assert(i32x4.mul(c, b) == c);
  assert(
    i32x4.neg(a)
    ==
    i32x4(-1, -2, -3, -2147483647)
  );
  assert(i32x4.extract_lane(c, 0) == 2);
  assert(i32x4.extract_lane(c, 3) == -2147483648);
  assert(
    i32x4.replace_lane(c, 3, 5)
    ==
    i32x4(2, 3, 4, 5)
  );
  assert(
    v128.shuffle<i32>(a, b, 0, 1, 6, 7)
    ==
    i32x4(1, 2, 1, 1)
  );
  assert(i32x4.shl(i32x4.splat(1), 1) == i32x4.splat(2));
  assert(i32x4.shr_s(i32x4.splat(-2), 1) == i32x4.splat(-1));
  assert(i32x4.shr_u(i32x4.splat(-1), 1) == i32x4.splat(2147483647));
  assert(i32x4.any_true(i32x4(1, 0, 0, 0)) == true);
  assert(i32x4.all_true(i32x4.splat(1)) == true);
  var one = i32x4.replace_lane(i32x4.splat(0), 0, 1);
  var negOne = i32x4.replace_lane(i32x4.splat(0), 0, -1);
  var only1st = negOne;
  var excl1st = v128.not(negOne);
  assert(i32x4.eq(negOne, one) == excl1st);
  assert(i32x4.ne(negOne, one) == only1st);
  assert(i32x4.lt_s(negOne, one) == only1st);
  assert(i32x4.lt_u(one, negOne) == only1st);
  assert(i32x4.le_s(one, negOne) == excl1st);
  assert(i32x4.le_u(negOne, one) == excl1st);
  assert(i32x4.gt_s(one, negOne) == only1st);
  assert(i32x4.gt_u(negOne, one) == only1st);
  assert(i32x4.ge_s(negOne, one) == excl1st);
  assert(i32x4.ge_u(one, negOne) == excl1st);
  assert(
    i32x4.trunc_s_f32x4_sat(f32x4.splat(-1.5))
    ==
    i32x4.splat(-1)
  );
  assert(
    i32x4.trunc_u_f32x4_sat(f32x4.splat(-1.5))
    ==
    i32x4.splat(0)
  );
}

function test_i64x2(): void {
  var a = i64x2(1, 9223372036854775807);
  assert(a == v128(1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 127));
  var b = i64x2.splat(1);
  assert(b == v128(1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0));
  var c = i64x2.add(a, b);
  assert(c == i64x2(2, -9223372036854775808));
  assert(i64x2.sub(c, b) == a);
  assert(
    i64x2.neg(a)
    ==
    i64x2(-1, -9223372036854775807)
  );
  assert(i64x2.extract_lane(c, 0) == 2);
  assert(i64x2.extract_lane(c, 1) == -9223372036854775808);
  assert(
    i64x2.replace_lane(c, 1, 3)
    ==
    i64x2(2, 3)
  );
  assert(
    v128.shuffle<i64>(a, b, 0, 3)
    ==
    i64x2(1, 1)
  );
  assert(i64x2.shl(i64x2.splat(1), 1) == i64x2.splat(2));
  assert(i64x2.shr_s(i64x2.splat(-2), 1) == i64x2.splat(-1));
  assert(i64x2.shr_u(i64x2.splat(-1), 1) == i64x2.splat(9223372036854775807));
  assert(i64x2.any_true(i64x2(1, 0)) == true);
  assert(i64x2.all_true(i64x2.splat(1)) == true);
  assert(
    i64x2.trunc_s_f64x2_sat(f64x2.splat(-1.5))
    ==
    i64x2.splat(-1)
  );
  assert(
    i64x2.trunc_u_f64x2_sat(f64x2.splat(-1.5))
    ==
    i64x2.splat(0)
  );
}

function test_f32x4(): void {
  var a = f32x4(1.5, 2.5, 3.5, 4.5);
  assert(a == v128(0, 0, -64, 63, 0, 0, 32, 64, 0, 0, 96, 64, 0, 0, -112, 64));
  var b = f32x4.splat(1.0);
  assert(b == v128(0, 0, -128, 63, 0, 0, -128, 63, 0, 0, -128, 63, 0, 0, -128, 63));
  var c = f32x4.add(a, b);
  assert(c == f32x4(2.5, 3.5, 4.5, 5.5));
  assert(f32x4.sub(c, b) == a);
  assert(f32x4.mul(c, b) == c);
  var d = f32x4.mul(a, a);
  assert(f32x4.div(d, a) == a);
  assert(f32x4.mul(d, a) != a);
  assert(f32x4.neg(a) == f32x4(-1.5, -2.5, -3.5, -4.5));
  assert(f32x4.extract_lane(c, 0) == 2.5);
  assert(f32x4.extract_lane(c, 3) == 5.5);
  assert(
    f32x4.replace_lane(c, 3, 6.5)
    ==
    f32x4(2.5, 3.5, 4.5, 6.5)
  );
  assert(
    v128.shuffle<f32>(a, b, 0, 1, 6, 7)
    ==
    f32x4(1.5, 2.5, 1.0, 1.0)
  );
  var one = f32x4.replace_lane(f32x4.splat(0), 0, 1);
  var negOne = f32x4.replace_lane(f32x4.splat(0), 0, -1);
  var only1st = i32x4(-1, 0, 0, 0);
  var excl1st = i32x4(0, -1, -1, -1);
  assert(f32x4.eq(negOne, one) == excl1st);
  assert(f32x4.ne(negOne, one) == only1st);
  assert(f32x4.lt(negOne, one) == only1st);
  assert(f32x4.le(one, negOne) == excl1st);
  assert(f32x4.gt(one, negOne) == only1st);
  assert(f32x4.ge(negOne, one) == excl1st);
  assert(f32x4.min(negOne, one) == negOne);
  assert(f32x4.max(negOne, one) == one);
  assert(f32x4.abs(negOne) == one);
  assert(f32x4.sqrt(f32x4(4.0, 9.0, 16.0, 25.0)) == f32x4(2.0, 3.0, 4.0, 5.0));
  assert(
    f32x4.convert_s_i32x4(i32x4.splat(-1))
    ==
    f32x4.splat(-1.0)
  );
  assert(
    f32x4.convert_u_i32x4(i32x4.splat(-1))
    ==
    f32x4.splat(4294967296.0)
  );
}

function test_f64x2(): void {
  var a = f64x2(1.5, 2.5);
  assert(a == v128(0, 0, 0, 0, 0, 0, -8, 63, 0, 0, 0, 0, 0, 0, 4, 64));
  var b = f64x2.splat(1.0);
  assert(b == v128(0, 0, 0, 0, 0, 0, -16, 63, 0, 0, 0, 0, 0, 0, -16, 63));
  var c = f64x2.add(a, b);
  assert(c == f64x2(2.5, 3.5));
  assert(f64x2.sub(c, b) == a);
  assert(f64x2.mul(c, b) == c);
  var d = f64x2.mul(a, a);
  assert(f64x2.div(d, a) == a);
  assert(f64x2.mul(d, a) != a);
  assert(f64x2.neg(a) == f64x2(-1.5, -2.5));
  assert(f64x2.extract_lane(c, 0) == 2.5);
  assert(f64x2.extract_lane(c, 1) == 3.5);
  assert(
    f64x2.replace_lane(c, 1, 4.5)
    ==
    f64x2(2.5, 4.5)
  );
  assert(
    v128.shuffle<f64>(a, b, 0, 3)
    ==
    f64x2(1.5, 1.0)
  );
  var one = f64x2.replace_lane(f64x2.splat(0), 0, 1);
  var negOne = f64x2.replace_lane(f64x2.splat(0), 0, -1);
  var only1st = i64x2(-1, 0);
  var excl1st = i64x2(0, -1);
  assert(f64x2.eq(negOne, one) == excl1st);
  assert(f64x2.ne(negOne, one) == only1st);
  assert(f64x2.lt(negOne, one) == only1st);
  assert(f64x2.le(one, negOne) == excl1st);
  assert(f64x2.gt(one, negOne) == only1st);
  assert(f64x2.ge(negOne, one) == excl1st);
  assert(f64x2.min(negOne, one) == negOne);
  assert(f64x2.max(negOne, one) == one);
  assert(f64x2.abs(negOne) == one);
  assert(f64x2.sqrt(f64x2(4.0, 9.0)) == f64x2(2.0, 3.0));
  assert(
    f64x2.convert_s_i64x2(i64x2.splat(-1))
    ==
    f64x2.splat(-1.0)
  );
  assert(
    f64x2.convert_u_i64x2(i64x2.splat(-1))
    ==
    f64x2.splat(18446744073709551615.0)
  );
}

function test_v8x16(): void {
  var a = v128( 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15);
  var b = v128(16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31);
  assert(
    v8x16.shuffle(a, b, 0, 17, 2, 19, 4, 21, 6, 23, 8, 25, 10, 27, 12, 29, 14, 31)
    ==
    v128(0, 17, 2, 19, 4, 21, 6, 23, 8, 25, 10, 27, 12, 29, 14, 31)
  );
}

if (ASC_FEATURE_SIMD) {
  test_v128();
  test_i8x16();
  test_i16x8();
  test_i32x4();
  test_i64x2();
  test_f32x4();
  test_f64x2();
  test_v8x16();
}
