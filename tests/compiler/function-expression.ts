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
