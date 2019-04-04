import { HEADER, HEADER_SIZE, MAX_BYTELENGTH, allocate, register } from "./util/runtime";
import { __runtime_id, __gc_mark_members } from "./runtime";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH, E_HOLEYARRAY } from "./util/error";

// NOTE: DO NOT USE YET!

// TODO: FixedArray<T,S> with S being the static size, i.e. `new FixedArray<i32,10>`.
// Then hard-wire this special type to the compiler and do static length checks instead :)

export class FixedArray<T> {
  [key: number]: T;

  constructor(length: i32) {
    if (<u32>length > <u32>MAX_BYTELENGTH >>> alignof<T>()) throw new RangeError(E_INVALIDLENGTH);
    if (isReference<T>()) {
      if (!isNullable<T>()) {
        if (length) throw new Error(E_HOLEYARRAY);
      }
    }
    var outSize = <usize>length << alignof<T>();
    var out = allocate(outSize);
    memory.fill(out, 0, outSize);
    return changetype<FixedArray<T>>(register(out, __runtime_id<FixedArray<T>>()));
  }

  get length(): i32 {
    return changetype<HEADER>(changetype<usize>(this) - HEADER_SIZE).payloadSize >>> alignof<T>();
  }

  @operator("[]") private __get(index: i32): T {
    if (<u32>index >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    return this.__unchecked_get(index);
  }

  @operator("[]=") private __set(index: i32, value: T): void {
    if (<u32>index >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    return this.__unchecked_set(index, value);
  }

  @operator("{}") private __unchecked_get(index: i32): T {
    return load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
  }

  @operator("{}=") private __unchecked_set(index: i32, value: T): void {
    if (isManaged<T>()) {
      let offset = changetype<usize>(this) + (<usize>index << alignof<T>());
      let oldValue = load<T>(offset);
      if (value !== oldValue) {
        store<T>(offset, value);
        if (oldValue !== null) {
          if (isDefined(__ref_link)) {
            if (isDefined(__ref_unlink)) __ref_unlink(changetype<usize>(oldValue), changetype<usize>(this));
          } else if (isDefined(__ref_retain)) __ref_release(changetype<usize>(oldValue));
          else assert(false);
        }
        if (isNullable<T>()) {
          if (value !== null) {
            if (isDefined(__ref_link)) __ref_link(changetype<usize>(value), changetype<usize>(this));
            else if (isDefined(__ref_retain)) __ref_retain(changetype<usize>(value));
            else assert(false);
          }
        } else {
          if (isDefined(__ref_link)) __ref_link(changetype<usize>(value), changetype<usize>(this));
          else if (isDefined(__ref_retain)) __ref_retain(changetype<usize>(value));
          else assert(false);
        }
      }
    } else {
      store<T>(changetype<usize>(this) + (<usize>index << alignof<T>()), value);
    }
  }

  // GC integration

  @unsafe private __traverse(): void {
    if (isManaged<T>()) {
      let cur = changetype<usize>(this);
      let end = cur + changetype<HEADER>(changetype<usize>(this) - HEADER_SIZE).payloadSize;
      while (cur < end) {
        let val = load<usize>(cur);
        if (isNullable<T>()) {
          if (val) {
            __ref_mark(val);
            __gc_mark_members(__runtime_id<T>(), val);
          }
        } else {
          __ref_mark(val);
          __gc_mark_members(__runtime_id<T>(), val);
        }
        cur += sizeof<usize>();
      }
    }
  }
}
