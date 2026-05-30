/// <reference path="./rt/index.d.ts" />

import { Runtime } from "shared/runtime";
import { BLOCK_MAXSIZE } from "./rt/common";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH, E_EMPTYARRAY, E_CAPACITYEXCEEDED } from "./util/error";

// Pre-allocated contiguous array with fixed capacity.
// Single buffer, no dynamic growth, zero GC overhead under runtime=memory.

@final
export class FixedArray<T> {
  [key: number]: T;

  private dataPtr: usize = 0;
  private capacity_: i32 = 0;
  private length_: i32 = 0;

  constructor(capacity: i32) {
    if (<u32>capacity > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new RangeError(E_INVALIDLENGTH);

    let bufferSize = <usize>capacity << alignof<T>();
    let ptr: usize;
    if (ASC_RUNTIME == Runtime.Memory) {
      ptr = __alloc(bufferSize);
    } else {
      ptr = __new(bufferSize, idof<ArrayBuffer>());
    }
    if (ASC_RUNTIME != Runtime.Incremental) {
      memory.fill(ptr, 0, bufferSize);
    }
    this.dataPtr = ptr;
    this.capacity_ = capacity;
    if (ASC_RUNTIME != Runtime.Memory) {
      __link(changetype<usize>(this), ptr, false);
    }
  }

  get length(): i32 {
    return this.length_;
  }

  set length(value: i32) {
    if (<u32>value > <u32>this.capacity_) throw new RangeError(E_INVALIDLENGTH);
    this.length_ = value;
  }

  get capacity(): i32 {
    return this.capacity_;
  }

  @operator("[]") private __get(index: i32): T {
    if (<u32>index >= <u32>this.length_) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<T>(this.dataPtr + (<usize>index << alignof<T>()));
  }

  @unsafe @operator("{}") private __uget(index: i32): T {
    return load<T>(this.dataPtr + (<usize>index << alignof<T>()));
  }

  @operator("[]=") private __set(index: i32, value: T): void {
    if (<u32>index >= <u32>this.length_) throw new RangeError(E_INDEXOUTOFRANGE);
    this.__uset(index, value);
  }

  @unsafe @operator("{}=") private __uset(index: i32, value: T): void {
    store<T>(this.dataPtr + (<usize>index << alignof<T>()), value);
    if (isManaged<T>()) {
      if (ASC_RUNTIME != Runtime.Memory) {
        __link(changetype<usize>(this), changetype<usize>(value), true);
      }
    }
  }

  push(value: T): i32 {
    let len = this.length_;
    if (len >= this.capacity_) throw new Error(E_CAPACITYEXCEEDED);
    store<T>(this.dataPtr + (<usize>len << alignof<T>()), value);
    if (isManaged<T>()) {
      if (ASC_RUNTIME != Runtime.Memory) {
        __link(changetype<usize>(this), changetype<usize>(value), true);
      }
    }
    let newLen = len + 1;
    this.length_ = newLen;
    return newLen;
  }

  pop(): T {
    let len = this.length_;
    if (len <= 0) throw new Error(E_EMPTYARRAY);
    let newLen = len - 1;
    let value = load<T>(this.dataPtr + (<usize>newLen << alignof<T>()));
    this.length_ = newLen;
    return value;
  }

  swapDelete(index: i32): void {
    let len = this.length_;
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    let newLen = len - 1;
    if (index != newLen) {
      let data = this.dataPtr;
      let deletedOff = <usize>index << alignof<T>();
      let lastOff = <usize>newLen << alignof<T>();
      store<T>(data + deletedOff, load<T>(data + lastOff));
    }
    this.length_ = newLen;
  }

  indexOf(value: T, fromIndex: i32 = 0): i32 {
    let length = this.length_;
    if (length == 0 || fromIndex >= length) return -1;
    if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
    let data = this.dataPtr;
    while (fromIndex < length) {
      if (load<T>(data + (<usize>fromIndex << alignof<T>())) == value) return fromIndex;
      ++fromIndex;
    }
    return -1;
  }

  includes(value: T, fromIndex: i32 = 0): bool {
    return this.indexOf(value, fromIndex) >= 0;
  }

  fill(value: T, start: i32 = 0, end: i32 = i32.MAX_VALUE): this {
    let len = this.length_;
    start = start < 0 ? max(len + start, 0) : min(start, len);
    end = end < 0 ? max(len + end, 0) : min(end, len);
    let data = this.dataPtr;
    if (isManaged<T>()) {
      for (let i = start; i < end; ++i) {
        store<usize>(data + (<usize>i << alignof<T>()), changetype<usize>(value));
      }
      if (ASC_RUNTIME != Runtime.Memory) {
        __link(changetype<usize>(this), changetype<usize>(value), false);
      }
    } else {
      for (let i = start; i < end; ++i) {
        store<T>(data + (<usize>i << alignof<T>()), value);
      }
    }
    return this;
  }

  clear(): void {
    this.length_ = 0;
  }

  toString(): string {
    return "[object FixedArray]";
  }

  // RT integration

  @unsafe private __visit(cookie: u32): void {
    if (ASC_RUNTIME != Runtime.Memory) {
      let data = this.dataPtr;
      if (data) {
        if (isManaged<T>()) {
          let cur = data;
          let end = cur + (<usize>this.length_ << alignof<T>());
          while (cur < end) {
            let val = load<usize>(cur);
            if (val) __visit(val, cookie);
            cur += sizeof<usize>();
          }
        }
        __visit(data, cookie);
      }
    }
  }
}
