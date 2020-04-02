@unmanaged
class Foo {
  a: i32;
}

var foo: Foo;

function test(a: i32): i32 {
  foo = { a: a };
  return foo.a;
}

assert(test(123) == 123);

__free(changetype<usize>(foo));
