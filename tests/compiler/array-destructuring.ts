
{
  let a: i32, b: i32, c: i32, d: i32;
  [a, b, c, , d] = [1, 2, 3, 4, 5];
  assert(a == 1);
  assert(b == 2);
  assert(c == 3);
  assert(d == 5);
}
