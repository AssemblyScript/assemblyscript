export function fn(n: i32): i32 {
  return x.f(n);
}

class A {
  f(a: i32): i32 {
    return a + 1;
  }
}
class B extends A {
  f(a: i32): i32 {
    return super.f(a) + 10;
  }
}
class C extends B {
  f(a: i32): i32 {
    return super.f(a) + 100;
  }
}
class D extends C {}

let x: A = new D();

assert(fn(0) == 111);
