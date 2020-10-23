import { BLOCK_OVERHEAD } from "rt/common";

// size calculation: ((size + BLOCK_OVERHEAD + AL_MASK) & ~AL_MASK) - BLOCK_OVERHEAD
// BLOCK_OVERHEAD=4 -> 12, 28, 44, ...

var ptr = __alloc(10); // initial allocation
var originalPtr = ptr;

ptr = __realloc(ptr, 12); // just resizes (<= 12)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 13); // resizes checking for grow (<= 28)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 33); // last: resizes checking for grow (<= 44)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 20); // last: shrinks again (<= 28, see *)

var newLastPtr = __alloc(1);
assert(newLastPtr == originalPtr + 28 + BLOCK_OVERHEAD); // *

ptr = __realloc(ptr, 24); // just resizes (<= 28)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 28); // just resizes (<= 28)
assert(ptr == originalPtr);

ptr = __realloc(ptr, 29); // not last anymore: copies
assert(ptr > originalPtr);

__free(ptr); // discards last

assert(__alloc(1) == ptr);
