/**
 * System Memory Allocator.
 *
 * Uses the environment's malloc and free implementations, i.e., when linking with other C-like
 * programs that already provide these.
 *
 * @module std/assembly/allocator/system
 *//***/

declare function malloc(size: usize): usize;
declare function free(ptr: usize): void;

@global
export function allocate_memory(size: usize): usize {
  return malloc(size);
}

@global
export function free_memory(ptr: usize): void {
  free(ptr);
}

@global
export function reset_memory(): void {
  unreachable();
}
