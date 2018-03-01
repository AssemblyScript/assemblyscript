function test(a: u32, b: u32): void {

  // signed
  assert(<i8>(a + b) == <i8>(<i8>a + <i8>b));
  assert(<i8>(a - b) == <i8>(<i8>a - <i8>b));
  assert(<i8>(a * b) == <i8>(<i8>a * <i8>b));
  assert(<i8>(a & b) == <i8>(<i8>a & <i8>b));
  assert(<i8>(a | b) == <i8>(<i8>a | <i8>b));
  assert(<i8>(a ^ b) == <i8>(<i8>a ^ <i8>b));
  assert(<i8>(a << b) == <i8>(<i8>a << <i8>b));

  // unsigned
  assert(<u8>(a + b) == <u8>(<u8>a + <u8>b));
  assert(<u8>(a - b) == <u8>(<u8>a - <u8>b));
  assert(<u8>(a * b) == <u8>(<u8>a * <u8>b));
  assert(<u8>(a & b) == <u8>(<u8>a & <u8>b));
  assert(<u8>(a | b) == <u8>(<u8>a | <u8>b));
  assert(<u8>(a ^ b) == <u8>(<u8>a ^ <u8>b));
  assert(<u8>(a << b) == <u8>(<u8>a << <u8>b));
}

// signed
test(0, i8.MAX_VALUE);
test(i8.MAX_VALUE, 0);

test(1, i8.MAX_VALUE);
test(i8.MAX_VALUE, 1);

test(-1, i8.MAX_VALUE);
test(i8.MAX_VALUE, -1);

test(0, i8.MIN_VALUE);
test(i8.MIN_VALUE, 0);

test(1, i8.MIN_VALUE);
test(i8.MIN_VALUE, 1);

test(-1, i8.MIN_VALUE);
test(i8.MIN_VALUE, -1);

test(i8.MAX_VALUE, i8.MAX_VALUE);
test(i8.MIN_VALUE, i8.MIN_VALUE);
test(i8.MAX_VALUE, i8.MIN_VALUE);
test(i8.MIN_VALUE, i8.MAX_VALUE);

// unsigned
test(0, u8.MAX_VALUE);
test(u8.MAX_VALUE, 0);

test(1, u8.MAX_VALUE);
test(u8.MAX_VALUE, 1);

test(-1, u8.MAX_VALUE);
test(u8.MAX_VALUE, -1);

test(u8.MAX_VALUE, u8.MAX_VALUE);

// various
for (var i: i32 = i8.MIN_VALUE; i <= <i32>u8.MAX_VALUE; ++i) {
  test(0, i);
  test(1, i);
  test(-1, i);
  test(i8.MIN_VALUE, i);
  test(i8.MAX_VALUE, i);
  test(u8.MAX_VALUE, i);
  test(i16.MIN_VALUE, i);
  test(i16.MAX_VALUE, i);
  test(u16.MAX_VALUE, i);
  test(i32.MAX_VALUE, i);
  test(i32.MIN_VALUE, i);
  test(u32.MAX_VALUE, i);
}

// visually
var si: i8;

si = 127 + 127 + 1;   // sign-extends exactly once
assert(si == -1);

si = 127 - 1 - 127;   // sign-extends exactly once
assert(si == -1);

si = 127 * 2;         // sign-extends exactly once
assert(si == -2);

si = -(-128);         // -MIN_VALUE == MIN_VALUE
assert(si == -128);

si = -128 * -1;       // -MIN_VALUE == MIN_VALUE
assert(si == -128);

si = 127 / -1;
assert(si == -127);

si = -128 / -1;       // -MIN_VALUE == MIN_VALUE
assert(si == -128);

si = 127 % 2;
assert(si == 1);

si = 1 % 127;
assert(si == 1);

si = -128 % 2;
assert(si == 0);

si = 1 % -128;
assert(si == 1);

var ui: u8;

ui = 255 + 255 + 1;
assert(ui == 255);

ui = 255 - 1 - 255;
assert(ui == 255);

ui = 255 * 2;
assert(ui == 254);

ui = 255 * 255;
assert(ui == 1);

ui = 255 / 255;
assert(ui == 1);

ui = 255 % 2;
assert(ui == 1);

ui = 255 % 255;
assert(ui == 0);
