import { HEAP_BASE, memory } from "../memory";
import { AL_MASK, MAX_SIZE_32 } from "../util/allocator";

// @ts-ignore: decorator
@lazy var startOffset: usize = (HEAP_BASE + AL_MASK) & ~AL_MASK;

// @ts-ignore: decorator
@lazy var offset: usize = startOffset;

// @ts-ignore: decorator
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

// @ts-ignore: decorator
@unsafe @global function __memory_free(ptr: usize): void {
}

// @ts-ignore: decorator
@unsafe @global function __memory_reset(): void {
  offset = startOffset;
}
