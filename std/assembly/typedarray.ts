class TypedArray<T> {

  readonly buffer: ArrayBuffer;
  readonly byteOffset: i32;
  readonly byteLength: i32;
  get length(): i32 { return this.byteLength / sizeof<T>(); }

  constructor(length: i32) {
    var byteLength = length * sizeof<T>();
    this.buffer = new ArrayBuffer(byteLength);
    this.byteOffset = 0;
    this.byteLength = byteLength;
  }

  @operator("[]")
  private __get(index: i32): T {
    var offset = this.byteOffset;
    assert(<u32>index < <u32>this.byteLength / sizeof<T>());
    return load<T>(changetype<usize>(this.buffer) + (offset + index) * sizeof<T>(), 4);
  }

  @operator("[]=")
  private __set(index: i32, value: T): void {
    var offset = this.byteOffset;
    assert(<u32>index < <u32>(this.byteLength / sizeof<T>()));
    store<T>(changetype<usize>(this.buffer) + (offset + index) * sizeof<T>(), value, 4);
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
