interface Foo {
  bar(): void;
  baz: i32;
  readonly baz2: f64;
}
interface Boo {
  bar(): void;
  baz: i32;
  readonly baz2: f64;
}
interface Invalid {
  @final
  baz: i32;
  baz2: f64;
}
// ERROR 1206: "Decorators are not valid here." in interface.ts(15,3+6)
// ERROR 1042: "'declare' modifier cannot be used here." in interface.ts(16,3+7)
