class Foo {
  @virtual
  baz(): i32 {
    return 42;
  }

  foo(): string  {
    return "In Foo";
  }
}

class Bar extends Foo {
  @virtual
  baz(): i32 {
    return 84;
  }

  @virtual
  foo(): string {
    return "In Bar";
  }
}

class Baa extends Bar {
  baz(): i32 {
    return 168;
  }

  foo(): string {
    return "In Baa";
  }
}

export function test(foo: Foo, e1: i32): void {
  assert(foo.baz() == e1);
  assert(foo.foo() == "In Foo");
}

const f = new Foo();
const b = new Bar();
const bb = new Baa();

test(f, 42); // calls Foo's baz
test(b, 84); // calls Bar's baz
test(bb, 168);

export function testBar(foo: Bar, e1: i32, e2: string): void {
  //@ts-ignore
  assert(foo.baz() == e1);
  assert(foo.foo() == e2);
}

testBar(b, 84, "In Bar"); // calls Bar's baz
testBar(bb, 168, "In Baa");
