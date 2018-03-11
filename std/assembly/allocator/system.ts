/**
 * @file System Memory Allocator
 *
 * Uses the environment's malloc and free implementations, i.e., when linking with other C-like
 * programs that already provide these.
 */

declare function malloc(size: usize): usize;
declare function free(ptr: usize): void;

@global
function allocate_memory(size: usize): usize {
  return malloc(size);
}

@global
function free_memory(ptr: usize): void {
  free(ptr);
}

@global
function reset_memory(): void {
  unreachable();
}
