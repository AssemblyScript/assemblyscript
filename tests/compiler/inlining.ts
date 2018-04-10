// Constant inlining

const constantGlobal = 1;

export function test(): i32 {
  const constantLocal = 2;
  return constantGlobal + constantLocal;
}

assert(test() == 3);

// Function inlining

@inline
function func_ii(a: i32): i32 {
  if (a == 42) return 1;
  return a < 42 ? 2 : 3;
}

assert(func_ii(42) == 1);
assert(func_ii(41) == 2);
assert(func_ii(43) == 3);

@inline
function func_ii_opt(a: i32 = 0): i32 {
  return a;
}

assert(func_ii_opt() == 0);
assert(func_ii_opt(1) == 1);

@inline
function func_iv(a: i32): void {
}

func_iv(0);

class Foo {
  @inline
  method_this(): Foo {
    return this;
  }
}

var foo = changetype<Foo>(123);
assert(changetype<usize>(foo.method_this()) == 123);
