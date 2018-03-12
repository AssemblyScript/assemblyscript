function opt(a: i32, b: i32 = -1, c: i32 = -2): i32 {
  return a + b + c;
}
assert(opt(3) == 0); // calls the trampoline with N=0
assert(opt(3, 4) == 5); // calls the trampoline with N=1
assert(opt(3, 4, 5) == 12); // calls the function directly
