import {
  TypedArray
} from "./internal/typedarray";

export class Int8Array extends TypedArray<i8> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i8>();
}

export class Uint8Array extends TypedArray<u8> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();
}

export class Int16Array extends TypedArray<i16> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i16>();
}

export class Uint16Array extends TypedArray<u16> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u16>();
}

export class Int32Array extends TypedArray<i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i32>();
}

export class Uint32Array extends TypedArray<u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u32>();
}

export class Int64Array extends TypedArray<i64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i64>();
}

export class Uint64Array extends TypedArray<u64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u64>();
}

export class Float32Array extends TypedArray<f32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f32>();
}

export class Float64Array extends TypedArray<f64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f64>();
}
