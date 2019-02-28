import { AL_MASK, MAX_SIZE_32 } from "../internal/allocator";

var SATRT_OFFSET: usize = (HEAP_BASE + AL_MASK) & ~AL_MASK;
var OFFSET_PTR: usize = SATRT_OFFSET;
var TOP = (HEAP_BASE + 8 + AL_MASK) & ~AL_MASK;
store<usize>(OFFSET_PTR, TOP);

@global export function __allocator_get_offset(): usize {
  return atomic.load<usize>(OFFSET_PTR);
}

@global export function __allocator_set_offset(oldOffset: usize, newOffset: usize): usize {
  return atomic.cmpxchg<usize>(OFFSET_PTR, oldOffset, newOffset);
}

@global export function __memory_allocate(size: usize): usize {
  if (size) {
    if (size > MAX_SIZE_32) unreachable();
    let currentOffset: usize;
    let top: usize;
    do {
      currentOffset = __allocator_get_offset();
      top = (currentOffset + size + AL_MASK) & ~AL_MASK;
      let pagesBefore = memory.size();
      if (top > (<usize>pagesBefore) << 16) {
        let pagesNeeded = ((top - currentOffset + 0xffff) & ~0xffff) >>> 16;
        let pagesWanted = max(pagesBefore, pagesNeeded); // double memory
        if (memory.grow(pagesWanted) < 0) {
          if (memory.grow(pagesNeeded) < 0) {
            unreachable(); // out of memory
          }
        }
      }
    } while (
      atomic.cmpxchg<usize>(OFFSET_PTR, currentOffset, top) != currentOffset
    );

    return currentOffset;
  }
  return 0;
}

@global export function __memory_free(ptr: usize): void {
 //TODO: Not implemented
}

@global export function __memory_reset(): void {
  atomic.store<usize>(OFFSET_PTR, SATRT_OFFSET);
}
