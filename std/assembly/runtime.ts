import { AL_MASK, MAX_SIZE_32 } from "./util/allocator";

@builtin export declare const HEAP_BASE: usize;

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
@inline export const GC = isImplemented(gc.register);

/** Size of the common runtime header. */
@inline export const HEADER_SIZE: usize = GC
  ? (offsetof<HEADER>(     ) + AL_MASK) & ~AL_MASK  // full header if GC is present
  : (offsetof<HEADER>("gc1") + AL_MASK) & ~AL_MASK; // half header if GC is absent

/** Magic value used to validate common runtime headers. */
@inline export const HEADER_MAGIC: u32 = 0xA55E4B17;

/** Adjusts an allocation to actual block size. Primarily targets TLSF. */
export function ADJUST(payloadSize: usize): usize {
  // round up to power of 2, e.g. with HEADER_SIZE=8:
  // 0            -> 2^3  = 8
  // 1..8         -> 2^4  = 16
  // 9..24        -> 2^5  = 32
  // ...
  // MAX_LENGTH   -> 2^30 = 0x40000000 (MAX_SIZE_32)
  return <usize>1 << <usize>(<u32>32 - clz<u32>(payloadSize + HEADER_SIZE - 1));
}

/** Allocates a new object and returns a pointer to its payload. Does not fill. */
@unsafe export function ALLOC_RAW(payloadSize: u32): usize {
  var header = changetype<HEADER>(memory.allocate(ADJUST(payloadSize)));
  header.classId = HEADER_MAGIC;
  header.payloadSize = payloadSize;
  if (GC) {
    header.gc1 = 0;
    header.gc2 = 0;
  }
  return changetype<usize>(header) + HEADER_SIZE;
}

/** Allocates a new object and returns a pointer to its payload. Fills with zeroes.*/
@unsafe export function ALLOC(payloadSize: u32): usize {
  var ref = ALLOC_RAW(payloadSize);
  memory.fill(ref, 0, payloadSize);
  return ref;
}

/** Reallocates an object if necessary. Returns a pointer to its (moved) payload. */
@unsafe export function REALLOC(ref: usize, newPayloadSize: u32): usize {
  // Background: When managed objects are allocated these aren't immediately registered with GC
  // but can be used as scratch objects while unregistered. This is useful in situations where
  // the object must be reallocated multiple times because its final size isn't known beforehand,
  // e.g. in Array#filter, with only the final object making it into GC'ed userland.
  var header = changetype<HEADER>(ref - HEADER_SIZE);
  var payloadSize = header.payloadSize;
  if (payloadSize < newPayloadSize) {
    let newAdjustedSize = ADJUST(newPayloadSize);
    if (select(ADJUST(payloadSize), 0, ref > HEAP_BASE) < newAdjustedSize) {
      // move if the allocation isn't large enough or not a heap object
      let newHeader = changetype<HEADER>(memory.allocate(newAdjustedSize));
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
        assert(ref > HEAP_BASE); // static objects aren't scratch objects
        memory.free(changetype<usize>(header));
      } else if (GC) {
        // if previously registered, register again
        gc.register(ref);
      }
      header = newHeader;
      ref = newRef;
    } else {
      // otherwise just clear additional memory within this block
      memory.fill(ref + payloadSize, 0, newPayloadSize - payloadSize);
    }
  } else {
    // if the size is the same or less, just update the header accordingly.
    // unused space is cleared when grown, so no need to do this here.
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
@unsafe @inline export function FREE<T>(ref: T): void {
  memory.free(changetype<usize>(unref(changetype<usize>(ref))));
}

/** Registers a managed object. Cannot be free'd anymore afterwards. */
@unsafe @inline export function REGISTER<T>(ref: usize): T {
  if (!isReference<T>()) ERROR("reference expected");
  // see comment in REALLOC why this is useful. also inline this because
  // it's generic so we don't get a bunch of functions.
  unref(ref).classId = gc.classId<T>();
  if (GC) gc.register(ref);
  return changetype<T>(ref);
}

/** Links a managed object with its managed parent. */
@unsafe @inline export function LINK<T, TParent>(ref: T, parentRef: TParent): void {
  assert(changetype<usize>(ref) >= HEAP_BASE + HEADER_SIZE); // must be a heap object
  var header = changetype<HEADER>(changetype<usize>(ref) - HEADER_SIZE);
  assert(header.classId != HEADER_MAGIC && header.gc1 != 0 && header.gc2 != 0); // must be registered
  if (GC) gc.link(changetype<usize>(ref), changetype<usize>(parentRef)); // tslint:disable-line
}

export abstract class ArrayBufferView {
  @lazy static readonly MAX_BYTELENGTH: i32 = MAX_SIZE_32 - HEADER_SIZE;

  [key: number]: number;

  @unsafe data: ArrayBuffer;
  @unsafe dataStart: usize;
  @unsafe dataEnd: usize;

  constructor(length: i32, alignLog2: i32) {
    if (<u32>length > <u32>ArrayBufferView.MAX_BYTELENGTH >>> alignLog2) throw new RangeError("Invalid length");
    var buffer = new ArrayBuffer(length << alignLog2);
    this.data = buffer;
    this.dataStart = changetype<usize>(buffer);
    this.dataEnd = changetype<usize>(buffer) + <usize>length;
  }

  get byteOffset(): i32 {
    return <i32>(this.dataStart - changetype<usize>(this.data));
  }

  get byteLength(): i32 {
    return <i32>(this.dataEnd - this.dataStart);
  }

  get length(): i32 {
    ERROR("concrete implementation must provide this");
    return unreachable();
  }
}
