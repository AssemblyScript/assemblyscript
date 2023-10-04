class Foo {
  bar: externref = null;
}

class Baz<T> {
  qux: T;
}

new Foo();
new Baz<externref>();

ERROR("EOF");
