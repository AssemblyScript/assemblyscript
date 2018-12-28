import {
  HEADER_SIZE as AB_HEADER_SIZE,
  MAX_BLENGTH as AB_MAX_BLENGTH,
  allocateUnsafe,
  LOAD,
  STORE
} from "./arraybuffer";

import {
  SORT as SORT_IMPL
} from "./sort";

/** Typed array base class. Not a global object. */
export abstract class TypedArray<T> {
  [key: number]: T; // compatibility only

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
    return LOAD<T>(this.buffer, index, this.byteOffset);
  }

  @inline @operator("{}")
  protected __unchecked_get(index: i32): T {
    return LOAD<T>(this.buffer, index, this.byteOffset);
  }

  @operator("[]=")
  protected __set(index: i32, value: NATIVE<T>): void {
    if (<u32>index >= <u32>(this.byteLength >>> alignof<T>())) throw new Error("Index out of bounds");
    STORE<T,NATIVE<T>>(this.buffer, index, value, this.byteOffset);
  }

  @inline @operator("{}=")
  protected __unchecked_set(index: i32, value: NATIVE<T>): void {
    STORE<T,NATIVE<T>>(this.buffer, index, value, this.byteOffset);
  }

  // copyWithin(target: i32, start: i32, end: i32 = this.length): this
}

@inline
export function FILL<TArray extends TypedArray<T>, T>(
  array: TArray,
  value: NATIVE<T>,
  start: i32,
  end: i32
): TArray {
  var buffer = array.buffer;
  var byteOffset = array.byteOffset;
  var len = array.length;
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
      STORE<T,NATIVE<T>>(buffer, start, value, byteOffset);
    }
  }
  return array;
}

@inline
export function SORT<TArray extends TypedArray<T>, T>(
  array: TArray,
  comparator: (a: T, b: T) => i32
): TArray {
  var byteOffset = array.byteOffset;
  var length = array.length;
  if (length <= 1) return array;
  var buffer = array.buffer;
  if (length == 2) {
    let a = LOAD<T>(buffer, 1, byteOffset);
    let b = LOAD<T>(buffer, 0, byteOffset);
    if (comparator(a, b) < 0) {
      STORE<T>(buffer, 1, b, byteOffset);
      STORE<T>(buffer, 0, a, byteOffset);
    }
    return array;
  }
  SORT_IMPL<T>(buffer, byteOffset, length, comparator);
  return array;
}

@inline
export function SUBARRAY<TArray extends TypedArray<T>, T>(
  array: TArray,
  begin: i32,
  end: i32
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
export function REDUCE<TArray extends TypedArray<T>, T, TRet>(
  array: TArray,
  callbackfn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var index = 0;
  var length = <i32>array.length;
  while (index != length) {
    initialValue = callbackfn(
      initialValue,
      unchecked(array[index]),
      index,
      array,
    );
    ++index;
  }
  return initialValue;
}

@inline
export function REDUCE_RIGHT<TArray extends TypedArray<T>, T, TRet>(
  array: TArray,
  callbackfn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var index = <i32>array.length - 1;
  var length = -1;
  while (index != length) {
    initialValue = callbackfn(
      initialValue,
      unchecked(array[index]),
      index,
      array,
    );
    --index;
  }
  return initialValue;
}

@inline
export function MAP<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, self: TArray) => T,
): TArray {
  var length: i32 = array.length;
  var result = instantiate<TArray>(length);
  var i: i32 = 0;
  while (i < length) {
    unchecked(result[i] = callbackfn(array[i], i, <TArray>array));
    ++i;
  }
  return result;
}
