/// <reference path="./rt/index.d.ts" />

import { BLOCK_MAXSIZE } from "./rt/common";
import { idof } from "./builtins";
import { ReadonlyArray } from "./readonlyarray";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH } from "./util/error";

@sealed
export class FixedArray<T> extends ReadonlyArray<T> {
  [key: number]: T;

  // @ts-ignore: super
  constructor(length: i32) {
    if (<u32>length > <u32>BLOCK_MAXSIZE >>> alignof<T>()) throw new RangeError(E_INVALIDLENGTH);
    var outSize = <usize>length << alignof<T>();
    var out = __alloc(outSize, idof<FixedArray<T>>());
    memory.fill(out, 0, outSize);
    return changetype<FixedArray<T>>(out); // retains
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
}
