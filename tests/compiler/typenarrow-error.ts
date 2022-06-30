class A {}
class B extends A {
  foo(): void {}
}

let t = new A();
if (t instanceof B) {
  t.foo();
  t = new A();
  t.foo();
}

ERROR("EOF");