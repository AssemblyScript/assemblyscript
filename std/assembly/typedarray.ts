import {
  TypedArray
} from "./internal/typedarray";

export class Int8Array extends TypedArray<i8> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i8>();

  subarray(begin: i32 = 0, end: i32 = this.length): Int8Array {
    return changetype<Int8Array>(super.subarray(begin, end));
  }
}

export class Uint8Array extends TypedArray<u8> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  subarray(begin: i32 = 0, end: i32 = this.length): Uint8Array {
    return changetype<Uint8Array>(super.subarray(begin, end));
  }
}

export class Uint8ClampedArray extends TypedArray<u8> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  @operator("[]=")
  private __set(index: i32, value: i32): void {
    var byteOffset = this.byteOffset;
    var elementLength = (this.byteLength - byteOffset) >>> alignof<u8>();
    if (<u32>index >= <u32>elementLength) throw new Error("Index out of bounds");
    var clampedValue = <u8>max(0, min(0xFF, value));
    storeUnsafeWithOffset<u8>(this.buffer, index, clampedValue, byteOffset);
  }

  subarray(begin: i32 = 0, end: i32 = this.length): Uint8ClampedArray {
    return changetype<Uint8ClampedArray>(super.subarray(begin, end));
  }
}

export class Int16Array extends TypedArray<i16> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i16>();

  subarray(begin: i32 = 0, end: i32 = this.length): Int16Array {
    return changetype<Int16Array>(super.subarray(begin, end));
  }
}

export class Uint16Array extends TypedArray<u16> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u16>();

  subarray(begin: i32 = 0, end: i32 = this.length): Uint16Array {
    return changetype<Uint16Array>(super.subarray(begin, end));
  }
}

export class Int32Array extends TypedArray<i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i32>();

  subarray(begin: i32 = 0, end: i32 = this.length): Int32Array {
    return changetype<Int32Array>(super.subarray(begin, end));
  }
}

export class Uint32Array extends TypedArray<u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u32>();

  subarray(begin: i32 = 0, end: i32 = this.length): Uint32Array {
    return changetype<Uint32Array>(super.subarray(begin, end));
  }
}

export class Int64Array extends TypedArray<i64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i64>();

  subarray(begin: i32 = 0, end: i32 = this.length): Int64Array {
    return changetype<Int64Array>(super.subarray(begin, end));
  }
}

export class Uint64Array extends TypedArray<u64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u64>();

  subarray(begin: i32 = 0, end: i32 = this.length): Uint64Array {
    return changetype<Uint64Array>(super.subarray(begin, end));
  }
}

export class Float32Array extends TypedArray<f32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f32>();

  subarray(begin: i32 = 0, end: i32 = this.length): Float32Array {
    return changetype<Float32Array>(super.subarray(begin, end));
  }
}

export class Float64Array extends TypedArray<f64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f64>();

  subarray(begin: i32 = 0, end: i32 = this.length): Float64Array {
    return changetype<Float64Array>(super.subarray(begin, end));
  }
}
