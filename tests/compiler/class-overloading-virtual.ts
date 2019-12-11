class Foo {
  //@ts-ignore: decorator
  @virtual
  baz(): i32 {
    return 42;
  }
}

class Bar extends Foo {
  baz(): i32 {
    return 84;
  }
}

export function test(foo: Foo, expected: i32): void {
  assert(foo.baz() == expected);
}

const f = new Foo();
const b = new Bar();

test(f, 42); // calls Foo's baz
test(b, 84); // calls Bar's baz

