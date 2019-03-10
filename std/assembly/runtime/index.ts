import { AL_MASK, MAX_SIZE_32 } from "../internal/allocator";
import { __rt_classid } from "../builtins";

/** Common runtime header of all objects. */
@unmanaged export class HEADER {
  /** Unique id of the respective class or a magic value if not yet registered.*/
  classId: u32;
  /** Size of the allocated payload. */
  payloadSize: u32;
  /** Reserved field for use by GC. Only present if GC is. */
  gc1: usize; // itcm: tagged next
  /** Reserved field for use by GC. Only present if GC is. */
  gc2: usize; // itcm: prev
}

// Note that header data and layout isn't quite optimal depending on which allocator one
// decides to use, but it's done this way for maximum flexibility. Also remember that the
// runtime will most likely change significantly once reftypes and WASM GC are a thing.

/** Whether a GC is present or not. */
@inline export const GC = isDefined(gc);

/** Size of the common runtime header. */
@inline export const HEADER_SIZE: usize = GC
  ? (offsetof<HEADER>(     ) + AL_MASK) & ~AL_MASK  // full header if GC is present
  : (offsetof<HEADER>("gc1") + AL_MASK) & ~AL_MASK; // half header if GC is absent

/** Magic value used to validate common runtime headers. */
@inline export const HEADER_MAGIC: u32 = 0xA55E4B17;

/** Aligns an allocation to actual block size. Primarily targets TLSF. */
export function ALIGN(payloadSize: usize): usize {
  // round up to power of 2, e.g. with HEADER_SIZE=8:
  // 0            -> 2^3  = 8
  // 1..8         -> 2^4  = 16
  // 9..24        -> 2^5  = 32
  // ...
  // MAX_LENGTH   -> 2^30 = 0x40000000 (MAX_SIZE_32)
  return <usize>1 << <usize>(<u32>32 - clz<u32>(payloadSize + HEADER_SIZE - 1));
}

/** Allocates a new object and returns a pointer to its payload. */
export function ALLOC(payloadSize: u32): usize {
  var header = changetype<HEADER>(memory.allocate(ALIGN(payloadSize)));
  header.classId = HEADER_MAGIC;
  header.payloadSize = payloadSize;
  if (GC) {
    header.gc1 = 0;
    header.gc2 = 0;
  }
  var ref = changetype<usize>(header) + HEADER_SIZE;
  memory.fill(ref, 0, payloadSize);
  return ref;
}

/** Reallocates an object if necessary. Returns a pointer to its (moved) payload. */
export function REALLOC(ref: usize, newPayloadSize: u32): usize {
  var header = changetype<HEADER>(ref - HEADER_SIZE);
  var payloadSize = header.payloadSize;
  if (payloadSize < newPayloadSize) {
    let newAlignedSize = ALIGN(newPayloadSize);
    if (ALIGN(payloadSize) < newAlignedSize) {
      // move if the allocation isn't large enough to hold the new payload
      let newHeader = changetype<HEADER>(memory.allocate(newAlignedSize));
      newHeader.classId = HEADER_MAGIC;
      if (GC) {
        newHeader.gc1 = 0;
        newHeader.gc2 = 0;
      }
      let newRef = changetype<usize>(newHeader) + HEADER_SIZE;
      memory.copy(newRef, ref, payloadSize);
      memory.fill(newRef + payloadSize, 0, newPayloadSize - payloadSize);
      if (header.classId == HEADER_MAGIC) {
        // free right away if not registered yet
        memory.free(changetype<usize>(header));
      }
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

function unref(ref: usize): HEADER {
  assert(ref >= HEAP_BASE + HEADER_SIZE); // must be a heap object
  var header = changetype<HEADER>(ref - HEADER_SIZE);
  assert(header.classId == HEADER_MAGIC); // must be unregistered
  return header;
}

/** Frees an object. Must not have been registered with GC yet. */
export function FREE(ref: usize): void {
  memory.free(changetype<usize>(unref(ref)));
}

/** Registers a managed object. Cannot be free'd anymore afterwards. */
@inline export function REGISTER<T>(ref: usize): T {
  // inline this because it's generic so we don't get a bunch of functions
  unref(ref).classId = __rt_classid<T>();
  if (GC) gc.register(ref);
  return changetype<T>(ref);
}

/** Links a managed object with its managed parent. */
export function LINK(ref: usize, parentRef: usize): void {
  assert(ref >= HEAP_BASE + HEADER_SIZE); // must be a heap object
  var header = changetype<HEADER>(ref - HEADER_SIZE);
  assert(header.classId != HEADER_MAGIC && header.gc1 != 0 && header.gc2 != 0); // must be registered
  if (GC) gc.link(ref, parentRef); // tslint:disable-line
}

/** ArrayBuffer base class.  */
export abstract class ArrayBufferBase {
  static readonly MAX_BYTELENGTH: i32 = MAX_SIZE_32 - HEADER_SIZE;
  get byteLength(): i32 {
    return changetype<HEADER>(changetype<usize>(this) - HEADER_SIZE).payloadSize;
  }
}

/** String base class. */
export abstract class StringBase {
  static readonly MAX_LENGTH: i32 = (MAX_SIZE_32 - HEADER_SIZE) >> 1;
  get length(): i32 {
    return changetype<HEADER>(changetype<usize>(this) - HEADER_SIZE).payloadSize >> 1;
  }
}
