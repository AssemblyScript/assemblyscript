import {
  TypedArray,
  FILL,
  SORT,
  SUBARRAY,
  REDUCE,
  REDUCE_RIGHT,
  MAP,
  FIND_INDEX,
  SOME,
  EVERY,
  FOREACH,
  REVERSE,
} from "./internal/typedarray";

import {
  COMPARATOR
} from "./internal/sort";

function clampToByte(value: i32): i32 {
  return ~(value >> 31) & (((255 - value) >> 31) | value); // & 255
}

export class Int8Array extends TypedArray<i8> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<i8>();

  fill(value: i32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Int8Array {
    return FILL<Int8Array, i8>(this, value, start, end);
  }

  sort(comparator: (a: i8, b: i8) => i32 = COMPARATOR<i8>()): Int8Array {
    return SORT<Int8Array, i8>(this, comparator);
  }

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

  map(callbackfn: (value: i8, index: i32, self: Int8Array) => i8): Int8Array {
    return MAP<Int8Array, i8>(this, callbackfn);
  }

  findIndex(callbackfn: (value: i8, index: i32, self: Int8Array) => bool): i32 {
    return FIND_INDEX<Int8Array, i8>(this, callbackfn);
  }

  some(callbackfn: (value: i8, index: i32, self: Int8Array) => bool): bool {
    return SOME<Int8Array, i8>(this, callbackfn);
  }

  every(callbackfn: (value: i8, index: i32, self: Int8Array) => bool): bool {
    return EVERY<Int8Array, i8>(this, callbackfn);
  }

  forEach(callbackfn: (value: i8, index: i32, self: Int8Array) => void): void {
    FOREACH<Int8Array, i8>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, i8>(this);
  }
}

export class Uint8Array extends TypedArray<u8> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  fill(value: u32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint8Array {
    return FILL<Uint8Array, u8>(this, value, start, end);
  }

  sort(comparator: (a: u8, b: u8) => i32 = COMPARATOR<u8>()): Uint8Array {
    return SORT<Uint8Array, u8>(this, comparator);
  }

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

  map(callbackfn: (value: u8, index: i32, self: Uint8Array) => u8): Uint8Array {
    return MAP<Uint8Array, u8>(this, callbackfn);
  }

  findIndex(callbackfn: (value: u8, index: i32, self: Uint8Array) => bool): i32 {
    return FIND_INDEX<Uint8Array, u8>(this, callbackfn);
  }

  some(callbackfn: (value: u8, index: i32, self: Uint8Array) => bool): bool {
    return SOME<Uint8Array, u8>(this, callbackfn);
  }

  every(callbackfn: (value: u8, index: i32, self: Uint8Array) => bool): bool {
    return EVERY<Uint8Array, u8>(this, callbackfn);
  }

  forEach(callbackfn: (value: u8, index: i32, self: Uint8Array) => void): void {
    FOREACH<Uint8Array, u8>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, u8>(this);
  }
}

export class Uint8ClampedArray extends Uint8Array {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  @inline @operator("[]=")
  protected __set(index: i32, value: i32): void {
    super.__set(index, clampToByte(value));
  }

  @inline @operator("{}=")
  protected __unchecked_set(index: i32, value: i32): void {
    super.__unchecked_set(index, clampToByte(value));
  }

  fill(value: u32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint8ClampedArray {
    return changetype<Uint8ClampedArray>(super.fill(value, start, end)); // safe because '.fill' reuses 'this'
  }

  sort(comparator: (a: u8, b: u8) => i32 = COMPARATOR<u8>()): Uint8ClampedArray {
    return changetype<Uint8ClampedArray>(super.sort(comparator)); // safe because '.sort' reuses 'this'
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint8ClampedArray {
    return SUBARRAY<Uint8ClampedArray, u8>(this, begin, end);
  }

  reduce<T>(
    callbackfn: (accumulator: T, value: u8, index: i32, array: Uint8ClampedArray) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint8ClampedArray, u8, T>(this, callbackfn, initialValue);
  }

  reduceRight<T>(
    callbackfn: (accumulator: T, value: u8, index: i32, array: Uint8ClampedArray) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint8ClampedArray, u8, T>(this, callbackfn, initialValue);
  }

  map(callbackfn: (value: u8, index: i32, self: Uint8ClampedArray) => u8): Uint8ClampedArray {
    return MAP<Uint8ClampedArray, u8>(this, callbackfn);
  }

  findIndex(callbackfn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): i32 {
    return FIND_INDEX<Uint8ClampedArray, u8>(this, callbackfn);
  }

  some(callbackfn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): bool {
    return SOME<Uint8ClampedArray, u8>(this, callbackfn);
  }

  every(callbackfn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): bool {
    return EVERY<Uint8ClampedArray, u8>(this, callbackfn);
  }

  forEach(callbackfn: (value: u8, index: i32, self: Uint8ClampedArray) => void): void {
    FOREACH<Uint8ClampedArray, u8>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, u8>(this);
  }
}

export class Int16Array extends TypedArray<i16> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<i16>();

  fill(value: i32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Int16Array {
    return FILL<Int16Array, i16>(this, value, start, end);
  }

  sort(comparator: (a: i16, b: i16) => i32 = COMPARATOR<i16>()): Int16Array {
    return SORT<Int16Array, i16>(this, comparator);
  }

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

  map(callbackfn: (value: i16, index: i32, self: Int16Array) => i16): Int16Array {
    return MAP<Int16Array, i16>(this, callbackfn);
  }

  findIndex(callbackfn: (value: i16, index: i32, self: Int16Array) => bool): i32 {
    return FIND_INDEX<Int16Array, i16>(this, callbackfn);
  }

  some(callbackfn: (value: i16, index: i32, self: Int16Array) => bool): bool {
    return SOME<Int16Array, i16>(this, callbackfn);
  }

  every(callbackfn: (value: i16, index: i32, self: Int16Array) => bool): bool {
    return EVERY<Int16Array, i16>(this, callbackfn);
  }

  forEach(callbackfn: (value: i16, index: i32, self: Int16Array) => void): void {
    FOREACH<Int16Array, i16>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, i16>(this);
  }
}

export class Uint16Array extends TypedArray<u16> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<u16>();

  fill(value: u32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint16Array {
    return FILL<Uint16Array, u16>(this, value, start, end);
  }

  sort(comparator: (a: u16, b: u16) => i32 = COMPARATOR<u16>()): Uint16Array {
    return SORT<Uint16Array, u16>(this, comparator);
  }

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

  map(callbackfn: (value: u16, index: i32, self: Uint16Array) => u16): Uint16Array {
    return MAP<Uint16Array, u16>(this, callbackfn);
  }

  findIndex(callbackfn: (value: u16, index: i32, self: Uint16Array) => bool): i32 {
    return FIND_INDEX<Uint16Array, u16>(this, callbackfn);
  }

  some(callbackfn: (value: u16, index: i32, self: Uint16Array) => bool): bool {
    return SOME<Uint16Array, u16>(this, callbackfn);
  }

  every(callbackfn: (value: u16, index: i32, self: Uint16Array) => bool): bool {
    return EVERY<Uint16Array, u16>(this, callbackfn);
  }

  forEach(callbackfn: (value: u16, index: i32, self: Uint16Array) => void): void {
    FOREACH<Uint16Array, u16>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, u16>(this);
  }
}

export class Int32Array extends TypedArray<i32> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<i32>();

  fill(value: i32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Int32Array {
    return FILL<Int32Array, i32>(this, value, start, end);
  }

  sort(comparator: (a: i32, b: i32) => i32 = COMPARATOR<i32>()): Int32Array {
    return SORT<Int32Array, i32>(this, comparator);
  }

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

  map(callbackfn: (value: i32, index: i32, self: Int32Array) => i32): Int32Array {
    return MAP<Int32Array, i32>(this, callbackfn);
  }

  findIndex(callbackfn: (value: i32, index: i32, self: Int32Array) => bool): i32 {
    return FIND_INDEX<Int32Array, i32>(this, callbackfn);
  }

  some(callbackfn: (value: i32, index: i32, self: Int32Array) => bool): bool {
    return SOME<Int32Array, i32>(this, callbackfn);
  }

  every(callbackfn: (value: i32, index: i32, self: Int32Array) => bool): bool {
    return EVERY<Int32Array, i32>(this, callbackfn);
  }

  forEach(callbackfn: (value: i32, index: i32, self: Int32Array) => void): void {
    FOREACH<Int32Array, i32>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, i32>(this);
  }
}

export class Uint32Array extends TypedArray<u32> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<u32>();

  fill(value: u32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint32Array {
    return FILL<Uint32Array, u32>(this, value, start, end);
  }

  sort(comparator: (a: u32, b: u32) => i32 = COMPARATOR<u32>()): Uint32Array {
    return SORT<Uint32Array, u32>(this, comparator);
  }

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

  map(callbackfn: (value: u32, index: i32, self: Uint32Array) => u32): Uint32Array {
    return MAP<Uint32Array, u32>(this, callbackfn);
  }

  findIndex(callbackfn: (value: u32, index: i32, self: Uint32Array) => bool): i32 {
    return FIND_INDEX<Uint32Array, u32>(this, callbackfn);
  }

  some(callbackfn: (value: u32, index: i32, self: Uint32Array) => bool): bool {
    return SOME<Uint32Array, u32>(this, callbackfn);
  }

  every(callbackfn: (value: u32, index: i32, self: Uint32Array) => bool): bool {
    return EVERY<Uint32Array, u32>(this, callbackfn);
  }

  forEach(callbackfn: (value: u32, index: i32, self: Uint32Array) => void): void {
    FOREACH<Uint32Array, u32>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, u32>(this);
  }
}

export class Int64Array extends TypedArray<i64> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<i64>();

  fill(value: i64, start: i32 = 0, end: i32 = i32.MAX_VALUE): Int64Array {
    return FILL<Int64Array, i64>(this, value, start, end);
  }

  sort(comparator: (a: i64, b: i64) => i32 = COMPARATOR<i64>()): Int64Array {
    return SORT<Int64Array, i64>(this, comparator);
  }

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

  map(callbackfn: (value: i64, index: i32, self: Int64Array) => i64): Int64Array {
    return MAP<Int64Array, i64>(this, callbackfn);
  }

  findIndex(callbackfn: (value: i64, index: i32, self: Int64Array) => bool): i32 {
    return FIND_INDEX<Int64Array, i64>(this, callbackfn);
  }

  some(callbackfn: (value: i64, index: i32, self: Int64Array) => bool): bool {
    return SOME<Int64Array, i64>(this, callbackfn);
  }

  every(callbackfn: (value: i64, index: i32, self: Int64Array) => bool): bool {
    return EVERY<Int64Array, i64>(this, callbackfn);
  }

  forEach(callbackfn: (value: i64, index: i32, self: Int64Array) => void): void {
    FOREACH<Int64Array, i64>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, i64>(this);
  }
}

export class Uint64Array extends TypedArray<u64> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<u64>();

  fill(value: u64, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint64Array {
    return FILL<Uint64Array, u64>(this, value, start, end);
  }

  sort(comparator: (a: u64, b: u64) => i32 = COMPARATOR<u64>()): Uint64Array {
    return SORT<Uint64Array, u64>(this, comparator);
  }

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

  map(callbackfn: (value: u64, index: i32, self: Uint64Array) => u64): Uint64Array {
    return MAP<Uint64Array, u64>(this, callbackfn);
  }

  findIndex(callbackfn: (value: u64, index: i32, self: Uint64Array) => bool): i32 {
    return FIND_INDEX<Uint64Array, u64>(this, callbackfn);
  }

  some(callbackfn: (value: u64, index: i32, self: Uint64Array) => bool): bool {
    return SOME<Uint64Array, u64>(this, callbackfn);
  }

  every(callbackfn: (value: u64, index: i32, self: Uint64Array) => bool): bool {
    return EVERY<Uint64Array, u64>(this, callbackfn);
  }

  forEach(callbackfn: (value: u64, index: i32, self: Uint64Array) => void): void {
    FOREACH<Uint64Array, u64>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, u64>(this);
  }
}

export class Float32Array extends TypedArray<f32> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<f32>();

  fill(value: f32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Float32Array {
    return FILL<Float32Array, f32>(this, value, start, end);
  }

  sort(comparator: (a: f32, b: f32) => i32 = COMPARATOR<f32>()): Float32Array {
    return SORT<Float32Array, f32>(this, comparator);
  }

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

  map(callbackfn: (value: f32, index: i32, self: Float32Array) => f32): Float32Array {
    return MAP<Float32Array, f32>(this, callbackfn);
  }

  findIndex(callbackfn: (value: f32, index: i32, self: Float32Array) => bool): i32 {
    return FIND_INDEX<Float32Array, f32>(this, callbackfn);
  }

  some(callbackfn: (value: f32, index: i32, self: Float32Array) => bool): bool {
    return SOME<Float32Array, f32>(this, callbackfn);
  }

  every(callbackfn: (value: f32, index: i32, self: Float32Array) => bool): bool {
    return EVERY<Float32Array, f32>(this, callbackfn);
  }

  forEach(callbackfn: (value: f32, index: i32, self: Float32Array) => void): void {
    FOREACH<Float32Array, f32>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, f32>(this);
  }
}

export class Float64Array extends TypedArray<f64> {
  @lazy static readonly BYTES_PER_ELEMENT: usize = sizeof<f64>();

  fill(value: f64, start: i32 = 0, end: i32 = i32.MAX_VALUE): Float64Array {
    return FILL<Float64Array, f64>(this, value, start, end);
  }

  sort(comparator: (a: f64, b: f64) => i32 = COMPARATOR<f64>()): Float64Array {
    return SORT<Float64Array, f64>(this, comparator);
  }

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

  map(callbackfn: (value: f64, index: i32, self: Float64Array) => f64): Float64Array {
    return MAP<Float64Array, f64>(this, callbackfn);
  }

  findIndex(callbackfn: (value: f64, index: i32, self: Float64Array) => bool): i32 {
    return FIND_INDEX<Float64Array, f64>(this, callbackfn);
  }

  some(callbackfn: (value: f64, index: i32, self: Float64Array) => bool): bool {
    return SOME<Float64Array, f64>(this, callbackfn);
  }

  every(callbackfn: (value: f64, index: i32, self: Float64Array) => bool): bool {
    return EVERY<Float64Array, f64>(this, callbackfn);
  }

  forEach(callbackfn: (value: f64, index: i32, self: Float64Array) => void): void {
    FOREACH<Float64Array, f64>(this, callbackfn);
  }

  reverse(): this {
    return REVERSE<this, f64>(this);
  }
}
