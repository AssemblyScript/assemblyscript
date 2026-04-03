interface I {
  foo(x: i32): i32;
}

class CC implements I {
  foo<T>(x: i32): i32 {
    return x;
  }
}

let c:I = new CC();
c.foo(1);
