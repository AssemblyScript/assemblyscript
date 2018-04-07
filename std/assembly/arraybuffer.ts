import {
  HEADER_SIZE,
  MAX_BLENGTH,
  allocate
} from "./internal/arraybuffer";

@sealed
export class ArrayBuffer {

  readonly byteLength: i32; // capped to [0, MAX_LENGTH]

  constructor(length: i32) {
    if (<u32>length > <u32>MAX_BLENGTH) throw new RangeError("Invalid array buffer length");
    var buffer = allocate(length);
    set_memory(changetype<usize>(buffer) + HEADER_SIZE, 0, <usize>length);
    return buffer;
  }

  slice(begin: i32 = 0, end: i32 = MAX_BLENGTH): ArrayBuffer {
    var len = this.byteLength;
    if (begin < 0) begin = max(len + begin, 0);
    else begin = min(begin, len);
    if (end < 0) end = max(len + end, 0);
    else end = min(end, len);
    var newLen = max(end - begin, 0);
    var buffer = allocate(newLen);
    move_memory(changetype<usize>(buffer) + HEADER_SIZE, changetype<usize>(this) + HEADER_SIZE + begin, newLen);
    return buffer;
  }
}
