/**
 * Arena Memory Allocator
 *
 * Provides a `reset_memory` function to reset the heap to its initial state. A user has to make
 * sure that there are no more references to cleared memory afterwards. Always aligns to 8 bytes.
 *
 * @module std/assembly/allocator/arena
 *//***/

import { AL_MASK, MAX_SIZE_32 } from "../internal/allocator";

var startOffset: usize = (HEAP_BASE + AL_MASK) & ~AL_MASK;
var offset: usize = startOffset;

@global
export function allocate_memory(size: usize): usize {
  if (size) {
    if (size > MAX_SIZE_32) unreachable();
    let ptr = offset;
    let newPtr = (ptr + size + AL_MASK) & ~AL_MASK;
    let pagesBefore = current_memory();
    if (newPtr > <usize>pagesBefore << 16) {
      let pagesNeeded = ((newPtr - ptr + 0xffff) & ~0xffff) >>> 16;
      let pagesWanted = max(pagesBefore, pagesNeeded); // double memory
      if (grow_memory(pagesWanted) < 0) {
        if (grow_memory(pagesNeeded) < 0) {
          unreachable(); // out of memory
        }
      }
    }
    offset = newPtr;
    return ptr;
  }
  return 0;
}

@global
export function free_memory(ptr: usize): void {
  // nop
}

@global
export function reset_memory(): void {
  offset = startOffset;
}
