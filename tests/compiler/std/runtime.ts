import "allocator/tlsf";
// import { classId, ADJUSTOBLOCK, ALLOCATE, REALLOCATE, REGISTER, DISCARD, HEADER, HEADER_SIZE, HEADER_MAGIC } from "runtime";
import { runtime, HEADER, HEADER_SIZE, HEADER_MAGIC, classId } from "runtime";

@start export function main(): void {}

var register_ref: usize = 0;

@global function __ref_register(ref: usize): void {
  register_ref = ref;
}

var link_ref: usize = 0;
var link_parentRef: usize = 0;

@global function __ref_link(ref: usize, parentRef: usize): void {
  link_ref = ref;
  link_parentRef = parentRef;
}

@global function __ref_unlink(ref: usize, parentRef: usize): void {
}

@global function __ref_collect(): void {
}

class A {}
class B {}
assert(classId<A>() != classId<B>());

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

var ref1 = runtime.allocate(1);
var header1 = changetype<HEADER>(ref1 - HEADER_SIZE);
assert(header1.classId == HEADER_MAGIC);
assert(header1.payloadSize == 1);
assert(ref1 == runtime.reallocate(ref1, barrier1)); // same segment
assert(header1.payloadSize == barrier1);
var ref2 = runtime.reallocate(ref1, barrier2);
assert(ref1 != ref2); // moves
var header2 = changetype<HEADER>(ref2 - HEADER_SIZE);
assert(header2.payloadSize == barrier2);
runtime.discard(ref2);
var ref3 = runtime.allocate(barrier2);
assert(ref1 == ref3); // reuses space of ref1 (free'd in realloc), ref2 (explicitly free'd)

var ref4 = runtime.allocate(barrier1);
runtime.register(ref4, classId<A>()); // should call __gc_register
assert(register_ref == ref4);
var header4 = changetype<HEADER>(register_ref - HEADER_SIZE);
assert(header4.classId == classId<A>());
assert(header4.payloadSize == barrier1);

var ref5 = runtime.allocate(10);
assert(changetype<ArrayBuffer>(ref5).byteLength == 10);
assert(changetype<String>(ref5).length == 5);
