const constantGlobal = 1;

export function test(): i32 {
  const constantLocal = 2;
  return constantGlobal + constantLocal;
}

assert(test() == 3);

@inline
function foo(a: i32): i32 {
  if (a == 42) return 1;
  return a < 42 ? 2 : 3;
}

assert(foo(42) == 1);
assert(foo(41) == 2);
assert(foo(43) == 3);
