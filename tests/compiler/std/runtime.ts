import "allocator/tlsf";
import { CLASSID, ADJUSTOBLOCK, ALLOCATE, REALLOCATE, REGISTER, DISCARD, HEADER, HEADER_SIZE, HEADER_MAGIC } from "runtime";

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
assert(CLASSID<A>() != CLASSID<B>());

function isPowerOf2(x: i32): bool {
  return x != 0 && (x & (x - 1)) == 0;
}

assert(ADJUSTOBLOCK(0) > 0);
for (let i = 0; i < 9000; ++i) {
  assert(isPowerOf2(ADJUSTOBLOCK(i)));
}

var barrier1 = ADJUSTOBLOCK(0);
var barrier2 = barrier1 + 1;
while (ADJUSTOBLOCK(barrier2 + 1) == ADJUSTOBLOCK(barrier2)) ++barrier2;
var barrier3 = barrier2 + 1;
while (ADJUSTOBLOCK(barrier3 + 1) == ADJUSTOBLOCK(barrier3)) ++barrier3;

trace("barrier1", 1, barrier1);
trace("barrier2", 1, barrier2);
trace("barrier3", 1, barrier3);

var ref1 = ALLOCATE(1);
var header1 = changetype<HEADER>(ref1 - HEADER_SIZE);
assert(header1.classId == HEADER_MAGIC);
assert(header1.payloadSize == 1);
assert(ref1 == REALLOCATE(ref1, barrier1)); // same segment
assert(header1.payloadSize == barrier1);
var ref2 = REALLOCATE(ref1, barrier2);
assert(ref1 != ref2); // moves
var header2 = changetype<HEADER>(ref2 - HEADER_SIZE);
assert(header2.payloadSize == barrier2);
DISCARD(ref2);
var ref3 = ALLOCATE(barrier2);
assert(ref1 == ref3); // reuses space of ref1 (free'd in realloc), ref2 (explicitly free'd)

var ref4 = ALLOCATE(barrier1);
REGISTER<A>(ref4); // should call __gc_register
assert(register_ref == ref4);
var header4 = changetype<HEADER>(register_ref - HEADER_SIZE);
assert(header4.classId == CLASSID<A>());
assert(header4.payloadSize == barrier1);

var ref5 = ALLOCATE(10);
assert(changetype<ArrayBuffer>(ref5).byteLength == 10);
assert(changetype<String>(ref5).length == 5);
