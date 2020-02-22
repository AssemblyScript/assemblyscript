/// <reference path="./rt/index.d.ts" />

import { BLOCK, BLOCK_OVERHEAD, BLOCK_MAXSIZE } from "./rt/common";
import { E_INDEXOUTOFRANGE, E_HOLEYARRAY, E_INVALIDLENGTH } from "./util/error";
import { Array } from "./array";
import { joinBooleanArray, joinIntegerArray, joinFloatArray, joinStringArray, joinReferenceArray } from "./util/string";

@sealed
export abstract class ReadonlyArray<T> {
  readonly [key: number]: T;

  get length(): i32 {
    return changetype<BLOCK>(changetype<usize>(this) - BLOCK_OVERHEAD).rtSize >>> alignof<T>();
  }

  @operator("[]") private __get(index: i32): T {
    if (<u32>index >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    var value = this.__unchecked_get(index);
    if (isReference<T>()) {
      if (!isNullable<T>()) {
        if (!changetype<usize>(value)) throw new Error(E_HOLEYARRAY);
      }
    }
    return value;
  }

  @unsafe @operator("{}") private __unchecked_get(index: i32): T {
    return load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
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
    var otherLen = select(0, other.length, other === null);
    var outLen = thisLen + otherLen;
    if (<u32>outLen > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new Error(E_INVALIDLENGTH);
    var out = changetype<Array<T>>(__allocArray(outLen, alignof<T>(), idof<Array<T>>())); // retains
    var outStart = out.dataStart;
    var thisSize = <usize>thisLen << alignof<T>();
    if (isManaged<T>()) {
      let thisStart = changetype<usize>(this);
      for (let offset: usize = 0; offset < thisSize; offset += sizeof<T>()) {
        let ref = load<usize>(thisStart + offset);
        store<usize>(outStart + offset, __retain(ref));
      }
      outStart += thisSize;
      let otherStart = other.dataStart;
      let otherSize = <usize>otherLen << alignof<T>();
      for (let offset: usize = 0; offset < otherSize; offset += sizeof<T>()) {
        let ref = load<usize>(otherStart + offset);
        store<usize>(outStart + offset, __retain(ref));
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
    var slice = changetype<Array<T>>(__allocArray(length, alignof<T>(), idof<Array<T>>())); // retains
    var sliceBase = slice.dataStart;
    var thisBase = changetype<usize>(this) + (<usize>start << alignof<T>());
    if (isManaged<T>()) {
      let off = <usize>0;
      let end = <usize>length << alignof<usize>();
      while (off < end) {
        let ref = load<usize>(thisBase + off);
        store<usize>(sliceBase + off, __retain(ref));
        off += sizeof<usize>();
      }
    } else {
      memory.copy(sliceBase, thisBase, length << alignof<T>());
    }
    return slice;
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

  toString(): string {
    return this.join();
  }

  // RT integration

  @unsafe private __visit_impl(cookie: u32): void {
    if (isManaged<T>()) {
      let cur = changetype<usize>(this);
      let end = cur + changetype<BLOCK>(changetype<usize>(this) - BLOCK_OVERHEAD).rtSize;
      while (cur < end) {
        let val = load<usize>(cur);
        if (val) __visit(val, cookie);
        cur += sizeof<usize>();
      }
    }
  }
}
