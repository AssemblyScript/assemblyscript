// The runtime provides common functionality that links runtime interfaces for memory management
// and garbage collection to the standard library, making sure it all plays well together.

import { HEADER, HEADER_SIZE, HEADER_MAGIC, adjust } from "./util/runtime";
import { HEAP_BASE, memory } from "./memory";
import { ArrayBufferView } from "./arraybuffer";
import { E_NOTIMPLEMENTED } from "./util/error";

/** Gets the computed unique id of a class type. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function __runtime_id<T>(): u32;

/** Tests if a managed class is the same as or a superclass of another. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function __runtime_instanceof(id: u32, superId: u32): bool;

/** Marks root objects when a tracing GC is present. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function __gc_mark_roots(): void;

/** Marks class members when a tracing GC is present. */
// @ts-ignore: decorator
@unsafe @builtin
export declare function __gc_mark_members(classId: u32, ref: usize): void;

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
    return register(allocate(<usize>length << 1), __runtime_id<String>());
  }

  /** Allocates and registers, but doesn't initialize the data of, a new `ArrayBuffer` of the specified byteLength. */
  // @ts-ignore: decorator
  @unsafe
  export function newArrayBuffer(byteLength: i32): usize {
    return register(allocate(<usize>byteLength), __runtime_id<ArrayBuffer>());
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
    var array = register(allocate(offsetof<i32[]>()), id);
    var bufferSize = <usize>length << alignLog2;
    var buffer = register(allocate(bufferSize), __runtime_id<ArrayBuffer>());
    changetype<ArrayBufferView>(array).data = changetype<ArrayBuffer>(buffer); // links
    changetype<ArrayBufferView>(array).dataStart = buffer;
    changetype<ArrayBufferView>(array).dataLength = bufferSize;
    store<i32>(changetype<usize>(array), length, offsetof<i32[]>("length_"));
    if (data) memory.copy(buffer, data, bufferSize);
    return array;
  }

  /** Retains a managed object externally, making sure that it doesn't become collected. */
  // @ts-ignore: decorator
  @unsafe
  export function retain(ref: usize): void {
    if (isDefined(__ref_collect)) {
      if (isDefined(__ref_link)) __ref_link(ref, changetype<usize>(ROOT));
      else if (isDefined(__ref_retain)) __ref_retain(ref);
    }
  }

  /** Releases a managed object externally, allowing it to become collected. */
  // @ts-ignore: decorator
  @unsafe
  export function release(ref: usize): void {
    if (isDefined(__ref_collect)) {
      if (isDefined(__ref_unlink)) __ref_unlink(ref, changetype<usize>(ROOT));
      else if (isDefined(__ref_release)) __ref_release(ref);
    }
  }

  /** Performs a full garbage collection cycle.*/
  // @ts-ignore: decorator
  @unsafe
  export function collect(): void {
    // FIXME: annotated unsafe because calling it in the middle of a function collects inner
    // references prematurely with a tracing GC, which is pretty bad actually.

    // function explode(): Ref {
    //   var ref = new Ref();
    //   gc.collect(); // collects ref
    //   return ref;
    // }

    if (isDefined(__ref_collect)) __ref_collect();
    else throw new Error(E_NOTIMPLEMENTED);
  }
}

class Root {}

// @ts-ignore
@lazy
var ROOT = new Root();
