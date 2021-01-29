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
// @ts-ignore: decorator
@inline export const TRACE = false;
// @ts-ignore: decorator
@inline export const RTRACE = isDefined(ASC_RTRACE);
// @ts-ignore: decorator
@inline export const PROFILE = isDefined(ASC_PROFILE);

// Memory manager

// ╒════════════ Memory manager block layout (32-bit) ═════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤
// │                           MM info                             │ -4
// ╞>ptr═══════════════════════════════════════════════════════════╡
// │                              ...                              │
@unmanaged export class BLOCK {
  /** Memory manager info. */
  mmInfo: usize;
}

/** Overhead of a memory manager block. */
// @ts-ignore: decorator
@inline export const BLOCK_OVERHEAD: usize = offsetof<BLOCK>();

/** Maximum size of a memory manager block's payload. */
// @ts-ignore: decorator
@inline export const BLOCK_MAXSIZE: usize = (1 << 30) - BLOCK_OVERHEAD;

// Garbage collector

// ╒══════════ Garbage collector object layout (32-bit) ═══════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤
// │                     Memory manager block                      │ -20
// ╞═══════════════════════════════════════════════════════════════╡
// │                            GC info                            │ -16
// ├───────────────────────────────────────────────────────────────┤
// │                            GC info                            │ -12
// ├───────────────────────────────────────────────────────────────┤
// │                            RT id                              │ -8
// ├───────────────────────────────────────────────────────────────┤
// │                            RT size                            │ -4
// ╞>ptr═══════════════════════════════════════════════════════════╡
// │                              ...                              │
@unmanaged export class OBJECT extends BLOCK {
  /** Garbage collector info. */
  gcInfo: u32;
  /** Garbage collector info. */
  gcInfo2: u32;
  /** Runtime class id. */
  rtId: u32;
  /** Runtime object size. */
  rtSize: u32;
}

/** Overhead of a garbage collector object. Excludes memory manager block overhead. */
// @ts-ignore: decorator
@inline export const OBJECT_OVERHEAD: usize = (offsetof<OBJECT>() - BLOCK_OVERHEAD + AL_MASK) & ~AL_MASK;

/** Maximum size of a garbage collector object's payload. */
// @ts-ignore: decorator
@inline export const OBJECT_MAXSIZE: usize = BLOCK_MAXSIZE - OBJECT_OVERHEAD;

/** Total of memory manager and garbage collector overhead. */
// @ts-ignore: decorator
@inline export const TOTAL_OVERHEAD: usize = BLOCK_OVERHEAD + OBJECT_OVERHEAD;
