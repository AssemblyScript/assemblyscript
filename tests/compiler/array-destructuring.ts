/* eslint-disable no-empty-pattern */
class Foo {
  @operator("[]")
  __get(index: i32): i32 { 
    return index + 2;
  }
}

class Bar {
  foo: i32;
  bar: i32;
}

{
  let a: i32, b: i32, c: i32, d: i32;
  [a, b, c, , d] = [1, 2, 3, 4, 5];
  assert(a == 1);
  assert(b == 2);
  assert(c == 3);
  assert(d == 5);

  let arr = [5, 4, 3, 2, 1];
  let barr = [a, b, c, , d] = arr;
  assert(a == 5);
  assert(b == 4);
  assert(c == 3);
  assert(d == 1);
  assert(arr == barr);

  [] = arr;
  [,] = arr;

  [a, b] = [b, a];
  assert(a == 4);
  assert(b == 5);

  [a, b] = new Foo();
  assert(a == 2);
  assert(b == 3);

  [arr[2], arr[3]] = arr;
  assert(arr[2] == 5);
  assert(arr[3] == 4);

  const bar = new Bar();

  [bar.foo, bar.bar] = arr;
  assert(bar.foo == 5);
  assert(bar.bar == 4);

  [a, b, c] = [1, 2, 3];
  [[a, b], [c]] = [[c, a], [b, d]];

  assert(a == 3);
  assert(b == 1);
  assert(c == 2);
}
