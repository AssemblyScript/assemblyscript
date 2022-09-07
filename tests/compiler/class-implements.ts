interface I {
  foo(): i32;
}

interface J {
  foo(): i32;
}

class A implements I {
  foo(): i32 { return 1; }
}

var a = new A();
assert(a.foo() == 1);

class B {
}

class C extends B implements I {
  foo(): i32 { return 2; }
}

var c = new C();
assert(c.foo() == 2);

class D implements I, J {
  foo(): i32 { return 3; }
}

let d = new D();
assert(d.foo() == 3);

interface M {
  a: i32;
}

interface N {
  a: i32;
}

class E implements M, N {
  a: i32 = 4;
}

let e = new E();
assert(e.a == 4);
