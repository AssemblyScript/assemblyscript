
// Object.is

assert(Object.is(+0.0, +0.0) == true);
assert(Object.is(+0.0, -0.0) == false);
assert(Object.is(-0.0, +0.0) == false);
assert(Object.is(+0.0, +1.0) == false);
assert(Object.is(+1.0, -1.0) == false);
assert(Object.is(+1.0, +1.0) == true);

assert(Object.is(+Infinity, +Infinity) == true);
assert(Object.is(-Infinity, -Infinity) == true);
assert(Object.is(+Infinity, -Infinity) == false);
assert(Object.is(-Infinity, +Infinity) == false);
assert(Object.is(+Infinity, NaN) == false);
assert(Object.is(NaN, Infinity) == false);
assert(Object.is(NaN, NaN) == true);

assert(Object.is<f32>(+0.0, +0.0) == true);
assert(Object.is<f32>(+0.0, -0.0) == false);
assert(Object.is<f32>(-0.0, +0.0) == false);
assert(Object.is<f32>(+0.0, +1.0) == false);
assert(Object.is<f32>(+1.0, -1.0) == false);
assert(Object.is<f32>(+1.0, +1.0) == true);

assert(Object.is<f32>(+Infinity, +Infinity) == true);
assert(Object.is<f32>(-Infinity, -Infinity) == true);
assert(Object.is<f32>(+Infinity, -Infinity) == false);
assert(Object.is<f32>(-Infinity, +Infinity) == false);
assert(Object.is<f32>(+Infinity, NaN) == false);
assert(Object.is<f32>(NaN, Infinity) == false);
assert(Object.is<f32>(NaN, NaN) == true);

assert(Object.is(-0, 1e-1 * (-1e-308)) == false);
assert(Object.is(-0.0, 1e-1 * (-1e-308)) == false);
assert(Object.is(0, 0.0) == true);

assert(Object.is<i32>(+0, -0) == true);
assert(Object.is<i32>(+1, -1) == false);

assert(Object.is(true, true) == true);
assert(Object.is(true, false) == false);
assert(Object.is(false, false) == true);

assert(Object.is("a", "a") == true);
assert(Object.is("a", "b") == false);
assert(Object.is("a", "ab") == false);

assert(Object.is<string | null>(null, null) == true);
assert(Object.is<string | null>("", null) == false);
assert(Object.is<string | null>(null, "") == false);
