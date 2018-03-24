function opt(a: i32, b: i32 = -1, c: i32 = -2): i32 {
  return a + b + c;
}
assert(opt(3) == 0); // calls the trampoline with 0of2
assert(opt(3, 4) == 5); // calls the trampoline with 1of2
assert(opt(3, 4, 5) == 12); // calls the function directly

var optIndirect = opt;
assert(optIndirect(3) == 0); // calls the trampoline indirectly with 0of2
assert(optIndirect(3, 4) == 5); // calls the trampoline indirectly with 1of2
assert(optIndirect(3, 4, 5) == 12); // calls the trampoline indirectly with 2of2
