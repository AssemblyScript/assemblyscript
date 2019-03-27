// The runtime provides a set of macros for dealing with common AssemblyScript internals, like
// allocation, memory management in general, integration with a (potential) garbage collector
// and interfaces to hard-wired data types like buffers and their views. Doing so ensures that
// no matter which underlying implementation of a memory allocator or garbage collector is used,
// as long as all runtime/managed objects adhere to the runtime conventions, it'll all play well
// together. The compiler assumes that it can itself use the macros with the signatures declared
// in this file, so changing anything here will most likely require changes to the compiler, too.

import { AL_MASK, MAX_SIZE_32 } from "./util/allocator";
import { HEAP_BASE, memory } from "./memory";
import { Array } from "./array";

/**
 * The common runtime object header prepended to all managed objects. Has a size of 16 bytes in
 * WASM32 and contains a classId (e.g. for instanceof checks), the allocation size (e.g. for
 * .byteLength and .length computation) and additional reserved fields to be used by GC. If no
 * GC is present, the HEADER is cut into half excluding the reserved fields, as indicated by
 * HEADER_SIZE.
*/
@unmanaged export class HEADER {
  /** Unique id of the respective class or a magic value if not yet registered.*/
  classId: u32;
  /** Size of the allocated payload. */
  payloadSize: u32;
  /** Reserved field for use by GC. Only present if GC is. */
  reserved1: usize; // itcm: tagged next
  /** Reserved field for use by GC. Only present if GC is. */
  reserved2: usize; // itcm: prev
}

/** Common runtime header size. */
export const HEADER_SIZE: usize = isDefined(__ref_collect)
  ? (offsetof<HEADER>(           ) + AL_MASK) & ~AL_MASK  // full header if GC is present
  : (offsetof<HEADER>("reserved1") + AL_MASK) & ~AL_MASK; // half header if GC is absent

/** Common runtime header magic. Used to assert registered/unregistered status. */
export const HEADER_MAGIC: u32 = 0xA55E4B17;

/** Gets the computed unique class id of a class type. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function classId<T>(): u32;

/** Iterates over all root objects of a reference type. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function iterateRoots(fn: (ref: usize) => void): void;

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

/**
 * Allocates a runtime object that might eventually make its way into GC'ed userland as a
 * managed object. Implicitly prepends the common runtime header to the allocation.
 */
// @ts-ignore: decorator
@unsafe @inline
export function ALLOCATE(payloadSize: usize): usize {
  return allocate(payloadSize);
}

function allocate(payloadSize: usize): usize {
  var header = changetype<HEADER>(memory.allocate(ADJUSTOBLOCK(payloadSize)));
  header.classId = HEADER_MAGIC;
  header.payloadSize = payloadSize;
  if (isDefined(__ref_collect)) {
    header.reserved1 = 0;
    header.reserved2 = 0;
  }
  return changetype<usize>(header) + HEADER_SIZE;
}

/**
 * Changes the size of a previously allocated, but not yet registered, runtime object, for
 * example when a pre-allocated buffer turned out to be too small or too large. This works by
 * aligning dynamic allocations to actual block size internally so in the best case REALLOCATE
 * only updates payload size while in the worst case moves the object to a larger block.
 */
// @ts-ignore: decorator
@unsafe @inline
export function REALLOCATE(ref: usize, newPayloadSize: usize): usize {
  return reallocate(ref, newPayloadSize);
}

function reallocate(ref: usize, newPayloadSize: usize): usize {
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
      if (isDefined(__ref_collect)) {
        newHeader.reserved1 = 0;
        newHeader.reserved2 = 0;
      }
      let newRef = changetype<usize>(newHeader) + HEADER_SIZE;
      memory.copy(newRef, ref, payloadSize);
      memory.fill(newRef + payloadSize, 0, newPayloadSize - payloadSize);
      if (header.classId == HEADER_MAGIC) {
        // free right away if not registered yet
        assert(ref > HEAP_BASE); // static objects aren't scratch objects
        memory.free(changetype<usize>(header));
      } else if (isDefined(__ref_collect)) {
        // if previously registered, register again
        // @ts-ignore: stub
        __ref_register(ref);
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

/**
 * Registers a runtime object of kind T. Sets the internal class id within the runtime header
 * and asserts that the object hasn't been registered yet. If a tracing garbage collector is
 * present that requires initial insertion, the macro usually forwards a call to it. Once a
 * runtime object has been registed (makes it into userland), it cannot be DISCARD'ed anymore.
 */
// @ts-ignore: decorator
@unsafe @inline
export function REGISTER<T>(ref: usize): T {
  if (!isReference<T>()) ERROR("reference expected");
  return changetype<T>(register(ref, classId<T>()));
}

function register(ref: usize, classId: u32): usize {
  if (!ASC_NO_ASSERT) {
    assert(ref > HEAP_BASE); // must be a heap object
    let header = changetype<HEADER>(ref - HEADER_SIZE);
    assert(header.classId == HEADER_MAGIC);
    header.classId = classId;
  } else {
    changetype<HEADER>(ref - HEADER_SIZE).classId = classId;
  }
  // @ts-ignore: stub
  if (isDefined(__ref_register)) __ref_register(ref);
  return ref;
}

/**
 * Discards a runtime object that has not been registed and turned out to be unnecessary.
 * Essentially undoes the forgoing ALLOCATE. Should be avoided where possible.
 */
// @ts-ignore: decorator
@unsafe @inline
export function DISCARD(ref: usize): void {
  discard(ref);
}

function discard(ref: usize): void {
  if (!ASC_NO_ASSERT) {
    assert(ref > HEAP_BASE); // must be a heap object
    let header = changetype<HEADER>(ref - HEADER_SIZE);
    assert(header.classId == HEADER_MAGIC);
    memory.free(changetype<usize>(header));
  } else {
    memory.free(changetype<usize>(ref - HEADER_SIZE));
  }
}

/**
 * Makes a new array and optionally initializes is with existing data from source. Used by the
 * compiler to either wrap static array data in a new instance or pre-initialize the memory used
 * by an array literal. Does not zero the backing buffer!
 */
// @ts-ignore: decorator
@unsafe @inline
export function MAKEARRAY<V>(capacity: i32, source: usize = 0): Array<V> {
  return changetype<Array<V>>(makeArray(capacity, classId<V[]>(), alignof<V>(), source));
}

function makeArray(capacity: i32, cid: u32, alignLog2: usize, source: usize): usize {
  var array = register(allocate(offsetof<i32[]>()), cid);
  var bufferSize = <usize>capacity << alignLog2;
  var buffer = register(allocate(<usize>capacity << alignLog2), classId<ArrayBuffer>());
  changetype<ArrayBufferView>(array).data = changetype<ArrayBuffer>(buffer); // links
  changetype<ArrayBufferView>(array).dataStart = buffer;
  changetype<ArrayBufferView>(array).dataLength = bufferSize;
  store<i32>(changetype<usize>(array), capacity, offsetof<i32[]>("length_"));
  if (source) memory.copy(buffer, source, bufferSize);
  return array;
}

import { ArrayBuffer } from "./arraybuffer";
import { E_INVALIDLENGTH } from "./util/error";

/** Maximum byte length of any buffer. */
// @ts-ignore: decorator
@lazy
export const MAX_BYTELENGTH: i32 = MAX_SIZE_32 - HEADER_SIZE;

/** Hard wired ArrayBufferView interface. */
export abstract class ArrayBufferView {

  /** Backing buffer. */
  // @ts-ignore: decorator
  @unsafe
  data: ArrayBuffer;

  /** Data start offset in memory. */
  // @ts-ignore: decorator
  @unsafe
  dataStart: usize;

  /** Data length in memory, counted from `dataStart`. */
  // @ts-ignore: decorator
  @unsafe
  dataLength: u32;

  protected constructor(length: i32, alignLog2: i32) {
    if (<u32>length > <u32>MAX_BYTELENGTH >>> alignLog2) throw new RangeError(E_INVALIDLENGTH);
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
