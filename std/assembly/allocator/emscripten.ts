/**
 * Emscripten Memory Allocator.
 *
 * Uses Emscripten's exported _malloc and _free implementations, i.e., when linking with
 * Emscripten-compiled programs that already provide these. Differs from 'system' in that their
 * names are prefixed with an underscore.
 *
 * @module std/assembly/allocator/emscripten
 *//***/

declare function _malloc(size: usize): usize;
declare function _free(ptr: usize): void;

// Memory allocator interface

@global export function __memory_allocate(size: usize): usize {
  return _malloc(size);
}

@global export function __memory_free(ptr: usize): void {
  _free(ptr);
}
