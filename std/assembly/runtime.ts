// The runtime provides common functionality that links runtime interfaces for memory management
// and garbage collection to the standard library, making sure it all plays well together.

import { HEADER, HEADER_SIZE, allocate, register } from "./util/runtime";
import { E_NOTIMPLEMENTED } from "./util/error";
import { memory } from "./memory";
import { ArrayBufferView } from "./arraybuffer";

/** Gets the computed unique id of a class type. */
// @ts-ignore: decorator
@builtin
export declare function __runtime_id<T>(): u32;

/** Tests if a managed class is the same as or a superclass of another. */
// @ts-ignore: decorator
@builtin
export declare function __runtime_instanceof(id: u32, superId: u32): bool;

/** Runtime flags. */
const enum RuntimeFlags { // keep in sync with src/program.ts
  NONE = 0,
  /** Type is an `Array`. */
  ARRAY = 1 << 0,
  /** Type is a `Set`. */
  SET = 1 << 1,
  /** Type is a `Map`. */
  MAP = 1 << 2,
  /** Value alignment of 1 byte. */
  VALUE_ALIGN_0 = 1 << 3,
  /** Value alignment of 2 bytes. */
  VALUE_ALIGN_1 = 1 << 4,
  /** Value alignment of 4 bytes. */
  VALUE_ALIGN_2 = 1 << 5,
  /** Value alignment of 8 bytes. */
  VALUE_ALIGN_3 = 1 << 6,
  /** Value alignment of 16 bytes. */
  VALUE_ALIGN_4 = 1 << 7,
  /** Value type is nullable. */
  VALUE_NULLABLE = 1 << 8,
  /** Value type is managed. */
  VALUE_MANAGED = 1 << 9,
  /** Key alignment of 1 byte. */
  KEY_ALIGN_0 = 1 << 10,
  /** Key alignment of 2 bytes. */
  KEY_ALIGN_1 = 1 << 11,
  /** Key alignment of 4 bytes. */
  KEY_ALIGN_2 = 1 << 12,
  /** Key alignment of 8 bytes. */
  KEY_ALIGN_3 = 1 << 13,
  /** Key alignment of 16 bytes. */
  KEY_ALIGN_4 = 1 << 14,
  /** Key type is nullable. */
  KEY_NULLABLE = 1 << 15,
  /** Key type is managed. */
  KEY_MANAGED = 1 << 16
}

/** Gets the runtime flags of the managed type represented by the specified runtime id. */
// @ts-ignore: decorator
@builtin
export declare function __runtime_flags(id: u32): RuntimeFlags;

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
export namespace runtime {

  export function flags(id: u32): RuntimeFlags {
    return __runtime_flags(id);
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
    // TODO: a way to determine whether the array has managed elements that must be linked?
    return array;
  }

  // export function newArray2(id: u32, buffer: usize): usize {
  //   var flags = __runtime_flags(id); // traps if invalid
  //   var alignLog2 = (flags / RuntimeFlags.VALUE_ALIGN_0) & 31;
  //   var byteLength: i32;
  //   if (!buffer) {
  //     buffer = newArrayBuffer(byteLength = 0);
  //   } else {
  //     byteLength = changetype<ArrayBuffer>(buffer).byteLength;
  //   }
  //   var array = register(allocate(offsetof<i32[]>()), id);
  //   changetype<ArrayBufferView>(array).data = changetype<ArrayBuffer>(buffer); // links
  //   changetype<ArrayBufferView>(array).dataStart = buffer;
  //   changetype<ArrayBufferView>(array).dataLength = byteLength;
  //   store<i32>(changetype<usize>(array), byteLength >>> alignLog2, offsetof<i32[]>("length_"));
  //   if (flags & RuntimeFlags.VALUE_MANAGED) {
  //     let cur = buffer;
  //     let end = cur + <usize>byteLength;
  //     while (cur < end) {
  //       let ref = load<usize>(cur);
  //       if (ref) {
  //         if (isDefined(__ref_link)) __ref_link(ref, array);
  //         else if (isDefined(__ref_retain)) __ref_retain(ref);
  //         else assert(false);
  //       }
  //       cur += sizeof<usize>();
  //     }
  //   }
  //   return array;
  // }

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
