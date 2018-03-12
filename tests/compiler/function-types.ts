type Adder<T> = (a: T, b: T) => T;

function makeAdder<T>(): Adder<T> {
  return (a: T, b: T): T => {
    return a + b;
  };
}

var i32Adder = makeAdder<i32>();
i32Adder(1, 2);

var i64Adder = makeAdder<i64>();
i64Adder(1, 2);

makeAdder<f64>()(1, 2);
