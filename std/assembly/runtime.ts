// The runtime provides common functionality that links runtime interfaces for memory management
// and garbage collection to the standard library, making sure it all plays well together.

import { HEADER, HEADER_SIZE, HEADER_MAGIC, adjust } from "./util/runtime";
import { HEAP_BASE, memory } from "./memory";
import { ArrayBufferView } from "./arraybuffer";

/** Gets the computed unique id of a class type. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function __runtime_id<T>(): u32;

/** Tests if a managed class is the same as or a superclass of another. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function __runtime_instanceof(id: u32, superId: u32): bool;

/** Runtime implementation. */
@unmanaged
export class runtime {
  private constructor() { return unreachable(); }

  /** Determines whether a managed object is considered to be an instance of the class represented by the specified runtime id. */
  @unsafe
  static instanceof(ref: usize, id: u32): bool { // keyword
    return ref
      ? __runtime_instanceof(
          changetype<HEADER>(ref - HEADER_SIZE).classId,
          id
        )
      : false;
  }
}

/** Runtime implementation. */
export namespace runtime {

  /** Allocates the memory necessary to represent a managed object of the specified size. */
  // @ts-ignore: decorator
  @unsafe
  export function allocate(payloadSize: usize): usize {
    var header = changetype<HEADER>(memory.allocate(adjust(payloadSize)));
    header.classId = HEADER_MAGIC;
    header.payloadSize = payloadSize;
    if (isDefined(__ref_collect)) {
      header.reserved1 = 0;
      header.reserved2 = 0;
    }
    return changetype<usize>(header) + HEADER_SIZE;
  }

  /** Reallocates the memory of a managed object that turned out to be too small or too large. */
  // @ts-ignore: decorator
  @unsafe
  export function reallocate(ref: usize, newPayloadSize: usize): usize {
    // Background: When managed objects are allocated these aren't immediately registered with GC
    // but can be used as scratch objects while unregistered. This is useful in situations where
    // the object must be reallocated multiple times because its final size isn't known beforehand,
    // e.g. in Array#filter, with only the final object making it into GC'ed userland.
    var header = changetype<HEADER>(ref - HEADER_SIZE);
    var payloadSize = header.payloadSize;
    if (payloadSize < newPayloadSize) {
      let newAdjustedSize = adjust(newPayloadSize);
      if (select(adjust(payloadSize), 0, ref > HEAP_BASE) < newAdjustedSize) {
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

  /** Discards the memory of a managed object that hasn't been registered yet. */
  // @ts-ignore: decorator
  @unsafe
  export function discard(ref: usize): void {
    if (!ASC_NO_ASSERT) {
      assert(ref > HEAP_BASE); // must be a heap object
      let header = changetype<HEADER>(ref - HEADER_SIZE);
      assert(header.classId == HEADER_MAGIC);
      memory.free(changetype<usize>(header));
    } else {
      memory.free(changetype<usize>(ref - HEADER_SIZE));
    }
  }

  /** Registers a managed object of the kind represented by the specified runtime id. */
  // @ts-ignore: decorator
  @unsafe
  export function register(ref: usize, id: u32): usize {
    if (!ASC_NO_ASSERT) {
      assert(ref > HEAP_BASE); // must be a heap object
      let header = changetype<HEADER>(ref - HEADER_SIZE);
      assert(header.classId == HEADER_MAGIC);
      header.classId = id;
    } else {
      changetype<HEADER>(ref - HEADER_SIZE).classId = id;
    }
    if (isDefined(__ref_register)) __ref_register(ref);
    return ref;
  }

  /** Allocates and registers, but doesn't initialize the data of, a new `String` of the specified length. */
  // @ts-ignore: decorator
  @unsafe
  export function newString(length: i32): usize {
    return runtime.register(runtime.allocate(<usize>length << 1), __runtime_id<String>());
  }

  /** Allocates and registers, but doesn't initialize the data of, a new `ArrayBuffer` of the specified byteLength. */
  // @ts-ignore: decorator
  @unsafe
  export function newArrayBuffer(byteLength: i32): usize {
    return runtime.register(runtime.allocate(<usize>byteLength), __runtime_id<ArrayBuffer>());
  }

  /** Allocates and registers, but doesn't initialize the data of, a new `Array` of the specified length and element alignment.*/
  // @ts-ignore: decorator
  @unsafe
  export function newArray(length: i32, alignLog2: usize, id: u32, data: usize = 0): usize {
    // TODO: This API isn't great, but the compiler requires it for array literals anyway,
    // that is when an array literal is encountered and its data is static, this function is
    // called and the static buffer provided as `data`. This function can also be used to
    // create typed arrays in that `Array` also implements `ArrayBufferView` but has an
    // additional `.length_` property that remains unused overhead for typed arrays.
    var array = runtime.register(runtime.allocate(offsetof<i32[]>()), id);
    var bufferSize = <usize>length << alignLog2;
    var buffer = runtime.register(runtime.allocate(bufferSize), __runtime_id<ArrayBuffer>());
    changetype<ArrayBufferView>(array).data = changetype<ArrayBuffer>(buffer); // links
    changetype<ArrayBufferView>(array).dataStart = buffer;
    changetype<ArrayBufferView>(array).dataLength = bufferSize;
    store<i32>(changetype<usize>(array), length, offsetof<i32[]>("length_"));
    if (data) memory.copy(buffer, data, bufferSize);
    return array;
  }
}
