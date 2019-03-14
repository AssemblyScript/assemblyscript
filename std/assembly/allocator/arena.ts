import { HEAP_BASE, memory } from "../memory";
import { AL_MASK, MAX_SIZE_32 } from "../util/allocator";

@lazy var startOffset: usize = (HEAP_BASE + AL_MASK) & ~AL_MASK;
@lazy var offset: usize = startOffset;

@unsafe @global function __memory_allocate(size: usize): usize {
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

@unsafe @global function __memory_free(ptr: usize): void {
}

@unsafe @global function __memory_reset(): void {
  offset = startOffset;
}
