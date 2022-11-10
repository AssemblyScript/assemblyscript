import { Typeinfo, TypeinfoFlags } from "./shared/typeinfo";
import { E_INDEXOUTOFRANGE } from "./util/error";
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
  let ptr = __rtti_base;
  if (id > load<u32>(ptr)) throw new Error(E_INDEXOUTOFRANGE);
  return changetype<Typeinfo>(ptr + sizeof<u32>() + id * offsetof<Typeinfo>()).flags;
}

// @ts-ignore: decorator
@unsafe
export function __newBuffer(size: usize, id: u32, data: usize = 0): usize {
  let buffer = __new(size, id);
  if (data) memory.copy(buffer, data, size);
  return buffer;
}

// @ts-ignore: decorator
@unsafe
export function __newArray(length: i32, alignLog2: usize, id: u32, data: usize = 0): usize {
  let bufferSize = <usize>length << alignLog2;
  // make sure `buffer` is tracked by the shadow stack
  let buffer = changetype<ArrayBuffer>(__newBuffer(bufferSize, idof<ArrayBuffer>(), data));
  // ...since allocating the array may trigger GC steps
  let array = __new(offsetof<i32[]>(), id);
  store<usize>(array, changetype<usize>(buffer), offsetof<ArrayBufferView>("buffer"));
  __link(array, changetype<usize>(buffer), false);
  store<usize>(array, changetype<usize>(buffer), offsetof<ArrayBufferView>("dataStart"));
  store<i32>(array, bufferSize, offsetof<ArrayBufferView>("byteLength"));
  store<i32>(array, length, offsetof<i32[]>("length_"));
  return array;
}

// @ts-ignore: decorator
@global @unsafe
function __tostack(ptr: usize): usize { // eslint-disable-line
  return ptr;
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
