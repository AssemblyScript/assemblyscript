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

let g: D = new F();
assert(g.foo() == 4);

let h: I = new F();
assert(h.foo() == 4);

// can implement fields with fields or properties
interface I2 {
  foo: i32;
}
class A2 implements I2 {
  foo: i32 = 1; // implement
}
class A3 extends A2 {
  foo: i32 = 5; // redeclare
}
class A4 extends A2 implements I2 {
  foo: i32 = 7; // both
}
class B2 implements I2 {
  // implement
  private _foo: i32 = 3;
  get foo(): i32 { return this._foo; }
  set foo(foo: i32) { this._foo = foo; }
}
class B3 extends B2 {
  // override
  private _foo2: i32 = 9;
  get foo(): i32 { return this._foo2; }
  set foo(foo: i32) { this._foo2 = foo; }
}
class B4 extends B2 implements I2 {
  // both
  private _foo2: i32 = 11;
  get foo(): i32 { return this._foo2; }
  set foo(foo: i32) { this._foo2 = foo; }
}
{
  let a2 = new A2();
  assert(a2.foo == 1);
  assert((<I2>a2).foo == 1);
  (<I2>a2).foo = 2;
  assert(a2.foo == 2);
  assert((<I2>a2).foo == 2);
}
{
  let a3 = new A3();
  assert(a3.foo == 5);
  assert((<I2>a3).foo == 5);
  (<I2>a3).foo = 6;
  assert(a3.foo == 6);
  assert((<I2>a3).foo == 6);
}
{
  let a4 = new A4();
  assert(a4.foo == 7);
  assert((<I2>a4).foo == 7);
  (<I2>a4).foo = 8;
  assert(a4.foo == 8);
  assert((<I2>a4).foo == 8);
}
{
  let b2 = new B2();
  assert(b2.foo == 3);
  assert((<I2>b2).foo == 3);
  (<I2>b2).foo = 4;
  assert(b2.foo == 4);
  assert((<I2>b2).foo == 4);
}
{
  let b3 = new B3();
  assert(b3.foo == 9);
  assert((<I2>b3).foo == 9);
  (<I2>b3).foo = 10;
  assert(b3.foo == 10);
  assert((<I2>b3).foo == 10);
}
{
  let b4 = new B4();
  assert(b4.foo == 11);
  assert((<I2>b4).foo == 11);
  (<I2>b4).foo = 12;
  assert(b4.foo == 12);
  assert((<I2>b4).foo == 12);
}
