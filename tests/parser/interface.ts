interface Foo {
  bar(): void;
  baz: i32;
  readonly baz2: f64;
}

interface Boo {
  bar(): void,
  baz: i32,
  readonly baz2: f64,
}

interface Invalid {
  // ERROR 1206: "Decorators are not valid here."
  @final baz: i32;
  declare baz2: f64;
}
