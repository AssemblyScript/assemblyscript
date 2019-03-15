import { memcmp, memmove, memset } from "./util/memory";

// @ts-ignore: decorator
@builtin
export declare const HEAP_BASE: usize;

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
    ERROR("not implemented");
  }

  /** Drops a memory segment. */
  // @ts-ignore: decorator
  @unsafe
  export function drop(segmentIndex: u32): void {
    ERROR("not implemented");
  }

  /** Dynamically allocates a section of memory and returns its address. */
  // @ts-ignore: decorator
  @unsafe
  export function allocate(size: usize): usize {
    // @ts-ignore: stub
    if (isDefined(__memory_allocate)) return __memory_allocate(size);
    else WARNING("missing implementation: memory.allocate");
    return <usize>unreachable();
  }

  /** Dynamically frees a section of memory by the previously allocated address. */
  // @ts-ignore: decorator
  @unsafe
  export function free(ptr: usize): void {
    // @ts-ignore: stub
    if (isDefined(__memory_free)) __memory_free(ptr);
    else WARNING("missing implementation: memory.free");
  }

  /** Resets the memory to its initial state. Arena allocator only. */
  // @ts-ignore: decorator
  @unsafe
  export function reset(): void {
    // @ts-ignore: stub
    if (isDefined(__memory_reset)) __memory_reset();
    else WARNING("missing implementation: memory.reset");
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
}
