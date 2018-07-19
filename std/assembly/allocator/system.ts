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

// Memory allocator interface

@global export function __memory_allocate(size: usize): usize {
  return malloc(size);
}

@global export function __memory_free(ptr: usize): void {
  free(ptr);
}
