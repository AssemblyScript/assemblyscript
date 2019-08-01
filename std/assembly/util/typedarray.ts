import { idof } from "../builtins";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH } from "./error";
import { SORT as SORT_IMPL } from "./sort";
import { ArrayBufferView } from "../arraybuffer";

// @ts-ignore: decorator
@inline
export function FILL<TArray extends ArrayBufferView, T extends number>(
  array: TArray,
  value: native<T>,
  start: i32,
  end: i32
): TArray {
  var dataStart = array.dataStart;
  var length = array.length;
  start = start < 0 ? max(length + start, 0) : min(start, length);
  end   = end   < 0 ? max(length + end,   0) : min(end,   length);
  if (sizeof<T>() == 1) {
    if (start < end) memory.fill(dataStart + <usize>start, <u8>value, <usize>(end - start));
  } else {
    for (; start < end; ++start) {
      store<T>(dataStart + (<usize>start << alignof<T>()), value);
    }
  }
  return array;
}

// @ts-ignore: decorator
@inline
export function SORT<TArray extends ArrayBufferView, T>(
  array: TArray,
  comparator: (a: T, b: T) => i32
): TArray {
  var length = array.length;
  if (length <= 1) return array;
  var base = array.dataStart;
  if (length == 2) {
    let a: T = load<T>(base, sizeof<T>()); // a = arr[1]
    let b: T = load<T>(base); // b = arr[0]
    if (comparator(a, b) < 0) {
      store<T>(base, b, sizeof<T>()); // arr[1] = b
      store<T>(base, a); // arr[0] = a
    }
    return array;
  }
  SORT_IMPL<T>(base, length, comparator);
  return array;
}

// @ts-ignore: decorator
@inline
export function SUBARRAY<TArray extends ArrayBufferView, T>(
  array: TArray,
  begin: i32,
  end: i32
): TArray {
  var len = <i32>array.length;
  begin = begin < 0 ? max(len + begin, 0) : min(begin, len);
  end   = end   < 0 ? max(len + end,   0) : min(end,   len);
  end   = max(end, begin);
  var out = changetype<TArray>(__alloc(offsetof<TArray>(), idof<TArray>())); // retains
  out.data = array.data; // retains
  out.dataStart = array.dataStart + (<usize>begin << alignof<T>());
  out.dataLength = (end - begin) << alignof<T>();
  return out;
}

// @ts-ignore: decorator
@inline
export function REDUCE<TArray extends ArrayBufferView, T, TRet>(
  array: TArray,
  fn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    initialValue = fn(initialValue, load<T>(dataStart + (<usize>i << alignof<T>())), i, array);
  }
  return initialValue;
}

// @ts-ignore: decorator
@inline
export function REDUCE_RIGHT<TArray extends ArrayBufferView, T, TRet>(
  array: TArray,
  fn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var dataStart = array.dataStart;
  for (let i = array.length - 1; i >= 0; i--) {
    initialValue = fn(initialValue, load<T>(dataStart + (<usize>i << alignof<T>())), i, array);
  }
  return initialValue;
}

// @ts-ignore: decorator
@inline
export function MAP<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, self: TArray) => T,
): TArray {
  var length = array.length;
  var dataStart = array.dataStart;
  var out = instantiate<TArray>(length);
  var outDataStart = out.dataStart;
  for (let i = 0; i < length; i++) {
    store<T>(
      outDataStart + (<usize>i << alignof<T>()),
      fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array)
    );
  }
  return out;
}

// @ts-ignore: decorator
@inline
export function FIND_INDEX<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => bool,
): i32 {
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    if (fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array)) return i;
  }
  return -1;
}

// @ts-ignore: decorator
@inline
export function INCLUDES<TArray extends ArrayBufferView, T>(
  array: TArray,
  searchElement: T,
  fromIndex: i32,
): bool {
  return INDEX_OF<TArray, T>(array, searchElement, fromIndex) >= 0;
}

// @ts-ignore: decorator
@inline
export function INDEX_OF<TArray extends ArrayBufferView, T>(
  array: TArray,
  searchElement: T,
  fromIndex: i32,
): i32 {
  var index: isize = fromIndex;
  var length: isize = array.length;
  if (length == 0 || index >= length) return -1;
  if (index < 0) index = max(length + index, 0);
  var dataStart = array.dataStart;
  while (index < length) {
    if (load<T>(dataStart + (index << alignof<T>())) == searchElement) return <i32>index;
    ++index;
  }
  return -1;
}

// @ts-ignore: decorator
@inline
export function LAST_INDEX_OF<TArray extends ArrayBufferView, T>(
  array: TArray,
  searchElement: T,
  fromIndex: i32,
): i32 {
  var index: isize = fromIndex;
  var length: isize = array.length;
  if (length == 0) return -1;
  if (index < 0) index = length + index; // no need to clamp
  else if (index >= length) index = length - 1;
  var dataStart = array.dataStart;
  while (index >= 0) {
    if (load<T>(dataStart + (index << alignof<T>())) == searchElement) return <i32>index;
    --index;
  }
  return -1;
}

// @ts-ignore: decorator
@inline
export function SOME<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => bool,
): bool {
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    if (fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array)) return true;
  }
  return false;
}

// @ts-ignore: decorator
@inline
export function EVERY<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => bool,
): bool {
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    if (fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array)) continue;
    return false;
  }
  return true;
}

// @ts-ignore: decorator
@inline
export function FOREACH<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => void,
): void {
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array);
  }
}

// @ts-ignore: decorator
@inline
export function REVERSE<TArray extends ArrayBufferView, T>(array: TArray): TArray {
  var dataStart = array.dataStart;
  for (let front: usize = 0, back: usize = array.length - 1; front < back; ++front, --back) {
    let frontPtr = dataStart + (front << alignof<T>());
    let backPtr = dataStart + (back << alignof<T>());
    let temp = load<T>(frontPtr);
    store<T>(frontPtr, load<T>(backPtr));
    store<T>(backPtr, temp);
  }
  return array;
}

// @ts-ignore: decorator
@inline
export function WRAP<TArray extends ArrayBufferView, T>(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): TArray {
  var bufferByteLength = buffer.byteLength;
  if (<u32>byteOffset >= <u32>bufferByteLength) {
    throw new RangeError(E_INDEXOUTOFRANGE);
  }
  var byteLength: i32;
  if (length < 0) {
    if (length == -1) {
      const mask = <i32>(1 << alignof<T>() - 1);
      if (buffer.byteLength & mask) {
        throw new RangeError(E_INVALIDLENGTH);
      } else {
        byteLength = buffer.byteLength;
      }
    } else {
      throw new RangeError(E_INVALIDLENGTH);
    }
  } else {
    byteLength = length << alignof<T>();
  }
  if (byteOffset + byteLength > buffer.byteLength) {
    throw new RangeError(E_INVALIDLENGTH);
  }
  var out = changetype<TArray>(__alloc(offsetof<TArray>(), idof<TArray>()));
  out.data = buffer;
  out.dataLength = byteLength;
  out.dataStart = changetype<usize>(buffer) + <usize>byteOffset;
  return out;
}
