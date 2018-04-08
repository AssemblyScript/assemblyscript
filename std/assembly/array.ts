import {
  MAX_BLENGTH,
  HEADER_SIZE as HEADER_SIZE_AB,
  computeSize,
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
    this.buffer_ = allocUnsafe(length << alignof<T>());
    this.length_ = length;
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
      if (!callbackfn(loadUnsafe<T>(buffer, index), index, this)) return false;
    }
    return true;
  }

  findIndex(predicate: (element: T, index: i32, array: Array<T>) => bool): i32 {
    var buffer = this.buffer_;
    for (let index = 0, toIndex = this.length_; index < toIndex && index < this.length_; ++index) {
      if (predicate(loadUnsafe<T>(buffer, index), index, this)) return index;
    }
    return -1;
  }

  @operator("[]")
  private __get(index: i32): T {
    var buffer = this.buffer_;
    var capacity = buffer.byteLength >>> alignof<T>();
    if (<u32>index >= <u32>capacity) throw new Error("Index out of bounds");
    return loadUnsafe<T>(buffer, index);
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
    storeUnsafe<T>(buffer, index, value);
  }

  includes(searchElement: T, fromIndex: i32 = 0): bool {
    var length = this.length_;
    if (length == 0 || fromIndex >= length) return false;
    if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
    var buffer = this.buffer_;
    while (fromIndex < length) {
      if (loadUnsafe<T>(buffer, fromIndex) == searchElement) return true;
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
      if (loadUnsafe<T>(buffer, fromIndex) == searchElement) return fromIndex;
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
      if (loadUnsafe<T>(buffer, fromIndex) == searchElement) return fromIndex;
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
    storeUnsafe<T>(buffer, length, element);
    return newLength;
  }

  pop(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError("Array is empty");
    var element = loadUnsafe<T>(this.buffer_, --length);
    this.length_ = length;
    return element;
  }

  reduce<U>(
    callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accum = initialValue;
    var buffer = this.buffer_;
    for (let index = 0, toIndex = this.length_; index < toIndex && index < this.length_; ++index) {
      accum = callbackfn(accum, loadUnsafe<T>(buffer, index), index, this);
    }
    return accum;
  }

  shift(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError("Array is empty");
    var buffer = this.buffer_;
    var element = loadUnsafe<T>(buffer, 0);
    var lastIndex = length - 1;
    move_memory(
      changetype<usize>(buffer) + HEADER_SIZE_AB,
      changetype<usize>(buffer) + HEADER_SIZE_AB + sizeof<T>(),
      <usize>lastIndex << alignof<T>()
    );
    storeUnsafe<T>(buffer, lastIndex, <T>0);
    this.length_ = lastIndex;
    return element;
  }

  some(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    var buffer = this.buffer_;
    for (let index = 0, toIndex = this.length_; index < toIndex && index < this.length_; ++index) {
      if (callbackfn(loadUnsafe<T>(buffer, index), index, this)) return true;
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
    storeUnsafe<T>(buffer, 0, element);
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
      let temp = loadUnsafe<T>(buffer, front);
      storeUnsafe<T>(buffer, front, loadUnsafe<T>(buffer, back));
      storeUnsafe<T>(buffer, back, temp);
    }
    return this;
  }

  sort(comparator: (a: T, b: T) => i32 = defaultComparator<T>()): Array<T> {
    var length = this.length_;
    if (length <= 1) return this;
    var buffer = this.buffer_;
    if (length == 2) {
      let a = loadUnsafe<T>(buffer, 1); // a = arr[1]
      let b = loadUnsafe<T>(buffer, 0); // b = arr[0]
      if (comparator(a, b) < 0) {
        storeUnsafe<T>(buffer, 1, b);   // arr[1] = b;
        storeUnsafe<T>(buffer, 0, a);   // arr[0] = a;
      }
      return this;
    }
    return length < 256
      ? insertionSort<T>(this, comparator)
      : weakHeapSort<T>(this, comparator);
  }
}
