var n = 10;
var m = 0;
do {
  n--;
  m++;
} while (n);
assert(n == 0);
assert(m == 10);

n = 10;
do; while(n--);
assert(n == -1);

n = 10;
m = 0;
var o = 0;
do {
  n--;
  m++;
  do {
    n--;
    o++;
  } while (n);
  assert(n == 0);
  assert(o == 9);
} while (n);
assert(n == 0);
assert(m == 1);
assert(o == 9);
