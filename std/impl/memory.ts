/// <reference path="../../assembly.d.ts" />

const MEMORY_ALIGN_LOG2: usize = 3;
const MEMORY_ALIGN_SIZE: usize = 1 << MEMORY_ALIGN_LOG2;
const MEMORY_ALIGN_MASK: usize = MEMORY_ALIGN_SIZE - 1;

@global()
class Memory {

  static allocate(size: usize): usize {
    const ptr: usize = HEAP_OFFSET;
    HEAP_OFFSET += size;
    if ((HEAP_OFFSET & MEMORY_ALIGN_MASK) != 0)
      HEAP_OFFSET = (HEAP_OFFSET | MEMORY_ALIGN_MASK) + 1;
    return ptr;
  }

  static dispose(ptr: usize): void {
    // just a big chunk of non-disposable memory for now
  }
}
