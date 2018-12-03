import {
  HEADER_SIZE as AB_HEADER_SIZE,
  MAX_BLENGTH as AB_MAX_BLENGTH,
  allocateUnsafe,
  loadUnsafeWithOffset,
  storeUnsafeWithOffset
} from "./arraybuffer";

import {
  insertionSort,
  weakHeapSort,
  defaultComparator
} from "./array";

// The internal TypedArray class uses two type parameters for the same reason as `loadUnsafe` and
// `storeUnsafe` in 'internal/arraybuffer.ts'. See the documentation there for details.

/** Typed array base class. Not a global object. */
export abstract class TypedArray<T,TNative> {

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
    return loadUnsafeWithOffset<T,T>(this.buffer, index, this.byteOffset);
  }

  @inline @operator("{}")
  protected __unchecked_get(index: i32): T {
    return loadUnsafeWithOffset<T,T>(this.buffer, index, this.byteOffset);
  }

  @operator("[]=")
  protected __set(index: i32, value: TNative): void {
    if (<u32>index >= <u32>(this.byteLength >>> alignof<T>())) throw new Error("Index out of bounds");
    storeUnsafeWithOffset<T,TNative>(this.buffer, index, value, this.byteOffset);
  }

  @inline @operator("{}=")
  protected __unchecked_set(index: i32, value: TNative): void {
    storeUnsafeWithOffset<T,TNative>(this.buffer, index, value, this.byteOffset);
  }

  // copyWithin(target: i32, start: i32, end: i32 = this.length): this

  fill(value: TNative, start: i32 = 0, end: i32 = i32.MAX_VALUE): this {
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
        storeUnsafeWithOffset<T,TNative>(buffer, start, value, byteOffset);
      }
    }
    return this;
  }

  @inline
  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): TypedArray<T,TNative> {
    var length = this.length;
    if (begin < 0) begin = max(length + begin, 0);
    else begin = min(begin, length);
    if (end < 0) end = max(length + end, begin);
    else end = max(min(end, length), begin);
    var slice = memory.allocate(offsetof<this>());
    store<usize>(slice, this.buffer, offsetof<this>("buffer"));
    store<i32>(slice, this.byteOffset + (begin << alignof<T>()), offsetof<this>("byteOffset"));
    store<i32>(slice, (end - begin) << alignof<T>(), offsetof<this>("byteLength"));
    return changetype<this>(slice);
  }

  sort(comparator: (a: T, b: T) => i32 = defaultComparator<T>()): this {
    var byteOffset = this.byteOffset;
    var length = this.length;
    if (length <= 1) return this;
    var buffer = this.buffer;
    if (length == 2) {
      let a = loadUnsafeWithOffset<T,T>(buffer, 1, byteOffset);
      let b = loadUnsafeWithOffset<T,T>(buffer, 0, byteOffset);
      if (comparator(a, b) < 0) {
        storeUnsafeWithOffset<T,T>(buffer, 1, b, byteOffset);
        storeUnsafeWithOffset<T,T>(buffer, 0, a, byteOffset);
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

  /**
   * TypedArray reduce implementation. This is a method that will be called from the parent,
   * passing types down from the child class using the typed parameters TypedArrayType and
   * ReturnType respectively. This implementation requires an initial value
   */
  @inline
  protected reduce_internal<TypedArrayType, ReturnType>(
    callbackfn: (accumulator: ReturnType, value: T, index: i32, array: TypedArrayType) => ReturnType,
    array: TypedArrayType,
    initialValue: ReturnType,
    ): ReturnType {
    var index: i32 = 0;
    var length: i32 = this.length;
    while (index < length) {
      initialValue = callbackfn(
        initialValue,
        this.__unchecked_get(index),
        index,
        array,
      );
      ++index;
    }
    return initialValue;
  }
}
