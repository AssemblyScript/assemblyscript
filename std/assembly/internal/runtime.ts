import { AL_MASK } from "./allocator";

/** Common runtime header used by all objects. */
@unmanaged
export class HEADER {
  /** Unique id of the respective class. Not yet registered with GC if zero.*/
  classId: u32;
  /** Size of the allocated payload. */
  payloadSize: u32;
  /** Reserved field for use by GC. */
  reserved1: usize; // itcm: tagged next
  /** Reserved field for use by GC. */
  reserved2: usize; // itcm: prev
}

/** Size of the common runtime header. */
@inline export const HEADER_SIZE: usize = (offsetof<HEADER>() + AL_MASK) & ~AL_MASK;
/** Magic value used to validate common headers. */
@inline export const HEADER_MAGIC: usize = <usize>0xA55E4B17;

/** Aligns an allocation to actual block size. */
function ALIGN(payloadSize: usize): usize {
  // round up to power of 2, e.g. with HEADER_SIZE=8:
  // 0            -> 2^3  = 8
  // 1..8         -> 2^4  = 16
  // 9..24        -> 2^5  = 32
  // ...
  // MAX_LENGTH   -> 2^30 = 0x40000000 (MAX_SIZE_32)
  return <usize>1 << <usize>(<u32>32 - clz<u32>(payloadSize + HEADER_SIZE - 1));
}

/** Gets to the common runtime header of the specified reference. */
function UNREF(ref: usize): HEADER {
  assert(ref >= HEAP_BASE + HEADER_SIZE); // must be a heap object
  var header = changetype<HEADER>(ref - HEADER_SIZE);
  assert(!header.classId && header.reserved2 == HEADER_MAGIC); // must be unregistered
  return header;
}

// === General allocation/deallocation ============================================================

/** Allocates a new object and returns a pointer to its payload. */
export function ALLOC(payloadSize: u32): usize {
  var header = changetype<HEADER>(memory.allocate(ALIGN(payloadSize)));
  header.classId = 0;
  header.payloadSize = payloadSize;
  header.reserved1 = 0;
  header.reserved2 = HEADER_MAGIC;
  var ref = changetype<usize>(header) + HEADER_SIZE;
  memory.fill(ref, 0, payloadSize);
  return ref;
}

/** Reallocates an object if necessary. Returns a pointer to its (moved) payload. */
export function REALLOC(ref: usize, newPayloadSize: u32): usize {
  var header = UNREF(ref);
  var payloadSize = header.payloadSize;
  if (payloadSize < newPayloadSize) {
    let newAlignedSize = ALIGN(newPayloadSize);
    if (ALIGN(payloadSize) < newAlignedSize) {
      // move if the allocation isn't large enough to hold the new payload
      let newHeader = changetype<HEADER>(memory.allocate(newAlignedSize));
      newHeader.classId = 0;
      newHeader.reserved1 = 0;
      newHeader.reserved2 = HEADER_MAGIC;
      let newRef = changetype<usize>(newHeader) + HEADER_SIZE;
      memory.copy(newRef, ref, payloadSize);
      memory.fill(newRef + payloadSize, 0, newPayloadSize - payloadSize);
      memory.free(changetype<usize>(header));
      header = newHeader;
      ref = newRef;
    } else {
      // otherwise just clear additional memory within this block
      memory.fill(ref + payloadSize, 0, newPayloadSize - payloadSize);
    }
  } else {
    // if the size is the same or less, just update the header accordingly.
    // it is not necessary to free unused space here because it is cleared
    // when grown again anyway.
  }
  header.payloadSize = newPayloadSize;
  return ref;
}

/** Frees an object. Must not have been registered with GC yet. */
export function FREE(ref: usize): void {
  var header = UNREF(ref);
  memory.free(changetype<usize>(header));
}

/** Registers a managed object with GC. */
export function REGISTER<T>(ref: usize): void {
  var header = UNREF(ref);
  header.classId = /* TODO: CLASSID<T>() */ 1;
  header.reserved2 = 0;
  // TODO
}

// === ArrayBuffer ================================================================================

/** Size of a buffer header, excl. common runtime header. */
@inline export const BUFFER_HEADER_SIZE: usize = (offsetof<ArrayBuffer>() + AL_MASK) & ~AL_MASK;

/** Allocates a new ArrayBuffer and returns a pointer to it. */
@inline export function ALLOC_BUFFER(byteLength: u32): ArrayBuffer {
  return changetype<ArrayBuffer>(ALLOC(BUFFER_HEADER_SIZE + byteLength));
}

/** Reallocates an ArrayBuffer if necessary. Returns a pointer to it. */
@inline export function REALLOC_BUFFER(ref: usize, byteLength: u32): ArrayBuffer {
  return changetype<ArrayBuffer>(REALLOC(ref, BUFFER_HEADER_SIZE + byteLength));
}

/** Loads a value from a backing ArrayBuffer. */
@inline export function LOAD_BUFFER<T,TOut = T>(buffer: ArrayBuffer, index: i32, byteOffset: i32 = 0): TOut {
  return <TOut>load<T>(
    changetype<usize>(buffer) + (<usize>index << alignof<T>()) + <usize>byteOffset,
    BUFFER_HEADER_SIZE
  );
}

/** Stores a value to a backing ArrayBuffer. */
@inline export function STORE_BUFFER<T,TIn = T>(buffer: ArrayBuffer, index: i32, value: TIn, byteOffset: i32 = 0): void {
  store<T>(
    changetype<usize>(buffer) + (<usize>index << alignof<T>()) + <usize>byteOffset,
    value,
    BUFFER_HEADER_SIZE
  );
}

// === String =====================================================================================

/** Size of a string header, excl. common runtime header. */
@inline export const STRING_HEADER_SIZE: usize = (offsetof<String>() + 1) & ~1; // 2 byte aligned

/** Allocates a new String and returns a pointer to it. */
@inline export function ALLOC_STRING(length: u32): String {
  return changetype<String>(ALLOC(STRING_HEADER_SIZE + (length << 1)));
}

/** Reallocates a String if necessary. Returns a pointer to it. */
@inline export function REALLOC_STRING(ref: usize, length: u32): String {
  return changetype<String>(REALLOC(ref, STRING_HEADER_SIZE + (length << 1)));
}

// ...
