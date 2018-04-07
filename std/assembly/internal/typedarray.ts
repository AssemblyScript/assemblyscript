import {
  MAX_BLENGTH,
  allocate
  // ArrayBufferView
} from "./arraybuffer";

/** Typed array base class. Not a global object. */
export abstract class TypedArray<T> /* implements ArrayBufferView<T> */ {

  readonly buffer: ArrayBuffer;
  readonly byteOffset: i32;
  readonly byteLength: i32;

  constructor(length: i32) {
    const MAX_LENGTH = <u32>MAX_BLENGTH / sizeof<T>();
    if (<u32>length > MAX_LENGTH) throw new RangeError("Invalid typed array length");
    var byteLength = length << alignof<T>();
    this.buffer = allocate(byteLength);
    this.byteOffset = 0;
    this.byteLength = byteLength;
  }

  get length(): i32 {
    return this.byteLength >> alignof<T>();
  }

  // @operator("[]") - maybe injected through ArrayBufferView?

  // @operator("[]=") - maybe injected through ArrayBufferView?

  // copyWithin(target: i32, start: i32, end: i32 = 0x7fffffff): TypedArray<T>

  // subarray(begin: i32 = 0, end: i32 = 0x7fffffff): TypedArray<T>
}
