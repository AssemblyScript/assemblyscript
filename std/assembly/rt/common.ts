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

/////////////////////////////////// Type information interface ////////////////////////////////////

import { RTTI_BASE } from "builtins";
import { RTTIData, RTTIFlags } from "common/rtti";

// @ts-ignore: decorator
@unsafe @global
export function __typeinfo(id: u32): RTTIFlags {
  var ptr = RTTI_BASE;
  return !id || id > load<u32>(ptr)
    ? unreachable()
    : changetype<RTTIData>(ptr + id * offsetof<RTTIData>()).flags;
}

// @ts-ignore: decorator
@unsafe @global
export function __instanceof(ref: usize, superId: u32): bool { // keyword
  var id = changetype<BLOCK>(ref - BLOCK_OVERHEAD).rtId;
  var ptr = RTTI_BASE;
  if (id && id <= load<u32>(ptr)) {
    do if (id == superId) return true;
    while (id = changetype<RTTIData>(ptr + id * offsetof<RTTIData>()).base);
  }
  return false;
}

///////////////////////////////////////////// Helpers /////////////////////////////////////////////

import { idof } from "builtins";
import { ArrayBufferView } from "arraybuffer";

// @ts-ignore: decorator
@unsafe @global
export function __allocArray(length: i32, alignLog2: usize, id: u32, data: usize = 0): usize {
  var array = __alloc(offsetof<i32[]>(), id);
  var bufferSize = <usize>length << alignLog2;
  var buffer = __alloc(bufferSize, idof<ArrayBuffer>());
  changetype<ArrayBufferView>(array).data = changetype<ArrayBuffer>(buffer); // TODO/RT: retains
  changetype<ArrayBufferView>(array).dataStart = buffer;
  changetype<ArrayBufferView>(array).dataLength = bufferSize;
  store<i32>(changetype<usize>(array), length, offsetof<i32[]>("length_"));
  if (data) memory.copy(buffer, data, bufferSize);
  return array;
}
