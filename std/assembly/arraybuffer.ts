import {
  ALLOC_RAW,
  REGISTER,
  ArrayBufferBase
} from "./runtime";

import {
  Uint8ClampedArray,
  Uint8Array,
  Int8Array,
  Uint16Array,
  Int16Array,
  Uint32Array,
  Int32Array,
  Uint64Array,
  Int64Array
} from "./typedarray";

import {
  DataView
} from "./dataview";

@sealed
export class ArrayBuffer extends ArrayBufferBase {

  @inline static isView<T>(value: T): bool {
    if (value === null) return false;
    if (value instanceof Uint8ClampedArray) return true;
    if (value instanceof Uint8Array) return true;
    if (value instanceof Int8Array) return true;
    if (value instanceof Uint16Array) return true;
    if (value instanceof Int16Array) return true;
    if (value instanceof Uint32Array) return true;
    if (value instanceof Int32Array) return true;
    if (value instanceof Uint64Array) return true;
    if (value instanceof Int64Array) return true;
    if (value instanceof DataView) return true;
    return false;
  }

  slice(begin: i32 = 0, end: i32 = ArrayBuffer.MAX_BYTELENGTH): ArrayBuffer {
    var len = this.byteLength;
    begin = begin < 0 ? max(len + begin, 0) : min(begin, len);
    end = end < 0 ? max(len + end, 0) : min(end, len);
    len = max(end - begin, 0);
    var outSize = <usize>len;
    var out = ALLOC_RAW(outSize);
    memory.copy(out, changetype<usize>(this) + <usize>begin, outSize);
    return REGISTER<ArrayBuffer>(out);
  }

  toString(): string {
    return "[object ArrayBuffer]";
  }
}
