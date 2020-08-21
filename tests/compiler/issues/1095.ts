class Foo {
  bar: string | null = "test";
}

function test(foo: Foo): void {
  // Make sure that the temp obtained for `foo` (`.bar` is loaded AND stored)
  // does not conflict with temps obtained and freed in the RHS expression.
  foo.bar = foo.bar!;
}

test(new Foo());
