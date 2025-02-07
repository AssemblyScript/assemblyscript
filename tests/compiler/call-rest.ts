// direct call test
function fn(a: i32, b: i32 = 0, ...rest: i32[]): i32 {
  let sum = a + b;
  for (let i = 0, k = rest.length; i < k; ++i) {
    sum += rest[i];
  }
  return sum;
}
assert(fn(1) == 1);
assert(fn(1, 2) == 3);
assert(fn(1, 2, 3) == 6);
assert(fn(1, 2, 3, 4, 5) == 15);

// indirect call test
var indirect = fn;
assert(indirect(1) == 1);
assert(indirect(1, 2) == 3);
assert(indirect(1, 2, 3) == 6);
assert(indirect(1, 2, 3, 4, 5) == 15);

// constructor test
class Foo{
  values: i32[];

  constructor(a: i32, b: i32 = 0, ...rest: i32[]) {
    this.values = [a, b];
    for (let i = 0, k = rest.length; i < k; ++i) {
      this.values.push(rest[i]);
    }
  }

  sum(): i32 {
    let sum = 0;
    for (let i = 0, k = this.values.length; i < k; ++i) {
      sum += this.values[i];
    }
    return sum;
  }
}
assert(new Foo(1).sum() == 1);
assert(new Foo(1, 2).sum() == 3);
assert(new Foo(1, 2, 3).sum() == 6);
assert(new Foo(1, 2, 3, 4, 5).sum() == 15);

// generic test
function count<T>(...args: T[]): i32 {
  return args.length;
}
assert(count<i32>() == 0);
assert(count<i32>(1) == 1);
assert(count<i32>(1, 2, 3) == 3);

// inferred generic test
assert(count('a','b','c') == 3);
