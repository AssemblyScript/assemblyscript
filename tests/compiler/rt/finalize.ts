import { BLOCK, BLOCK_OVERHEAD } from "rt/common";

@global function __finalize(ptr: usize): void {
  var s = changetype<BLOCK>(ptr - BLOCK_OVERHEAD);
  trace("__finalize", 5, ptr, s.mmInfo, s.gcInfo, s.rtId, s.rtSize);
}

function testSimple(): void {
  var a = new Array<i32>(0);
}

trace("testSimple");
testSimple();

class Foo {
  bar: Bar;
}
class Bar {
  foo: Foo;
}

function testCyclic(): void {
  var foo = new Foo();
  var bar = new Bar();
  foo.bar = bar;
  bar.foo = foo;
}

trace("testCyclic");
testCyclic();
__collect();
