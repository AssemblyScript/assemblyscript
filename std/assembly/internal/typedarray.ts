import {
  HEADER_SIZE as AB_HEADER_SIZE,
  MAX_BLENGTH as AB_MAX_BLENGTH,
  allocateUnsafe,
  LOAD_OFFSET,
  STORE_OFFSET
} from "./arraybuffer";

import {
  insertionSort,
  weakHeapSort,
  defaultComparator
} from "./array";

// The internal TypedArray class uses two type parameters for the same reason as `loadUnsafe` and
// `storeUnsafe` in 'internal/arraybuffer.ts'. See the documentation there for details.

/** Typed array base class. Not a global object. */
export abstract class TypedArray<T,TNative = T> {

  readonly buffer: ArrayBuffer;
  readonly byteOffset: i32;
  readonly byteLength: i32;

  constructor(length: i32) {
    const MAX_LENGTH = <u32>AB_MAX_BLENGTH / sizeof<T>();
    if (<u32>length > MAX_LENGTH) throw new RangeError("Invalid typed array length");
    var byteLength = length << alignof<T>();
    var buffer = allocateUnsafe(byteLength);
    memory.fill(changetype<usize>(buffer) + AB_HEADER_SIZE, 0, <usize>byteLength);
    this.buffer = buffer;
    this.byteOffset = 0;
    this.byteLength = byteLength;
  }

  @inline
  get length(): i32 {
    return this.byteLength >>> alignof<T>();
  }

  @operator("[]")
  protected __get(index: i32): T {
    if (<u32>index >= <u32>(this.byteLength >>> alignof<T>())) throw new Error("Index out of bounds");
    return LOAD_OFFSET<T>(this.buffer, index, this.byteOffset);
  }

  @inline @operator("{}")
  protected __unchecked_get(index: i32): T {
    return LOAD_OFFSET<T>(this.buffer, index, this.byteOffset);
  }

  @operator("[]=")
  protected __set(index: i32, value: TNative): void {
    if (<u32>index >= <u32>(this.byteLength >>> alignof<T>())) throw new Error("Index out of bounds");
    STORE_OFFSET<T,TNative>(this.buffer, index, value, this.byteOffset);
  }

  @inline @operator("{}=")
  protected __unchecked_set(index: i32, value: TNative): void {
    STORE_OFFSET<T,TNative>(this.buffer, index, value, this.byteOffset);
  }

  // copyWithin(target: i32, start: i32, end: i32 = this.length): this

  fill(value: TNative, start: i32 = 0, end: i32 = i32.MAX_VALUE): this /* ! */ {
    var buffer = this.buffer;
    var byteOffset = this.byteOffset;
    var len = this.length;
    start = start < 0 ? max(len + start, 0) : min(start, len);
    end   = end   < 0 ? max(len + end,   0) : min(end,   len);
    if (sizeof<T>() == 1) {
      if (start < end) {
        memory.fill(
          changetype<usize>(buffer) + start + byteOffset + AB_HEADER_SIZE,
          <u8>value,
          <usize>(end - start)
        );
      }
    } else {
      for (; start < end; ++start) {
        STORE_OFFSET<T,TNative>(buffer, start, value, byteOffset);
      }
    }
    return this;
  }

  sort(comparator: (a: T, b: T) => i32 = defaultComparator<T>()): this /* ! */ {
    var byteOffset = this.byteOffset;
    var length = this.length;
    if (length <= 1) return this;
    var buffer = this.buffer;
    if (length == 2) {
      let a = LOAD_OFFSET<T>(buffer, 1, byteOffset);
      let b = LOAD_OFFSET<T>(buffer, 0, byteOffset);
      if (comparator(a, b) < 0) {
        STORE_OFFSET<T>(buffer, 1, b, byteOffset);
        STORE_OFFSET<T>(buffer, 0, a, byteOffset);
      }
      return this;
    }

    if (isReference<T>()) {
      // TODO replace this to faster stable sort (TimSort) when it implemented
      insertionSort<T>(buffer, byteOffset, length, comparator);
      return this;
    } else {
      if (length < 256) {
        insertionSort<T>(buffer, byteOffset, length, comparator);
      } else {
        weakHeapSort<T>(buffer, byteOffset, length, comparator);
      }
      return this;
    }
  }
}

@inline
export function SUBARRAY<TArray, T>(
  array: TArray,
  begin: i32 = 0,
  end: i32 = i32.MAX_VALUE
): TArray {
  var length = <i32>array.length;
  if (begin < 0) begin = max(length + begin, 0);
  else begin = min(begin, length);
  if (end < 0) end = max(length + end, begin);
  else end = max(min(end, length), begin);
  var slice = memory.allocate(offsetof<TArray>());
  store<usize>(slice, array.buffer, offsetof<TArray>("buffer"));
  store<i32>(slice, <i32>array.byteOffset + (begin << alignof<T>()), offsetof<TArray>("byteOffset"));
  store<i32>(slice, (end - begin) << alignof<T>(), offsetof<TArray>("byteLength"));
  return changetype<TArray>(slice);
}

@inline
export function REDUCE<TArray, T, TRet>(
  array: TArray,
  callbackfn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var index = 0;
  var length = <i32>array.length;
  while (index != length) {
    initialValue = callbackfn(
      initialValue,
      unchecked(array[index]), // tslint:disable-line
      index,
      array,
    );
    ++index;
  }
  return initialValue;
}

@inline
export function REDUCE_RIGHT<TArray, T, TRet>(
  array: TArray,
  callbackfn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var index = <i32>array.length - 1;
  var length = -1;
  while (index != length) {
    initialValue = callbackfn(
      initialValue,
      unchecked(array[index]), // tslint:disable-line
      index,
      array,
    );
    --index;
  }
  return initialValue;
}
