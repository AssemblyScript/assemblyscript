import {
  MAX_BLENGTH,
  HEADER_SIZE as HEADER_SIZE_AB,
  allocUnsafe,
  reallocUnsafe,
  loadUnsafe,
  storeUnsafe
} from "./internal/arraybuffer";

import {
  defaultComparator,
  insertionSort,
  weakHeapSort
} from "./internal/array";

export class Array<T> {

  /* @internal */ buffer_: ArrayBuffer;
  /* @internal */ length_: i32;

  constructor(length: i32 = 0) {
    const MAX_LENGTH = MAX_BLENGTH >>> alignof<T>();
    if (<u32>length > <u32>MAX_LENGTH) throw new RangeError("Invalid array length");
    var byteLength = length << alignof<T>();
    var buffer = allocUnsafe(byteLength);
    this.buffer_ = buffer;
    this.length_ = length;
    set_memory(
      changetype<usize>(buffer) + HEADER_SIZE_AB,
      0,
      <usize>byteLength
    );
  }

  get length(): i32 {
    return this.length_;
  }

  set length(length: i32) {
    var buffer = this.buffer_;
    var capacity = buffer.byteLength >>> alignof<T>();
    if (<u32>length > <u32>capacity) {
      const MAX_LENGTH = MAX_BLENGTH >>> alignof<T>();
      if (<u32>length > <u32>MAX_LENGTH) throw new RangeError("Invalid array length");
      buffer = reallocUnsafe(buffer, length << alignof<T>());
      this.buffer_ = buffer;
    }
    this.length_ = length;
  }

  every(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    var buffer = this.buffer_;
    for (let index = 0, toIndex = this.length_; index < toIndex && index < this.length_; ++index) {
      if (!callbackfn(loadUnsafe<T,T>(buffer, index), index, this)) return false;
    }
    return true;
  }

  findIndex(predicate: (element: T, index: i32, array: Array<T>) => bool): i32 {
    var buffer = this.buffer_;
    for (let index = 0, toIndex = this.length_; index < toIndex && index < this.length_; ++index) {
      if (predicate(loadUnsafe<T,T>(buffer, index), index, this)) return index;
    }
    return -1;
  }

  @operator("[]")
  private __get(index: i32): T {
    var buffer = this.buffer_;
    return <u32>index < <u32>(buffer.byteLength >>> alignof<T>())
      ? loadUnsafe<T,T>(buffer, index)
      : <T>unreachable();
  }

  @operator("{}")
  private __unchecked_get(index: i32): T {
    return loadUnsafe<T,T>(this.buffer_, index);
  }

  @operator("[]=")
  private __set(index: i32, value: T): void {
    var buffer = this.buffer_;
    var capacity = buffer.byteLength >>> alignof<T>();
    if (<u32>index >= <u32>capacity) {
      const MAX_LENGTH = MAX_BLENGTH >>> alignof<T>();
      if (<u32>index >= <u32>MAX_LENGTH) throw new Error("Invalid array length");
      buffer = reallocUnsafe(buffer, (index + 1) << alignof<T>());
      this.buffer_ = buffer;
      this.length_ = index + 1;
    }
    storeUnsafe<T,T>(buffer, index, value);
  }

  @operator("{}=")
  private __unchecked_set(index: i32, value: T): void {
    storeUnsafe<T,T>(this.buffer_, index, value);
  }

  includes(searchElement: T, fromIndex: i32 = 0): bool {
    var length = this.length_;
    if (length == 0 || fromIndex >= length) return false;
    if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
    var buffer = this.buffer_;
    while (fromIndex < length) {
      if (loadUnsafe<T,T>(buffer, fromIndex) == searchElement) return true;
      ++fromIndex;
    }
    return false;
  }

  indexOf(searchElement: T, fromIndex: i32 = 0): i32 {
    var length = this.length_;
    if (length == 0 || fromIndex >= length) return -1;
    if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
    var buffer = this.buffer_;
    while (fromIndex < length) {
      if (loadUnsafe<T,T>(buffer, fromIndex) == searchElement) return fromIndex;
      ++fromIndex;
    }
    return -1;
  }

  lastIndexOf(searchElement: T, fromIndex: i32 = this.length_): i32 {
    var length = this.length_;
    if (length == 0) return -1;
    if (fromIndex < 0) fromIndex = length + fromIndex; // no need to clamp
    else if (fromIndex >= length) fromIndex = length - 1;
    var buffer = this.buffer_;
    while (fromIndex >= 0) {                           // ^
      if (loadUnsafe<T,T>(buffer, fromIndex) == searchElement) return fromIndex;
      --fromIndex;
    }
    return -1;
  }

  push(element: T): i32 {
    var length = this.length_;
    var buffer = this.buffer_;
    var capacity = buffer.byteLength >>> alignof<T>();
    var newLength = length + 1; // safe only if length is checked
    if (<u32>length >= <u32>capacity) {
      const MAX_LENGTH = MAX_BLENGTH >>> alignof<T>();
      if (<u32>length >= <u32>MAX_LENGTH) throw new Error("Invalid array length");
      buffer = reallocUnsafe(buffer, newLength << alignof<T>());
      this.buffer_ = buffer;
    }
    this.length_ = newLength;
    storeUnsafe<T,T>(buffer, length, element);
    return newLength;
  }

  pop(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError("Array is empty");
    var element = loadUnsafe<T,T>(this.buffer_, --length);
    this.length_ = length;
    return element;
  }

  forEach(callbackfn: (value: T, index: i32, array: Array<T>) => void): void {
    var buffer = this.buffer_;
    for (let index = 0, toIndex = this.length_; index < toIndex && index < this.length_; ++index) {
      callbackfn(loadUnsafe<T,T>(buffer, index), index, this);
    }
  }

  map<U>(callbackfn: (value: T, index: i32, array: Array<T>) => U): Array<U> {
    var buffer = this.buffer_;
    var length = this.length_;
    var result = new Array<U>(length);
    var resultBuffer = result.buffer_;
    for (let index = 0; index < length && index < this.length_; ++index) {
      storeUnsafe<U,U>(resultBuffer, index, callbackfn(loadUnsafe<T,T>(buffer, index), index, this));
    }
    return result;
  }

  filter(callbackfn: (value: T, index: i32, array: Array<T>) => bool): Array<T> {
    var buffer = this.buffer_;
    var length = this.length_;
    var result = new Array<T>();
    for (let index = 0; index < length && index < this.length_; ++index) {
      let value = loadUnsafe<T,T>(buffer, index);
      if (callbackfn(value, index, this)) result.push(value);
    }
    return result;
  }

  reduce<U>(
    callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accum = initialValue;
    var buffer = this.buffer_;
    for (let index = 0, toIndex = this.length_; index < toIndex && index < this.length_; ++index) {
      accum = callbackfn(accum, loadUnsafe<T,T>(buffer, index), index, this);
    }
    return accum;
  }

  reduceRight<U>(
    callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accum = initialValue;
    var buffer = this.buffer_;
    for (let index: i32 = this.length_ - 1; index >= 0; --index) {
      accum = callbackfn(accum, loadUnsafe<T,T>(buffer, index), index, this);
    }
    return accum;
  }

  shift(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError("Array is empty");
    var buffer = this.buffer_;
    var element = loadUnsafe<T,T>(buffer, 0);
    var lastIndex = length - 1;
    move_memory(
      changetype<usize>(buffer) + HEADER_SIZE_AB,
      changetype<usize>(buffer) + HEADER_SIZE_AB + sizeof<T>(),
      <usize>lastIndex << alignof<T>()
    );
    storeUnsafe<T,T>(buffer, lastIndex, <T>null);
    this.length_ = lastIndex;
    return element;
  }

  some(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    var buffer = this.buffer_;
    for (let index = 0, toIndex = this.length_; index < toIndex && index < this.length_; ++index) {
      if (callbackfn(loadUnsafe<T,T>(buffer, index), index, this)) return true;
    }
    return false;
  }

  unshift(element: T): i32 {
    var buffer = this.buffer_;
    var capacity = buffer.byteLength >>> alignof<T>();
    var length = this.length_;
    var newLength = length + 1; // safe only if length is checked
    if (<u32>length >= <u32>capacity) {
      const MAX_LENGTH = MAX_BLENGTH >>> alignof<T>();
      if (<u32>length >= <u32>MAX_LENGTH) throw new Error("Invalid array length");
      buffer = reallocUnsafe(buffer, newLength << alignof<T>());
      capacity = buffer.byteLength >>> alignof<T>();
      this.buffer_ = buffer;
    }
    move_memory(
      changetype<usize>(buffer) + HEADER_SIZE_AB + sizeof<T>(),
      changetype<usize>(buffer) + HEADER_SIZE_AB,
      <usize>(capacity - 1) << alignof<T>()
    );
    storeUnsafe<T,T>(buffer, 0, element);
    this.length_ = newLength;
    return newLength;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Array<T> {
    var length = this.length_;
    if (begin < 0) begin = max(length + begin, 0);
    else if (begin > length) begin = length;
    if (end < 0) end = length + end; // no need to clamp
    else if (end > length) end = length;
    if (end < begin) end = begin;    // ^
    var newLength = end - begin;
    assert(newLength >= 0);
    var sliced = new Array<T>(newLength);
    if (newLength) {
      move_memory(
        changetype<usize>(sliced.buffer_) + HEADER_SIZE_AB,
        changetype<usize>(this.buffer_) + HEADER_SIZE_AB + (<usize>begin << alignof<T>()),
        <usize>newLength << alignof<T>()
      );
    }
    return sliced;
  }

  splice(start: i32, deleteCount: i32 = i32.MAX_VALUE): void {
    if (deleteCount < 1) return;
    var length = this.length_;
    if (start < 0) start = max(length + start, 0);
    if (start >= length) return;
    deleteCount = min(deleteCount, length - start);
    var buffer = this.buffer_;
    move_memory(
      changetype<usize>(buffer) + HEADER_SIZE_AB + (<usize>start << alignof<T>()),
      changetype<usize>(buffer) + HEADER_SIZE_AB + (<usize>(start + deleteCount) << alignof<T>()),
      <usize>deleteCount << alignof<T>()
    );
    this.length_ = length - deleteCount;
  }

  reverse(): Array<T> {
    var buffer = this.buffer_;
    for (let front = 0, back = this.length_ - 1; front < back; ++front, --back) {
      let temp = loadUnsafe<T,T>(buffer, front);
      storeUnsafe<T,T>(buffer, front, loadUnsafe<T,T>(buffer, back));
      storeUnsafe<T,T>(buffer, back, temp);
    }
    return this;
  }

  sort(comparator: (a: T, b: T) => i32 = defaultComparator<T>()): this {
    var length = this.length_;
    if (length <= 1) return this;
    var buffer = this.buffer_;
    if (length == 2) {
      let a = loadUnsafe<T,T>(buffer, 1); // a = arr[1]
      let b = loadUnsafe<T,T>(buffer, 0); // b = arr[0]
      if (comparator(a, b) < 0) {
        storeUnsafe<T,T>(buffer, 1, b);   // arr[1] = b;
        storeUnsafe<T,T>(buffer, 0, a);   // arr[0] = a;
      }
      return this;
    }

    if (isReference<T>()) {
      // TODO replace this to stable sort when it implemented
      return changetype<this>(insertionSort<T>(this, comparator));
    } else {
      return changetype<this>(length < 256
        ? insertionSort<T>(this, comparator)
        : weakHeapSort<T>(this, comparator)
      );
    }
  }
}
