import "../../../compiler/runtime/asrt";

export namespace memory {
  export function allocate(size: usize): usize {
    return __mm_allocate(size);
  }
  export function free(ptr: usize): void {
    __mm_free(ptr);
  }
}
