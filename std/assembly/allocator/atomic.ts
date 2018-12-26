import { AL_MASK, MAX_SIZE_32 } from "../internal/allocator";

var startOffset: usize = (HEAP_BASE + AL_MASK) & ~AL_MASK;
var offset_ptr: usize = startOffset;
var TOP = (HEAP_BASE + 8 + AL_MASK) & ~AL_MASK;
store<usize>(offset_ptr, TOP);

@global export function allocator_get_offset(): usize {
  return Atomic.load<usize>(offset_ptr);
}

@global export function allocator_set_offset(old_offset: usize, new_offset: usize): usize {
  return Atomic.cmpxchg<usize>(offset_ptr, old_offset, new_offset);
}

@global export function __memory_allocate(size: usize): usize {
  if (size) {
    if (size > MAX_SIZE_32) unreachable();
    let currentOffset: usize;
    let top: usize;
    do {
      currentOffset = allocator_get_offset();
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
      Atomic.cmpxchg<usize>(offset_ptr, currentOffset, top) != currentOffset
    );

    return currentOffset;
  }
  return 0;
}

@global export function __memory_free(ptr: usize): void {
  // Drop it on the floor, for now
  // In the future: figure out the size from the header or other info,
  // add to free list, etc etc.
}

@global export function __memory_reset(): void {
  Atomic.store<usize>(offset_ptr, startOffset);
}
