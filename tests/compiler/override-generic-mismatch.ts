// Non-generic method overriding generic method
class A {
  foo<T>(x: T): void {}
}

class B extends A {
  foo(x: i32): void {}
}

let a:A = new B();
a.foo<i32>(1);

// Generic method overriding non-generic method
class C {
  bar(x: i32): void {}
}

class D extends C {
  bar<T>(x: T): void {}
}

let c:C = new D();
c.bar(1);

ERROR("EOF");
