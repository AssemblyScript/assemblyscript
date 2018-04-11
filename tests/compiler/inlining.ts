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

@inline
function func_ii_opt(a: i32 = 0): i32 {
  return a;
}

@inline
function func_ii_loc(a: i32): i32 {
  var b = a;
  var e: i32;
  if (true) {
    let c = b;
    let d = c;
    e = d + 1;
  }
  return e;
}

@inline
function func_iv(a: i32): void {
}

@inline
function func_fe(): (a: i32) => i32 {
   return (a: i32): i32 => a;
}


class Foo {
  @inline
  static method_static(a: i32, b: i32 = 2): i32 {
    return a + b;
  }
  @inline
  method_this(a: i32, b: i32 = 3): Foo {
    return this;
  }
}

function test_funcs(): void {
  var a: f32 = -1, b: f64 = -2;
  assert(func_ii(42) == 1);
  assert(func_ii(41) == 2);
  assert(func_ii(43) == 3);
  assert(func_ii_opt() == 0);
  assert(func_ii_opt(1) == 1);
  assert(func_ii_loc(2) == 3);
  assert(func_ii_loc(3) == 4);
  func_iv(0);
  assert(func_fe()(2) == 2);
  assert(Foo.method_static(42) == 44);
  var foo = changetype<Foo>(123);
  assert(changetype<usize>(foo.method_this(43)) == 123);
}

test_funcs();
