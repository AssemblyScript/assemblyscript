// @ts-ignore: decorator
@builtin
export declare const __heap_base: usize;

/** Heap memory interface. */
export namespace heap {

  /** Allocates a chunk of memory of at least the specified size. */
  // @ts-ignore: decorator
  @unsafe export function alloc(size: usize): usize {
    return __alloc(size);
  }

  /** Reallocates a chunk of memory to have at least the specified size. */
  // @ts-ignore: decorator
  @unsafe export function realloc(ptr: usize, size: usize): usize {
    return __realloc(ptr, size);
  }

  /** Frees a chunk of memory. */
  // @ts-ignore: decorator
  @unsafe export function free(ptr: usize): void {
    __free(ptr);
  }

  /** Resets the heap. Stub/none runtime only. */
  // @ts-ignore: decorator
  @unsafe export function reset(): void {
    __reset();
  }
}
