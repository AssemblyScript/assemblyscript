import {
  TypedArray
} from "./internal/typedarray";

export class Int8Array extends TypedArray<i8,i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i8>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int8Array {
    return changetype<Int8Array>(super.subarray(begin, end));
  }
}

export class Uint8Array extends TypedArray<u8,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint8Array {
    return changetype<Uint8Array>(super.subarray(begin, end));
  }
}

export class Uint8ClampedArray extends TypedArray<u8,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  @operator("[]=")
  protected __set(index: i32, value: i32): void {
    super.__set(index, max(min(value, 255), 0));
  }

  @inline @operator("{}=")
  protected __unchecked_set(index: i32, value: i32): void {
    super.__unchecked_set(index, max(min(value, 255), 0));
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint8ClampedArray {
    return changetype<Uint8ClampedArray>(super.subarray(begin, end));
  }
}

export class Int16Array extends TypedArray<i16,i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i16>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int16Array {
    return changetype<Int16Array>(super.subarray(begin, end));
  }
}

export class Uint16Array extends TypedArray<u16,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u16>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint16Array {
    return changetype<Uint16Array>(super.subarray(begin, end));
  }
}

export class Int32Array extends TypedArray<i32,i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i32>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int32Array {
    return changetype<Int32Array>(super.subarray(begin, end));
  }
}

export class Uint32Array extends TypedArray<u32,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u32>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint32Array {
    return changetype<Uint32Array>(super.subarray(begin, end));
  }
}

export class Int64Array extends TypedArray<i64,i64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i64>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int64Array {
    return changetype<Int64Array>(super.subarray(begin, end));
  }
}

export class Uint64Array extends TypedArray<u64,u64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u64>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint64Array {
    return changetype<Uint64Array>(super.subarray(begin, end));
  }
}

export class Float32Array extends TypedArray<f32,f32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f32>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Float32Array {
    return changetype<Float32Array>(super.subarray(begin, end));
  }
}

export class Float64Array extends TypedArray<f64,f64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f64>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Float64Array {
    return changetype<Float64Array>(super.subarray(begin, end));
  }
}
