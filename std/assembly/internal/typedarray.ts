import {
  ALLOC,
  REGISTER,
  LINK
} from "../runtime";

import {
  ArrayBuffer
} from "../arraybuffer";

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
    const MAX_LENGTH = <u32>ArrayBuffer.MAX_BYTELENGTH / sizeof<T>();
    if (<u32>length > MAX_LENGTH) throw new RangeError("Invalid typed array length");
    var byteLength = length << alignof<T>();
    this.buffer = new ArrayBuffer(byteLength);
    this.byteOffset = 0;
    this.byteLength = byteLength;
  }

  get length(): i32 {
    return this.byteLength >>> alignof<T>();
  }

  // TODO: could compute load/store offset from index and emit an immediate -> make this a builtin?

  @operator("[]") protected __get(index: i32): T {
    if (<u32>index >= <u32>(this.byteLength >>> alignof<T>())) throw new Error("Index out of bounds");
    return load<T>(changetype<usize>(this.buffer) + <usize>this.byteOffset, <usize>index << alignof<T>());
  }

  @inline @operator("{}") protected __unchecked_get(index: i32): T {
    return load<T>(changetype<usize>(this.buffer) + <usize>this.byteOffset + (<usize>index << alignof<T>()));
  }

  @operator("[]=") protected __set(index: i32, value: native<T>): void {
    if (<u32>index >= <u32>(this.byteLength >>> alignof<T>())) throw new Error("Index out of bounds");
    store<T>(changetype<usize>(this.buffer) + <usize>this.byteOffset + (<usize>index << alignof<T>()), value);
  }

  @inline @operator("{}=") protected __unchecked_set(index: i32, value: native<T>): void {
    store<T>(changetype<usize>(this.buffer) + <usize>this.byteOffset + (<usize>index << alignof<T>()), value);
  }

  // copyWithin(target: i32, start: i32, end: i32 = this.length): this
}

@inline export function FILL<TArray extends TypedArray<T>, T extends number>(
  array: TArray,
  value: native<T>,
  start: i32,
  end: i32
): TArray {
  var base = changetype<usize>(array.buffer) + <usize>array.byteOffset;
  var len = array.length;
  start = start < 0 ? max(len + start, 0) : min(start, len);
  end   = end   < 0 ? max(len + end,   0) : min(end,   len);
  if (sizeof<T>() == 1) {
    if (start < end) memory.fill(base + <usize>start, <u8>value, <usize>(end - start));
  } else {
    for (; start < end; ++start) {
      store<T>(base + (<usize>start << alignof()), value);
    }
  }
  return array;
}

@inline export function SORT<TArray extends TypedArray<T>, T>(
  array: TArray,
  comparator: (a: T, b: T) => i32
): TArray {
  var length = array.length;
  var offset = <usize>array.byteOffset;
  if (length <= 1) return array;
  var buffer = changetype<usize>(array.buffer);
  if (length == 2) {
    let a = load<T>(buffer + offset, sizeof<T>());
    let b = load<T>(buffer + offset);
    if (comparator(a, b) < 0) {
      store<T>(buffer + offset, b, sizeof<T>());
      store<T>(buffer + offset, a);
    }
    return array;
  }
  // TODO
  // SORT_IMPL<T>(buffer, byteOffset, length, comparator);
  return array;
}

@inline export function SUBARRAY<TArray extends TypedArray<T>, T>(
  array: TArray,
  begin: i32,
  end: i32
): TArray {
  var buffer = changetype<usize>(array.buffer);
  var length = <i32>array.length;
  if (begin < 0) begin = max(length + begin, 0);
  else begin = min(begin, length);
  if (end < 0) end = max(length + end, begin);
  else end = max(min(end, length), begin);
  var out = ALLOC(offsetof<TArray>());
  store<usize>(out, buffer, offsetof<TArray>("buffer"));
  store<i32>(out, <i32>array.byteOffset + (begin << alignof<T>()), offsetof<TArray>("byteOffset"));
  store<i32>(out, (end - begin) << alignof<T>(), offsetof<TArray>("byteLength"));
  LINK(buffer, REGISTER<TArray,usize>(out)); // register first, then link
  return changetype<TArray>(out);
}

@inline export function REDUCE<TArray extends TypedArray<T>, T, TRet>(
  array: TArray,
  callbackfn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var base = changetype<usize>(array.buffer) + <usize>array.byteOffset;
  for (let i = 0, k = array.length; i < k; i++) {
    initialValue = callbackfn(initialValue, load<T>(base + (<usize>i << alignof<T>())), i, array);
  }
  return initialValue;
}

@inline export function REDUCE_RIGHT<TArray extends TypedArray<T>, T, TRet>(
  array: TArray,
  callbackfn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var base = changetype<usize>(array.buffer) + <usize>array.byteOffset;
  for (let i = array.length - 1; i >= 0; i--) {
    initialValue = callbackfn(initialValue, load<T>(base + (<usize>i << alignof<T>())), i, array);
  }
  return initialValue;
}

@inline export function MAP<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, self: TArray) => T,
): TArray {
  var length = array.length;
  var base = changetype<usize>(array.buffer) + <usize>array.byteOffset;
  var result = instantiate<TArray>(length);
  var resultBase = changetype<usize>(result.buffer); // assumes byteOffset = 0
  for (let i = 0; i < length; i++) {
    store<T>(
      resultBase + (<usize>i << alignof<T>()),
      callbackfn(load<T>(base + (<usize>i << alignof<T>())), i, array)
    );
  }

  return result;
}

@inline export function FIND_INDEX<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, array: TArray) => bool,
): i32 {
  var base = changetype<usize>(array.buffer) + <usize>array.byteOffset;
  for (let i = 0, k = array.length; i < k; i++) {
    if (callbackfn(load<T>(base + (<usize>i << alignof<T>())), i, array)) return i;
  }
  return -1;
}

@inline export function SOME<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, array: TArray) => bool,
): bool {
  var base = changetype<usize>(array.buffer) + <usize>array.byteOffset;
  for (let i = 0, k = array.length; i < k; i++) {
    if (callbackfn(load<T>(base + (<usize>i << alignof<T>())), i, array)) return true;
  }
  return false;
}

@inline export function EVERY<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, array: TArray) => bool,
): bool {
  var base = changetype<usize>(array.buffer) + <usize>array.byteOffset;
  for (let i = 0, k = array.length; i < k; i++) {
    if (callbackfn(load<T>(base + (<usize>i << alignof<T>())), i, array)) continue;
    return false;
  }
  return true;
}

@inline export function FOREACH<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, array: TArray) => void,
): void {
  var base = changetype<usize>(array.buffer) + <usize>array.byteOffset;
  for (let i = 0, k = array.length; i < k; i++) {
    callbackfn(load<T>(base + (<usize>i << alignof<T>())), i, array);
  }
}
