import { AL_MASK, MAX_SIZE_32 } from "../internal/allocator";

var startOffset: usize = (HEAP_BASE + AL_MASK) & ~AL_MASK;
var offset_ptr: usize = startOffset;
store<u32>(offset_ptr, (HEAP_BASE + 4 + AL_MASK) & ~AL_MASK);

@global export function allocator_get_offset(): usize {
  return Atomic.load<u32>(offset_ptr);
}

@global export function allocator_set_offset(old_offset: usize, new_offset: usize): u32 {
  return Atomic.cmpxchg<u32>(offset_ptr, old_offset, new_offset);
}

@global export function __memory_allocate(size: usize): usize {
  if (size) {
    if (size > MAX_SIZE_32) unreachable();
    let currentOffset: u32;
    let top: u32;
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
      Atomic.cmpxchg(offset_ptr, currentOffset, top) != currentOffset
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
  Atomic.store<u32>(offset_ptr, startOffset);
}
