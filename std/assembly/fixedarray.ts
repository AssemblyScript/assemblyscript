/// <reference path="./rt/index.d.ts" />

import { BLOCK, BLOCK_OVERHEAD, BLOCK_MAXSIZE } from "./rt/common";
import { idof } from "./builtins";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH, E_HOLEYARRAY } from "./util/error";

// NOTE: DO NOT USE YET!

// TODO: FixedArray<T,S> with S being the static size, i.e. `new FixedArray<i32,10>`.
// Then hard-wire this special type to the compiler and do static length checks instead :)

export class FixedArray<T> {
  [key: number]: T;

  constructor(length: i32) {
    if (<u32>length > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new RangeError(E_INVALIDLENGTH);
    var outSize = <usize>length << alignof<T>();
    var out = __alloc(outSize, idof<FixedArray<T>>());
    memory.fill(out, 0, outSize);
    return changetype<FixedArray<T>>(out); // retains
  }

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

  @operator("[]=") private __set(index: i32, value: T): void {
    if (<u32>index >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    this.__unchecked_set(index, value);
  }

  @unsafe @operator("{}=") private __unchecked_set(index: i32, value: T): void {
    if (isManaged<T>()) {
      let offset = changetype<usize>(this) + (<usize>index << alignof<T>());
      let oldRef = load<usize>(offset);
      if (changetype<usize>(value) != oldRef) {
        store<usize>(offset, __retain(changetype<usize>(value)));
        __release(changetype<usize>(oldRef));
      }
    } else {
      store<T>(changetype<usize>(this) + (<usize>index << alignof<T>()), value);
    }
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
