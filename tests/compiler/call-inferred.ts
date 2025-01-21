function foo<T>(a: T): T {
  return a;
}

assert(foo(42) == 42);
assert(foo(42.0) == 42);
assert(foo(<f32>42.0) == 42);

function bar<T>(a: T = <f32>42.0): T {
  return a;
}

assert(bar() == 42);

class Foo<T> {
  constructor(public value: T) {}
  static create<T>(value: T): Foo<T> {
    return new Foo(value);
  }
}

assert(new Foo(42).value == 42);
assert(Foo.create(42).value == 42);

class Bar {
  doSomething<T>(a: T): T {
    return a;
  }
}

assert(new Bar().doSomething(42) == 42);

class Baz<T> extends Foo<T> {}
assert(new Baz(42).value == 42);

// TODO: this'd require return type inference, i.e., omitted return type
// function baz<T>(a: i32): T {
//   return a;
// }
// baz(42);

// TODO: this'd ideally be inferred by matching contextualType, avoiding conversions
// function baz<T>(): T {
//   return 1;
// }
// baz(42);
