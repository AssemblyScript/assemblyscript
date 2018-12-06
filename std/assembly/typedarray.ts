import {
  TypedArray,
  SUBARRAY,
  REDUCE,
  REDUCE_RIGHT
} from "./internal/typedarray";

export class Int8Array extends TypedArray<i8,i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i8>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int8Array {
    return SUBARRAY<Int8Array, i8>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: i8, index: i32, array: Int8Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Int8Array, i8, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: i8, index: i32, array: Int8Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Int8Array, i8, T>(this, callbackfn, initialValue);
  }
}

export class Uint8Array extends TypedArray<u8,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint8Array {
    return SUBARRAY<Uint8Array, u8>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: u8, index: i32, array: Uint8Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint8Array, u8, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: u8, index: i32, array: Uint8Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint8Array, u8, T>(this, callbackfn, initialValue);
  }
}

export class Uint8ClampedArray extends Uint8Array {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  @inline @operator("[]=")
  protected __set(index: i32, value: i32): void {
    super.__set(index, max(min(value, 255), 0));
  }

  @inline @operator("{}=")
  protected __unchecked_set(index: i32, value: i32): void {
    super.__unchecked_set(index, max(min(value, 255), 0));
  }
}

export class Int16Array extends TypedArray<i16,i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i16>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int16Array {
    return SUBARRAY<Int16Array, i16>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: i16, index: i32, array: Int16Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Int16Array, i16, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: i16, index: i32, array: Int16Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Int16Array, i16, T>(this, callbackfn, initialValue);
  }
}

export class Uint16Array extends TypedArray<u16,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u16>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint16Array {
    return SUBARRAY<Uint16Array, u16>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: u16, index: i32, array: Uint16Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint16Array, u16, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: u16, index: i32, array: Uint16Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint16Array, u16, T>(this, callbackfn, initialValue);
  }
}

export class Int32Array extends TypedArray<i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i32>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int32Array {
    return SUBARRAY<Int32Array, i32>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: i32, index: i32, array: Int32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Int32Array, i32, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: i32, index: i32, array: Int32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Int32Array, i32, T>(this, callbackfn, initialValue);
  }
}

export class Uint32Array extends TypedArray<u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u32>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint32Array {
    return SUBARRAY<Uint32Array, u32>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: u32, index: i32, array: Uint32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint32Array, u32, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: u32, index: i32, array: Uint32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint32Array, u32, T>(this, callbackfn, initialValue);
  }
}

export class Int64Array extends TypedArray<i64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i64>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int64Array {
    return SUBARRAY<Int64Array, i64>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: i64, index: i32, array: Int64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Int64Array, i64, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: i64, index: i32, array: Int64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Int64Array, i64, T>(this, callbackfn, initialValue);
  }
}

export class Uint64Array extends TypedArray<u64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u64>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint64Array {
    return SUBARRAY<Uint64Array, u64>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: u64, index: i32, array: Uint64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint64Array, u64, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: u64, index: i32, array: Uint64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint64Array, u64, T>(this, callbackfn, initialValue);
  }
}

export class Float32Array extends TypedArray<f32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f32>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Float32Array {
    return SUBARRAY<Float32Array, f32>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: f32, index: i32, array: Float32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Float32Array, f32, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: f32, index: i32, array: Float32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Float32Array, f32, T>(this, callbackfn, initialValue);
  }
}

export class Float64Array extends TypedArray<f64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f64>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Float64Array {
    return SUBARRAY<Float64Array, f64>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: f64, index: i32, array: Float64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Float64Array, f64, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: f64, index: i32, array: Float64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Float64Array, f64, T>(this, callbackfn, initialValue);
  }
}
