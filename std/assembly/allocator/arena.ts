/////////////// A simple yet effective Arena Memory Allocator /////////////////

// Provides a `reset_memory` function to reset the heap to its initial state. A
// user has to make sure that there are no more references to cleared memory
// afterwards. Always aligns to 8 bytes.

const ALIGN_LOG2: usize = 3;
const ALIGN_SIZE: usize = 1 << ALIGN_LOG2;
const ALIGN_MASK: usize = ALIGN_SIZE - 1;

var HEAP_OFFSET: usize = HEAP_BASE;

@global
export function allocate_memory(size: usize): usize {
  if (!size) return 0;
  var ptr = HEAP_OFFSET;
  var off = (ptr + size + ALIGN_MASK) & ~ALIGN_MASK;
  var avail = <usize>current_memory() << 16;
  if (off > avail && grow_memory(
    max(
      (((off + 0xffff) & ~0xffff) - avail) >> 16, // minimum required pages
      avail                                >> 16  // at least double memory
    )
  ) < 0) unreachable(); // out of memory
  HEAP_OFFSET = off;
  return ptr;
}

@global
export function free_memory(ptr: usize): void {
  // nop
}

@global
export function reset_memory(): void {
  HEAP_OFFSET = HEAP_BASE;
}
