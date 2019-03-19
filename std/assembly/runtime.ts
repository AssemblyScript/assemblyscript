import { AL_MASK, MAX_SIZE_32 } from "./util/allocator";
import { HEAP_BASE, memory } from "./memory";

/** Whether the memory manager interface is implemented. */
// @ts-ignore: decorator, stub
@lazy export const MM_IMPLEMENTED: bool = isDefined(__memory_allocate);

/** Whether the garbage collector interface is implemented. */
// @ts-ignore: decorator, stub
@lazy export const GC_IMPLEMENTED: bool = isDefined(__gc_register);

/** Common runtime header. Each managed object has one. */
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

/** Common runtime header size. */
export const HEADER_SIZE: usize = GC_IMPLEMENTED
  ? (offsetof<HEADER>(     ) + AL_MASK) & ~AL_MASK  // full header if GC is present
  : (offsetof<HEADER>("gc1") + AL_MASK) & ~AL_MASK; // half header if GC is absent

/** Common runtime header magic. Used to assert registered/unregistered status. */
export const HEADER_MAGIC: u32 = 0xA55E4B17;

/** Gets the computed unique class id of a class type. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function CLASSID<T>(): u32;

/** Iterates over all root objects of a reference type. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function ITERATEROOTS(fn: (ref: usize) => void): void;

/** Adjusts an allocation to actual block size. Primarily targets TLSF. */
export function ADJUSTOBLOCK(payloadSize: usize): usize {
  // round up to power of 2, e.g. with HEADER_SIZE=8:
  // 0            -> 2^3  = 8
  // 1..8         -> 2^4  = 16
  // 9..24        -> 2^5  = 32
  // ...
  // MAX_LENGTH   -> 2^30 = 0x40000000 (MAX_SIZE_32)
  return <usize>1 << <usize>(<u32>32 - clz<u32>(payloadSize + HEADER_SIZE - 1));
}

/** Allocates a new object and returns a pointer to its payload. Does not fill. */
// @ts-ignore: decorator
@unsafe @inline
export function ALLOCATE(payloadSize: usize): usize {
  return doAllocate(payloadSize);
}

function doAllocate(payloadSize: usize): usize {
  var header = changetype<HEADER>(memory.allocate(ADJUSTOBLOCK(payloadSize)));
  header.classId = HEADER_MAGIC;
  header.payloadSize = payloadSize;
  if (GC_IMPLEMENTED) {
    header.gc1 = 0;
    header.gc2 = 0;
  }
  return changetype<usize>(header) + HEADER_SIZE;
}

/** Allocates an object explicitly declared as unmanaged and returns a pointer to it. */
// @ts-ignore: decorator
@unsafe @inline
export function ALLOCATE_UNMANAGED(size: usize): usize {
  return memory.allocate(size);
}

/** Reallocates an object if necessary. Returns a pointer to its (moved) payload. */
// @ts-ignore: decorator
@unsafe @inline
export function REALLOCATE(ref: usize, newPayloadSize: usize): usize {
  return doReallocate(ref, newPayloadSize);
}

function doReallocate(ref: usize, newPayloadSize: usize): usize {
  // Background: When managed objects are allocated these aren't immediately registered with GC
  // but can be used as scratch objects while unregistered. This is useful in situations where
  // the object must be reallocated multiple times because its final size isn't known beforehand,
  // e.g. in Array#filter, with only the final object making it into GC'ed userland.
  var header = changetype<HEADER>(ref - HEADER_SIZE);
  var payloadSize = header.payloadSize;
  if (payloadSize < newPayloadSize) {
    let newAdjustedSize = ADJUSTOBLOCK(newPayloadSize);
    if (select(ADJUSTOBLOCK(payloadSize), 0, ref > HEAP_BASE) < newAdjustedSize) {
      // move if the allocation isn't large enough or not a heap object
      let newHeader = changetype<HEADER>(memory.allocate(newAdjustedSize));
      newHeader.classId = header.classId;
      if (GC_IMPLEMENTED) {
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
      } else if (GC_IMPLEMENTED) {
        // if previously registered, register again
        // @ts-ignore: stub
        __gc_register(ref);
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

/** Registers a managed object to be tracked by the garbage collector, if present. */
// @ts-ignore: decorator
@unsafe @inline
export function REGISTER<T>(ref: usize): T {
  if (!isReference<T>()) ERROR("reference expected");
  return changetype<T>(doRegister(ref, CLASSID<T>()));
}

function doRegister(ref: usize, classId: u32): usize {
  if (!ASC_NO_ASSERT) assertUnregistered(ref);
  changetype<HEADER>(ref - HEADER_SIZE).classId = classId;
  // @ts-ignore: stub
  if (GC_IMPLEMENTED) __gc_register(ref);
  return ref;
}

/** Links a registered object with the (registered) object now referencing it. */
// @ts-ignore: decorator
@unsafe @inline
export function LINK<T,TParent>(ref: T, parentRef: TParent): T {
  if (!isManaged<T>()) ERROR("managed reference expected");
  if (!isManaged<TParent>()) ERROR("managed reference expected");
  doLink(changetype<usize>(ref), changetype<usize>(parentRef));
  return ref;
}

function doLink(ref: usize, parentRef: usize): void {
  if (!ASC_NO_ASSERT) {
    assertRegistered(ref);
    assertRegistered(parentRef);
  }
  // @ts-ignore: stub
  if (GC_IMPLEMENTED) __gc_link(changetype<usize>(ref), changetype<usize>(parentRef));
}

/** Discards an unregistered object that turned out to be unnecessary. */
// @ts-ignore: decorator
@unsafe @inline
export function DISCARD(ref: usize): void {
  doDiscard(ref);
}

function doDiscard(ref: usize): void {
  if (!ASC_NO_ASSERT) assertUnregistered(ref);
  memory.free(changetype<usize>(ref - HEADER_SIZE));
}

/** Wraps a static buffer within an array by copying its contents. */
// @ts-ignore: decorator
@unsafe @inline
export function WRAPARRAY<T>(buffer: ArrayBuffer): T[] {
  return changetype<T[]>(doWrapArray(buffer, CLASSID<T[]>(), alignof<T>()));
}

function doWrapArray(buffer: ArrayBuffer, classId: u32, alignLog2: usize): usize {
  var array = doRegister(doAllocate(offsetof<i32[]>()), classId);
  var bufferSize = <usize>buffer.byteLength;
  var newBuffer = doRegister(doAllocate(bufferSize), classId);
  changetype<ArrayBufferView>(array).data = changetype<ArrayBuffer>(newBuffer); // links
  changetype<ArrayBufferView>(array).dataStart = changetype<usize>(newBuffer);
  changetype<ArrayBufferView>(array).dataLength = bufferSize;
  store<i32>(changetype<usize>(array), <i32>(bufferSize >>> alignLog2), offsetof<i32[]>("length_"));
  memory.copy(changetype<usize>(newBuffer), changetype<usize>(buffer), bufferSize);
  return changetype<usize>(array);
}

// Helpers

/** Asserts that a managed object is still unregistered. */
// @ts-ignore: decorator
function assertUnregistered(ref: usize): void {
  assert(ref > HEAP_BASE); // must be a heap object
  assert(changetype<HEADER>(ref - HEADER_SIZE).classId == HEADER_MAGIC);
}

/** Asserts that a managed object has already been registered. */
// @ts-ignore: decorator
function assertRegistered(ref: usize): void {
  // may be a static string or buffer (not a heap object)
  assert(changetype<HEADER>(ref - HEADER_SIZE).classId != HEADER_MAGIC);
}

import { ArrayBuffer } from "./arraybuffer";

/** Maximum byte length of any buffer. */
// @ts-ignore: decorator
@lazy
export const MAX_BYTELENGTH: i32 = MAX_SIZE_32 - HEADER_SIZE;

/** Hard wired ArrayBufferView interface. */
export abstract class ArrayBufferView {
  [key: number]: number;

  // @ts-ignore: decorator
  @unsafe
  data: ArrayBuffer;

  // @ts-ignore: decorator
  @unsafe
  dataStart: usize;

  // @ts-ignore: decorator
  @unsafe
  dataLength: u32;

  protected constructor(length: i32, alignLog2: i32) {
    if (<u32>length > <u32>MAX_BYTELENGTH >>> alignLog2) throw new RangeError("Invalid length");
    var buffer = new ArrayBuffer(length = length << alignLog2);
    this.data = buffer;
    this.dataStart = changetype<usize>(buffer);
    this.dataLength = length;
  }

  get byteOffset(): i32 {
    return <i32>(this.dataStart - changetype<usize>(this.data));
  }

  get byteLength(): i32 {
    return this.dataLength;
  }

  get length(): i32 {
    ERROR("missing implementation: subclasses must implement ArrayBufferView#length");
    return unreachable();
  }
}
