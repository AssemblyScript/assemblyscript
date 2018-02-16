///////////////////////// Emscripten Memory Allocator //////////////////////////

// Uses Emscripten's exported _malloc and _free implementations, i.e., when
// linking with Emscripten-compiled programs that already provide these.
// Differs from 'system' in that their names are prefixed with an underscore.

declare function _malloc(size: usize): usize;
declare function _free(ptr: usize): void;

export function allocate_memory(size: usize): usize {
  return _malloc(size);
}

export function free_memory(ptr: usize): void {
  _free(ptr);
}

export { reset_memory } from "./none";
