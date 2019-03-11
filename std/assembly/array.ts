// import {
//   MAX_BLENGTH,
//   HEADER_SIZE,
//   allocateUnsafe,
//   reallocateUnsafe,
//   LOAD,
//   STORE
// } from "./internal/arraybuffer";

import {
  ALLOC,
  REALLOC,
  REGISTER,
  LINK,
  ArrayBufferView
} from "./runtime";

import {
  ArrayBuffer
} from "./arraybuffer";

// import {
//   allocateUnsafe as allocateUnsafeString,
//   freeUnsafe as freeUnsafeString,
//   copyUnsafe as copyUnsafeString
// } from "./internal/string";

import {
  COMPARATOR,
  SORT
} from "./internal/sort";

import {
  itoa,
  dtoa,
  itoa_stream,
  dtoa_stream,
  MAX_DOUBLE_LENGTH
} from "./internal/number";

import {
  isArray as builtin_isArray
} from "./builtins";

export class Array<T> extends ArrayBufferView {
  private length_: i32;

  @inline static isArray<U>(value: U): bool {
    return builtin_isArray(value) && value !== null;
  }

  constructor(length: i32 = 0) {
    super(length, alignof<T>());
    this.length_ = length;
  }

  get length(): i32 {
    return this.length_;
  }

  set length(length: i32) {
    this.resize(length);
    this.length_ = length;
  }

  resize(length: i32): void {
    var buffer = this.buffer;
    var oldCapacity = buffer.byteLength >>> alignof<T>();
    if (<u32>length > <u32>oldCapacity) {
      const MAX_LENGTH = ArrayBuffer.MAX_BYTELENGTH >>> alignof<T>();
      if (<u32>length > <u32>MAX_LENGTH) throw new RangeError("Invalid array length");
      let newCapacity = length << alignof<T>();
      let newBuffer = REALLOC(changetype<usize>(buffer), newCapacity);
      if (newBuffer !== changetype<usize>(buffer)) {
        this.buffer = changetype<ArrayBuffer>(newBuffer); // links
        this.dataStart = newBuffer;
        this.dataEnd = newBuffer + newCapacity;
      }
    }
  }

  every(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      if (!callbackfn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this)) return false;
    }
    return true;
  }

  findIndex(predicate: (element: T, index: i32, array: Array<T>) => bool): i32 {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      if (predicate(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this)) return index;
    }
    return -1;
  }

  // @operator("[]")
  // private __get(index: i32): T {
  //   var buffer = this.buffer_;
  //   return <u32>index < <u32>(buffer.byteLength >>> alignof<T>())
  //     ? LOAD<T>(buffer, index)
  //     : <T>unreachable();
  // }

  // @operator("{}")
  // private __unchecked_get(index: i32): T {
  //   return LOAD<T>(this.buffer_, index);
  // }

  // @operator("[]=")
  // private __set(index: i32, value: T): void {
  //   var buffer = this.buffer_;
  //   var capacity = buffer.byteLength >>> alignof<T>();
  //   if (<u32>index >= <u32>capacity) {
  //     const MAX_LENGTH = MAX_BLENGTH >>> alignof<T>();
  //     if (<u32>index >= <u32>MAX_LENGTH) throw new Error("Invalid array length");
  //     buffer = reallocateUnsafe(buffer, (index + 1) << alignof<T>());
  //     this.buffer_ = buffer;
  //     this.length_ = index + 1;
  //   }
  //   STORE<T>(buffer, index, value);
  //   if (isManaged<T>()) __gc_link(changetype<usize>(this), changetype<usize>(value)); // tslint:disable-line
  // }

  // @operator("{}=")
  // private __unchecked_set(index: i32, value: T): void {
  //   STORE<T>(this.buffer_, index, value);
  //   if (isManaged<T>()) __gc_link(changetype<usize>(this), changetype<usize>(value)); // tslint:disable-line
  // }

  fill(value: T, start: i32 = 0, end: i32 = i32.MAX_VALUE): this {
    var base   = this.dataStart;
    var length = this.length_;

    start = start < 0 ? max(length + start, 0) : min(start, length);
    end   = end   < 0 ? max(length + end,   0) : min(end,   length);

    if (sizeof<T>() == 1) {
      if (start < end) {
        memory.fill(
          base + <usize>start,
          <u8>value,
          <usize>(end - start)
        );
      }
    } else {
      for (; start < end; ++start) {
        store<T>(base + (<usize>start << alignof<T>()), value);
      }
    }
    return this;
  }

  includes(searchElement: T, fromIndex: i32 = 0): bool {
    return this.indexOf(searchElement, fromIndex) >= 0;
  }

  indexOf(searchElement: T, fromIndex: i32 = 0): i32 {
    var length = this.length_;
    if (length == 0 || fromIndex >= length) return -1;
    if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
    var base = this.dataStart;
    while (fromIndex < length) {
      if (load<T>(base + (<usize>fromIndex << alignof<T>())) == searchElement) return fromIndex;
      ++fromIndex;
    }
    return -1;
  }

  lastIndexOf(searchElement: T, fromIndex: i32 = this.length_): i32 {
    var length = this.length_;
    if (length == 0) return -1;
    if (fromIndex < 0) fromIndex = length + fromIndex; // no need to clamp
    else if (fromIndex >= length) fromIndex = length - 1;
    var base = this.dataStart;
    while (fromIndex >= 0) {                           // ^
      if (load<T>(base + (<usize>fromIndex << alignof<T>())) == searchElement) return fromIndex;
      --fromIndex;
    }
    return -1;
  }

  push(element: T): i32 {
    var newLength = this.length_ + 1;
    this.resize(newLength);
    this.length_ = newLength;
    store<T>(this.dataStart + (<usize>(newLength - 1) << alignof<T>()), element);
    if (isManaged<T>()) LINK(changetype<usize>(element), changetype<usize>(this));
    return newLength;
  }

  concat(other: Array<T>): Array<T> {
    var thisLen = this.length_;
    var otherLen = select(0, other.length_, other === null);
    var outLen = thisLen + otherLen;
    var out = new Array<T>(outLen);
    if (thisLen) {
      memory.copy(out.dataStart, this.dataStart, <usize>thisLen << alignof<T>());
    }
    if (otherLen) {
      memory.copy(out.dataStart + (<usize>thisLen << alignof<T>()), other.dataStart, <usize>otherLen << alignof<T>());
    }
    return out;
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): this {
    var buffer = this.buffer_;
    var len = this.length_;

        end   = min<i32>(end, len);
    var to    = target < 0 ? max(len + target, 0) : min(target, len);
    var from  = start < 0 ? max(len + start, 0) : min(start, len);
    var last  = end < 0 ? max(len + end, 0) : min(end, len);
    var count = min(last - from, len - to);

    if (from < to && to < (from + count)) {
      from += count - 1;
      to   += count - 1;
      while (count) {
        STORE<T>(buffer, to, LOAD<T>(buffer, from));
        --from, --to, --count;
      }
    } else {
      memory.copy(
        changetype<usize>(buffer) + HEADER_SIZE + (<usize>to << alignof<T>()),
        changetype<usize>(buffer) + HEADER_SIZE + (<usize>from << alignof<T>()),
        <usize>count << alignof<T>()
      );
    }
    return this;
  }

  pop(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError("Array is empty");
    var element = load<T>(this.dataStart + (<usize>--length << alignof<T>()));
    this.length_ = length;
    return element;
  }

  forEach(callbackfn: (value: T, index: i32, array: Array<T>) => void): void {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      callbackfn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
    }
  }

  map<U>(callbackfn: (value: T, index: i32, array: Array<T>) => U): Array<U> {
    var length = this.length_;
    var result = new Array<U>(length);
    var resultStart = result.dataStart;
    for (let index = 0; index < min(length, this.length_); ++index) {
      let element = load<T>(this.dataStart + (<usize>index << alignof<T>()));
      store<U>(resultStart + (<usize>index << alignof<T>()), element);
      if (isManaged<U>()) LINK(changetype<usize>(element), changetype<usize>(result));
    }
    return result;
  }

  filter(callbackfn: (value: T, index: i32, array: Array<T>) => bool): Array<T> {
    var result = new Array<T>();
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      let value = load<T>(this.dataStart + (<usize>index << alignof<T>()));
      if (callbackfn(value, index, this)) result.push(value);
    }
    return result;
  }

  reduce<U>(
    callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accum = initialValue;
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      accum = callbackfn(accum, load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
    }
    return accum;
  }

  reduceRight<U>(
    callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accum = initialValue;
    for (let index = this.length_ - 1; index >= 0; --index) {
      accum = callbackfn(accum, load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
    }
    return accum;
  }

  shift(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError("Array is empty");
    var base = this.dataStart;
    var element = load<T>(base);
    var lastIndex = length - 1;
    memory.copy(
      base,
      base + sizeof<T>(),
      <usize>lastIndex << alignof<T>()
    );
    store<T>(base + (<usize>lastIndex << alignof<T>()), <T>null);
    this.length_ = lastIndex;
    return element;
  }

  some(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      if (callbackfn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this)) return true;
    }
    return false;
  }

  unshift(element: T): i32 {
    var newLength = this.length_;
    this.resize(newLength);
    var base = this.dataStart;
    memory.copy(
      base + sizeof<T>(),
      base,
      <usize>(newLength - 1) << alignof<T>()
    );
    store<T>(base, element);
    if (isManaged<T>()) LINK(changetype<usize>(element), changetype<usize>(this));
    this.length_ = newLength;
    return newLength;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Array<T> {
    var length = this.length_;
    begin = begin < 0 ? max(begin + length, 0) : min(begin, length);
    end   = end   < 0 ? max(end   + length, 0) : min(end  , length);
    length = max(end - begin, 0);
    var slice = new Array<T>(length);
    var sliceBase = slice.dataStart;
    var thisBase = this.dataStart + (<usize>begin << alignof<T>());
    for (let i = 0; i < length; ++i) {
      let offset = <usize>i << alignof<T>();
      let element = load<T>(thisBase + offset);
      store<T>(sliceBase + offset, element);
      if (isManaged<T>()) LINK(changetype<usize>(element), changetype<usize>(slice));
    }
    return slice;
  }

  splice(start: i32, deleteCount: i32 = i32.MAX_VALUE): Array<T> {
    var length  = this.length_;
    start       = start < 0 ? max<i32>(length + start, 0) : min<i32>(start, length);
    deleteCount = max<i32>(min<i32>(deleteCount, length - start), 0);
    var splice = new Array<T>(deleteCount);
    var spliceStart = splice.dataStart;
    var thisStart = this.dataStart;
    var thisBase  = thisStart + (<usize>start << alignof<T>());
    for (let i = 0; i < deleteCount; ++i) {
      let element = load<T>(thisBase + (<usize>i << alignof<T>()));
      store<T>(spliceStart + (<usize>i << alignof<T>()), element);
      if (isManaged<T>()) LINK(changetype<usize>(element), changetype<usize>(splice));
    }
    memory.copy(
      splice.dataStart,
      thisBase,
      <usize>deleteCount << alignof<T>()
    );
    var offset = start + deleteCount;
    if (length != offset) {
      memory.copy(
        thisBase,
        thisStart + (<usize>offset << alignof<T>()),
        <usize>(length - offset) << alignof<T>()
      );
    }
    this.length_ = length - deleteCount;
    return splice;
  }

  reverse(): Array<T> {
    var buffer = this.buffer_;
    for (let front = 0, back = this.length_ - 1; front < back; ++front, --back) {
      let temp = LOAD<T>(buffer, front);
      STORE<T>(buffer, front, LOAD<T>(buffer, back));
      STORE<T>(buffer, back, temp);
    }
    return this;
  }

  sort(comparator: (a: T, b: T) => i32 = COMPARATOR<T>()): this {
    // TODO remove this when flow will allow trackcing null
    assert(comparator); // The comparison function must be a function

    var length = this.length_;
    if (length <= 1) return this;
    var buffer = this.buffer_;
    if (length == 2) {
      let a = LOAD<T>(buffer, 1); // a = arr[1]
      let b = LOAD<T>(buffer, 0); // b = arr[0]
      if (comparator(a, b) < 0) {
        STORE<T>(buffer, 1, b);   // arr[1] = b;
        STORE<T>(buffer, 0, a);   // arr[0] = a;
      }
      return this;
    }
    SORT<T>(buffer, 0, length, comparator);
    return this;
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
      if (!lastIndex) return select<string>("true", "false", LOAD<T,bool>(buffer, 0));

      let valueLen = 5; // max possible length of element len("false")
      let estLen = (valueLen + sepLen) * lastIndex + valueLen;
      let result = allocateUnsafeString(estLen);
      let offset = 0;
      for (let i = 0; i < lastIndex; ++i) {
        value = LOAD<T,bool>(buffer, i);
        valueLen = 4 + <i32>(!value);
        copyUnsafeString(result, offset, select<string>("true", "false", value), 0, valueLen);
        offset += valueLen;
        if (hasSeparator) {
          copyUnsafeString(result, offset, changetype<String>(separator), 0, sepLen);
          offset += sepLen;
        }
      }
      value = LOAD<T,bool>(buffer, lastIndex);
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
      if (!lastIndex) return changetype<string>(itoa<T>(LOAD<T>(buffer, 0)));

      const valueLen = (sizeof<T>() <= 4 ? 10 : 20) + <i32>isSigned<T>();
      let estLen = (valueLen + sepLen) * lastIndex + valueLen;
      let result = allocateUnsafeString(estLen);
      let offset = 0;
      for (let i = 0; i < lastIndex; ++i) {
        value = LOAD<T>(buffer, i);
        offset += itoa_stream<T>(changetype<usize>(result), offset, value);
        if (hasSeparator) {
          copyUnsafeString(result, offset, separator, 0, sepLen);
          offset += sepLen;
        }
      }
      value = LOAD<T>(buffer, lastIndex);
      offset += itoa_stream<T>(changetype<usize>(result), offset, value);
      let out = result;
      if (estLen > offset) {
        out = result.substring(0, offset);
        freeUnsafeString(result);
      }
      return out;
    } else if (isFloat<T>()) {
      if (!lastIndex) return changetype<string>(dtoa(LOAD<T,f64>(buffer, 0)));

      const valueLen = MAX_DOUBLE_LENGTH;
      let estLen = (valueLen + sepLen) * lastIndex + valueLen;
      let result = allocateUnsafeString(estLen);
      let offset = 0;
      for (let i = 0; i < lastIndex; ++i) {
        value = LOAD<T,f64>(buffer, i);
        offset += dtoa_stream(changetype<usize>(result), offset, value);
        if (hasSeparator) {
          copyUnsafeString(result, offset, separator, 0, sepLen);
          offset += sepLen;
        }
      }
      value = LOAD<T,f64>(buffer, lastIndex);
      offset += dtoa_stream(changetype<usize>(result), offset, value);
      let out = result;
      if (estLen > offset) {
        out = result.substring(0, offset);
        freeUnsafeString(result);
      }
      return out;
    } else if (isString<T>()) {
      if (!lastIndex) return LOAD<string>(buffer, 0);

      let estLen = 0;
      for (let i = 0, len = lastIndex + 1; i < len; ++i) {
        estLen += LOAD<string>(buffer, i).length;
      }
      let offset = 0;
      let result = allocateUnsafeString(estLen + sepLen * lastIndex);
      for (let i = 0; i < lastIndex; ++i) {
        value = LOAD<string>(buffer, i);
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
      value = LOAD<string>(buffer, lastIndex);
      if (value) {
        let valueLen = value.length;                          // tslint:disable-line:no-unsafe-any
        copyUnsafeString(result, offset, value, 0, valueLen); // tslint:disable-line:no-unsafe-any
      }
      return result;
    } else if (isArray<T>()) {
      if (!lastIndex) {
        value = LOAD<T>(buffer, 0);
        return value ? value.join(separator) : ""; // tslint:disable-line:no-unsafe-any
      }
      for (let i = 0; i < lastIndex; ++i) {
        value = LOAD<T>(buffer, i);
        if (value) result += value.join(separator); // tslint:disable-line:no-unsafe-any
        if (hasSeparator) result += separator;
      }
      value = LOAD<T>(buffer, lastIndex);
      if (value) result += value.join(separator); // tslint:disable-line:no-unsafe-any
      return result;
    } else if (isReference<T>()) { // References
      if (!lastIndex) return "[object Object]";
      const valueLen = 15; // max possible length of element len("[object Object]")
      let estLen = (valueLen + sepLen) * lastIndex + valueLen;
      let result = allocateUnsafeString(estLen);
      let offset = 0;
      for (let i = 0; i < lastIndex; ++i) {
        value = LOAD<T>(buffer, i);
        if (value) {
          copyUnsafeString(result, offset, changetype<String>("[object Object]"), 0, valueLen);
          offset += valueLen;
        }
        if (hasSeparator) {
          copyUnsafeString(result, offset, changetype<String>(separator), 0, sepLen);
          offset += sepLen;
        }
      }
      if (LOAD<T>(buffer, lastIndex)) {
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
