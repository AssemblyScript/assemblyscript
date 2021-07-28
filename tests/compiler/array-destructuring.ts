// Custom array class must take in an i32
class Foo {
  @operator("[]")
  __get(index: i32): i32 { 
    return index + 2;
  }
}


{
  const arr: i32[] = [1, 2, 3];
  const [a, b, c] = arr;
  assert(a == 1);
  assert(b == 2);
  assert(c == 3);
}

{
  const foo = new Foo();
  const [a, b, c] = foo;
  assert(a == 2);
  assert(b == 3);
  assert(c == 4);
}
