import {
  AL_MASK,
  MAX_SIZE_32
 } from "./allocator";

/** Size of an ArrayBuffer header. */
@inline export const HEADER_SIZE: usize = (offsetof<ArrayBuffer>() + AL_MASK) & ~AL_MASK;
/** Maximum byte length of an ArrayBuffer. */
@inline export const MAX_BLENGTH: i32 = <i32>MAX_SIZE_32 - HEADER_SIZE;

function computeSize(byteLength: i32): usize {
  // round up to power of 2, with HEADER_SIZE=8:
  // 0            -> 2^3  = 8
  // 1..8         -> 2^4  = 16
  // 9..24        -> 2^5  = 32
  // ...
  // MAX_LENGTH   -> 2^30 = 0x40000000 (MAX_SIZE_32)
  return <usize>1 << <usize>(<u32>32 - clz<u32>(byteLength + HEADER_SIZE - 1));
}

// Low-level utility

function __gc(ref: usize): void {}

export function allocateUnsafe(byteLength: i32): ArrayBuffer {
  assert(<u32>byteLength <= <u32>MAX_BLENGTH);
  var buffer: usize;
  if (isManaged<ArrayBuffer>()) {
    buffer = __gc_allocate(computeSize(byteLength), __gc); // tslint:disable-line
  } else {
    buffer = memory.allocate(computeSize(byteLength));
  }
  store<i32>(buffer, byteLength, offsetof<ArrayBuffer>("byteLength"));
  return changetype<ArrayBuffer>(buffer);
}

export function reallocateUnsafe(buffer: ArrayBuffer, newByteLength: i32): ArrayBuffer {
  var oldByteLength = buffer.byteLength;
  if (newByteLength > oldByteLength) {
    assert(newByteLength <= MAX_BLENGTH);
    if (newByteLength <= <i32>(computeSize(oldByteLength) - HEADER_SIZE)) { // fast path: zero out additional space
      store<i32>(changetype<usize>(buffer), newByteLength, offsetof<ArrayBuffer>("byteLength"));
    } else { // slow path: copy to new buffer
      let newBuffer = allocateUnsafe(newByteLength);
      memory.copy(
        changetype<usize>(newBuffer) + HEADER_SIZE,
        changetype<usize>(buffer) + HEADER_SIZE,
        <usize>oldByteLength
      );
      if (!isManaged<ArrayBuffer>()) {
        memory.free(changetype<usize>(buffer));
      }
      buffer = newBuffer;
    }
    memory.fill(
      changetype<usize>(buffer) + HEADER_SIZE + <usize>oldByteLength,
      0,
      <usize>(newByteLength - oldByteLength)
    );
  } else if (newByteLength < oldByteLength) { // fast path: override size
    // TBD: worth to copy and release if size is significantly less than before?
    assert(newByteLength >= 0);
    store<i32>(changetype<usize>(buffer), newByteLength, offsetof<ArrayBuffer>("byteLength"));
  }
  return buffer;
}

// The helpers below use two different types in order to emit loads and stores that load respectively
// store one type to/from memory while returning/taking the desired output/input type. This allows to
// emit instructions like
//
// * `i32.load8` ^= `<i32>load<i8>(...)` that reads an i8 but returns an i32, or
// * `i64.load32_s` ^= `<i64>load<i32>(...)`) that reads a 32-bit as a 64-bit integer
//
// without having to emit an additional instruction for conversion purposes. The second parameter
// can be omitted for references and other loads and stores that simply return the exact type.

@inline export function LOAD<T,TOut = T>(buffer: ArrayBuffer, index: i32, byteOffset: i32 = 0): TOut {
  return <TOut>load<T>(changetype<usize>(buffer) + (<usize>index << alignof<T>()) + <usize>byteOffset, HEADER_SIZE);
}

@inline export function STORE<T,TIn = T>(buffer: ArrayBuffer, index: i32, value: TIn, byteOffset: i32 = 0): void {
  store<T>(changetype<usize>(buffer) + (<usize>index << alignof<T>()) + <usize>byteOffset, value, HEADER_SIZE);
}
