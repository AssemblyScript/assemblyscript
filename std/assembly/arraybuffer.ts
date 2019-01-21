import {
  HEADER_SIZE,
  MAX_BLENGTH,
  allocateUnsafe
} from "./internal/arraybuffer";

import {
  isArrayBufferView as builtin_isArrayBufferView
} from "./builtins";

@sealed
export class ArrayBuffer {

  readonly byteLength: i32; // capped to [0, MAX_LENGTH]

  @inline static isView<T>(value: T): bool {
    return builtin_isArrayBufferView(value) && value !== null;
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
