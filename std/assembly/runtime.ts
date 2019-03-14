import { AL_MASK, MAX_SIZE_32 } from "./util/allocator";
import { HEAP_BASE, memory } from "./memory";
import { gc } from "./gc";

/** Common runtime. */
export namespace runtime {

  /** Common runtime header of all objects. */
  @unmanaged export class Header {

    /** Size of a runtime header. */
    // @ts-ignore: decorator
    @lazy @inline static readonly SIZE: usize = gc.implemented
      ? (offsetof<Header>(     ) + AL_MASK) & ~AL_MASK  // full header if GC is present
      : (offsetof<Header>("gc1") + AL_MASK) & ~AL_MASK; // half header if GC is absent

    /** Magic value used to validate runtime headers. */
    // @ts-ignore: decorator
    @lazy @inline static readonly MAGIC: u32 = 0xA55E4B17;

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

  /** Adjusts an allocation to actual block size. Primarily targets TLSF. */
  function adjust(payloadSize: usize): usize {
    // round up to power of 2, e.g. with HEADER_SIZE=8:
    // 0            -> 2^3  = 8
    // 1..8         -> 2^4  = 16
    // 9..24        -> 2^5  = 32
    // ...
    // MAX_LENGTH   -> 2^30 = 0x40000000 (MAX_SIZE_32)
    return <usize>1 << <usize>(<u32>32 - clz<u32>(payloadSize + Header.SIZE - 1));
  }

  /** Allocates a new object and returns a pointer to its payload. Does not fill. */
  // @ts-ignore: decorator
  @unsafe export function allocRaw(payloadSize: u32): usize {
    var header = changetype<Header>(memory.allocate(adjust(payloadSize)));
    header.classId = Header.MAGIC;
    header.payloadSize = payloadSize;
    if (gc.implemented) {
      header.gc1 = 0;
      header.gc2 = 0;
    }
    return changetype<usize>(header) + Header.SIZE;
  }

  /** Allocates a new object and returns a pointer to its payload. Fills with zeroes.*/
  // @ts-ignore: decorator
  @unsafe export function alloc(payloadSize: u32): usize {
    var ref = allocRaw(payloadSize);
    memory.fill(ref, 0, payloadSize);
    return ref;
  }

  /** Reallocates an object if necessary. Returns a pointer to its (moved) payload. */
  // @ts-ignore: decorator
  @unsafe export function realloc(ref: usize, newPayloadSize: u32): usize {
    // Background: When managed objects are allocated these aren't immediately registered with GC
    // but can be used as scratch objects while unregistered. This is useful in situations where
    // the object must be reallocated multiple times because its final size isn't known beforehand,
    // e.g. in Array#filter, with only the final object making it into GC'ed userland.
    var header = changetype<Header>(ref - Header.SIZE);
    var payloadSize = header.payloadSize;
    if (payloadSize < newPayloadSize) {
      let newAdjustedSize = adjust(newPayloadSize);
      if (select(adjust(payloadSize), 0, ref > HEAP_BASE) < newAdjustedSize) {
        // move if the allocation isn't large enough or not a heap object
        let newHeader = changetype<Header>(memory.allocate(newAdjustedSize));
        newHeader.classId = Header.MAGIC;
        if (gc.implemented) {
          newHeader.gc1 = 0;
          newHeader.gc2 = 0;
        }
        let newRef = changetype<usize>(newHeader) + Header.SIZE;
        memory.copy(newRef, ref, payloadSize);
        memory.fill(newRef + payloadSize, 0, newPayloadSize - payloadSize);
        if (header.classId == Header.MAGIC) {
          // free right away if not registered yet
          assert(ref > HEAP_BASE); // static objects aren't scratch objects
          memory.free(changetype<usize>(header));
        } else if (gc.implemented) {
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

  function unref(ref: usize): Header {
    assert(ref >= HEAP_BASE + Header.SIZE); // must be a heap object
    var header = changetype<Header>(ref - Header.SIZE);
    assert(header.classId == Header.MAGIC); // must be unregistered
    return header;
  }

  /** Frees an object. Must not have been registered with GC yet. */
  // @ts-ignore: decorator
  @unsafe @inline export function free<T>(ref: T): void {
    memory.free(changetype<usize>(unref(changetype<usize>(ref))));
  }

  /** Registers a managed object. Cannot be free'd anymore afterwards. */
  // @ts-ignore: decorator
  @unsafe @inline export function register<T>(ref: usize): T {
    if (!isReference<T>()) ERROR("reference expected");
    // see comment in REALLOC why this is useful. also inline this because
    // it's generic so we don't get a bunch of functions.
    unref(ref).classId = gc.classId<T>();
    if (gc.implemented) gc.register(ref);
    return changetype<T>(ref);
  }

  /** Links a managed object with its managed parent. */
  // @ts-ignore: decorator
  @unsafe @inline export function link<T, TParent>(ref: T, parentRef: TParent): void {
    assert(changetype<usize>(ref) >= HEAP_BASE + Header.SIZE); // must be a heap object
    var header = changetype<Header>(changetype<usize>(ref) - Header.SIZE);
    assert(header.classId != Header.MAGIC && header.gc1 != 0 && header.gc2 != 0); // must be registered
    if (gc.implemented) gc.link(changetype<usize>(ref), changetype<usize>(parentRef)); // tslint:disable-line
  }
}

import { ArrayBuffer } from "./arraybuffer";

export abstract class ArrayBufferView {
  @lazy static readonly MAX_BYTELENGTH: i32 = MAX_SIZE_32 - runtime.Header.SIZE;

  [key: number]: number;

  // @ts-ignore: decorator
  @unsafe data: ArrayBuffer;
  // @ts-ignore: decorator
  @unsafe dataStart: usize;
  // @ts-ignore: decorator
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
    ERROR("missing implementation: [T extends ArrayBufferView]#length");
    return unreachable();
  }
}
