/**
 * Arena Memory Allocator
 *
 * Provides a `memory.reset` function to reset the heap to its initial state. A user has to make
 * sure that there are no more references to cleared memory afterwards. Always aligns to 8 bytes.
 *
 * @module std/assembly/allocator/arena
 *//***/

import { AL_MASK, MAX_SIZE_32 } from "../internal/allocator";

var startOffset: usize = (HEAP_BASE + AL_MASK) & ~AL_MASK;
var offset: usize = startOffset;

// Memory allocator interface

@global export function __memory_allocate(size: usize): usize {
  if (size > MAX_SIZE_32) unreachable();
  var ptr = offset;
  var newPtr = (ptr + max<usize>(size, 1) + AL_MASK) & ~AL_MASK;
  var pagesBefore = memory.size();
  if (newPtr > <usize>pagesBefore << 16) {
    let pagesNeeded = ((newPtr - ptr + 0xffff) & ~0xffff) >>> 16;
    let pagesWanted = max(pagesBefore, pagesNeeded); // double memory
    if (memory.grow(pagesWanted) < 0) {
      if (memory.grow(pagesNeeded) < 0) {
        unreachable(); // out of memory
      }
    }
  }
  offset = newPtr;
  return ptr;
}

@global export function __memory_free(ptr: usize): void { /* nop */ }

@global export function __memory_reset(): void {
  offset = startOffset;
}
