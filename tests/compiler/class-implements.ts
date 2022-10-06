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

class E extends D implements I {
}

let e = new E();
assert(e.foo() == 3);

class F extends D implements I {
  foo(): i32 { return 4; }
}

let f = new F();
assert(f.foo() == 4);

let g:D = new F();
assert(g.foo() == 4);

let h:I = new F();
assert(h.foo() == 4);
