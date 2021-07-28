// Custom array class must take in an i32
class Foo {
  @operator("[]")
  __get(index: i32): i32 { 
    return index + 2;
  }
}


{
  const arr: i32[] = [1, 2, 3, 4, 5];
  const [a, b, c, , d] = arr;
  assert(a == 1);
  assert(b == 2);
  assert(c == 3);
  assert(d == 5);
}

{
  const [a, b, c, , d] = new Foo();
  assert(a == 2);
  assert(b == 3);
  assert(c == 4);
  assert(d == 6);
}
