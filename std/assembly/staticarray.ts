/// <reference path="./rt/index.d.ts" />

import { OBJECT, BLOCK_MAXSIZE, TOTAL_OVERHEAD } from "./rt/common";
import { Runtime } from "shared/runtime";
import { COMPARATOR, SORT } from "./util/sort";
import { REVERSE, FILL } from "./util/bytes";
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
    let length = source.length;
    let outSize = <usize>length << alignof<T>();
    let out = changetype<StaticArray<T>>(__new(outSize, idof<StaticArray<T>>()));
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

  /** @deprecated Please use source.concat<StaticArray<T>> instead. */
  static concat<T>(source: StaticArray<T>, other: StaticArray<T>): StaticArray<T> {
    return source.concat<StaticArray<T>>(other);
  }

  /** @deprecated Please use source.slice<StaticArray<T>> instead. */
  static slice<T>(source: StaticArray<T>, start: i32 = 0, end: i32 = i32.MAX_VALUE): StaticArray<T> {
    return source.slice<StaticArray<T>>(start, end);
  }

  constructor(length: i32) {
    if (<u32>length > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new RangeError(E_INVALIDLENGTH);
    let outSize = <usize>length << alignof<T>();
    let out = changetype<StaticArray<T>>(__new(outSize, idof<StaticArray<T>>()));
    if (ASC_RUNTIME != Runtime.Incremental) {
      memory.fill(changetype<usize>(out), 0, outSize);
    }
    return out;
  }

  get length(): i32 {
    return changetype<OBJECT>(changetype<usize>(this) - TOTAL_OVERHEAD).rtSize >>> alignof<T>();
  }

  at(index: i32): T {
    let len = this.length;
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    let value = load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
    if (isReference<T>()) {
      if (!isNullable<T>()) {
        if (!changetype<usize>(value)) throw new Error(E_HOLEYARRAY);
      }
    }
    return value;
  }

  @operator("[]") private __get(index: i32): T {
    if (<u32>index >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    let value = load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
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

  fill(value: T, start: i32 = 0, end: i32 = i32.MAX_VALUE): StaticArray<T> {
    if (isManaged<T>()) {
      FILL<usize>(changetype<usize>(this), this.length, changetype<usize>(value), start, end);
      __link(changetype<usize>(this), changetype<usize>(value), false);
    } else {
      FILL<T>(changetype<usize>(this), this.length, value, start, end);
    }
    return this;
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): StaticArray<T> {
    let ptr = changetype<usize>(this);
    let len = this.length;

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
    let length = this.length;
    if (length == 0 || fromIndex >= length) return -1;
    if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
    while (fromIndex < length) {
      if (load<T>(changetype<usize>(this) + (<usize>fromIndex << alignof<T>())) == value) return fromIndex;
      ++fromIndex;
    }
    return -1;
  }

  lastIndexOf(value: T, fromIndex: i32 = this.length): i32 {
    let length = this.length;
    if (length == 0) return -1;
    if (fromIndex < 0) fromIndex = length + fromIndex;
    else if (fromIndex >= length) fromIndex = length - 1;
    while (fromIndex >= 0) {
      if (load<T>(changetype<usize>(this) + (<usize>fromIndex << alignof<T>())) == value) return fromIndex;
      --fromIndex;
    }
    return -1;
  }

  concat<U extends ArrayLike<T> = Array<T>>(other: U): U {
    let sourceLen = this.length;
    let otherLen = other.length;
    let outLen = sourceLen + otherLen;
    if (<u32>outLen > <u32>BLOCK_MAXSIZE >>> alignof<T>()) {
      throw new Error(E_INVALIDLENGTH);
    }
    let sourceSize = <usize>sourceLen << alignof<T>();
    let out = changetype<U>(this); // FIXME: instanceof needs *some* value

    if (out instanceof Array<T>) {
      out = changetype<U>(__newArray(outLen, alignof<T>(), idof<Array<T>>()));
      // ^ FIXME: Function returns type U, but can't __newArray(U extends Array<T>)
      let outStart = changetype<Array<T>>(out).dataStart;
      let otherStart = changetype<Array<T>>(other).dataStart;
      let thisStart = changetype<usize>(this);

      if (isManaged<T>()) {
        for (let offset: usize = 0; offset < sourceSize; offset += sizeof<T>()) {
          let ref = load<usize>(thisStart + offset);
          store<usize>(outStart + offset, ref);
          __link(changetype<usize>(out), ref, true);
        }
        outStart += sourceSize;
        let otherSize = <usize>otherLen << alignof<T>();
        for (let offset: usize = 0; offset < otherSize; offset += sizeof<T>()) {
          let ref = load<usize>(otherStart + offset);
          store<usize>(outStart + offset, ref);
          __link(changetype<usize>(out), ref, true);
        }
      } else {
        memory.copy(outStart, thisStart, sourceSize);
        memory.copy(outStart + sourceSize, otherStart, <usize>otherLen << alignof<T>());
      }
    } else if (out instanceof StaticArray<T>) {
      out = changetype<U>(__new(<usize>outLen << alignof<T>(), idof<StaticArray<T>>()));
      let outStart = changetype<usize>(out);
      let otherStart = changetype<usize>(other);
      let thisStart = changetype<usize>(this);

      if (isManaged<T>()) {
        for (let offset: usize = 0; offset < sourceSize; offset += sizeof<T>()) {
          let ref = load<usize>(thisStart + offset);
          store<usize>(outStart + offset, ref);
          __link(changetype<usize>(out), ref, true);
        }
        outStart += sourceSize;
        let otherSize = <usize>otherLen << alignof<T>();
        for (let offset: usize = 0; offset < otherSize; offset += sizeof<T>()) {
          let ref = load<usize>(otherStart + offset);
          store<usize>(outStart + offset, ref);
          __link(changetype<usize>(out), ref, true);
        }
      } else {
        memory.copy(outStart, thisStart, sourceSize);
        memory.copy(outStart + sourceSize, otherStart, <usize>otherLen << alignof<T>());
      }
    } else {
      ERROR("Only Array<T> and StaticArray<T> accept for 'U' parameter");
    }
    return out;
  }

  slice<U extends ArrayLike<T> = Array<T>>(start: i32 = 0, end: i32 = i32.MAX_VALUE): U {
    let length = this.length;
    start = start < 0 ? max(start + length, 0) : min(start, length);
    end   = end   < 0 ? max(end   + length, 0) : min(end,   length);
    length = max(end - start, 0);

    let sourceStart = changetype<usize>(this) + (<usize>start << alignof<T>());
    let size = <usize>length << alignof<T>();
    let out = changetype<U>(this); // FIXME: instanceof needs *some* value

    if (out instanceof Array<T>) {
      // return Array
      out = changetype<U>(__newArray(length, alignof<T>(), idof<Array<T>>()));
      // ^ FIXME: Function returns type U, but can't __newArray(U extends Array<T>)
      let outStart = changetype<Array<T>>(out).dataStart;
      if (isManaged<T>()) {
        let off: usize = 0;
        while (off < size) {
          let ref = load<usize>(sourceStart + off);
          store<usize>(outStart + off, ref);
          __link(changetype<usize>(out), ref, true);
          off += sizeof<usize>();
        }
      } else {
        memory.copy(outStart, sourceStart, size);
      }
    } else if (out instanceof StaticArray<T>) {
      // return StaticArray
      out = changetype<U>(__new(size, idof<StaticArray<T>>()));
      let outStart = changetype<usize>(out);
      if (isManaged<T>()) {
        let off: usize = 0;
        while (off < size) {
          let ref = load<usize>(sourceStart + off);
          store<usize>(outStart + off, ref);
          __link(outStart, ref, true);
          off += sizeof<usize>();
        }
      } else {
        memory.copy(outStart, sourceStart, size);
      }
    } else {
      ERROR("Only Array<T> and StaticArray<T> accept for 'U' parameter");
    }
    return out;
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
    let len = this.length;
    let out = changetype<Array<U>>(__newArray(len, alignof<U>(), idof<Array<U>>()));
    let outStart = out.dataStart;
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
    let result = changetype<Array<T>>(__newArray(0, alignof<T>(), idof<Array<T>>()));
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
    let acc = initialValue;
    for (let i = 0, len = this.length; i < len; ++i) {
      acc = fn(acc, load<T>(changetype<usize>(this) + (<usize>i << alignof<T>())), i, this);
    }
    return acc;
  }

  reduceRight<U>(
    fn: (previousValue: U, currentValue: T, currentIndex: i32, array: StaticArray<T>) => U,
    initialValue: U
  ): U {
    let acc = initialValue;
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

  sort(comparator: (a: T, b: T) => i32 = COMPARATOR<T>()): StaticArray<T> {
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

  reverse(): StaticArray<T> {
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
