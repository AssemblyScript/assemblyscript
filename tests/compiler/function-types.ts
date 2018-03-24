type Adder<T> = (a: T, b: T) => T;

function makeAdder<T>(): Adder<T> {
  return (a: T, b: T): T => {
    return a + b;
  };
}

var i32Adder = makeAdder<i32>();

assert(i32Adder(1, 2) == 3);

var i64Adder = makeAdder<i64>();

assert(i64Adder(10, 20) == 30);

assert(makeAdder<f64>()(1.5, 2.5) == 4.0);

function doAddWithFn<T>(a: T, b: T, fn: (a: T, b: T) => T): T {
  return fn(a, b);
}

assert(doAddWithFn<i32>(2, 3, i32Adder) == 5);

function doAdd<T>(a: T, b: T): T {
  return makeAdder<T>()(a, b);
}

assert(doAdd<i32>(3, 4) == 7);

function addI32(a: i32, b: i32): i32 {
  return a + b;
}

assert(doAddWithFn<i32>(4, 5, addI32) == 9);

function makeAndAdd<T>(a: T, b: T, adder: Adder<T> = makeAdder<T>()): T {
  return adder(a, b);
}

assert(makeAndAdd<i32>(1, 2) == 3);
assert(makeAndAdd<i32>(1, 2, makeAdder<i32>()) == 3);
