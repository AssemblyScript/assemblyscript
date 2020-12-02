import { Typeinfo, TypeinfoFlags } from "./shared/typeinfo";
import { E_INDEXOUTOFRANGE } from "./util/error";
import { OBJECT, TOTAL_OVERHEAD } from "./rt/common";
import { ArrayBufferView } from "./arraybuffer";

// @ts-ignore: decorator
@builtin
export declare const __rtti_base: usize;

// @ts-ignore: decorator
@builtin @unsafe
export declare function __visit_globals(cookie: u32): void;

// @ts-ignore: decorator
@builtin @unsafe
export declare function __visit_members(ref: usize, cookie: u32): void;

// @ts-ignore: decorator
@unsafe
export function __typeinfo(id: u32): TypeinfoFlags {
  var ptr = __rtti_base;
  if (id > load<u32>(ptr)) throw new Error(E_INDEXOUTOFRANGE);
  return changetype<Typeinfo>(ptr + sizeof<u32>() + id * offsetof<Typeinfo>()).flags;
}

// @ts-ignore: decorator
@unsafe
export function __instanceof(ref: usize, superId: u32): bool { // keyword
  var id = changetype<OBJECT>(ref - TOTAL_OVERHEAD).rtId;
  var ptr = __rtti_base;
  if (id <= load<u32>(ptr)) {
    do if (id == superId) return true;
    while (id = changetype<Typeinfo>(ptr + sizeof<u32>() + id * offsetof<Typeinfo>()).base);
  }
  return false;
}

// @ts-ignore: decorator
@unsafe
export function __newBuffer(size: usize, id: u32, data: usize = 0): usize {
  var buffer = __stackify(__new(size, id), 0);
  if (data) memory.copy(buffer, data, size);
  return buffer;
}

// @ts-ignore: decorator
@unsafe
export function __newArray(length: i32, alignLog2: usize, id: u32, data: usize = 0): usize {
  var array = __stackify(__new(offsetof<i32[]>(), id), 0);
  var bufferSize = <usize>length << alignLog2;
  var buffer = __stackify(__newBuffer(bufferSize, idof<ArrayBuffer>(), data), 0);
  store<usize>(array, buffer, offsetof<ArrayBufferView>("buffer"));
  __link(array, buffer, false);
  store<usize>(array, buffer, offsetof<ArrayBufferView>("dataStart"));
  store<i32>(array, bufferSize, offsetof<ArrayBufferView>("byteLength"));
  store<i32>(array, length, offsetof<i32[]>("length_"));
  return array;
}

// These are provided by the respective implementation, included as another entry file by asc:

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __alloc(size: usize): usize;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __realloc(ptr: usize, size: usize): usize;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __free(ptr: usize): void;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __new(size: usize, id: u32): usize;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __renew(ptr: usize, size: usize): usize;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __link(parentPtr: usize, childPtr: usize, expectMultiple: bool): void;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __collect(): void;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __visit(ptr: usize, cookie: u32): void;

// @ts-ignore: decorator
@builtin
export declare const __stack_base: usize;
// @ts-ignore: decorator
@builtin
export declare const __stack_size: usize;
// @ts-ignore: decorator
@builtin
export declare var __stackptr: usize;

// @ts-ignore: decorator
@unsafe
export function __stackify(objPtr: usize, addr: usize): usize {
  store<usize>(addr, objPtr);
  return objPtr;
}

/* eslint-disable @typescript-eslint/no-unused-vars */

// @ts-ignore: decorator
@unsafe @lazy
function __stack_prepare(frameSize: usize): usize {
  var start = __stackptr;
  var end = start + frameSize;
  assert(end <= __stack_base + __stack_size, "stack overflow");
  __stackptr = end;
  if (ASC_FEATURE_BULK_MEMORY) {
    memory.fill(start, 0, frameSize);
  } else {
    while ((end -= sizeof<usize>()) >= start) {
      store<usize>(end, 0);
    }
  }
  return start;
}

// @ts-ignore: decorator
@unsafe @lazy
function __stack_restore(sp: usize): void {
  __stackptr = sp;
}

/* eslint-enable @typescript-eslint/no-unused-vars */
