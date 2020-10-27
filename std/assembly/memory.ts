import { memcmp, memmove, memset } from "./util/memory";
import { E_NOTIMPLEMENTED } from "./util/error";

/** Memory manager interface. */
export namespace memory {

  /** Gets the size of the memory in pages. */
  // @ts-ignore: decorator
  @builtin
  export declare function size(): i32;

  /** Grows the memory by the given size in pages and returns the previous size in pages. */
  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function grow(pages: i32): i32;

  /** Fills a section in memory with the specified byte value. */
  // @ts-ignore: decorator
  @unsafe @builtin
  export function fill(dst: usize, c: u8, n: usize): void {
    memset(dst, c, n); // fallback if "bulk-memory" isn't enabled
  }

  /** Copies a section of memory to another. Has move semantics. */
  // @ts-ignore: decorator
  @unsafe @builtin
  export function copy(dst: usize, src: usize, n: usize): void {
    memmove(dst, src, n); // fallback if "bulk-memory" isn't enabled
  }

  /** Initializes a memory segment. */
  // @ts-ignore: decorator
  @unsafe
  export function init(segmentIndex: u32, srcOffset: usize, dstOffset: usize, n: usize): void {
    throw new Error(E_NOTIMPLEMENTED);
  }

  /** Drops a memory segment. */
  // @ts-ignore: decorator
  @unsafe
  export function drop(segmentIndex: u32): void {
    throw new Error(E_NOTIMPLEMENTED);
  }

  /** Repeats a section of memory at a specific address. */
  // @ts-ignore: decorator
  @unsafe
  export function repeat(dst: usize, src: usize, srcLength: usize, count: usize): void {
    var index: usize = 0;
    var total = srcLength * count;
    while (index < total) {
      memory.copy(dst + index, src, srcLength);
      index += srcLength;
    }
  }

  /** Compares a section of memory to another. */
  // @ts-ignore: decorator
  @inline
  export function compare(vl: usize, vr: usize, n: usize): i32 {
    return memcmp(vl, vr, n);
  }

  /** Gets a pointer to a static chunk of memory of the given size. */
  // @ts-ignore: decorator
  @builtin
  export declare function data<T>(size: T, align?: i32): usize;
}

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

  /** Frees a chunk of memory. Does hardly anything (most recent block only) with the stub/none runtime. */
  // @ts-ignore: decorator
  @unsafe export function free(ptr: usize): void {
    __free(ptr);
  }

  /** Dangerously resets the entire heap. Specific to the stub/none runtime. */
  // @ts-ignore: decorator
  @unsafe export function reset(): void {
    __reset();
  }
}
