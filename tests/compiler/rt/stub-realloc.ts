import { BLOCK_OVERHEAD } from "rt/common";

var ptr = __alloc(10, 0); // initial allocation
var originalPtr = ptr;

ptr = __realloc(ptr, 12); // just resizes (<= 16)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 16); // just resizes (<= 16)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 33); // last: resizes checking for grow (<= 48)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 20); // last: shrinks again (<= 32, see *)

var newLastPtr = __alloc(1, 0);
assert(newLastPtr == originalPtr + 32 + BLOCK_OVERHEAD); // *

ptr = __realloc(ptr, 24); // just resizes (<= 32)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 32); // just resizes (<= 32)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 33); // not last anymore: copies
assert(ptr > originalPtr);

__free(ptr); // discards last
assert(__alloc(1, 0) == ptr);
