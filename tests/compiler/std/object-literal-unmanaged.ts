@unmanaged
class Foo {
  a: i32;
}

function test(a: i32): i32 {
  var foo: Foo = { a: a };
  return foo.a;
}

assert(test(123) == 123);
