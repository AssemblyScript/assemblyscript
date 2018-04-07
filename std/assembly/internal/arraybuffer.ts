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

/** Allocates a raw ArrayBuffer. Contents remain uninitialized. */
export function allocUnsafe(byteLength: i32): ArrayBuffer {
  assert(<u32>byteLength <= <u32>MAX_BLENGTH);
  var buffer = allocate_memory(computeSize(byteLength));
  store<i32>(buffer, byteLength, offsetof<ArrayBuffer>("byteLength"));
  return changetype<ArrayBuffer>(buffer);
}

/** Reallocates an ArrayBuffer, resizing it as requested. Tries to modify the buffer in place. */
export function reallocUnsafe(buffer: ArrayBuffer, newByteLength: i32): ArrayBuffer {
  var oldByteLength = buffer.byteLength;
  if (newByteLength > oldByteLength) {
    assert(newByteLength <= MAX_BLENGTH);
    let oldSize = computeSize(oldByteLength);
    if (<i32>(oldSize - HEADER_SIZE) <= newByteLength) { // fast path: zero out additional space
      store<i32>(changetype<usize>(buffer), newByteLength, offsetof<ArrayBuffer>("byteLength"));
      set_memory(
        changetype<usize>(buffer) + HEADER_SIZE + oldByteLength,
        0,
        <usize>(newByteLength - oldByteLength)
      );
    } else { // slow path: copy to new buffer
      let newBuffer = allocUnsafe(newByteLength);
      move_memory(
        changetype<usize>(newBuffer) + HEADER_SIZE,
        changetype<usize>(buffer) + HEADER_SIZE,
        <usize>newByteLength
      );
      return newBuffer;
    }
  } else if (newByteLength < oldByteLength) { // fast path: override size
    // TBD: worth to copy and release if size is significantly less than before?
    assert(newByteLength >= 0);
    store<i32>(changetype<usize>(buffer), newByteLength, offsetof<ArrayBuffer>("byteLength"));
  }
  return buffer;
}

/** Common typed array interface. Not a global object. */
// export declare interface ArrayBufferView<T> {
//   readonly buffer: ArrayBuffer;
//   readonly byteOffset: i32;
//   readonly byteLength: i32;
//   readonly length: i32;
// }
