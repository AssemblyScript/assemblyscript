import "allocator/tlsf";

var register_ref: usize = 0;

@global function __gc_register(ref: usize): void {
  register_ref = ref;
}

var link_ref: usize = 0;
var link_parentRef: usize = 0;

@global function __gc_link(ref: usize, parentRef: usize): void {
  link_ref = ref;
  link_parentRef = parentRef;
}

@global function __gc_collect(): void {
}

class A {}
class B {}
assert(gc.classId<A>() != gc.classId<B>());

function isPowerOf2(x: i32): bool {
  return x != 0 && (x & (x - 1)) == 0;
}

assert(runtime.adjust(0) > 0);
for (let i = 0; i < 9000; ++i) {
  assert(isPowerOf2(runtime.adjust(i)));
}

var barrier1 = runtime.adjust(0);
var barrier2 = barrier1 + 1;
while (runtime.adjust(barrier2 + 1) == runtime.adjust(barrier2)) ++barrier2;
var barrier3 = barrier2 + 1;
while (runtime.adjust(barrier3 + 1) == runtime.adjust(barrier3)) ++barrier3;

trace("barrier1", 1, barrier1);
trace("barrier2", 1, barrier2);
trace("barrier3", 1, barrier3);

var ref1 = runtime.alloc(1);
var header1 = changetype<runtime.Header>(ref1 - runtime.Header.SIZE);
assert(header1.classId == runtime.Header.MAGIC);
assert(header1.payloadSize == 1);
assert(ref1 == runtime.realloc(ref1, barrier1)); // same segment
assert(header1.payloadSize == barrier1);
var ref2 = runtime.realloc(ref1, barrier2);
assert(ref1 != ref2); // moves
var header2 = changetype<runtime.Header>(ref2 - runtime.Header.SIZE);
assert(header2.payloadSize == barrier2);
runtime.freeUnregistered(ref2);
var ref3 = runtime.alloc(barrier2);
assert(ref1 == ref3); // reuses space of ref1 (free'd in realloc), ref2 (explicitly free'd)

var ref4 = runtime.alloc(barrier1);
gc.register<A>(ref4); // should call __gc_register
assert(register_ref == ref4);
var header4 = changetype<runtime.Header>(register_ref - runtime.Header.SIZE);
assert(header4.classId == gc.classId<A>());
assert(header4.payloadSize == barrier1);

var ref5 = runtime.alloc(10);
assert(changetype<ArrayBuffer>(ref5).byteLength == 10);
assert(changetype<String>(ref5).length == 5);
