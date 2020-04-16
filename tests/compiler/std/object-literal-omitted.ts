// Test omitted fields
class OmittedFoo {
  bar: string = 'bar';
  baz: string | null = 'baz';
  quux: string | null;
  quuz: string | null; 
  corge: string | null;
  grault: string | null;
  garply: string | null; 
  waldo: string | null;
  fred: i32;
  qux: i32 = -1;
}

function testOmit(foo: OmittedFoo): void {
  assert(foo.bar == 'bar');
  assert(foo.baz == 'baz');
  assert(changetype<usize>(foo.baz) == 0);
  assert(changetype<usize>(foo.quux) == 0);
  assert(changetype<usize>(foo.quuz) == 0);
  assert(changetype<usize>(foo.corge) == 0);
  assert(changetype<usize>(foo.grault) == 0);
  assert(changetype<usize>(foo.garply) == 0);
  assert(changetype<usize>(foo.waldo) == 0);
  assert(foo.fred == 0);
  assert(foo.qux == -1);
}

// TODO: Test this one omitted implementation is complete
// testOmit({});

