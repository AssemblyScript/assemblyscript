/// <reference path="./rt/index.d.ts" />

import { BLOCK_MAXSIZE } from "./rt/common";
import { COMPARATOR, SORT } from "./util/sort";
import { joinBooleanArray, joinIntegerArray, joinFloatArray, joinStringArray, joinReferenceArray } from "./util/string";
import { idof, isArray as builtin_isArray } from "./builtins";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH, E_ILLEGALGENTYPE, E_EMPTYARRAY, E_HOLEYARRAY } from "./util/error";

/** Ensures that the given array has _at least_ the specified backing size. */
function ensureSize(array: usize, minSize: usize, alignLog2: u32): void {
  // depends on the fact that Arrays mimic ArrayBufferView
  var oldCapacity = changetype<ArrayBufferView>(array).byteLength;
  if (minSize > <usize>oldCapacity >>> alignLog2) {
    if (minSize > BLOCK_MAXSIZE >>> alignLog2) throw new RangeError(E_INVALIDLENGTH);
    let oldData = changetype<usize>(changetype<ArrayBufferView>(array).buffer);
    let newCapacity = minSize << alignLog2;
    let newData = __renew(oldData, newCapacity);
    memory.fill(newData + oldCapacity, 0, newCapacity - oldCapacity);
    if (newData !== oldData) { // oldData has been free'd
      store<usize>(array, newData, offsetof<ArrayBufferView>("buffer"));
      store<usize>(array, newData, offsetof<ArrayBufferView>("dataStart"));
      __link(array, changetype<usize>(newData), false);
    }
    store<u32>(array, newCapacity, offsetof<ArrayBufferView>("byteLength"));
  }
}

export class Array<T> {
  [key: number]: T;

  // Mimicking ArrayBufferView isn't strictly necessary here but is done to allow glue code
  // to work with typed and normal arrays interchangeably. Technically, normal arrays do not need
  // `dataStart` (equals `buffer`) and `byteLength` (equals computed `buffer.byteLength`), but the
  // block is 16 bytes anyway so it's fine to have a couple extra fields in there.

  private buffer: ArrayBuffer;
  private dataStart: usize;
  private byteLength: i32;

  // Also note that Array<T> with non-nullable T must guard against uninitialized null values
  // whenever an element is accessed. Otherwise, the compiler wouldn't be able to guarantee
  // type-safety anymore. For lack of a better word, such an array is "holey".

  private length_: i32;

  static isArray<U>(value: U): bool {
    return isReference<U>() ? builtin_isArray(value) && value !== null : false;
  }

  static create<T>(capacity: i32 = 0): Array<T> {
    WARNING("'Array.create' is deprecated. Use 'new Array' instead, making sure initial elements are initialized.");
    var array = new Array<T>(capacity);
    array.length = 0;
    return array;
  }

  constructor(length: i32 = 0) {
    if (<u32>length > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new RangeError(E_INVALIDLENGTH);
    var bufferSize = <usize>length << alignof<T>();
    var buffer = changetype<ArrayBuffer>(__new(bufferSize, idof<ArrayBuffer>()));
    memory.fill(changetype<usize>(buffer), 0, bufferSize);
    this.buffer = buffer; // links
    this.dataStart = changetype<usize>(buffer);
    this.byteLength = <i32>bufferSize;
    this.length_ = length;
  }

  get length(): i32 {
    return this.length_;
  }

  set length(newLength: i32) {
    ensureSize(changetype<usize>(this), newLength, alignof<T>());
    this.length_ = newLength;
  }

  every(fn: (value: T, index: i32, array: Array<T>) => bool): bool {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      if (!fn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this)) return false;
    }
    return true;
  }

  findIndex(predicate: (value: T, index: i32, array: Array<T>) => bool): i32 {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      if (predicate(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this)) return index;
    }
    return -1;
  }

  @operator("[]") private __get(index: i32): T {
    if (<u32>index >= <u32>this.length_) throw new RangeError(E_INDEXOUTOFRANGE);
    var value = load<T>(this.dataStart + (<usize>index << alignof<T>()));
    if (isReference<T>()) {
      if (!isNullable<T>()) {
        if (!changetype<usize>(value)) throw new Error(E_HOLEYARRAY);
      }
    }
    return value;
  }

  @unsafe @operator("{}") private __uget(index: i32): T {
    return load<T>(this.dataStart + (<usize>index << alignof<T>()));
  }

  @operator("[]=") private __set(index: i32, value: T): void {
    if (<u32>index >= <u32>this.length_) {
      if (index < 0) throw new RangeError(E_INDEXOUTOFRANGE);
      ensureSize(changetype<usize>(this), index + 1, alignof<T>());
      this.length_ = index + 1;
    }
    this.__uset(index, value);
  }

  @unsafe @operator("{}=") private __uset(index: i32, value: T): void {
    store<T>(this.dataStart + (<usize>index << alignof<T>()), value);
    if (isManaged<T>()) {
      __link(changetype<usize>(this), changetype<usize>(value), true);
    }
  }

  at(index: i32): T {
    var len = this.length_;
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    var value = load<T>(this.dataStart + (<usize>index << alignof<T>()));
    if (isReference<T>()) {
      if (!isNullable<T>()) {
        if (!changetype<usize>(value)) throw new Error(E_HOLEYARRAY);
      }
    }
    return value;
  }

  fill(value: T, start: i32 = 0, end: i32 = i32.MAX_VALUE): this {
    var dataStart = this.dataStart;
    var length = this.length_;
    start = start < 0 ? max(length + start, 0) : min(start, length);
    end   = end   < 0 ? max(length + end,   0) : min(end,   length);
    if (isManaged<T>()) {
      for (; start < end; ++start) {
        store<usize>(dataStart + (<usize>start << alignof<T>()), changetype<usize>(value));
        __link(changetype<usize>(this), changetype<usize>(value), true);
      }
    } else if (sizeof<T>() == 1) {
      if (start < end) {
        memory.fill(
          dataStart + <usize>start,
          u8(value),
          <usize>(end - start)
        );
      }
    } else {
      for (; start < end; ++start) {
        store<T>(dataStart + (<usize>start << alignof<T>()), value);
      }
    }
    return this;
  }

  includes(value: T, fromIndex: i32 = 0): bool {
    if (isFloat<T>()) {
      let length = this.length_;
      if (length == 0 || fromIndex >= length) return false;
      if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
      let dataStart = this.dataStart;
      while (fromIndex < length) {
        let elem = load<T>(dataStart + (<usize>fromIndex << alignof<T>()));
        // @ts-ignore
        if (elem == value || isNaN(elem) & isNaN(value)) return true;
        ++fromIndex;
      }
      return false;
    } else {
      return this.indexOf(value, fromIndex) >= 0;
    }
  }

  indexOf(value: T, fromIndex: i32 = 0): i32 {
    var length = this.length_;
    if (length == 0 || fromIndex >= length) return -1;
    if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
    var dataStart = this.dataStart;
    while (fromIndex < length) {
      if (load<T>(dataStart + (<usize>fromIndex << alignof<T>())) == value) return fromIndex;
      ++fromIndex;
    }
    return -1;
  }

  lastIndexOf(value: T, fromIndex: i32 = this.length_): i32 {
    var length = this.length_;
    if (length == 0) return -1;
    if (fromIndex < 0) fromIndex = length + fromIndex;
    else if (fromIndex >= length) fromIndex = length - 1;
    var dataStart = this.dataStart;
    while (fromIndex >= 0) {
      if (load<T>(dataStart + (<usize>fromIndex << alignof<T>())) == value) return fromIndex;
      --fromIndex;
    }
    return -1;
  }

  push(value: T): i32 {
    var length = this.length_;
    var newLength = length + 1;
    ensureSize(changetype<usize>(this), newLength, alignof<T>());
    if (isManaged<T>()) {
      store<usize>(this.dataStart + (<usize>length << alignof<T>()), changetype<usize>(value));
      __link(changetype<usize>(this), changetype<usize>(value), true);
    } else {
      store<T>(this.dataStart + (<usize>length << alignof<T>()), value);
    }
    this.length_ = newLength;
    return newLength;
  }

  concat(other: Array<T>): Array<T> {
    var thisLen = this.length_;
    var otherLen = select(0, other.length_, other === null);
    var outLen = thisLen + otherLen;
    if (<u32>outLen > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new Error(E_INVALIDLENGTH);
    var out = changetype<Array<T>>(__newArray(outLen, alignof<T>(), idof<Array<T>>()));
    var outStart = out.dataStart;
    var thisSize = <usize>thisLen << alignof<T>();
    if (isManaged<T>()) {
      let thisStart = this.dataStart;
      for (let offset: usize = 0; offset < thisSize; offset += sizeof<T>()) {
        let ref = load<usize>(thisStart + offset);
        store<usize>(outStart + offset, ref);
        __link(changetype<usize>(out), ref, true);
      }
      outStart += thisSize;
      let otherStart = other.dataStart;
      let otherSize = <usize>otherLen << alignof<T>();
      for (let offset: usize = 0; offset < otherSize; offset += sizeof<T>()) {
        let ref = load<usize>(otherStart + offset);
        store<usize>(outStart + offset, ref);
        __link(changetype<usize>(out), ref, true);
      }
    } else {
      memory.copy(outStart, this.dataStart, thisSize);
      memory.copy(outStart + thisSize, other.dataStart, <usize>otherLen << alignof<T>());
    }
    return out;
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): this {
    var dataStart = this.dataStart;
    var len = this.length_;

    end = min<i32>(end, len);

    var to    = target < 0 ? max(len + target, 0) : min(target, len);
    var from  = start < 0 ? max(len + start, 0) : min(start, len);
    var last  = end < 0 ? max(len + end, 0) : min(end, len);
    var count = min(last - from, len - to);

    memory.copy( // is memmove
      dataStart + (<usize>to << alignof<T>()),
      dataStart + (<usize>from << alignof<T>()),
      <usize>count << alignof<T>()
    );
    return this;
  }

  pop(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError(E_EMPTYARRAY);
    var element = load<T>(this.dataStart + (<usize>(--length) << alignof<T>()));
    this.length_ = length;
    return element;
  }

  forEach(fn: (value: T, index: i32, array: Array<T>) => void): void {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      fn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
    }
  }

  map<U>(fn: (value: T, index: i32, array: Array<T>) => U): Array<U> {
    var length = this.length_;
    var out = changetype<Array<U>>(__newArray(length, alignof<U>(), idof<Array<U>>()));
    var outStart = out.dataStart;
    for (let index = 0; index < min(length, this.length_); ++index) {
      let result = fn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
      store<U>(outStart + (<usize>index << alignof<U>()), result);
      if (isManaged<U>()) {
        __link(changetype<usize>(out), changetype<usize>(result), true);
      }
    }
    return out;
  }

  filter(fn: (value: T, index: i32, array: Array<T>) => bool): Array<T> {
    var result = changetype<Array<T>>(__newArray(0, alignof<T>(), idof<Array<T>>()));
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      let value = load<T>(this.dataStart + (<usize>index << alignof<T>()));
      if (fn(value, index, this)) result.push(value);
    }
    return result;
  }

  reduce<U>(
    fn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accum = initialValue;
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      accum = fn(accum, load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
    }
    return accum;
  }

  reduceRight<U>(
    fn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accum = initialValue;
    for (let index = this.length_ - 1; index >= 0; --index) {
      accum = fn(accum, load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
    }
    return accum;
  }

  shift(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError(E_EMPTYARRAY);
    var base = this.dataStart;
    var element = load<T>(base);
    var lastIndex = length - 1;
    memory.copy(
      base,
      base + sizeof<T>(),
      <usize>lastIndex << alignof<T>()
    );
    if (isReference<T>()) {
      store<usize>(base + (<usize>lastIndex << alignof<T>()), 0);
    } else {
      // @ts-ignore
      store<T>(base + (<usize>lastIndex << alignof<T>()), <T>0);
    }
    this.length_ = lastIndex;
    return element;
  }

  some(fn: (value: T, index: i32, array: Array<T>) => bool): bool {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      if (fn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this)) return true;
    }
    return false;
  }

  unshift(value: T): i32 {
    var newLength = this.length_ + 1;
    ensureSize(changetype<usize>(this), newLength, alignof<T>());
    var dataStart = this.dataStart;
    memory.copy(
      dataStart + sizeof<T>(),
      dataStart,
      <usize>(newLength - 1) << alignof<T>()
    );
    store<T>(dataStart, value);
    if (isManaged<T>()) {
      __link(changetype<usize>(this), changetype<usize>(value), true);
    }
    this.length_ = newLength;
    return newLength;
  }

  slice(start: i32 = 0, end: i32 = i32.MAX_VALUE): Array<T> {
    var length = this.length_;
    start = start < 0 ? max(start + length, 0) : min(start, length);
    end   = end   < 0 ? max(end   + length, 0) : min(end  , length);
    length = max(end - start, 0);
    var slice = changetype<Array<T>>(__newArray(length, alignof<T>(), idof<Array<T>>()));
    var sliceBase = slice.dataStart;
    var thisBase = this.dataStart + (<usize>start << alignof<T>());
    if (isManaged<T>()) {
      let off = <usize>0;
      let end = <usize>length << alignof<usize>();
      while (off < end) {
        let ref = load<usize>(thisBase + off);
        store<usize>(sliceBase + off, ref);
        __link(changetype<usize>(slice), ref, true);
        off += sizeof<usize>();
      }
    } else {
      memory.copy(sliceBase, thisBase, length << alignof<T>());
    }
    return slice;
  }

  splice(start: i32, deleteCount: i32 = i32.MAX_VALUE): Array<T> {
    var length  = this.length_;
    start       = start < 0 ? max<i32>(length + start, 0) : min<i32>(start, length);
    deleteCount = max<i32>(min<i32>(deleteCount, length - start), 0);
    var result = changetype<Array<T>>(__newArray(deleteCount, alignof<T>(), idof<Array<T>>())); 
    var resultStart = result.dataStart;
    var thisStart = this.dataStart;
    var thisBase  = thisStart + (<usize>start << alignof<T>());
    memory.copy(
      resultStart,
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
    return result;
  }

  reverse(): Array<T> {
    var length = this.length_;
    if (length) {
      let front = this.dataStart;
      let back = this.dataStart + (<usize>(length - 1) << alignof<T>());
      while (front < back) {
        let temp = load<T>(front);
        store<T>(front, load<T>(back));
        store<T>(back, temp);
        front += sizeof<T>();
        back -= sizeof<T>();
      }
    }
    return this;
  }

  sort(comparator: (a: T, b: T) => i32 = COMPARATOR<T>()): this {
    var length = this.length_;
    if (length <= 1) return this;
    var base = this.dataStart;
    if (length == 2) {
      let a: T = load<T>(base, sizeof<T>()); // a = arr[1]
      let b: T = load<T>(base); // b = arr[0]
      if (comparator(a, b) < 0) {
        store<T>(base, b, sizeof<T>()); // arr[1] = b;
        store<T>(base, a); // arr[0] = a;
      }
      return this;
    }
    SORT<T>(base, length, comparator);
    return this;
  }

  join(separator: string = ","): string {
    var dataStart = this.dataStart;
    var length = this.length_;
    if (isBoolean<T>())   return joinBooleanArray(dataStart, length, separator);
    if (isInteger<T>())   return joinIntegerArray<T>(dataStart, length, separator);
    if (isFloat<T>())     return joinFloatArray<T>(dataStart, length, separator);

    if (ASC_SHRINK_LEVEL < 1) {
      if (isString<T>())  return joinStringArray(dataStart, length, separator);
    }
    // For rest objects and arrays use general join routine
    if (isReference<T>()) return joinReferenceArray<T>(dataStart, length, separator);
    ERROR("unspported element type");
    return <string>unreachable();
  }

  flat(): T {
    if (!isArray<T>()) {
      throw new TypeError(E_ILLEGALGENTYPE);
    }
    // Get the length and data start values
    var length = this.length_;
    var selfDataStart = this.dataStart;

    // calculate the end size with an initial pass
    var size = 0;
    for (let i = 0; i < length; i++) {
      let child = load<usize>(selfDataStart + (i << alignof<T>()));
      size += child == 0 ? 0 : load<i32>(child, offsetof<T>("length_"));
    }

    // calculate the byteLength of the resulting backing ArrayBuffer
    var byteLength = <usize>size << usize(alignof<valueof<T>>());
    var outBuffer = changetype<ArrayBuffer>(__new(byteLength, idof<ArrayBuffer>()));

    // create the return value and initialize it
    var outArray = changetype<T>(__new(offsetof<T>(), idof<T>()));
    store<i32>(changetype<usize>(outArray), size, offsetof<T>("length_"));

    // byteLength, dataStart, and buffer are all readonly
    store<i32>(changetype<usize>(outArray), byteLength, offsetof<T>("byteLength"));
    store<usize>(changetype<usize>(outArray), changetype<usize>(outBuffer), offsetof<T>("dataStart"));
    store<usize>(changetype<usize>(outArray), changetype<usize>(outBuffer), offsetof<T>("buffer"));
    __link(changetype<usize>(outArray), changetype<usize>(outBuffer), false);

    // set the elements
    var resultOffset: usize = 0;
    for (let i = 0; i < length; i++) { // for each child
      let child = load<usize>(selfDataStart + (<usize>i << alignof<T>()));

      // ignore null arrays
      if (child == 0) continue;

      // copy the underlying buffer data to the result buffer
      let childDataLength = load<i32>(child, offsetof<T>("byteLength"));
      memory.copy(
        changetype<usize>(outBuffer) + resultOffset,
        load<usize>(child, offsetof<T>("dataStart")),
        <usize>childDataLength
      );

      // advance the result length
      resultOffset += childDataLength;
    }

    // if the `valueof<T>` type is managed, we must link each reference
    if (isManaged<valueof<T>>()) {
      for (let i = 0; i < size; i++) {
        let ref = load<usize>(changetype<usize>(outBuffer) + (<usize>i << usize(alignof<valueof<T>>())));
        __link(changetype<usize>(outBuffer), ref, true);
      }
    }

    return outArray;
  }

  toString(): string {
    return this.join();
  }

  // RT integration

  @unsafe private __visit(cookie: u32): void {
    if (isManaged<T>()) {
      let cur = this.dataStart;
      let end = cur + (<usize>this.length_ << alignof<T>());
      while (cur < end) {
        let val = load<usize>(cur);
        if (val) __visit(val, cookie);
        cur += sizeof<usize>();
      }
    }
    __visit(changetype<usize>(this.buffer), cookie);
  }
}
