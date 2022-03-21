export function heap_alloc(size: usize): usize {
  return heap.alloc(size);
}

export function heap_free(ptr: usize): void {
  heap.free(ptr);
}

export function heap_reset(): void {
  heap.reset(); // stub only
}

export function memory_fill(ptr: usize, value: u8, count: usize): void {
  memory.fill(ptr, value, count);
}
