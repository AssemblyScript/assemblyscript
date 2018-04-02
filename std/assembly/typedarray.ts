/** @internal */
abstract class TypedArray<T> /* implements ArrayBufferView<T> */ {

  readonly buffer: ArrayBuffer;
  readonly byteOffset: i32;
  readonly byteLength: i32;
  get length(): i32 { return this.byteLength >> alignof<T>(); }

  constructor(length: i32) {
    const maxLength = <u32>0x7fffffff >> alignof<T>();
    if (<u32>length > maxLength) throw new RangeError("Invalid typed array length");
    var byteLength = length << alignof<T>();
    this.buffer = new ArrayBuffer(byteLength);
    this.byteOffset = 0;
    this.byteLength = byteLength;
  }
}

// export class Int8Array extends TypedArray<i8> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<i8>();
//   static readonly name: string = "Int8Array";
// }

// export class Uint8Array extends TypedArray<u8> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();
//   static readonly name: string = "Uint8Array";
// }

// export class Int16Array extends TypedArray<i16> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<i16>();
//   static readonly name: string = "Int16Array";
// }

// export class Uint16Array extends TypedArray<u16> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<u16>();
//   static readonly name: string = "Uint16Array";
// }

// export class Int32Array extends TypedArray<i32> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<i32>();
//   static readonly name: string = "Int32Array";
// }

// export class Uint32Array extends TypedArray<u32> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<u32>();
//   static readonly name: string = "Uint32Array";
// }

// export class Int64Array extends TypedArray<i64> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<i64>();
//   static readonly name: string = "Int64Array";
// }

// export class Uint64Array extends TypedArray<u64> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<u64>();
//   static readonly name: string = "Uint64Array";
// }

// export class Float32Array extends TypedArray<f32> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<f32>();
//   static readonly name: string = "Float32Array";
// }

// export class Float64Array extends TypedArray<f64> {
//   static readonly BYTES_PER_ELEMENT: usize = sizeof<f64>();
//   static readonly name: string = "Float64Array";
// }
