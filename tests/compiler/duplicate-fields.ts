class A {
  bar: i32;
  constructor(bar: i32) { this.bar = bar; }
}

class B extends A {
  bar: i32;
  constructor(bar: i32) { super(bar); this.bar = bar; }
}

assert(sizeof<B>() == 4);
const foo = new B(10);
assert(foo.bar == 10);

// duplicate public fields w/ declare and initializer

class A2 {
  public foo: i32;
  public bar: i32;
  constructor(foo: i32, bar: i32) { this.foo = foo; this.bar = bar; }
}

class B2 extends A2 {
  public foo: i32 = 1;
  declare public bar: i32;
  constructor(bar: i32) { this.bar = bar; }
}

// duplicate fields w/ narrowing

class Foo {
  foo: i32;
  constructor(foo: i32) { this.foo = foo; }
}

class Bar extends Foo {
  bar: i32;
  constructor(foo: i32, bar: i32) { super(foo); this.bar = bar; }
}

class A3 {
  bar: Foo;
  constructor(bar: Foo) { this.bar = bar; }
}

class B3 extends A3 {
  bar: Bar;
  constructor(bar: Bar) { super(bar); this.bar = bar; }
}


assert(sizeof<B3>() == sizeof<Bar>());
const baz = new B3(new Bar(1, 2));
assert(baz.bar.bar);