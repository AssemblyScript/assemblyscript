import "allocator/arena";

// basic class bindings

// variable
var a = 1;
assert(a.toString() == "1");
// literal
assert(2..toString() == "2.0");
assert((3).toString() == "3");
// unary prefix
assert((-5).toString() == "-5");
assert((+4).toString() == "4");
assert((++a).toString() == "2");
assert((--a).toString() == "1");
assert((!0).toString() == "true");
assert((!1).toString() == "false");
// assert((~a).toString() == "-2");
// unary postfix
assert((a++).toString() == "1");
assert((a--).toString() == "2");

// float

assert(isNaN<f32>(F32.NaN));

assert(F32.isSafeInteger(f32.MIN_SAFE_INTEGER - 1) == false);
assert(F32.isSafeInteger(f32.MIN_SAFE_INTEGER) == true);
assert(F32.isSafeInteger(+0.0) == true);
assert(F32.isSafeInteger(-0.0) == true);
assert(F32.isSafeInteger(NaN) == false);
assert(F32.isSafeInteger(Infinity) == false);
assert(F32.isSafeInteger(f32.MAX_SAFE_INTEGER) == true);
assert(F32.isSafeInteger(f32.MAX_SAFE_INTEGER + 1) == false);
assert(F32.isSafeInteger(0.5) == false);
assert(F32.isInteger(+0.0) == true);
assert(F32.isInteger(-0.0) == true);
assert(F32.isInteger(NaN) == false);
assert(F32.isInteger(Infinity) == false);
assert(F32.isInteger(f32.EPSILON) == false);
assert(F32.isInteger(+1.0) == true);
assert(F32.isInteger(-1.0) == true);
assert(F32.isInteger(f32.MIN_SAFE_INTEGER) == true);
assert(F32.isInteger(f32.MAX_SAFE_INTEGER) == true);
assert(F32.isInteger(+0.5) == false);
assert(F32.isInteger(-1.5) == false);

assert(isNaN<f64>(F64.NaN));

assert(F64.isSafeInteger(f64.MIN_SAFE_INTEGER - 1) == false);
assert(F64.isSafeInteger(f64.MIN_SAFE_INTEGER) == true);
assert(F64.isSafeInteger(+0.0) == true);
assert(F64.isSafeInteger(-0.0) == true);
assert(F64.isSafeInteger(NaN) == false);
assert(F64.isSafeInteger(Infinity) == false);
assert(F64.isSafeInteger(f64.MAX_SAFE_INTEGER) == true);
assert(F64.isSafeInteger(f64.MAX_SAFE_INTEGER + 1) == false);
assert(F64.isSafeInteger(0.5) == false);
assert(F64.isInteger(+0.0) == true);
assert(F64.isInteger(-0.0) == true);
assert(F64.isInteger(NaN) == false);
assert(F64.isInteger(Infinity) == false);
assert(F64.isInteger(f64.EPSILON) == false);
assert(F64.isInteger(+1.0) == true);
assert(F64.isInteger(-1.0) == true);
assert(F64.isInteger(f64.MIN_SAFE_INTEGER) == true);
assert(F64.isInteger(f64.MAX_SAFE_INTEGER) == true);
assert(F64.isInteger(+0.5) == false);
assert(F64.isInteger(-1.5) == false);
