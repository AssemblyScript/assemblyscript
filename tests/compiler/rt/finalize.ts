// Add bookkeeping

var expected = new StaticArray<usize>(10);
var expectedWriteIndex = 0;
var expectedReadIndex = 0;

function expect(ptr: usize): void {
  assert(expectedWriteIndex < expected.length);
  expected[expectedWriteIndex++] = ptr;
}

// Implement finalization hook

// @ts-ignore
@global function __finalize(ptr: usize): void {
  trace("finalize", 1, ptr);
  assert(ptr == unchecked(expected[expectedReadIndex++]));
}

// Simple test with locals becoming finalized immediately

function testSimple(): void {
  var a = new Array<i32>(0);
  expect(changetype<usize>(a.buffer));
  expect(changetype<usize>(a));
}
testSimple();
assert(expectedWriteIndex == 2);
assert(expectedReadIndex == expectedWriteIndex);

// Cyclic test with locals becoming deferred until collected

class Foo {
  bar: Bar | null;
}
class Bar {
  foo: Foo | null;
}

function testCyclic(): void {
  var foo = new Foo();
  var bar = new Bar();
  foo.bar = bar;
  bar.foo = foo;
  expect(changetype<usize>(bar));
  expect(changetype<usize>(foo));
}

testCyclic();
__collect();
assert(expectedWriteIndex == 4);
assert(expectedReadIndex == expectedWriteIndex);

// Unleak bookkeeping, expecting it to become finalized as well

expect(changetype<usize>(expected));
expected = changetype<StaticArray<usize>>(0);
assert(expectedWriteIndex == 5);
assert(expectedReadIndex == expectedWriteIndex);
