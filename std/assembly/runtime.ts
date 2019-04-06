// The runtime provides common functionality that links runtime interfaces for memory management
// and garbage collection to the standard library, making sure it all plays well together.

import { HEADER, HEADER_SIZE, allocate, register } from "./util/runtime";
import { E_NOTIMPLEMENTED } from "./util/error";
import { ArrayBufferView } from "./arraybuffer";
import { RTTIFlags, RTTIData } from "./common/rtti";

// @ts-ignore: decorator
@builtin
export declare const RTTI_BASE: usize;

/** Gets the computed unique id of a class type. */
// @ts-ignore: decorator
@builtin
export declare function __runtime_id<T>(): u32;

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
  static instanceof(ref: usize, superId: u32): bool { // keyword
    var id = changetype<HEADER>(ref - HEADER_SIZE).classId;
    var ptr = RTTI_BASE;
    if (id && id <= load<u32>(ptr)) {
      do if (id == superId) return true;
      while (id = changetype<RTTIData>(ptr + id * offsetof<RTTIData>()).base);
    }
    return false;
  }
}
export namespace runtime {

  /** Gets the runtime flags of the managed type represented by the specified runtime id. */
  export function flags(id: u32): RTTIFlags {
    var ptr = RTTI_BASE;
    return !id || id > load<u32>(ptr)
      ? unreachable()
      : changetype<RTTIData>(ptr + id * offsetof<RTTIData>()).flags;
  }

  /** Allocates and registers, but doesn't initialize the data of, a new managed object of the specified kind. */
  // @ts-ignore: decorator
  @unsafe
  export function newObject(payloadSize: u32, id: u32): usize {
    return register(allocate(<usize>payloadSize), id);
  }

  /** Allocates and registers, but doesn't initialize the data of, a new `String` of the specified length. */
  // @ts-ignore: decorator
  @unsafe
  export function newString(length: i32): usize {
    return newObject(length << 1, __runtime_id<String>());
  }

  /** Allocates and registers, but doesn't initialize the data of, a new `ArrayBuffer` of the specified byteLength. */
  // @ts-ignore: decorator
  @unsafe
  export function newArrayBuffer(byteLength: i32): usize {
    return newObject(byteLength, __runtime_id<ArrayBuffer>());
  }

  /** Allocates and registers a new `Array` of the specified kind using the given backing buffer.*/
  // @ts-ignore: decorator
  @unsafe
  export function newArray(id: u32, buffer: usize): usize {
    var flags = runtime.flags(id); // traps if invalid
    var alignLog2 = (<u32>flags / RTTIFlags.VALUE_ALIGN_0) & 31;
    var byteLength: i32;
    if (!buffer) buffer = newArrayBuffer(byteLength = 0);
    else byteLength = changetype<ArrayBuffer>(buffer).byteLength;
    var array = newObject(id, offsetof<i32[]>());
    changetype<ArrayBufferView>(array).data = changetype<ArrayBuffer>(buffer); // links
    changetype<ArrayBufferView>(array).dataStart = buffer;
    changetype<ArrayBufferView>(array).dataLength = byteLength;
    store<i32>(changetype<usize>(array), byteLength >>> alignLog2, offsetof<i32[]>("length_"));
    if (flags & RTTIFlags.VALUE_MANAGED) {
      let cur = buffer;
      let end = cur + <usize>byteLength;
      while (cur < end) {
        let ref = load<usize>(cur);
        if (ref) {
          if (isDefined(__ref_link)) __ref_link(ref, array);
          else if (isDefined(__ref_retain)) __ref_retain(ref);
          else assert(false);
        }
        cur += sizeof<usize>();
      }
    }
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

  /** Performs a full garbage collection cycle. */
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

/** A root object to retain managed objects on externally. */
// @ts-ignore
@lazy
var ROOT = new Root();
