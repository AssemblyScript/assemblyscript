import {
  ALLOC_RAW,
  REGISTER,
  ArrayBufferBase
} from "./runtime";

import {
  Int8Array,
  Uint8Array,
  Uint8ClampedArray,
  Int16Array,
  Uint16Array,
  Int32Array,
  Uint32Array,
  Int64Array,
  Uint64Array,
  Float32Array,
  Float64Array
} from "./typedarray";

import {
  DataView
} from "./dataview";

@sealed export class ArrayBuffer extends ArrayBufferBase {

  @inline static isView<T>(value: T): bool {
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

  slice(begin: i32 = 0, end: i32 = ArrayBuffer.MAX_BYTELENGTH): ArrayBuffer {
    var length = this.byteLength;
    begin = begin < 0 ? max(length + begin, 0) : min(begin, length);
    end   = end   < 0 ? max(length + end  , 0) : min(end  , length);
    var outSize = <usize>max(end - begin, 0);
    var out = ALLOC_RAW(outSize);
    memory.copy(out, changetype<usize>(this) + <usize>begin, outSize);
    return REGISTER<ArrayBuffer>(out);
  }

  toString(): string {
    return "[object ArrayBuffer]";
  }
}
