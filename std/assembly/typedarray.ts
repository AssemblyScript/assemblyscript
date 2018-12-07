import {
  TypedArray
} from "./internal/typedarray";

export class Int8Array extends TypedArray<i8,i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i8>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int8Array {
    return changetype<Int8Array>(super.subarray(begin, end));
  }

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: i8, index: i32, array: Int8Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Int8Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: i8, index: i32, array: Int8Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Int8Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Uint8Array extends TypedArray<u8,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint8Array {
    return changetype<Uint8Array>(super.subarray(begin, end));
  }

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u8, index: i32, array: Uint8Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint8Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u8, index: i32, array: Uint8Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint8Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Uint8ClampedArray extends TypedArray<u8,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  @inline @operator("[]=")
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

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u8, index: i32, array: Uint8ClampedArray) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint8ClampedArray, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u8, index: i32, array: Uint8ClampedArray) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint8ClampedArray, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Int16Array extends TypedArray<i16,i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i16>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int16Array {
    return changetype<Int16Array>(super.subarray(begin, end));
  }

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: i16, index: i32, array: Int16Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Int16Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: i16, index: i32, array: Int16Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Int16Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Uint16Array extends TypedArray<u16,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u16>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint16Array {
    return changetype<Uint16Array>(super.subarray(begin, end));
  }

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u16, index: i32, array: Uint16Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint16Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u16, index: i32, array: Uint16Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint16Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Int32Array extends TypedArray<i32,i32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i32>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int32Array {
    return changetype<Int32Array>(super.subarray(begin, end));
  }

  /**
   * @param callbackfn {function} - a function that reduces each value to a ReturnType
   * @param initialValue {ReturnType} - the initial ReturnType value to be passed to the callbackfn
   */
  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: i32, index: i32, array: Int32Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Int32Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: i32, index: i32, array: Int32Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Int32Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Uint32Array extends TypedArray<u32,u32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u32>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint32Array {
    return changetype<Uint32Array>(super.subarray(begin, end));
  }

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u32, index: i32, array: Uint32Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint32Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u32, index: i32, array: Uint32Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint32Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Int64Array extends TypedArray<i64,i64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i64>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int64Array {
    return changetype<Int64Array>(super.subarray(begin, end));
  }

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: i64, index: i32, array: Int64Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Int64Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: i64, index: i32, array: Int64Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Int64Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Uint64Array extends TypedArray<u64,u64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u64>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint64Array {
    return changetype<Uint64Array>(super.subarray(begin, end));
  }

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u64, index: i32, array: Uint64Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint64Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: u64, index: i32, array: Uint64Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Uint64Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Float32Array extends TypedArray<f32,f32> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f32>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Float32Array {
    return changetype<Float32Array>(super.subarray(begin, end));
  }

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: f32, index: i32, array: Float32Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Float32Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: f32, index: i32, array: Float32Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Float32Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}

export class Float64Array extends TypedArray<f64,f64> {
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f64>();

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Float64Array {
    return changetype<Float64Array>(super.subarray(begin, end));
  }

  reduce<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: f64, index: i32, array: Float64Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Float64Array, ReturnType>(callbackfn, this, initialValue);
  }

  reduceRight<ReturnType>(
    callbackfn: (accumulator: ReturnType, value: f64, index: i32, array: Float64Array) => ReturnType,
    initialValue: ReturnType,
  ): ReturnType {
    return super.reduce_internal<Float64Array, ReturnType>(callbackfn, this, initialValue, true);
  }
}
