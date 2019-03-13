import { memcmp, memmove, memset } from "./util/memory";

/** Memory manager interface. */
export namespace memory {

  /** Gets the size of the memory in pages. */
  @builtin export declare function size(): i32;

  /** Grows the memory by the given size in pages and returns the previous size in pages. */
  @builtin @unsafe export declare function grow(pages: i32): i32;

  /** Fills a section in memory with the specified byte value. */
  @builtin @unsafe @inline export function fill(dst: usize, c: u8, n: usize): void {
    memset(dst, c, n); // fallback if "bulk-memory" isn't enabled
  }

  /** Copies a section of memory to another. Has move semantics. */
  @builtin @unsafe @inline export function copy(dst: usize, src: usize, n: usize): void {
    memmove(dst, src, n); // fallback if "bulk-memory" isn't enabled
  }

  /** Initializes a memory segment. */
  @unsafe export function init(segmentIndex: u32, srcOffset: usize, dstOffset: usize, n: usize): void {
    ERROR("not implemented");
  }

  /** Drops a memory segment. */
  @unsafe export function drop(segmentIndex: u32): void {
    ERROR("not implemented");
  }

  /** Dynamically allocates a section of memory and returns its address. */
  @stub @inline export function allocate(size: usize): usize {
    ERROR("stub: missing memory manager");
    return <usize>unreachable();
  }

  /** Dynamically frees a section of memory by the previously allocated address. */
  @stub @unsafe @inline export function free(ptr: usize): void {
    ERROR("stub: missing memory manager");
  }

  /** Resets the memory to its initial state. Arena allocator only. */
  @stub @unsafe @inline export function reset(): void {
    ERROR("stub: not supported by memory manager");
  }

  /** Compares a section of memory to another. */
  @inline export function compare(vl: usize, vr: usize, n: usize): i32 {
    return memcmp(vl, vr, n);
  }

  /** Repeats a section of memory at a specific address. */
  @unsafe export function repeat(dst: usize, src: usize, srcLength: usize, count: usize): void {
    var index: usize = 0;
    var total = srcLength * count;
    while (index < total) {
      memory.copy(dst + index, src, srcLength);
      index += srcLength;
    }
  }
}
