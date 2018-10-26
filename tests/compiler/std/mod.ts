const js = true;

@external("math", "mod")
export declare function mod(x: f64, y: f64): f64;

function check<T>(actual: T, expected: T): bool {
  if (isNaN(expected)) return isNaN(actual);
  if (expected == 0) return 1 / expected == 1 / actual;
  return actual == expected;
}

// === f64 % f64 ================================

function test_fmod(left: f64, right: f64, expected: f64): bool {
  return  check<f64>(         left % right , expected) &&
  (!js || check<f64>(mod(left , right), expected));
}

// sanity
assert(test_fmod(3.0, 2.0, 1.0));
assert(test_fmod(3.0, -2.0, 1.0));
assert(test_fmod(-3.0, 2.0, -1.0));
assert(test_fmod(-3.0, -2.0, -1.0));
assert(test_fmod(3.5, 2.0, 1.5));
assert(test_fmod(3.5, -2.0, 1.5));
assert(test_fmod(-3.5, 2.0, -1.5));
assert(test_fmod(-3.5, -2.0, -1.5));
assert(test_fmod(3.0, 2.5, 0.5));
assert(test_fmod(3.0, -2.5, 0.5));
assert(test_fmod(-3.0, 2.5, -0.5));
assert(test_fmod(-3.0, -2.5, -0.5));
assert(test_fmod(0.5, 1.0, 0.5));
assert(test_fmod(0.5, -1.0, 0.5));
assert(test_fmod(-0.5, 1.0, -0.5));
assert(test_fmod(-0.5, -1.0, -0.5));
assert(test_fmod(1.5, 1.0, 0.5));
assert(test_fmod(1.5, -1.0, 0.5));
assert(test_fmod(-1.5, 1.0, -0.5));
assert(test_fmod(-1.5, -1.0, -0.5));
assert(test_fmod(1.25, 1.0, 0.25));
assert(test_fmod(1.25, -1.0, 0.25));
assert(test_fmod(-1.25, 1.0, -0.25));
assert(test_fmod(-1.25, -1.0, -0.25));
assert(test_fmod(1.0, 1.25, 1.0));
assert(test_fmod(1.0, -1.25, 1.0));
assert(test_fmod(-1.0, 1.25, -1.0));
assert(test_fmod(-1.0, -1.25, -1.0));
assert(test_fmod(-13, 64, -13));

// special
assert(test_fmod(0.0, 0.0, NaN));
assert(test_fmod(-0.0, 0.0, NaN));
assert(test_fmod(0.0, -0.0, NaN));
assert(test_fmod(-0.0, -0.0, NaN));
assert(test_fmod(0.0, 1.0, 0.0));
assert(test_fmod(-0.0, 1.0, -0.0));
assert(test_fmod(0.0, -1.0, 0.0));
assert(test_fmod(-0.0, -1.0, -0.0));
assert(test_fmod(1.0, 0.0, NaN));
assert(test_fmod(-1.0, 0.0, NaN));
assert(test_fmod(1.0, -0.0, NaN));
assert(test_fmod(-1.0, -0.0, NaN));
assert(test_fmod(NaN, 0.0, NaN));
assert(test_fmod(NaN, -0.0, NaN));
assert(test_fmod(NaN, 1.0, NaN));
assert(test_fmod(NaN, -1.0, NaN));
assert(test_fmod(NaN, 0.0, NaN));
assert(test_fmod(NaN, -0.0, NaN));
assert(test_fmod(NaN, 1.0, NaN));
assert(test_fmod(NaN, -1.0, NaN));
assert(test_fmod(NaN, NaN, NaN));
assert(test_fmod(0.0, Infinity, 0.0));
assert(test_fmod(-0.0, Infinity, -0.0));
assert(test_fmod(0.0, -Infinity, 0.0));
assert(test_fmod(-0.0, -Infinity, -0.0));
assert(test_fmod(1.0, Infinity, 1.0));
assert(test_fmod(-1.0, Infinity, -1.0));
assert(test_fmod(1.0, -Infinity, 1.0));
assert(test_fmod(-1.0, -Infinity, -1.0));
assert(test_fmod(Infinity, 0.0, NaN));
assert(test_fmod(Infinity, -0.0, NaN));
assert(test_fmod(-Infinity, 0.0, NaN));
assert(test_fmod(-Infinity, -0.0, NaN));
assert(test_fmod(Infinity, 1.0, NaN));
assert(test_fmod(Infinity, -1.0, NaN));
assert(test_fmod(-Infinity, 1.0, NaN));
assert(test_fmod(-Infinity, -1.0, NaN));
assert(test_fmod(Infinity, Infinity, NaN));
assert(test_fmod(-Infinity, Infinity, NaN));
assert(test_fmod(Infinity, -Infinity, NaN));
assert(test_fmod(-Infinity, -Infinity, NaN));
assert(test_fmod(Infinity, NaN, NaN));
assert(test_fmod(-Infinity, NaN, NaN));
assert(test_fmod(NaN, Infinity, NaN));
assert(test_fmod(NaN, -Infinity, NaN));

// === f32 % f32 ================================

function test_fmodf(left: f32, right: f32, expected: f32): bool {
  return  check<f32>(left % right, expected);
}

// sanity
assert(test_fmodf(3.0, 2.0, 1.0));
assert(test_fmodf(3.0, -2.0, 1.0));
assert(test_fmodf(-3.0, 2.0, -1.0));
assert(test_fmodf(-3.0, -2.0, -1.0));
assert(test_fmodf(3.5, 2.0, 1.5));
assert(test_fmodf(3.5, -2.0, 1.5));
assert(test_fmodf(-3.5, 2.0, -1.5));
assert(test_fmodf(-3.5, -2.0, -1.5));
assert(test_fmodf(3.0, 2.5, 0.5));
assert(test_fmodf(3.0, -2.5, 0.5));
assert(test_fmodf(-3.0, 2.5, -0.5));
assert(test_fmodf(-3.0, -2.5, -0.5));
assert(test_fmodf(0.5, 1.0, 0.5));
assert(test_fmodf(0.5, -1.0, 0.5));
assert(test_fmodf(-0.5, 1.0, -0.5));
assert(test_fmodf(-0.5, -1.0, -0.5));
assert(test_fmodf(1.5, 1.0, 0.5));
assert(test_fmodf(1.5, -1.0, 0.5));
assert(test_fmodf(-1.5, 1.0, -0.5));
assert(test_fmodf(-1.5, -1.0, -0.5));

// special
assert(test_fmodf(0.0, 0.0, NaN));
assert(test_fmodf(-0.0, 0.0, NaN));
assert(test_fmodf(0.0, -0.0, NaN));
assert(test_fmodf(-0.0, -0.0, NaN));
assert(test_fmodf(1.0, 0.0, NaN));
assert(test_fmodf(-1.0, 0.0, NaN));
assert(test_fmodf(1.0, -0.0, NaN));
assert(test_fmodf(-1.0, -0.0, NaN));
assert(test_fmodf(NaN, 0.0, NaN));
assert(test_fmodf(NaN, -0.0, NaN));
assert(test_fmodf(NaN, 1.0, NaN));
assert(test_fmodf(NaN, -1.0, NaN));
assert(test_fmodf(NaN, 0.0, NaN));
assert(test_fmodf(NaN, -0.0, NaN));
assert(test_fmodf(NaN, 1.0, NaN));
assert(test_fmodf(NaN, -1.0, NaN));
assert(test_fmodf(NaN, NaN, NaN));
assert(test_fmodf(0.0, Infinity, 0.0));
assert(test_fmodf(-0.0, Infinity, -0.0));
assert(test_fmodf(0.0, -Infinity, 0.0));
assert(test_fmodf(-0.0, -Infinity, -0.0));
assert(test_fmodf(1.0, Infinity, 1.0));
assert(test_fmodf(-1.0, Infinity, -1.0));
assert(test_fmodf(1.0, -Infinity, 1.0));
assert(test_fmodf(-1.0, -Infinity, -1.0));
assert(test_fmodf(Infinity, 0.0, NaN));
assert(test_fmodf(Infinity, -0.0, NaN));
assert(test_fmodf(-Infinity, 0.0, NaN));
assert(test_fmodf(-Infinity, -0.0, NaN));
assert(test_fmodf(Infinity, 1.0, NaN));
assert(test_fmodf(Infinity, -1.0, NaN));
assert(test_fmodf(-Infinity, 1.0, NaN));
assert(test_fmodf(-Infinity, -1.0, NaN));
assert(test_fmodf(Infinity, Infinity, NaN));
assert(test_fmodf(-Infinity, Infinity, NaN));
assert(test_fmodf(Infinity, -Infinity, NaN));
assert(test_fmodf(-Infinity, -Infinity, NaN));
assert(test_fmodf(Infinity, NaN, NaN));
assert(test_fmodf(-Infinity, NaN, NaN));
assert(test_fmodf(NaN, Infinity, NaN));
assert(test_fmodf(NaN, -Infinity, NaN));
