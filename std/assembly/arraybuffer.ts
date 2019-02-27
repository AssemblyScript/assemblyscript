import {
  HEADER_SIZE,
  MAX_BLENGTH,
  allocateUnsafe
} from "./internal/arraybuffer";

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
export class ArrayBuffer {

  readonly byteLength: i32; // capped to [0, MAX_LENGTH]

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

  // @unsafe
  @inline get data(): usize { return changetype<usize>(this) + HEADER_SIZE; }

  constructor(length: i32, unsafe: bool = false) {
    if (<u32>length > <u32>MAX_BLENGTH) throw new RangeError("Invalid array buffer length");
    var buffer = allocateUnsafe(length);
    if (!unsafe) memory.fill(changetype<usize>(buffer) + HEADER_SIZE, 0, <usize>length);
    return buffer;
  }

  slice(begin: i32 = 0, end: i32 = MAX_BLENGTH): ArrayBuffer {
    var len = this.byteLength;
    begin = begin < 0 ? max(len + begin, 0) : min(begin, len);
    end = end < 0 ? max(len + end, 0) : min(end, len);
    len = max(end - begin, 0);
    var buffer = allocateUnsafe(len);
    memory.copy(
      changetype<usize>(buffer) + HEADER_SIZE,
      changetype<usize>(this) + HEADER_SIZE + begin,
      len
    );
    return buffer;
  }

  toString(): string {
    return "[object ArrayBuffer]";
  }
}
