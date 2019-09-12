var i = <i32>2;
assert(<bool>i == true);
var I = <i64>2;
assert(<bool>I == true);
var u = <u32>2;
assert(<bool>u == true);
var U = <u64>2;
assert(<bool>U == true);
var f = <f32>2;
assert(<bool>f == true);
var F = <f64>2;
assert(<bool>F == true);
var uu = <u8>2;
assert(<bool>uu == true);

function neBools(a: bool, b: bool): bool {
  return a != b;
}
assert(neBools(false, true) == true);

function eqBools(a: bool, b: bool): bool {
  return a == b;
}
assert(neBools(false, true) == true);
assert(eqBools(true, true) == true);
// assert(b >= true);
// assert(b <= true);
// assert(b != true);
