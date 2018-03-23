const HEADER_SIZE: usize = sizeof<i32>();

@sealed
export class ArrayBuffer {

  readonly byteLength: i32;

  constructor(length: i32) {
    if (<u32>length > 0x7fffffff) throw new RangeError("Invalid array buffer length");
    var buffer = allocate_memory(HEADER_SIZE + <usize>length);
    store<i32>(buffer, length);
    return changetype<ArrayBuffer>(buffer);
  }

  slice(begin: i32 = 0, end: i32 = 0x7fffffff): ArrayBuffer {
    var len = this.byteLength;
    if (begin < 0) begin = max(len + begin, 0);
    else begin = min(begin, len);
    if (end < 0) end = max(len + end, 0);
    else end = min(end, len);
    var newLen = max(end - begin, 0);
    if (newLen) {
      let buffer = allocate_memory(HEADER_SIZE + <usize>newLen);
      store<i32>(buffer, newLen);
      move_memory(buffer + HEADER_SIZE, changetype<usize>(this) + HEADER_SIZE + begin, newLen);
      return changetype<ArrayBuffer>(buffer);
    } else if (ArrayBuffer.EMPTY) {
      return ArrayBuffer.EMPTY;
    } else {
      let buffer = allocate_memory(HEADER_SIZE);
      store<i32>(buffer, 0);
      ArrayBuffer.EMPTY = changetype<ArrayBuffer>(buffer);
      return changetype<ArrayBuffer>(buffer);
    }
  }

  /** @internal */
  static EMPTY: ArrayBuffer | null = null;
}
