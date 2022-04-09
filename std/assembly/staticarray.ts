/// <reference path="./rt/index.d.ts" />

import { OBJECT, BLOCK_MAXSIZE, TOTAL_OVERHEAD } from "./rt/common";
import { Runtime } from "shared/runtime";
import { COMPARATOR, SORT } from "./util/sort";
import { REVERSE } from "./util/bytes";
import { idof } from "./builtins";
import { Array } from "./array";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH, E_HOLEYARRAY } from "./util/error";
import { joinBooleanArray, joinIntegerArray, joinFloatArray, joinStringArray, joinReferenceArray } from "./util/string";

@final
export class StaticArray<T> {
  [key: number]: T;

  // Note that the interface of StaticArray instances must be a semantically
  // compatible subset of Array<T> in order for syntax highlighting to work
  // properly, for instance when creating static arrays from array literals.
  // The additionally provided static methods take care of dealing with static
  // arrays exclusively, without having to convert to Array<T> first.

  static fromArray<T>(source: Array<T>): StaticArray<T> {
    var length = source.length;
    var outSize = <usize>length << alignof<T>();
    var out = changetype<StaticArray<T>>(__new(outSize, idof<StaticArray<T>>()));
    if (isManaged<T>()) {
      let sourcePtr = source.dataStart;
      for (let i = 0; i < length; ++i) {
        let off = <usize>i << alignof<T>();
        let ref = load<usize>(sourcePtr + off);
        store<usize>(changetype<usize>(out) + off, ref);
        __link(changetype<usize>(out), ref, true);
      }
    } else {
      memory.copy(changetype<usize>(out), source.dataStart, outSize);
    }
    return out;
  }

  static concat<T>(source: StaticArray<T>, other: StaticArray<T>): StaticArray<T> {
    var sourceLen = source.length;
    var otherLen = other.length;
    var outLen = sourceLen + otherLen;
    if (<u32>outLen > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new Error(E_INVALIDLENGTH);
    var out = changetype<StaticArray<T>>(__new(<usize>outLen << alignof<T>(), idof<StaticArray<T>>()));
    var outStart = changetype<usize>(out);
    var sourceSize = <usize>sourceLen << alignof<T>();
    if (isManaged<T>()) {
      for (let offset: usize = 0; offset < sourceSize; offset += sizeof<T>()) {
        let ref = load<usize>(changetype<usize>(source) + offset);
        store<usize>(outStart + offset, ref);
        __link(changetype<usize>(out), ref, true);
      }
      outStart += sourceSize;
      let otherSize = <usize>otherLen << alignof<T>();
      for (let offset: usize = 0; offset < otherSize; offset += sizeof<T>()) {
        let ref = load<usize>(changetype<usize>(other) + offset);
        store<usize>(outStart + offset, ref);
        __link(changetype<usize>(out), ref, true);
      }
    } else {
      memory.copy(outStart, changetype<usize>(source), sourceSize);
      memory.copy(outStart + sourceSize, changetype<usize>(other), <usize>otherLen << alignof<T>());
    }
    return out;
  }

  static slice<T>(source: StaticArray<T>, start: i32 = 0, end: i32 = i32.MAX_VALUE): StaticArray<T> {
    var length = source.length;
    start = start < 0 ? max(start + length, 0) : min(start, length);
    end   = end   < 0 ? max(end   + length, 0) : min(end  , length);
    length = max(end - start, 0);
    var sliceSize = <usize>length << alignof<T>();
    var slice = changetype<StaticArray<T>>(__new(sliceSize, idof<StaticArray<T>>()));
    var sourcePtr = changetype<usize>(source) + (<usize>start << alignof<T>());
    if (isManaged<T>()) {
      let off: usize = 0;
      while (off < sliceSize) {
        let ref = load<usize>(sourcePtr + off);
        store<usize>(changetype<usize>(slice) + off, ref);
        __link(changetype<usize>(slice), ref, true);
        off += sizeof<usize>();
      }
    } else {
      memory.copy(changetype<usize>(slice), sourcePtr, sliceSize);
    }
    return slice;
  }

  constructor(length: i32) {
    if (<u32>length > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new RangeError(E_INVALIDLENGTH);
    var outSize = <usize>length << alignof<T>();
    var out = changetype<StaticArray<T>>(__new(outSize, idof<StaticArray<T>>()));
    if (ASC_RUNTIME != Runtime.Incremental) {
      memory.fill(changetype<usize>(out), 0, outSize);
    }
    return out;
  }

  get length(): i32 {
    return changetype<OBJECT>(changetype<usize>(this) - TOTAL_OVERHEAD).rtSize >>> alignof<T>();
  }

  at(index: i32): T {
    var len = this.length;
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    var value = load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
    if (isReference<T>()) {
      if (!isNullable<T>()) {
        if (!changetype<usize>(value)) throw new Error(E_HOLEYARRAY);
      }
    }
    return value;
  }

  @operator("[]") private __get(index: i32): T {
    if (<u32>index >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    var value = load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
    if (isReference<T>()) {
      if (!isNullable<T>()) {
        if (!changetype<usize>(value)) throw new Error(E_HOLEYARRAY);
      }
    }
    return value;
  }

  @unsafe @operator("{}") private __uget(index: i32): T {
    return load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
  }

  @operator("[]=") private __set(index: i32, value: T): void {
    if (<u32>index >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    this.__uset(index, value);
  }

  @unsafe @operator("{}=") private __uset(index: i32, value: T): void {
    store<T>(changetype<usize>(this) + (<usize>index << alignof<T>()), value);
    if (isManaged<T>()) {
      __link(changetype<usize>(this), changetype<usize>(value), true);
    }
  }

  fill(value: T, start: i32 = 0, end: i32 = i32.MAX_VALUE): this {
    var ptr = changetype<usize>(this);
    var len = this.length;
    start = start < 0 ? max(len + start, 0) : min(start, len);
    end   = end   < 0 ? max(len + end,   0) : min(end,   len);
    if (isManaged<T>()) {
      for (; start < end; ++start) {
        store<usize>(ptr + (<usize>start << alignof<T>()), changetype<usize>(value));
        __link(changetype<usize>(this), changetype<usize>(value), true);
      }
    } else if (sizeof<T>() == 1) {
      if (start < end) {
        memory.fill(
          ptr + <usize>start,
          u8(value),
          <usize>(end - start)
        );
      }
    } else {
      for (; start < end; ++start) {
        store<T>(ptr + (<usize>start << alignof<T>()), value);
      }
    }
    return this;
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): this {
    var ptr = changetype<usize>(this);
    var len = this.length;

    end = min<i32>(end, len);

    var to    = target < 0 ? max(len + target, 0) : min(target, len);
    var from  = start < 0 ? max(len + start, 0) : min(start, len);
    var last  = end < 0 ? max(len + end, 0) : min(end, len);
    var count = min(last - from, len - to);

    memory.copy( // is memmove
      ptr + (<usize>to << alignof<T>()),
      ptr + (<usize>from << alignof<T>()),
      <usize>count << alignof<T>()
    );
    return this;
  }

  includes(value: T, fromIndex: i32 = 0): bool {
    if (isFloat<T>()) {
      let length = this.length;
      if (length == 0 || fromIndex >= length) return false;
      if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
      while (fromIndex < length) {
        let elem = load<T>(changetype<usize>(this) + (<usize>fromIndex << alignof<T>()));
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
    var length = this.length;
    if (length == 0 || fromIndex >= length) return -1;
    if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
    while (fromIndex < length) {
      if (load<T>(changetype<usize>(this) + (<usize>fromIndex << alignof<T>())) == value) return fromIndex;
      ++fromIndex;
    }
    return -1;
  }

  lastIndexOf(value: T, fromIndex: i32 = this.length): i32 {
    var length = this.length;
    if (length == 0) return -1;
    if (fromIndex < 0) fromIndex = length + fromIndex;
    else if (fromIndex >= length) fromIndex = length - 1;
    while (fromIndex >= 0) {
      if (load<T>(changetype<usize>(this) + (<usize>fromIndex << alignof<T>())) == value) return fromIndex;
      --fromIndex;
    }
    return -1;
  }

  concat(other: Array<T>): Array<T> {
    var thisLen = this.length;
    var otherLen = other.length;
    var outLen = thisLen + otherLen;
    if (<u32>outLen > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new Error(E_INVALIDLENGTH);
    var out = changetype<Array<T>>(__newArray(outLen, alignof<T>(), idof<Array<T>>()));
    var outStart = out.dataStart;
    var thisSize = <usize>thisLen << alignof<T>();
    if (isManaged<T>()) {
      let thisStart = changetype<usize>(this);
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
      memory.copy(outStart, changetype<usize>(this), thisSize);
      memory.copy(outStart + thisSize, other.dataStart, <usize>otherLen << alignof<T>());
    }
    return out;
  }

  slice(start: i32 = 0, end: i32 = i32.MAX_VALUE): Array<T> {
    var length = this.length;
    start = start < 0 ? max(start + length, 0) : min(start, length);
    end   = end   < 0 ? max(end   + length, 0) : min(end  , length);
    length = max(end - start, 0);
    var slice = changetype<Array<T>>(__newArray(length, alignof<T>(), idof<Array<T>>()));
    var sliceBase = slice.dataStart;
    var thisBase = changetype<usize>(this) + (<usize>start << alignof<T>());
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

  findIndex(fn: (value: T, index: i32, array: StaticArray<T>) => bool): i32 {
    for (let i = 0, len = this.length; i < len; ++i) {
      if (fn(load<T>(changetype<usize>(this) + (<usize>i << alignof<T>())), i, this)) return i;
    }
    return -1;
  }

  findLastIndex(fn: (value: T, index: i32, array: StaticArray<T>) => bool): i32 {
    for (let i = this.length - 1; i >= 0; --i) {
      if (fn(load<T>(changetype<usize>(this) + (<usize>i << alignof<T>())), i, this)) return i;
    }
    return -1;
  }

  forEach(fn: (value: T, index: i32, array: StaticArray<T>) => void): void {
    for (let i = 0, len = this.length; i < len; ++i) {
      fn(load<T>(changetype<usize>(this) + (<usize>i << alignof<T>())), i, this);
    }
  }

  map<U>(fn: (value: T, index: i32, array: StaticArray<T>) => U): Array<U> {
    var len = this.length;
    var out = changetype<Array<U>>(__newArray(len, alignof<U>(), idof<Array<U>>()));
    var outStart = out.dataStart;
    for (let i = 0; i < len; ++i) {
      let result = fn(load<T>(changetype<usize>(this) + (<usize>i << alignof<T>())), i, this);
      store<U>(outStart + (<usize>i << alignof<U>()), result);
      if (isManaged<U>()) {
        __link(changetype<usize>(out), changetype<usize>(result), true);
      }
    }
    return out;
  }

  filter(fn: (value: T, index: i32, array: StaticArray<T>) => bool): Array<T> {
    var result = changetype<Array<T>>(__newArray(0, alignof<T>(), idof<Array<T>>()));
    for (let i = 0, len = this.length; i < len; ++i) {
      let value = load<T>(changetype<usize>(this) + (<usize>i << alignof<T>()));
      if (fn(value, i, this)) result.push(value);
    }
    return result;
  }

  reduce<U>(
    fn: (previousValue: U, currentValue: T, currentIndex: i32, array: StaticArray<T>) => U,
    initialValue: U
  ): U {
    var acc = initialValue;
    for (let i = 0, len = this.length; i < len; ++i) {
      acc = fn(acc, load<T>(changetype<usize>(this) + (<usize>i << alignof<T>())), i, this);
    }
    return acc;
  }

  reduceRight<U>(
    fn: (previousValue: U, currentValue: T, currentIndex: i32, array: StaticArray<T>) => U,
    initialValue: U
  ): U {
    var acc = initialValue;
    for (let i = this.length - 1; i >= 0; --i) {
      acc = fn(acc, load<T>(changetype<usize>(this) + (<usize>i << alignof<T>())), i, this);
    }
    return acc;
  }

  every(fn: (value: T, index: i32, array: StaticArray<T>) => bool): bool {
    for (let i = 0, len = this.length; i < len; ++i) {
      if (!fn(load<T>(changetype<usize>(this) + (<usize>i << alignof<T>())), i, this)) return false;
    }
    return true;
  }

  some(fn: (value: T, index: i32, array: StaticArray<T>) => bool): bool {
    for (let i = 0, len = this.length; i < len; ++i) {
      if (fn(load<T>(changetype<usize>(this) + (<usize>i << alignof<T>())), i, this)) return true;
    }
    return false;
  }

  sort(comparator: (a: T, b: T) => i32 = COMPARATOR<T>()): this {
    SORT<T>(changetype<usize>(this), this.length, comparator);
    return this;
  }

  join(separator: string = ","): string {
    if (isBoolean<T>())   return joinBooleanArray(changetype<usize>(this), this.length, separator);
    if (isInteger<T>())   return joinIntegerArray<T>(changetype<usize>(this), this.length, separator);
    if (isFloat<T>())     return joinFloatArray<T>(changetype<usize>(this), this.length, separator);
    if (ASC_SHRINK_LEVEL < 1) {
      if (isString<T>())  return joinStringArray(changetype<usize>(this), this.length, separator);
    }
    if (isReference<T>()) return joinReferenceArray<T>(changetype<usize>(this), this.length, separator);
    ERROR("unspported element type");
    return <string>unreachable();
  }

  reverse(): this {
    REVERSE<T>(changetype<usize>(this), this.length);
    return this;
  }

  toString(): string {
    return this.join();
  }

  // RT integration

  @unsafe private __visit(cookie: u32): void {
    if (isManaged<T>()) {
      let cur = changetype<usize>(this);
      let end = cur + changetype<OBJECT>(changetype<usize>(this) - TOTAL_OVERHEAD).rtSize;
      while (cur < end) {
        let val = load<usize>(cur);
        if (val) __visit(val, cookie);
        cur += sizeof<usize>();
      }
    }
  }
}
