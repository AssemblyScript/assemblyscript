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
  let [a, b, c, , d] = new Foo();
  assert(a == 2);
  assert(b == 3);
  assert(c == 4);
  assert(d == 6);

  [, a, b, c, d] = new Foo();
  assert(a == 3);
  assert(b == 4);
  assert(c == 5);
  assert(d == 6);

  let arr: i32[] = [1, 2, 3, 4];
  let arr2 = [a, b, c, d] = arr;
  assert(arr2[0] == a);
  assert(arr2[1] == b);
  assert(arr2[2] == c);
  assert(arr2[3] == d);

  [a, b] = [b, a];
  assert(a == 2);
  assert(b == 1);

  const [] = arr;
  const [,] = arr;
  [] = arr;
  [,] = arr;

  let tarr = new Int32Array(4);
  tarr[0] = a;
  tarr[1] = b;
  tarr[2] = c;
  tarr[3] = d;

  let [e, f, g, h] = tarr;
  assert(e == a);
  assert(f == b);
  assert(g == c);
  assert(h == d);

  [a, b, c, d] = StaticArray.fromArray([e, f, g, h]);

  assert(a == e);
  assert(b == f);
  assert(c == g);
  assert(d == h);
}
