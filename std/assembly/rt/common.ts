// Alignment guarantees

// @ts-ignore: decorator
@inline export const AL_BITS: u32 = 4; // 16 bytes to fit up to v128
// @ts-ignore: decorator
@inline export const AL_SIZE: usize = 1 << <usize>AL_BITS;
// @ts-ignore: decorator
@inline export const AL_MASK: usize = AL_SIZE - 1;

// Extra debugging

// @ts-ignore: decorator
@inline export const DEBUG = true;

// Common root and block structure

// @ts-ignore: decorator
@inline export const INITIALIZED: u32 = 1 << 0;
// @ts-ignore: decorator
@inline export const COLLECTING: u32 = 1 << 1;

// ╒═════════════════ Common root layout (32-bit) ═════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤
// │                             state                             │
// ├───────────────────────────────────────────────────────────────┤
// │                             data0                             │
// ├───────────────────────────────────────────────────────────────┤
// │                              ...                              │
// ╞═══════════════════════════════════════════════════════════════╡
// │                              ...                              │
@unmanaged export class ROOT {
  /** Runtime state, i.e. INITIALIZED, COLLECTING. */
  state: u32;
  /** Runtime lock. */
  lock: u32;
  /** Additional data, either MM or GC. */
  data0: usize; // MM flMap
  /** Additional data, either MM or GC. */
  data1: usize; // GC roots
  /** Additional data, either MM or GC. */
  data2: usize; // GC roots_cur
  /** Additional data, either MM or GC. */
  data3: usize; // GC roots_end
}

// @ts-ignore: decorator
@lazy export const root = changetype<ROOT>((__heap_base + AL_MASK) & ~AL_MASK);
// @ts-ignore: decorator
@lazy export var main = false;

// ╒════════════════ Common block layout (32-bit) ═════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤
// │                           MM info                             │ -16
// ├───────────────────────────────────────────────────────────────┤
// │                           GC info                             │ -12
// ├───────────────────────────────────────────────────────────────┤
// │                          runtime id                           │ -8
// ├───────────────────────────────────────────────────────────────┤
// │                         runtime size                          │ -4
// ╞═══════════════════════════════════════════════════════════════╡
// │                              ...                              │ ref
@unmanaged export class BLOCK {
  /** Memory manager info. */
  mmInfo: usize; // WASM64 needs adaption
  /** Garbage collector info. */
  gcInfo: u32;
  /** Runtime class id. */
  rtId: u32;
  /** Runtime object size. */
  rtSize: u32;
}

// @ts-ignore: decorator
@inline export const BLOCK_OVERHEAD: usize = (offsetof<BLOCK>() + AL_MASK) & ~AL_MASK;

// @ts-ignore: decorator
@inline export const BLOCK_MAXSIZE: usize = (1 << 30) - BLOCK_OVERHEAD;
