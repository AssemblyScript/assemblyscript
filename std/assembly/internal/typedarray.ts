import {
  HEADER_SIZE as HEADER_SIZE_AB,
  MAX_BLENGTH,
  allocUnsafe,
  loadUnsafeWithOffset,
  storeUnsafeWithOffset
} from "./arraybuffer";

/** Typed array base class. Not a global object. */
export abstract class TypedArray<T,V> {

  readonly buffer: ArrayBuffer;
  readonly byteOffset: i32;
  readonly byteLength: i32;

  constructor(length: i32) {
    const MAX_LENGTH = <u32>MAX_BLENGTH / sizeof<T>();
    if (<u32>length > MAX_LENGTH) throw new RangeError("Invalid typed array length");
    var byteLength = length << alignof<T>();
    var buffer = allocUnsafe(byteLength);
    set_memory(changetype<usize>(buffer) + HEADER_SIZE_AB, 0, <usize>byteLength);
    this.buffer = buffer;
    this.byteOffset = 0;
    this.byteLength = byteLength;
  }

  @inline
  get length(): i32 {
    return (this.byteLength - this.byteOffset) >> alignof<T>();
  }

  @operator("[]")
  protected __get(index: i32): T {
    var byteOffset = this.byteOffset;
    var elementLength = (this.byteLength - byteOffset) >>> alignof<T>();
    if (<u32>index >= <u32>elementLength) throw new Error("Index out of bounds");
    return loadUnsafeWithOffset<T,T>(this.buffer, index, byteOffset);
  }

  @inline @operator("{}")
  protected __unchecked_get(index: i32): T {
    return loadUnsafeWithOffset<T,T>(this.buffer, index, this.byteOffset);
  }

  @operator("[]=")
  protected __set(index: i32, value: V): void {
    var byteOffset = this.byteOffset;
    var elementLength = (this.byteLength - byteOffset) >>> alignof<T>();
    if (<u32>index >= <u32>elementLength) throw new Error("Index out of bounds");
    storeUnsafeWithOffset<T,V>(this.buffer, index, value, byteOffset);
  }

  @inline @operator("{}=")
  protected __unchecked_set(index: i32, value: V): void {
    storeUnsafeWithOffset<T,V>(this.buffer, index, value, this.byteOffset);
  }

  // copyWithin(target: i32, start: i32, end: i32 = this.length): this

  @inline
  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): TypedArray<T,V> {
    var length = this.length;
    if (begin < 0) begin = max(length + begin, 0);
    else begin = min(begin, length);
    if (end < 0) end = max(length + end, begin);
    else end = max(min(end, length), begin);
    var slice = allocate_memory(offsetof<this>());
    store<usize>(slice, this.buffer, offsetof<this>("buffer"));
    store<i32>(slice, begin << alignof<T>(), offsetof<this>("byteOffset"));
    store<i32>(slice, end << alignof<T>(), offsetof<this>("byteLength"));
    return changetype<this>(slice);
  }
}
