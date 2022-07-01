
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

  [a, b] = [b, a];
  assert(a == 4);
  assert(b == 5);
}
