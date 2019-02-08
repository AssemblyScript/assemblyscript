import {
  AL_MASK,
  MAX_SIZE_32
 } from "./allocator";

/** Size of an ArrayBuffer header. */
export const HEADER_SIZE: usize = (offsetof<ArrayBuffer>() + AL_MASK) & ~AL_MASK;
/** Maximum byte length of an ArrayBuffer. */
export const MAX_BLENGTH: i32 = <i32>MAX_SIZE_32 - HEADER_SIZE;

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


@inline function _resize(buffer: ArrayBuffer, newByteLength: i32): ArrayBuffer {
  store<i32>(changetype<usize>(buffer), newByteLength, offsetof<ArrayBuffer>("byteLength"));
  return buffer;
}

@inline
function _allocateUnsafe(byteLength: i32): ArrayBuffer {
  assert(<u32>byteLength <= <u32>MAX_BLENGTH);
  var buffer: usize = isManaged<ArrayBuffer>()
    ? __gc_allocate(computeSize(byteLength), __gc)
    : memory.allocate(computeSize(byteLength));
  return _resize(changetype<ArrayBuffer>(buffer), byteLength);
}

export function allocateZeroedUnsafe(byteLength: i32): ArrayBuffer {
  var buffer = _allocateUnsafe(byteLength);

  // zero out the buffer
  memory.fill(buffer.data, 0, byteLength);
  return changetype<ArrayBuffer>(buffer);
}

export function allocateUnsafe(byteLength: i32): ArrayBuffer {
  return _allocateUnsafe(byteLength);
}

/**
 * This inline grow method allocates a new ArrayBuffer, then frees the old one.
 */
@inline function _growUnsafe(buffer: ArrayBuffer, oldByteLength: i32, newByteLength: i32): ArrayBuffer {
  assert(newByteLength > buffer.byteLength && newByteLength <= MAX_BLENGTH);
  var newBuffer = _allocateUnsafe(newByteLength);
  memory.copy(newBuffer.data, buffer.data, oldByteLength);
  if (!isManaged<ArrayBuffer>()) {
    memory.free(changetype<usize>(buffer));
  }
  return newBuffer;
}

/**
 * This function perform
 */
@inline function _realocateUnsafe(buffer: ArrayBuffer, oldByteLength: i32, newByteLength: i32): ArrayBuffer {
  // non-negative values should be unreachable()
  assert(newByteLength >= 0);
  // fastest path: buffer should be the same length
  if (newByteLength === oldByteLength) return buffer;
  // fast path: byteLength is less than or equal to currently allocated size (this is safe)
  if (newByteLength <= <i32>(computeSize(oldByteLength) - HEADER_SIZE))
    return _resize(buffer, newByteLength);

  // slow path: buffer needs new allocation (_growUnsafe frees the old buffer)
  return _growUnsafe(buffer, oldByteLength, newByteLength);
}

export function reallocateUnsafe(buffer: ArrayBuffer, newByteLength: i32): ArrayBuffer {
  return _realocateUnsafe(buffer, buffer.byteLength, newByteLength);
}

export function reallocateZeroedUnsafe(buffer: ArrayBuffer, newByteLength: i32): ArrayBuffer {
  var oldByteLength = buffer.byteLength;
  buffer = _realocateUnsafe(buffer, oldByteLength, newByteLength);

  // zero out the allocated values that weren't copied
  memory.fill(buffer.data + oldByteLength, 0, newByteLength - oldByteLength);
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
