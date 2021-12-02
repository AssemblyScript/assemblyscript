class A {
  bar: i32;
  constructor(bar: i32) { this.bar = bar; }
}

class B extends A {
  bar: i32 = 0;
  constructor(bar: i32) { super(bar); this.bar = bar; }
}

assert(offsetof<A>("bar") == 0);
assert(offsetof<B>("bar") == 0);

const foo = new B(10);
assert(foo.bar == 10);

// duplicate fields w/ narrowing

class Foo {
  foo: i32;
  constructor(foo: i32) { this.foo = foo; }
}

class Bar extends Foo {
  bar: i32;
  constructor(foo: i32, bar: i32) { super(foo); this.bar = bar; }
}

class A2 {
  bar: Foo;
  constructor(bar: Foo) { this.bar = bar; }
}

class B2 extends A2 {
  bar: Bar;
  constructor(bar: Bar) { super(bar); this.bar = bar; }
}

assert(offsetof<A2>("bar") == 0);
assert(offsetof<B2>("bar") == 0);

const raz = new B2(new Bar(1, 2));
assert(raz.bar.bar == 2);

// make sure visibility checks allow these

class A3 {
  protected protProt: i32;
  protected protPub: i32;
  public pubPub: i32;
}

export class B3 extends A3 {
  protected protProt: i32;
  public protPub: i32;
  public pubPub: i32;
}