var f1 = function(a: i32): i32 {
  return a;
};
assert(f1(1) == 1);

var f2 = (a: i32): i32 => {
  return a;
};
assert(f2(2) == 2);

var f3 = function someName(): void {
};
f3();

var f4 = (): i32 => 1;
assert(f4() == 1);

function testOmitted(fn: (a: i32, b: i32) => i32): i32 {
  return fn(1, 2);
}
assert(testOmitted((a, b) => a + b) == 3);
assert(testOmitted((a) => a) == 1);
assert(testOmitted(() => 42) == 42);
