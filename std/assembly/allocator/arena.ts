/**
 * @file Arena Memory Allocator
 *
 * Provides a `reset_memory` function to reset the heap to its initial state. A user has to make
 * sure that there are no more references to cleared memory afterwards. Always aligns to 8 bytes.
 */

const AL_BITS: usize = 3;
const AL_SIZE: usize = 1 << AL_BITS;
const AL_MASK: usize = AL_SIZE - 1;

var OFFSET: usize = (HEAP_BASE + AL_MASK) & ~AL_MASK;

@global
export function allocate_memory(size: usize): usize {
  if (!size) return 0;
  var ptr = OFFSET;
  var newPtr = (ptr + size + AL_MASK) & ~AL_MASK;
  var pagesBefore = current_memory();
  if (newPtr > <usize>pagesBefore << 16) {
    var pagesNeeded = ((newPtr - ptr + 0xffff) & ~0xffff) >>> 16;
    var pagesWanted = max(pagesBefore, pagesNeeded); // double memory
    if (grow_memory(pagesWanted) < 0) {
      if (grow_memory(pagesNeeded) < 0) {
        unreachable(); // out of memory
      }
    }
  }
  OFFSET = newPtr;
  return ptr;
}

@global
export function free_memory(ptr: usize): void {
  // nop
}

@global
export function reset_memory(): void {
  OFFSET = (HEAP_BASE + AL_MASK) & ~AL_MASK;
}
