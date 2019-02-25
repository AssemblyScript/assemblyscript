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
  protected __set(index: i32, value: native<T>): void {
    if (<u32>index >= <u32>(this.byteLength >>> alignof<T>())) throw new Error("Index out of bounds");
    STORE<T,native<T>>(this.buffer, index, value, this.byteOffset);
  }

  @inline @operator("{}=")
  protected __unchecked_set(index: i32, value: native<T>): void {
    STORE<T,native<T>>(this.buffer, index, value, this.byteOffset);
  }

  // copyWithin(target: i32, start: i32, end: i32 = this.length): this
}

@inline
export function FILL<TArray extends TypedArray<T>, T extends number>(
  array: TArray,
  value: native<T>,
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
      STORE<T,native<T>>(buffer, start, value, byteOffset);
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
  var length = array.length;
  var buffer = array.buffer;
  var byteOffset = array.byteOffset;
  for (let i = 0; i < length; i++) {
    initialValue = callbackfn(
      initialValue,
      LOAD<T>(buffer, i, byteOffset),
      i,
      array,
    );
  }
  return initialValue;
}

@inline
export function REDUCE_RIGHT<TArray extends TypedArray<T>, T, TRet>(
  array: TArray,
  callbackfn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var buffer = array.buffer;
  var byteOffset = array.byteOffset;
  for (let i = array.length - 1; i >= 0; i--) {
    initialValue = callbackfn(
      initialValue,
      LOAD<T>(buffer, i, byteOffset),
      i,
      array,
    );
  }
  return initialValue;
}

@inline
export function MAP<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, self: TArray) => T,
): TArray {
  var length = array.length;
  var buffer = array.buffer;
  var byteOffset = array.byteOffset;
  var result = instantiate<TArray>(length);
  var resultBuffer = result.buffer;
  for (let i = 0; i < length; i++) {
    STORE<T, native<T>>(resultBuffer, i, <native<T>>callbackfn(LOAD<T>(buffer, i, byteOffset), i, array));
  }

  return result;
}

@inline
export function FIND_INDEX<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, array: TArray) => bool,
): i32 {
  var length = array.length;
  var buffer = array.buffer;
  var byteOffset = array.byteOffset;
  for (let i = 0; i < length; i++) {
    if (callbackfn(LOAD<T>(buffer, i, byteOffset), i, array)) {
      return i;
    }
  }
  return -1;
}

@inline
export function SOME<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, array: TArray) => bool,
): bool {
  var length = array.length;
  var buffer = array.buffer;
  var byteOffset = array.byteOffset;
  for (let i = 0; i < length; i++) {
    if (callbackfn(LOAD<T>(buffer, i, byteOffset), i, array)) {
      return true;
    }
  }
  return false;
}

@inline
export function EVERY<TArray extends TypedArray<T>, T>(
  array: TArray,
  callbackfn: (value: T, index: i32, array: TArray) => bool,
): bool {
  var length = array.length;
  var buffer = array.buffer;
  var byteOffset = array.byteOffset;
  for (let i = 0; i < length; i++) {
    if (callbackfn(LOAD<T>(buffer, i, byteOffset), i, array)) {
      continue;
    }
    return false;
  }
  return true;
}

@inline
export function SET<T extends TypedArray<U>, U extends number, SourceT, SourceU extends number>(
  target: T,
  source: SourceT,
  offset: i32): void {
  // assert target and source are not null
  if (isReference<T>(target)) {
    assert(target != null, "TypeError: target is null.");
  } else {
    assert(false, "TypeError: target is not a reference.");
  }

  if (isReference<SourceT>(source)) {
    assert(source != null, "TypeError: source is null.");
  } else {
    assert(false, "TypeError: source is not a reference.");
  }

  if (isArray<SourceT>(source)) {
      // check to see if the offsets are in range
      let sourceLength = source.length;
      let targetLength = target.length;
      assert((sourceLength + offset) <= targetLength, "RangeError: Offset is too large.");

      // cache the buffer and the byteOffset
      let targetBuffer = target.buffer;
      let targetByteOffset = target.byteOffset;

      // for each source value, write it to the ArrayBuffer
      for (let i = 0; i < sourceLength; i++) {
        STORE<U>(
          targetBuffer,
          i + offset,
          <U>unchecked(source[i]),
          targetByteOffset,
        );
      }
    // fast path: source has the same backing type as targe
  } else if (ArrayBuffer.isView<SourceT>(source)) {
    // validate the lengths are within range
    let sourceLength: i32 = source.length;
    let targetLength: i32 = target.length;
    assert((sourceLength + offset) <= targetLength, "RangeError: Offset is too large.");

    if (isFloat<U>()) {
      if (isFloat<SourceU>()) {
        if (sizeof<U>() == sizeof<SourceU>()) {
          SET_SAME<T, U>(target, <T>source, offset);
        } else {
          SET_DIFFERENT<T, U, SourceT, SourceU>(target, source, sourceLength, offset);
        }
      } else {
        SET_DIFFERENT<T, U, SourceT, SourceU>(target, source, sourceLength, offset);
      }
    } else if (isInteger<U>()) {
      if (isInteger<SourceU>()) {
        if (sizeof<U>() == sizeof<SourceU>()) {
          SET_SAME<T, U>(target, <T>source, offset);
        } else {
          SET_DIFFERENT<T, U, SourceT, SourceU>(target, source, sourceLength, offset);
        }
      } else {
        SET_DIFFERENT<T, U, SourceT, SourceU>(target, source, sourceLength, offset);
      }
    }

  } else {
    // validate the lengths are within range
    // @ts-ignore: source is assumed to have a length property
    let sourceLength = source.length;
    let targetLength = target.length;
    assert((sourceLength + offset) <= targetLength, "RangeError: Offset is too large.");

    // cache the buffer and the offset
    let targetBuffer = target.buffer;
    let targetByteOffset = target.byteOffset;

    /**
     * In order for the source to be ArrayLike, it has to have a length property, and a
     * `@operator("[]=")` getter. This is very slow because it doesn't allow for unchecked gets,
     * but it is as standard compliant as we can make it.
     */
    // @ts-ignore: Source is expected to have a length property
    for (let i = source.length - 1; i >= 0; i--) {
      STORE<U>(
        targetBuffer,
        i + offset,
        // @ts-ignore: Source is expected to have a getter signature
        <U>source[i], // if the object does not have a getter this throws a compiler error
        targetByteOffset,
      );
    }
  }
}


@inline
function SET_SAME<T extends TypedArray<U>, U extends number>(target: T, source: T, offset: i32): void {
   // perform a memory.copy
   memory.copy(
    // store the data at the target pointer + byteOFfset + offset << alignOf<U>()
    target.buffer.data + target.byteOffset + (offset << alignof<U>()),
    // read the data from source pointer + byteOffset
    // @ts-ignore: source has a buffer and a byteOffset property because it's instanceof T
    source.buffer.data + source.byteOffset,
    // @ts-ignore: store source.buffer.byteLength number of bytes
    source.buffer.byteLength,
  );
}

@inline
function SET_DIFFERENT<
  T extends TypedArray<U>,
  U extends number,
  SourceT extends TypedArray<SourceU>,
  SourceU extends number
>(target: T, source: SourceT, sourceLength: i32, offset: i32): void {
  var sourceBuffer = source.buffer;
  var targetBuffer = target.buffer;
  var sourceOffset = source.byteOffset;
  var targetOffset = target.byteOffset;
  for (let i = 0; i < sourceLength; i++) {
    STORE<U>(
      targetBuffer,
      i + offset,
      // @ts-ignore: Number values can be cast to each other
      <U>LOAD<SourceU>(sourceBuffer, i, sourceOffset),
      targetOffset,
    );
  }
}
