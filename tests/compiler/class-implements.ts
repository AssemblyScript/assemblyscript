interface I {
  foo(): i32;
}

export class A implements I {
  foo(): i32 { return 1; }
}

var a = new A();
assert(a.foo() === 1);

class B {
}

export class C extends B implements I {
  foo(): i32 { return 2; }
}

var c = new C();
assert(c.foo() === 2);
