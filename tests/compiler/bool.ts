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
var f0 = <f32>+0.0;
assert(<bool>f0 == false);
var f1 = <f32>-0.0;
assert(<bool>f1 == false);
var f2 = <f32>+NaN;
assert(<bool>f2 == false);
var f3 = <f32>-NaN;
assert(<bool>f3 == false);
var f4 = +f32.MAX_VALUE;
assert(<bool>f4 == true);
var f5 = -f32.MAX_VALUE;
assert(<bool>f5 == true);
var f6 = <f32>+Infinity;
assert(<bool>f6 == true);
var f7 = <f32>-Infinity;
assert(<bool>f7 == true);
var f8 = +f32.MIN_VALUE;
assert(<bool>f8 == true);
var f9 = -f32.MIN_VALUE;
assert(<bool>f9 == true);
var f10 = reinterpret<f32>(1);
assert(<bool>f10 == true);
var f11 = reinterpret<f32>(0x7F800000 - 1);
assert(<bool>f11 == true);
var f12 = reinterpret<f32>(0x7F800000 + 1);
assert(<bool>f12 == false);
var f13 = reinterpret<f32>(0xFF800000 + 1);
assert(<bool>f13 == false);

var F = <f64>2;
assert(<bool>F == true);
var F0 = <f64>+0.0;
assert(<bool>F0 == false);
var F1 = <f64>-0.0;
assert(<bool>F1 == false);
var F2 = <f64>+NaN;
assert(<bool>F2 == false);
var F3 = <f64>-NaN;
assert(<bool>F3 == false);
var F4 = +f64.MAX_VALUE;
assert(<bool>F4 == true);
var F5 = -f64.MAX_VALUE;
assert(<bool>F5 == true);
var F6 = +Infinity;
assert(<bool>F6 == true);
var F7 = -Infinity;
assert(<bool>F7 == true);
var F8 = +f64.MIN_VALUE;
assert(<bool>F8 == true);
var F9 = -f64.MIN_VALUE;
assert(<bool>F9 == true);
var F10 = reinterpret<f64>(1);
assert(<bool>F10 == true);
var F11 = reinterpret<f64>(0x7FF0000000000000 - 1);
assert(<bool>F11 == true);
var F12 = reinterpret<f64>(0x7FF0000000000000 + 1);
assert(<bool>F12 == false);
var F13 = reinterpret<f64>(0xFFF0000000000000 + 1);
assert(<bool>F13 == false);

var uu = <u8>2;
assert(<bool>uu == true);

// small integers are wrapped before testing them, so a value that overflowed to 0 is false
function u8PlusOne(a: u8): bool {
  let c: u8 = a + 1;
  return <bool>c;
}
assert(u8PlusOne(255) == false);
assert(u8PlusOne(0) == true);
function i8PlusOne(a: i8): bool {
  let c: i8 = a + 1;
  return c as bool;
}
assert(i8PlusOne(-1) == false);
assert(i8PlusOne(127) == true);
function u16PlusOne(a: u16): bool {
  let c: u16 = a + 1;
  return bool(c);
}
assert(u16PlusOne(65535) == false);
function i16PlusOne(a: i16): bool {
  let c: i16 = a + 1;
  return <bool>c;
}
assert(i16PlusOne(-1) == false);
