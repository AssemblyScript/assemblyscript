import {
  HEADER_SIZE,
  MAX_BLENGTH,
  allocateUnsafe
} from "./internal/arraybuffer";

@sealed
export class ArrayBuffer {

  readonly byteLength: i32; // capped to [0, MAX_LENGTH]

  // @unsafe
  get data(): usize { return changetype<usize>(this) + HEADER_SIZE; }

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
