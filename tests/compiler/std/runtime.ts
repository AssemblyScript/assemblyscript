import "allocator/tlsf";

var register_ref: usize = 0;

@global namespace gc {
  export function register(ref: usize): void {
    register_ref = ref;
  }
  export function link(ref: usize, parentRef: usize): void {
  }
  export function collect(): void {
  }
}

import {
  HEADER,
  HEADER_SIZE,
  HEADER_MAGIC,
  ADJUST,
  ALLOC,
  REALLOC,
  FREE,
  REGISTER,
  ArrayBufferBase,
  StringBase
} from "runtime";

class A {}
class B {}
assert(gc.classId<A>() != gc.classId<B>());

function isPowerOf2(x: i32): bool {
  return x != 0 && (x & (x - 1)) == 0;
}

assert(ADJUST(0) > 0);
for (let i = 0; i < 9000; ++i) {
  assert(isPowerOf2(ADJUST(i)));
}

var barrier1 = ADJUST(0);
var barrier2 = barrier1 + 1;
while (ADJUST(barrier2 + 1) == ADJUST(barrier2)) ++barrier2;
var barrier3 = barrier2 + 1;
while (ADJUST(barrier3 + 1) == ADJUST(barrier3)) ++barrier3;

trace("barrier1", 1, barrier1);
trace("barrier2", 1, barrier2);
trace("barrier3", 1, barrier3);

var ref1 = ALLOC(1);
var header1 = changetype<HEADER>(ref1 - HEADER_SIZE);
assert(header1.classId == HEADER_MAGIC);
assert(header1.payloadSize == 1);
assert(ref1 == REALLOC(ref1, barrier1)); // same segment
assert(header1.payloadSize == barrier1);
var ref2 = REALLOC(ref1, barrier2);
assert(ref1 != ref2); // moves
var header2 = changetype<HEADER>(ref2 - HEADER_SIZE);
assert(header2.payloadSize == barrier2);
FREE(ref2);
var ref3 = ALLOC(barrier2);
assert(ref1 == ref3); // reuses space of ref1 (free'd in realloc), ref2 (explicitly free'd)

var ref4 = ALLOC(barrier1);
REGISTER<A>(ref4); // should call __REGISTER_IMPL
assert(register_ref == ref4);
var header4 = changetype<HEADER>(register_ref - HEADER_SIZE);
assert(header4.classId == gc.classId<A>());
assert(header4.payloadSize == barrier1);

var ref5 = ALLOC(10);
assert(changetype<ArrayBufferBase>(ref5).byteLength == 10);
assert(changetype<StringBase>(ref5).length == 5);
