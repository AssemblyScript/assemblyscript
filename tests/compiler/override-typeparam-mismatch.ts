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

interface J {
  bar(x: i32): i32;
}

class DD implements J {
  bar<T>(x: i32): i32 {
    return x;
  }
}

let dd:DD = new DD();
dd.bar<i32>(1);

interface I2 {
  foo<T, U>(x: i32): i32;
}

class C2 implements I2 {
  foo<T>(x: i32): i32 {
    return x;
  }
}

new C2().foo<i32>(1);

ERROR("EOF");
