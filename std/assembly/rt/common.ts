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

/** Common block structure. */
@unmanaged export class CommonBlock {
  /** Memory manager info. */
  mmInfo: usize; // WASM64 might need adaption
  /** Garbage collector info. */
  gcInfo: u32;
  /** Runtime class id. */
  rtId: u32;
  /** Runtime object size. */
  rtSize: u32;
}

/////////////////////////////////// Type information interface ////////////////////////////////////

import { RTTI_BASE } from "../runtime";
import { RTTIData } from "../common/rtti";

// @ts-ignore: decorator
@global @unsafe
function __rt_typeinfo(id: u32): u32 {
  var ptr: usize = RTTI_BASE;
  return !id || id > load<u32>(ptr)
    ? unreachable()
    : changetype<RTTIData>(ptr + id * offsetof<RTTIData>()).flags;
}
