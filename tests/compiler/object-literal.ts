// Should work with managed classes

class Managed {
  bar: i32;
  baz: string;
}

function testManaged(managed: Managed): void {
  assert(managed.bar == 123);
  assert(managed.baz == "hello world");
}

testManaged({
  bar: 123,
  baz: "hello world"
});

// Should work with unmanaged classes

@unmanaged
class Unmanaged {
  bar: i32;
  baz: string;
}

function testUnmanaged(unmanaged: Unmanaged): void {
  assert(unmanaged.bar == 123);
  assert(unmanaged.baz == "hello");
  __release(changetype<usize>(unmanaged.baz));
  __free(changetype<usize>(unmanaged));
}

testUnmanaged({
  bar: 123,
  baz: "hello world".substring(0, 5)
});

// Should work with omitted fields

class OmittedTypes {
  int32: i32;
  uint32: u32;
  int64: i64;
  uint64: u64;
  float32: f32;
  float64: f64;
  int8: i8;
  uint8: u8;
  int16: i16;
  uint16: u16;
  intsize: isize;
  uintsize: usize;
  alias: number;
  isTrue: boolean;
}

function testOmittedTypes(omitted: OmittedTypes): void {
  assert(omitted.int32 == 0);
  assert(omitted.uint32 == 0);
  assert(omitted.int64 == 0);
  assert(omitted.uint64 == 0);
  assert(omitted.float32 == 0);
  assert(omitted.float64 == 0);
  assert(omitted.int8 == 0);
  assert(omitted.uint8 == 0);
  assert(omitted.int16 == 0);
  assert(omitted.uint16 == 0);
  assert(omitted.intsize == 0);
  assert(omitted.uintsize == 0);
  assert(omitted.alias == 0);
  assert(omitted.isTrue == false);
}

testOmittedTypes({});

class MixedOmitted {
  simpleType: i32;
  complexType: string;
  anotherSimpleType: f64;
}

function testMixedOmitted(omitted: MixedOmitted): void {
  assert(omitted.simpleType == 0);
  assert(omitted.complexType == "test");
  assert(omitted.anotherSimpleType == 0);
}

testMixedOmitted({
  simpleType: 0,
  complexType: "test"
});

// Test omitted fields
class OmittedFoo {
  bar: string = "bar";
  baz: string | null = "baz";
  quux: string | null;
  quuz: string | null;
  corge: string | null;
  grault: string | null;
  garply: string | null;
  waldo: string | null;
  fred: i32;
  qux: i32 = -1;
}

function testOmittedFoo(foo: OmittedFoo): void {
  assert(foo.bar == "bar");
  assert(foo.baz == "baz");
  assert(foo.quux == null);
  assert(foo.quuz == null);
  assert(foo.corge == null);
  assert(foo.grault == null);
  assert(foo.garply == null);
  assert(foo.waldo == null);
  assert(foo.fred == 0);
  assert(foo.qux == -1);
}

testOmittedFoo({});
