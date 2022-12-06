/// <reference path="./rt/index.d.ts" />

import { BLOCK_MAXSIZE } from "./rt/common";
import { Runtime } from "shared/runtime";
import { COMPARATOR, SORT } from "./util/sort";
import { REVERSE, FILL } from "./util/bytes";
import { joinBooleanArray, joinIntegerArray, joinFloatArray, joinStringArray, joinReferenceArray } from "./util/string";
import { idof, isArray as builtin_isArray } from "./builtins";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH, E_EMPTYARRAY, E_HOLEYARRAY } from "./util/error";

// @ts-ignore: decorator
@inline @lazy const MIN_SIZE: usize = 8;

/** Ensures that the given array has _at least_ the specified backing size. */
function ensureCapacity(array: usize, newSize: usize, alignLog2: u32, canGrow: bool = true): void {
  // Depends on the fact that Arrays mimic ArrayBufferView
  let oldCapacity = <usize>changetype<ArrayBufferView>(array).byteLength;
  if (newSize > oldCapacity >>> alignLog2) {
    if (newSize > BLOCK_MAXSIZE >>> alignLog2) throw new RangeError(E_INVALIDLENGTH);
    let oldData = changetype<usize>(changetype<ArrayBufferView>(array).buffer);
    // Grows old capacity by factor of two.
    // Make sure we don't reach BLOCK_MAXSIZE for new growed capacity.
    let newCapacity = max(newSize, MIN_SIZE) << alignLog2;
    if (canGrow) newCapacity = max(min(oldCapacity << 1, BLOCK_MAXSIZE), newCapacity);
    let newData = __renew(oldData, newCapacity);
    // __new / __renew already init memory range as zeros in Incremental runtime.
    // So try to avoid this.
    if (ASC_RUNTIME != Runtime.Incremental) {
      memory.fill(newData + oldCapacity, 0, newCapacity - oldCapacity);
    }
    if (newData != oldData) { // oldData has been free'd
      store<usize>(array, newData, offsetof<ArrayBufferView>("buffer"));
      store<usize>(array, newData, offsetof<ArrayBufferView>("dataStart"));
      __link(array, changetype<usize>(newData), false);
    }
    store<u32>(array, <u32>newCapacity, offsetof<ArrayBufferView>("byteLength"));
  }
}

export class Array<T> {
  [key: number]: T;

  // Mimicking ArrayBufferView isn't strictly necessary here but is done to allow glue code
  // to work with typed and normal arrays interchangeably. Technically, normal arrays do not need
  // `dataStart` (equals `buffer`) and `byteLength` (equals computed `buffer.byteLength`), but the
  // block is 16 bytes anyway so it's fine to have a couple extra fields in there.

  private buffer: ArrayBuffer;
  @unsafe readonly dataStart: usize;
  private byteLength: i32; // Uses here as capacity

  // Also note that Array<T> with non-nullable T must guard against uninitialized null values
  // whenever an element is accessed. Otherwise, the compiler wouldn't be able to guarantee
  // type-safety anymore. For lack of a better word, such an array is "holey".

  private length_: i32;

  static isArray<U>(value: U): bool {
    return isReference<U>() ? changetype<usize>(value) != 0 && builtin_isArray(value) : false;
  }

  static create<T>(capacity: i32 = 0): Array<T> {
    WARNING("'Array.create' is deprecated. Use 'new Array' instead, making sure initial elements are initialized.");
    let array = new Array<T>(capacity);
    array.length = 0;
    return array;
  }

  constructor(length: i32 = 0) {
    if (<u32>length > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new RangeError(E_INVALIDLENGTH);
    // reserve capacity for at least MIN_SIZE elements
    let bufferSize = max(<usize>length, MIN_SIZE) << alignof<T>();
    let buffer = changetype<ArrayBuffer>(__new(bufferSize, idof<ArrayBuffer>()));
    if (ASC_RUNTIME != Runtime.Incremental) {
      memory.fill(changetype<usize>(buffer), 0, bufferSize);
    }
    this.buffer = buffer; // links
    this.dataStart = changetype<usize>(buffer);
    this.byteLength = <i32>bufferSize;
    this.length_ = length;
  }

  get length(): i32 {
    return this.length_;
  }

  set length(newLength: i32) {
    ensureCapacity(changetype<usize>(this), newLength, alignof<T>(), false);
    this.length_ = newLength;
  }

  every(fn: (value: T, index: i32, array: Array<T>) => bool): bool {
    for (let i = 0, len = this.length_; i < min(len, this.length_); ++i) {
      if (!fn(load<T>(this.dataStart + (<usize>i << alignof<T>())), i, this)) return false;
    }
    return true;
  }

  findIndex(fn: (value: T, index: i32, array: Array<T>) => bool): i32 {
    for (let i = 0, len = this.length_; i < min(len, this.length_); ++i) {
      if (fn(load<T>(this.dataStart + (<usize>i << alignof<T>())), i, this)) return i;
    }
    return -1;
  }

  findLastIndex(fn: (value: T, index: i32, array: Array<T>) => bool): i32 {
    for (let i = this.length_ - 1; i >= 0; --i) {
      if (fn(load<T>(this.dataStart + (<usize>i << alignof<T>())), i, this)) return i;
    }
    return -1;
  }

  @operator("[]") private __get(index: i32): T {
    if (<u32>index >= <u32>this.length_) throw new RangeError(E_INDEXOUTOFRANGE);
    let value = load<T>(this.dataStart + (<usize>index << alignof<T>()));
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
      ensureCapacity(changetype<usize>(this), index + 1, alignof<T>());
      this.length_ = index + 1;
    }
    store<T>(this.dataStart + (<usize>index << alignof<T>()), value);
    if (isManaged<T>()) {
      __link(changetype<usize>(this), changetype<usize>(value), true);
    }
  }

  at(index: i32): T {
    let len = this.length_;
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    let value = load<T>(this.dataStart + (<usize>index << alignof<T>()));
    if (isReference<T>()) {
      if (!isNullable<T>()) {
        if (!changetype<usize>(value)) throw new Error(E_HOLEYARRAY);
      }
    }
    return value;
  }

  fill(value: T, start: i32 = 0, end: i32 = i32.MAX_VALUE): Array<T> {
    if (isManaged<T>()) {
      FILL<usize>(this.dataStart, this.length_, changetype<usize>(value), start, end);
      __link(changetype<usize>(this), changetype<usize>(value), false);
    } else {
      FILL<T>(this.dataStart, this.length_, value, start, end);
    }
    return this;
  }

  includes(value: T, fromIndex: i32 = 0): bool {
    if (isFloat<T>()) {
      let len = this.length_;
      if (len == 0 || fromIndex >= len) return false;
      if (fromIndex < 0) fromIndex = max(len + fromIndex, 0);
      let ptr = this.dataStart;
      while (fromIndex < len) {
        let elem = load<T>(ptr + (<usize>fromIndex << alignof<T>()));
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
    let len = this.length_;
    if (len == 0 || fromIndex >= len) return -1;
    if (fromIndex < 0) fromIndex = max(len + fromIndex, 0);
    let ptr = this.dataStart;
    while (fromIndex < len) {
      if (load<T>(ptr + (<usize>fromIndex << alignof<T>())) == value) return fromIndex;
      ++fromIndex;
    }
    return -1;
  }

  lastIndexOf(value: T, fromIndex: i32 = this.length_): i32 {
    let len = this.length_;
    if (len == 0) return -1;
    if (fromIndex < 0) fromIndex = len + fromIndex;
    else if (fromIndex >= len) fromIndex = len - 1;
    let ptr = this.dataStart;
    while (fromIndex >= 0) {
      if (load<T>(ptr + (<usize>fromIndex << alignof<T>())) == value) return fromIndex;
      --fromIndex;
    }
    return -1;
  }

  push(value: T): i32 {
    let oldLen = this.length_;
    let len = oldLen + 1;
    ensureCapacity(changetype<usize>(this), len, alignof<T>());
    if (isManaged<T>()) {
      store<usize>(this.dataStart + (<usize>oldLen << alignof<T>()), changetype<usize>(value));
      __link(changetype<usize>(this), changetype<usize>(value), true);
    } else {
      store<T>(this.dataStart + (<usize>oldLen << alignof<T>()), value);
    }
    this.length_ = len;
    return len;
  }

  concat(other: Array<T>): Array<T> {
    let thisLen = this.length_;
    let otherLen = other.length_;
    let outLen = thisLen + otherLen;
    if (<u32>outLen > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new Error(E_INVALIDLENGTH);
    let out = changetype<Array<T>>(__newArray(outLen, alignof<T>(), idof<Array<T>>()));
    let outStart = out.dataStart;
    let thisSize = <usize>thisLen << alignof<T>();
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

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Array<T> {
    let ptr = this.dataStart;
    let len = this.length_;

    end = min<i32>(end, len);

    let to    = target < 0 ? max(len + target, 0) : min(target, len);
    let from  = start < 0 ? max(len + start, 0) : min(start, len);
    let last  = end < 0 ? max(len + end, 0) : min(end, len);
    let count = min(last - from, len - to);

    memory.copy( // is memmove
      ptr + (<usize>to << alignof<T>()),
      ptr + (<usize>from << alignof<T>()),
      <usize>count << alignof<T>()
    );
    return this;
  }

  pop(): T {
    let len = this.length_;
    if (len < 1) throw new RangeError(E_EMPTYARRAY);
    let val = load<T>(this.dataStart + (<usize>(--len) << alignof<T>()));
    this.length_ = len;
    return val;
  }

  forEach(fn: (value: T, index: i32, array: Array<T>) => void): void {
    for (let i = 0, len = this.length_; i < min(len, this.length_); ++i) {
      fn(load<T>(this.dataStart + (<usize>i << alignof<T>())), i, this);
    }
  }

  map<U>(fn: (value: T, index: i32, array: Array<T>) => U): Array<U> {
    let len = this.length_;
    let out = changetype<Array<U>>(__newArray(len, alignof<U>(), idof<Array<U>>()));
    let outStart = out.dataStart;
    for (let i = 0; i < min(len, this.length_); ++i) {
      let result = fn(load<T>(this.dataStart + (<usize>i << alignof<T>())), i, this);
      store<U>(outStart + (<usize>i << alignof<U>()), result);
      if (isManaged<U>()) {
        __link(changetype<usize>(out), changetype<usize>(result), true);
      }
    }
    return out;
  }

  filter(fn: (value: T, index: i32, array: Array<T>) => bool): Array<T> {
    let result = changetype<Array<T>>(__newArray(0, alignof<T>(), idof<Array<T>>()));
    for (let i = 0, len = this.length_; i < min(len, this.length_); ++i) {
      let value = load<T>(this.dataStart + (<usize>i << alignof<T>()));
      if (fn(value, i, this)) result.push(value);
    }
    return result;
  }

  reduce<U>(
    fn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    let acc = initialValue;
    for (let i = 0, len = this.length_; i < min(len, this.length_); ++i) {
      acc = fn(acc, load<T>(this.dataStart + (<usize>i << alignof<T>())), i, this);
    }
    return acc;
  }

  reduceRight<U>(
    fn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    let acc = initialValue;
    for (let i = this.length_ - 1; i >= 0; --i) {
      acc = fn(acc, load<T>(this.dataStart + (<usize>i << alignof<T>())), i, this);
    }
    return acc;
  }

  shift(): T {
    let len = this.length_;
    if (len < 1) throw new RangeError(E_EMPTYARRAY);
    let base = this.dataStart;
    let element = load<T>(base);
    let lastIndex = len - 1;
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
    for (let i = 0, len = this.length_; i < min(len, this.length_); ++i) {
      if (fn(load<T>(this.dataStart + (<usize>i << alignof<T>())), i, this)) return true;
    }
    return false;
  }

  unshift(value: T): i32 {
    let len = this.length_ + 1;
    ensureCapacity(changetype<usize>(this), len, alignof<T>());
    let ptr = this.dataStart;
    memory.copy(
      ptr + sizeof<T>(),
      ptr,
      <usize>(len - 1) << alignof<T>()
    );
    store<T>(ptr, value);
    if (isManaged<T>()) {
      __link(changetype<usize>(this), changetype<usize>(value), true);
    }
    this.length_ = len;
    return len;
  }

  slice(start: i32 = 0, end: i32 = i32.MAX_VALUE): Array<T> {
    let len = this.length_;
    start = start < 0 ? max(start + len, 0) : min(start, len);
    end   = end   < 0 ? max(end   + len, 0) : min(end  , len);
    len = max(end - start, 0);
    let slice = changetype<Array<T>>(__newArray(len, alignof<T>(), idof<Array<T>>()));
    let sliceBase = slice.dataStart;
    let thisBase = this.dataStart + (<usize>start << alignof<T>());
    if (isManaged<T>()) {
      let off = <usize>0;
      let end = <usize>len << alignof<usize>();
      while (off < end) {
        let ref = load<usize>(thisBase + off);
        store<usize>(sliceBase + off, ref);
        __link(changetype<usize>(slice), ref, true);
        off += sizeof<usize>();
      }
    } else {
      memory.copy(sliceBase, thisBase, len << alignof<T>());
    }
    return slice;
  }

  splice(start: i32, deleteCount: i32 = i32.MAX_VALUE): Array<T> {
    let len = this.length_;
    start       = start < 0 ? max<i32>(len + start, 0) : min<i32>(start, len);
    deleteCount = max<i32>(min<i32>(deleteCount, len - start), 0);
    let result  = changetype<Array<T>>(__newArray(deleteCount, alignof<T>(), idof<Array<T>>()));
    let resultStart = result.dataStart;
    let thisStart = this.dataStart;
    let thisBase  = thisStart + (<usize>start << alignof<T>());
    memory.copy(
      resultStart,
      thisBase,
      <usize>deleteCount << alignof<T>()
    );
    let offset = start + deleteCount;
    if (len != offset) {
      memory.copy(
        thisBase,
        thisStart + (<usize>offset << alignof<T>()),
        <usize>(len - offset) << alignof<T>()
      );
    }
    this.length_ = len - deleteCount;
    return result;
  }

  reverse(): Array<T> {
    REVERSE<T>(this.dataStart, this.length_);
    return this;
  }

  sort(comparator: (a: T, b: T) => i32 = COMPARATOR<T>()): Array<T> {
    SORT<T>(this.dataStart, this.length_, comparator);
    return this;
  }

  join(separator: string = ","): string {
    let ptr = this.dataStart;
    let len = this.length_;
    if (isBoolean<T>())   return joinBooleanArray(ptr, len, separator);
    if (isInteger<T>())   return joinIntegerArray<T>(ptr, len, separator);
    if (isFloat<T>())     return joinFloatArray<T>(ptr, len, separator);

    if (ASC_SHRINK_LEVEL < 1) {
      if (isString<T>())  return joinStringArray(ptr, len, separator);
    }
    // For rest objects and arrays use general join routine
    if (isReference<T>()) return joinReferenceArray<T>(ptr, len, separator);
    ERROR("unspported element type");
    return <string>unreachable();
  }

  flat(): T {
    if (!isArray<T>()) {
      ERROR("Cannot call flat() on Array<T> where T is not an Array.");
    }
    // Get the length and data start values
    let ptr = this.dataStart;
    let len = this.length_;

    // calculate the end size with an initial pass
    let size = 0;
    for (let i = 0; i < len; ++i) {
      let child = load<usize>(ptr + (i << alignof<T>()));
      size += child == 0 ? 0 : load<i32>(child, offsetof<T>("length_"));
    }

    // calculate the byteLength of the resulting backing ArrayBuffer
    const align = alignof<valueof<T>>();
    let byteLength = <usize>size << align;
    let outBuffer = changetype<ArrayBuffer>(__new(byteLength, idof<ArrayBuffer>()));

    // create the return value and initialize it
    let outArray = changetype<T>(__new(offsetof<T>(), idof<T>()));
    store<i32>(changetype<usize>(outArray), size, offsetof<T>("length_"));

    // byteLength, dataStart, and buffer are all readonly
    store<i32>(changetype<usize>(outArray), byteLength, offsetof<T>("byteLength"));
    store<usize>(changetype<usize>(outArray), changetype<usize>(outBuffer), offsetof<T>("dataStart"));
    store<usize>(changetype<usize>(outArray), changetype<usize>(outBuffer), offsetof<T>("buffer"));
    __link(changetype<usize>(outArray), changetype<usize>(outBuffer), false);

    // set the elements
    let resultOffset: usize = 0;
    for (let i = 0; i < len; ++i) { // for each child
      let child = load<usize>(ptr + (<usize>i << alignof<T>()));

      // ignore null arrays
      if (!child) continue;

      // copy the underlying buffer data to the result buffer
      let childDataLength = <usize>load<i32>(child, offsetof<T>("length_")) << align;
      memory.copy(
        changetype<usize>(outBuffer) + resultOffset,
        load<usize>(child, offsetof<T>("dataStart")),
        childDataLength
      );

      // advance the result length
      resultOffset += childDataLength;
    }

    // if the `valueof<T>` type is managed, we must link each reference
    if (isManaged<valueof<T>>()) {
      for (let i = 0; i < size; ++i) {
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
