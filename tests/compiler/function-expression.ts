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

function makeAdder<T>(): (a: T, b: T) => T {
  return function theAdder(a: T, b: T): T {
    return a + b;
  };
}

var i32Adder = makeAdder<i32>();
assert(i32Adder(4, 2) == 6);

var f32Adder = makeAdder<f32>();
assert(f32Adder(1.5, 2.5) == 4.0);

function makeAdderArrow<T>(): (a: T, b: T) => T {
  return (a: T, b: T): T => {
    return a + b;
  };
}

var i8Adder = makeAdderArrow<i8>();
assert(i8Adder(127, 127) == -2);

f1 = f2;
assert(f1(4) == 4);
