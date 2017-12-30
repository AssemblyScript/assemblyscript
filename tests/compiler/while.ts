var n = 10;
var m = 0;

while (n) {
  n--;
  m++;
}
assert(n == 0);
assert(m == 10);

n = 10;
m = 0;
var o = 0;
while (n) {
  n--;
  m++;
  while (n) {
    n--;
    o++;
  }
  assert(n == 0);
  assert(o == 9);
}
assert(n == 0);
assert(m == 1);
assert(o == 9);

n = 1;
m = 0;
while (n-- && ++m);
assert(n == -1);
assert(m == 1);
