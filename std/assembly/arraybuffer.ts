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
    return (
      value instanceof Uint8ClampedArray ||
      value instanceof Uint8Array  ||
      value instanceof Int8Array   ||
      value instanceof Uint16Array ||
      value instanceof Int16Array  ||
      value instanceof Uint32Array ||
      value instanceof Int32Array  ||
      value instanceof Uint64Array ||
      value instanceof Int64Array  ||
      value instanceof DataView
    ) && value !== null;
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
    if (begin < 0) begin = max(len + begin, 0);
    else begin = min(begin, len);
    if (end < 0) end = max(len + end, 0);
    else end = min(end, len);
    var newLen = max(end - begin, 0);
    var buffer = allocateUnsafe(newLen);
    memory.copy(changetype<usize>(buffer) + HEADER_SIZE, changetype<usize>(this) + HEADER_SIZE + begin, newLen);
    return buffer;
  }

  toString(): string {
    return "[object ArrayBuffer]";
  }
}
