/// <reference path="./rt/index.d.ts" />

import { OBJECT, BLOCK_MAXSIZE, TOTAL_OVERHEAD } from "./rt/common";
import { Runtime } from "shared/runtime";
import { idof } from "./builtins";
import { E_INVALIDLENGTH } from "./util/error";

export abstract class ArrayBufferView {

  readonly buffer: ArrayBuffer;
  @unsafe readonly dataStart: usize;
  readonly byteLength: i32;

  get byteOffset(): i32 {
    return <i32>(this.dataStart - changetype<usize>(this.buffer));
  }

  protected constructor(length: i32, alignLog2: i32) {
    if (<u32>length > <u32>BLOCK_MAXSIZE >>> alignLog2) throw new RangeError(E_INVALIDLENGTH);
    let buffer = changetype<ArrayBuffer>(__new(length = length << alignLog2, idof<ArrayBuffer>()));
    if (ASC_RUNTIME != Runtime.Incremental) {
      memory.fill(changetype<usize>(buffer), 0, <usize>length);
    }
    this.buffer = buffer; // links
    this.dataStart = changetype<usize>(buffer);
    this.byteLength = length;
  }
}

@final export class ArrayBuffer {

  static isView<T>(value: T): bool {
    if (isNullable<T>()) {
      if (changetype<usize>(value) == 0) return false;
    }
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
    return false;
  }

  constructor(length: i32) {
    if (<u32>length > <u32>BLOCK_MAXSIZE) throw new RangeError(E_INVALIDLENGTH);
    let buffer = changetype<ArrayBuffer>(__new(<usize>length, idof<ArrayBuffer>()));
    if (ASC_RUNTIME != Runtime.Incremental) {
      memory.fill(changetype<usize>(buffer), 0, <usize>length);
    }
    return buffer;
  }

  get byteLength(): i32 {
    return changetype<OBJECT>(changetype<usize>(this) - TOTAL_OVERHEAD).rtSize;
  }

  slice(begin: i32 = 0, end: i32 = BLOCK_MAXSIZE): ArrayBuffer {
    let length = this.byteLength;
    begin = begin < 0 ? max(length + begin, 0) : min(begin, length);
    end   = end   < 0 ? max(length + end  , 0) : min(end  , length);
    let outSize = <usize>max(end - begin, 0);
    let out = changetype<ArrayBuffer>(__new(outSize, idof<ArrayBuffer>()));
    memory.copy(changetype<usize>(out), changetype<usize>(this) + <usize>begin, outSize);
    return out;
  }

  toString(): string {
    return "[object ArrayBuffer]";
  }
}
