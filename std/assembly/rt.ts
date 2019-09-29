import { Typeinfo, TypeinfoFlags } from "./shared/typeinfo";
import { E_INDEXOUTOFRANGE } from "./util/error";
import { BLOCK, BLOCK_OVERHEAD } from "./rt/common";
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
  var id = changetype<BLOCK>(ref - BLOCK_OVERHEAD).rtId;
  var ptr = __rtti_base;
  if (id <= load<u32>(ptr)) {
    do if (id == superId) return true;
    while (id = changetype<Typeinfo>(ptr + sizeof<u32>() + id * offsetof<Typeinfo>()).base);
  }
  return false;
}

// @ts-ignore: decorator
@unsafe
export function __allocArray(length: i32, alignLog2: usize, id: u32, data: usize = 0): usize {
  var array = __alloc(offsetof<i32[]>(), id);
  var bufferSize = <usize>length << alignLog2;
  var buffer = __alloc(bufferSize, idof<ArrayBuffer>());
  store<usize>(array, __retain(buffer), offsetof<ArrayBufferView>("buffer"));
  store<usize>(array, buffer, offsetof<ArrayBufferView>("dataStart"));
  store<u32>(array, bufferSize, offsetof<ArrayBufferView>("byteLength"));
  store<i32>(changetype<usize>(array), length, offsetof<i32[]>("length_"));
  if (data) memory.copy(buffer, data, bufferSize);
  return array;
}

// These are provided by the respective implementation, included as another entry file by asc:

// @builtin @unsafe
// export declare function __alloc(size: usize, id: u32): usize;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __realloc(ref: usize, size: usize): usize;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __free(ref: usize): void;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __retain(ref: usize): usize;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __release(ref: usize): void;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __collect(): void;

// // @ts-ignore: decorator
// @builtin @unsafe
// export declare function __visit(ref: usize, cookie: u32): void;
