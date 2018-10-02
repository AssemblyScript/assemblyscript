import {
  MAX_BLENGTH,
  HEADER_SIZE,
  allocateUnsafe,
  reallocateUnsafe,
  loadUnsafe,
  storeUnsafe
} from "./internal/arraybuffer";

import {
  allocateUnsafe as allocateUnsafeString,
  freeUnsafe as freeUnsafeString,
  copyUnsafe as copyUnsafeString
} from "./internal/string";

import {
  defaultComparator,
  insertionSort,
  weakHeapSort
} from "./internal/array";

import {
  itoa,
  dtoa,
  itoa_stream,
  dtoa_stream,
  MAX_DOUBLE_LENGTH
} from "./internal/number";

export class Array<T> {

  /* @internal */ buffer_: ArrayBuffer;
  /* @internal */ length_: i32;

  constructor(length: i32 = 0) {
    const MAX_LENGTH = MAX_BLENGTH >>> alignof<T>();
    if (<u32>length > <u32>MAX_LENGTH) throw new RangeError("Invalid array length");
    var byteLength = length << alignof<T>();
    var buffer = allocateUnsafe(byteLength);
    this.buffer_ = buffer;
    this.length_ = length;
    memory.fill(
      changetype<usize>(buffer) + HEADER_SIZE,
      0,
      <usize>byteLength
    );
  }

  @inline
  get length(): i32 {
    return this.length_;
  }

  set length(length: i32) {
    var buffer = this.buffer_;
    var capacity = buffer.byteLength >>> alignof<T>();
    if (<u32>length > <u32>capacity) {
      const MAX_LENGTH = MAX_BLENGTH >>> alignof<T>();
      if (<u32>length > <u32>MAX_LENGTH) throw new RangeError("Invalid array length");
      buffer = reallocateUnsafe(buffer, length << alignof<T>());
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
      buffer = reallocateUnsafe(buffer, (index + 1) << alignof<T>());
      this.buffer_ = buffer;
      this.length_ = index + 1;
    }
    storeUnsafe<T,T>(buffer, index, value);
    if (isManaged<T>()) __gc_link(changetype<usize>(this), changetype<usize>(value)); // tslint:disable-line
  }

  @operator("{}=")
  private __unchecked_set(index: i32, value: T): void {
    storeUnsafe<T,T>(this.buffer_, index, value);
    if (isManaged<T>()) __gc_link(changetype<usize>(this), changetype<usize>(value)); // tslint:disable-line
  }

  fill(value: T, start: i32 = 0, end: i32 = i32.MAX_VALUE): this {
    var buffer = this.buffer_;
    var len    = this.length_;
    start = start < 0 ? max(len + start, 0) : min(start, len);
    end   = end   < 0 ? max(len + end,   0) : min(end,   len);
    if (sizeof<T>() == 1) {
      memory.fill(
        changetype<usize>(buffer) + start + HEADER_SIZE,
        <u8>value,
        <usize>(end - start)
      );
    } else {
      for (; start < end; ++start) {
        storeUnsafe<T,T>(buffer, start, value);
      }
    }
    return this;
  }

  @inline
  includes(searchElement: T, fromIndex: i32 = 0): bool {
    return this.indexOf(searchElement, fromIndex) >= 0;
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
      buffer = reallocateUnsafe(buffer, newLength << alignof<T>());
      this.buffer_ = buffer;
    }
    this.length_ = newLength;
    storeUnsafe<T,T>(buffer, length, element);
    if (isManaged<T>()) __gc_link(changetype<usize>(this), changetype<usize>(element)); // tslint:disable-line
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
    memory.copy(
      changetype<usize>(buffer) + HEADER_SIZE,
      changetype<usize>(buffer) + HEADER_SIZE + sizeof<T>(),
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
      buffer = reallocateUnsafe(buffer, newLength << alignof<T>());
      capacity = buffer.byteLength >>> alignof<T>();
      this.buffer_ = buffer;
    }
    memory.copy(
      changetype<usize>(buffer) + HEADER_SIZE + sizeof<T>(),
      changetype<usize>(buffer) + HEADER_SIZE,
      <usize>(capacity - 1) << alignof<T>()
    );
    storeUnsafe<T,T>(buffer, 0, element);
    this.length_ = newLength;
    if (isManaged<T>()) __gc_link(changetype<usize>(this), changetype<usize>(element)); // tslint:disable-line
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
      memory.copy(
        changetype<usize>(sliced.buffer_) + HEADER_SIZE,
        changetype<usize>(this.buffer_) + HEADER_SIZE + (<usize>begin << alignof<T>()),
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
    memory.copy(
      changetype<usize>(buffer) + HEADER_SIZE + (<usize>start << alignof<T>()),
      changetype<usize>(buffer) + HEADER_SIZE + (<usize>(start + deleteCount) << alignof<T>()),
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
    // TODO remove this when flow will allow trackcing null
    assert(comparator); // The comparison function must be a function

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
      // TODO replace this to faster stable sort (TimSort) when it implemented
      insertionSort<T>(buffer, 0, length, comparator);
      return this;
    } else {
      if (length < 256) {
        insertionSort<T>(buffer, 0, length, comparator);
      } else {
        weakHeapSort<T>(buffer, 0, length, comparator);
      }
      return this;
    }
  }

  join(separator: string = ","): string {
    var lastIndex = this.length_ - 1;
    if (lastIndex < 0) return "";
    var result = "";
    var value: T;
    var buffer = this.buffer_;
    var sepLen = separator.length;
    var hasSeparator = sepLen != 0;
    if (value instanceof bool) {
      if (!lastIndex) {
        return select<string>("true", "false", loadUnsafe<T,bool>(buffer, 0));
      }
      let valueLen = 5; // max possible length of element len("false")
      let estLen = (valueLen + sepLen) * lastIndex + valueLen;
      let result = allocateUnsafeString(estLen);
      let offset = 0;
      for (let i = 0; i < lastIndex; ++i) {
        value = loadUnsafe<T,bool>(buffer, i);
        valueLen = 4 + <i32>(!value);
        copyUnsafeString(result, offset, select<string>("true", "false", value), 0, valueLen);
        offset += valueLen;
        if (hasSeparator) {
          copyUnsafeString(result, offset, changetype<String>(separator), 0, sepLen);
          offset += sepLen;
        }
      }
      value = loadUnsafe<T,bool>(buffer, lastIndex);
      valueLen = 4 + <i32>(!value);
      copyUnsafeString(result, offset, select<string>("true", "false", value), 0, valueLen);
      offset += valueLen;

      let out = result;
      if (estLen > offset) {
        out = result.substring(0, offset);
        freeUnsafeString(result);
      }
      return out;
    } else if (isInteger<T>()) {
      if (!lastIndex) {
        return changetype<string>(itoa<T>(loadUnsafe<T,T>(buffer, 0)));
      }
      const valueLen = (sizeof<T>() <= 4 ? 10 : 20) + <i32>isSigned<T>();
      let estLen = (valueLen + sepLen) * lastIndex + valueLen;
      let result = allocateUnsafeString(estLen);
      let offset = 0;
      for (let i = 0; i < lastIndex; ++i) {
        value = loadUnsafe<T,T>(buffer, i);
        offset += itoa_stream<T>(changetype<usize>(result), offset, value);
        if (hasSeparator) {
          copyUnsafeString(result, offset, separator, 0, sepLen);
          offset += sepLen;
        }
      }
      value = loadUnsafe<T,T>(buffer, lastIndex);
      offset += itoa_stream<T>(changetype<usize>(result), offset, value);
      let out = result;
      if (estLen > offset) {
        out = result.substring(0, offset);
        freeUnsafeString(result);
      }
      return out;
    } else if (isFloat<T>()) {
      if (!lastIndex) {
        return changetype<string>(dtoa(loadUnsafe<T,f64>(buffer, 0)));
      }
      const valueLen = MAX_DOUBLE_LENGTH;
      let estLen = (valueLen + sepLen) * lastIndex + valueLen;
      let result = allocateUnsafeString(estLen);
      let offset = 0;
      for (let i = 0; i < lastIndex; ++i) {
        value = loadUnsafe<T,f64>(buffer, i);
        offset += dtoa_stream(changetype<usize>(result), offset, value);
        if (hasSeparator) {
          copyUnsafeString(result, offset, separator, 0, sepLen);
          offset += sepLen;
        }
      }
      value = loadUnsafe<T,f64>(buffer, lastIndex);
      offset += dtoa_stream(changetype<usize>(result), offset, value);
      let out = result;
      if (estLen > offset) {
        out = result.substring(0, offset);
        freeUnsafeString(result);
      }
      return out;
    } else if (isString<T>()) {
      if (!lastIndex) {
        return loadUnsafe<T,string>(buffer, 0);
      }
      let estLen = 0;
      for (let i = 0, len = lastIndex + 1; i < len; ++i) {
        estLen += loadUnsafe<T,string>(buffer, i).length;
      }
      let offset = 0;
      let result = allocateUnsafeString(estLen + sepLen * lastIndex);
      for (let i = 0; i < lastIndex; ++i) {
        value = loadUnsafe<T,String>(buffer, i);
        if (value) {
          let valueLen = value.length;                          // tslint:disable-line:no-unsafe-any
          copyUnsafeString(result, offset, value, 0, valueLen); // tslint:disable-line:no-unsafe-any
          offset += valueLen;                                   // tslint:disable-line:no-unsafe-any
        }
        if (hasSeparator) {
          copyUnsafeString(result, offset, separator, 0, sepLen);
          offset += sepLen;
        }
      }
      value = loadUnsafe<T,String>(buffer, lastIndex);
      if (value) {
        let valueLen = value.length;                          // tslint:disable-line:no-unsafe-any
        copyUnsafeString(result, offset, value, 0, valueLen); // tslint:disable-line:no-unsafe-any
      }
      return result;
    } else if (isArray<T>()) {
      if (!lastIndex) {
        value = loadUnsafe<T,T>(buffer, 0);
        return value ? value.join(separator) : ""; // tslint:disable-line:no-unsafe-any
      }
      for (let i = 0; i < lastIndex; ++i) {
        value = loadUnsafe<T,T>(buffer, i);
        if (value) result += value.join(separator); // tslint:disable-line:no-unsafe-any
        if (hasSeparator) result += separator;
      }
      value = loadUnsafe<T,T>(buffer, lastIndex);
      if (value) result += value.join(separator); // tslint:disable-line:no-unsafe-any
      return result;
    } else if (isReference<T>()) { // References
      if (!lastIndex) return "[object Object]";
      const valueLen = 15; // max possible length of element len("[object Object]")
      let estLen = (valueLen + sepLen) * lastIndex + valueLen;
      let result = allocateUnsafeString(estLen);
      let offset = 0;
      for (let i = 0; i < lastIndex; ++i) {
        value = loadUnsafe<T,T>(buffer, i);
        if (value) {
          copyUnsafeString(result, offset, changetype<String>("[object Object]"), 0, valueLen);
          offset += valueLen;
        }
        if (hasSeparator) {
          copyUnsafeString(result, offset, changetype<String>(separator), 0, sepLen);
          offset += sepLen;
        }
      }
      if (loadUnsafe<T,T>(buffer, lastIndex)) {
        copyUnsafeString(result, offset, changetype<String>("[object Object]"), 0, valueLen);
        offset += valueLen;
      }
      let out = result;
      if (estLen > offset) {
        out = result.substring(0, offset);
        freeUnsafeString(result);
      }
      return out;
    } else {
      assert(false); // Unsupported generic typename
    }
  }

  @inline
  toString(): string {
    return this.join();
  }

  private __gc(): void {
    var buffer = this.buffer_;
    __gc_mark(changetype<usize>(buffer)); // tslint:disable-line
    if (isManaged<T>()) {
      let offset: usize = 0;
      let end = <usize>this.length_ << alignof<usize>();
      while (offset < end) {
        __gc_mark(load<usize>(changetype<usize>(buffer) + offset, HEADER_SIZE)); // tslint:disable-line
        offset += sizeof<usize>();
      }
    }
  }
}
