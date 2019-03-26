import { ALLOCATE, REGISTER, MAX_BYTELENGTH, HEADER, HEADER_SIZE } from "./runtime";
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
    var out = ALLOCATE(outSize);
    memory.fill(out, 0, outSize);
    return REGISTER<FixedArray<T>>(out);
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
          if (isDefined(__ref_link)) __ref_unlink(changetype<usize>(oldValue), changetype<usize>(this));
          else if (isDefined(__ref_retain)) __ref_release(changetype<usize>(oldValue));
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

  @unsafe private __iter(fn: (ref: usize) => void): void {
    if (isManaged<T>()) {
      let cur = changetype<usize>(this);
      let end = cur + changetype<HEADER>(changetype<usize>(this) - HEADER_SIZE).payloadSize;
      while (cur < end) {
        fn(load<usize>(cur));
        cur += sizeof<usize>();
      }
    }
  }
}
