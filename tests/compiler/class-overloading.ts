class Foo {
  baz(): void {}
}
class Bar extends Foo {
  baz(): void {}
}
export function test(foo: Foo): void {
  foo.baz();
}
// FIXME: this results in a call to Foo.baz instead of Bar.baz above.
// ultimately, overloaded functions should implicitly become virtual.
test(changetype<Bar>(0));
