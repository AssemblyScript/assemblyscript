import { AL_MASK, MAX_SIZE_32 } from "./allocator";

/** Size of an ArrayBuffer header. */
export const HEADER_SIZE: usize = (offsetof<ArrayBuffer>() + AL_MASK) & ~AL_MASK;

/** Maximum byte length of an ArrayBuffer. */
export const MAX_BLENGTH: i32 = <i32>MAX_SIZE_32 - HEADER_SIZE;

/** Computes an ArrayBuffer's size in memory. */
export function computeSize(byteLength: i32): usize {
  // round up to power of 2, with HEADER_SIZE=8:
  // 0            -> 2^3  = 8
  // 1..8         -> 2^4  = 16
  // 9..24        -> 2^5  = 32
  // ...
  // MAX_LENGTH   -> 2^30 = 0x40000000 (MAX_SIZE_32)
  return <usize>1 << <usize>(<u32>32 - clz<u32>(byteLength + HEADER_SIZE - 1));
}

/** Allocates a raw ArrayBuffer with uninitialized contents. */
export function allocate(byteLength: i32): ArrayBuffer {
  assert(<u32>byteLength <= <u32>MAX_BLENGTH);
  var buffer = allocate_memory(computeSize(byteLength));
  store<i32>(buffer, byteLength, offsetof<ArrayBuffer>("byteLength"));
  return changetype<ArrayBuffer>(buffer);
}

/** Common typed array interface. Not a global object. */
// export declare interface ArrayBufferView<T> {
//   readonly buffer: ArrayBuffer;
//   readonly byteOffset: i32;
//   readonly byteLength: i32;
//   readonly length: i32;
// }
