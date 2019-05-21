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
@inline export const BLOCK_OVERHEAD = (offsetof<BLOCK>() + AL_MASK) & ~AL_MASK;

// @ts-ignore: decorator
@inline export const BLOCK_MAXSIZE: usize = (1 << 30) - BLOCK_OVERHEAD;
