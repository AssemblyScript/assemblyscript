/////////////////////////// System Memory Allocator ////////////////////////////

// Uses the environment's malloc and free implementations, i.e., when linking
// with other C-like programs that already provide these.

declare function malloc(size: usize): usize;
declare function free(ptr: usize): void;

export function allocate_memory(size: usize): usize {
  return malloc(size);
}

export function free_memory(ptr: usize): void {
  free(ptr);
}

export { reset_memory } from "./none";
