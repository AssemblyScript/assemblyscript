class Foo {
  bar: i32 = 1
  baz: i32 = 2
}

{
  let { bar, baz } = new Foo();
}