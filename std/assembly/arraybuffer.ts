/// <reference path="./rt/index.d.ts" />

import { BLOCK, BLOCK_MAXSIZE, BLOCK_OVERHEAD } from "./rt/common";
import { idof } from "./builtins";
import { E_INVALIDLENGTH } from "./util/error";

export abstract class ArrayBufferView {

  @unsafe data: ArrayBuffer;
  @unsafe dataStart: usize;
  @unsafe dataLength: u32;

  protected constructor(length: i32, alignLog2: i32) {
    if (<u32>length > <u32>BLOCK_MAXSIZE >>> alignLog2) throw new RangeError(E_INVALIDLENGTH);
    var buffer = __alloc(length = length << alignLog2, idof<ArrayBuffer>());
    memory.fill(buffer, 0, <usize>length);
    this.data = changetype<ArrayBuffer>(buffer); // retains
    this.dataStart = buffer;
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

@sealed export class ArrayBuffer {

  static isView<T>(value: T): bool {
    if (value) {
      if (value instanceof Int8Array) return true;
      if (value instanceof Uint8Array) return true;
      if (value instanceof Uint8ClampedArray) return true;
      if (value instanceof Int16Array) return true;
      if (value instanceof Uint16Array) return true;
      if (value instanceof Int32Array) return true;
      if (value instanceof Uint32Array) return true;
      if (value instanceof Int64Array) return true;
      if (value instanceof Uint64Array) return true;
      if (value instanceof Float32Array) return true;
      if (value instanceof Float64Array) return true;
      if (value instanceof DataView) return true;
    }
    return false;
  }

  constructor(length: i32) {
    if (<u32>length > <u32>BLOCK_MAXSIZE) throw new RangeError(E_INVALIDLENGTH);
    var buffer = __alloc(<usize>length, idof<ArrayBuffer>());
    memory.fill(buffer, 0, <usize>length);
    return changetype<ArrayBuffer>(buffer); // retains
  }

  get byteLength(): i32 {
    return changetype<BLOCK>(changetype<usize>(this) - BLOCK_OVERHEAD).rtSize;
  }

  slice(begin: i32 = 0, end: i32 = BLOCK_MAXSIZE): ArrayBuffer {
    var length = this.byteLength;
    begin = begin < 0 ? max(length + begin, 0) : min(begin, length);
    end   = end   < 0 ? max(length + end  , 0) : min(end  , length);
    var outSize = <usize>max(end - begin, 0);
    var out = __alloc(outSize, idof<ArrayBuffer>());
    memory.copy(out, changetype<usize>(this) + <usize>begin, outSize);
    return changetype<ArrayBuffer>(out); // retains
  }

  toString(): string {
    return "[object ArrayBuffer]";
  }
}
