import { memcmp, memmove, memset } from "./internal/memory";

@builtin export declare const HEAP_BASE: usize; // tslint:disable-line

/* tslint:disable */

export namespace memory {

  @builtin export declare function size(): i32;

  @builtin export declare function grow(pages: i32): i32;

  @builtin @inline
  export function fill(dest: usize, c: u8, n: usize): void { // see: musl/src/string/memset
    memset(dest, c, n); // fallback if "bulk-memory" isn't enabled
  }

  @builtin @inline
  export function copy(dest: usize, src: usize, n: usize): void { // see: musl/src/string/memmove.c
    memmove(dest, src, n); // fallback if "bulk-memory" isn't enabled
  }

  @inline export function compare(vl: usize, vr: usize, n: usize): i32 { // see: musl/src/string/memcmp.c
    return memcmp(vl, vr, n);
  }

  // Passive segments

  // export function init(segmentIndex: u32, srcOffset: usize, dstOffset: usize, n: usize): void {
  //   __memory_init(segmentIndex, srcOffset, dstOffset);
  // }

  // export function drop(segmentIndex: u32): void {
  //   __memory_drop(segmentIndex);
  // }

  // Allocator

  @inline export function allocate(size: usize): usize {
    if (isDefined(__memory_allocate)) return __memory_allocate(size);
    WARNING("Calling 'memory.allocate' requires a memory manager to be present.");
    return <usize>unreachable();
  }

  @inline export function free(ptr: usize): void {
    if (isDefined(__memory_free)) { __memory_free(ptr); return; }
    WARNING("Calling 'memory.free' requires a memory manager to be present.");
    unreachable();
  }

  @inline export function reset(): void {
    if (isDefined(__memory_reset)) { __memory_reset(); return; }
    unreachable();
  }
}
