import {
  HEADER_SIZE,
  MAX_BLENGTH,
  allocUnsafe
} from "./internal/arraybuffer";

@sealed
export class ArrayBuffer {

  readonly byteLength: i32; // capped to [0, MAX_LENGTH]

  constructor(length: i32, unsafe: bool = false) {
    if (<u32>length > <u32>MAX_BLENGTH) throw new RangeError("Invalid array buffer length");
    var buffer = allocUnsafe(length);
    if (!unsafe) set_memory(changetype<usize>(buffer) + HEADER_SIZE, 0, <usize>length);
    return buffer;
  }

  slice(begin: i32 = 0, end: i32 = MAX_BLENGTH): ArrayBuffer {
    var len = this.byteLength;
    if (begin < 0) begin = max(len + begin, 0);
    else begin = min(begin, len);
    if (end < 0) end = max(len + end, 0);
    else end = min(end, len);
    var newLen = max(end - begin, 0);
    var buffer = allocUnsafe(newLen);
    move_memory(changetype<usize>(buffer) + HEADER_SIZE, changetype<usize>(this) + HEADER_SIZE + begin, newLen);
    return buffer;
  }

  // internals

  static readonly HEADER_SIZE: usize = HEADER_SIZE;

  @inline load<T>(index: i32): T {
    return load<T>(changetype<usize>(this) + index * sizeof<T>(), HEADER_SIZE);
  }

  @inline store<T>(index: i32, value: T): void {
    store<T>(changetype<usize>(this) + index * sizeof<T>(), value, HEADER_SIZE);
  }
}
