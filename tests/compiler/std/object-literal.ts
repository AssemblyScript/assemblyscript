class Foo {
  bar: i32;
  baz: string;
}

function bar(foo: Foo): void {
  assert(foo.bar == 1);
  assert(foo.baz == "hello world");
}

bar({ bar: 1, baz: "hello world" });

class Foo2 {
  bar: i32;
  constructor() {
    this.bar = 1;
  }
  test(): void {
    assert(this.bar == 3);
  }
}

function bar2(foo: Foo2): void {
  assert(foo.bar == 2);
}

bar2(<Foo2>{ bar: 2 });

(<Foo2>{ bar: 3 }).test();


// Test omitted fields
class OmittedFoo {
  bar: string | null;
  baz: string | null;
  quux: string | null;
  quuz: string | null; 
  corge: string | null;
  grault: string | null;
  garply: string | null; 
  // waldo: string | null = 'Yo';
  // fred: i32;
  // qux: i32 = -1;
}

function testOmit(foo: OmittedFoo): void {
  assert(changetype<usize>(foo.baz) == 0);
  assert(changetype<usize>(foo.baz) == 0);
  assert(changetype<usize>(foo.quux) == 0);
  assert(changetype<usize>(foo.quuz) == 0);
  assert(changetype<usize>(foo.corge) == 0);
  assert(changetype<usize>(foo.grault) == 0);
  assert(changetype<usize>(foo.garply) == 0);
  // assert(foo.waldo == 'Yo');
  // assert(foo.fred == 0);
  // assert(foo.qux == -1);
}

testOmit({});

