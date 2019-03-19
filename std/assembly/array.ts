import { ALLOCATE, REALLOCATE, DISCARD, LINK, REGISTER, MAX_BYTELENGTH, ArrayBufferView } from "./runtime";
import { ArrayBuffer } from "./arraybuffer";
import { COMPARATOR, SORT } from "./util/sort";
import { itoa, dtoa, itoa_stream, dtoa_stream, MAX_DOUBLE_LENGTH } from "./util/number";
import { isArray as builtin_isArray } from "./builtins";

/** Ensures that the given array has _at least_ the specified capacity. */
function ensureCapacity(array: ArrayBufferView, minCapacity: i32, alignLog2: u32): void {
  if (<u32>minCapacity > <u32>array.dataLength >>> alignLog2) {
    if (<u32>minCapacity > <u32>(MAX_BYTELENGTH >>> alignLog2)) throw new RangeError("Invalid array length");
    let oldData = array.data;
    let newByteLength = minCapacity << alignLog2;
    let newData = REALLOCATE(changetype<usize>(oldData), <usize>newByteLength); // registers on move
    if (newData !== changetype<usize>(oldData)) {
      array.data = changetype<ArrayBuffer>(newData); // links
      array.dataStart = newData;
    }
    array.dataLength = newByteLength;
  }
}

export class Array<T> extends ArrayBufferView {
  [key: number]: T;

  // Implementing ArrayBufferView isn't strictly necessary here but is done to allow glue code
  // to work with typed and normal arrays interchangeably. Technically, normal arrays do not need
  // `dataStart` (equals `data`) and `dataLength` (equals computed `data.byteLength`).

  private length_: i32;

  static isArray<U>(value: U): bool {
    return builtin_isArray(value) && value !== null;
  }

  constructor(length: i32 = 0) {
    super(length, alignof<T>());
    this.length_ = length;
  }

  @unsafe get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.length_;
  }

  set length(length: i32) {
    ensureCapacity(this, length, alignof<T>());
    this.length_ = length;
  }

  every(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      if (!callbackfn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this)) return false;
    }
    return true;
  }

  findIndex(predicate: (element: T, index: i32, array: Array<T>) => bool): i32 {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      if (predicate(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this)) return index;
    }
    return -1;
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): T {
    if (<u32>index >= <u32>this.dataLength >>> alignof<T>()) throw new RangeError("Offset out of bounds");
    return load<T>(this.dataStart + (<usize>index << alignof<T>()));
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: T): void {
    ensureCapacity(this, index + 1, alignof<T>());
    store<T>(this.dataStart + (<usize>index << alignof<T>()),
      isManaged<T>()
        ? LINK<T,this>(value, this)
        : value
    );
    if (index >= this.length_) this.length_ = index + 1;
  }

  fill(value: T, start: i32 = 0, end: i32 = i32.MAX_VALUE): this {
    var dataStart = this.dataStart;
    var length = this.length_;
    start = start < 0 ? max(length + start, 0) : min(start, length);
    end   = end   < 0 ? max(length + end,   0) : min(end,   length);
    if (sizeof<T>() == 1) {
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

  includes(searchElement: T, fromIndex: i32 = 0): bool {
    return this.indexOf(searchElement, fromIndex) >= 0;
  }

  indexOf(searchElement: T, fromIndex: i32 = 0): i32 {
    var length = this.length_;
    if (length == 0 || fromIndex >= length) return -1;
    if (fromIndex < 0) fromIndex = max(length + fromIndex, 0);
    var dataStart = this.dataStart;
    while (fromIndex < length) {
      if (load<T>(dataStart + (<usize>fromIndex << alignof<T>())) == searchElement) return fromIndex;
      ++fromIndex;
    }
    return -1;
  }

  lastIndexOf(searchElement: T, fromIndex: i32 = this.length_): i32 {
    var length = this.length_;
    if (length == 0) return -1;
    if (fromIndex < 0) fromIndex = length + fromIndex;
    else if (fromIndex >= length) fromIndex = length - 1;
    var dataStart = this.dataStart;
    while (fromIndex >= 0) {
      if (load<T>(dataStart + (<usize>fromIndex << alignof<T>())) == searchElement) return fromIndex;
      --fromIndex;
    }
    return -1;
  }

  push(element: T): i32 {
    var newLength = this.length_ + 1;
    ensureCapacity(this, newLength, alignof<T>());
    this.length_ = newLength;
    store<T>(this.dataStart + (<usize>(newLength - 1) << alignof<T>()),
      isManaged<T>()
        ? LINK<T,this>(element, this)
        : element
    );
    return newLength;
  }

  concat(other: Array<T>): Array<T> {
    var thisLen = this.length_;
    var otherLen = select(0, other.length_, other === null);
    var out = new Array<T>(thisLen + otherLen);
    var outStart = out.dataStart;
    var thisSize = <usize>thisLen << alignof<T>();
    if (isManaged<T>()) {
      let thisStart = this.dataStart;
      for (let offset: usize = 0; offset < thisSize; offset += sizeof<T>()) {
        let element = load<T>(thisStart + offset);
        store<T>(outStart + offset, LINK<T,Array<T>>(element, out));
      }
      let otherStart = other.dataStart;
      let otherSize = <usize>otherLen << alignof<T>();
      for (let offset: usize = 0; offset < otherSize; offset += sizeof<T>()) {
        let element = load<T>(otherStart + offset);
        store<T>(outStart + thisSize + offset, LINK<T,Array<T>>(element, out));
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

        end   = min<i32>(end, len);
    var to    = target < 0 ? max(len + target, 0) : min(target, len);
    var from  = start < 0 ? max(len + start, 0) : min(start, len);
    var last  = end < 0 ? max(len + end, 0) : min(end, len);
    var count = min(last - from, len - to);

    if (from < to && to < (from + count)) {
      from += count - 1;
      to   += count - 1;
      while (count) {
        store<T>(dataStart + (<usize>to << alignof<T>()), load<T>(dataStart + (<usize>from << alignof<T>())));
        --from, --to, --count;
      }
    } else {
      memory.copy(
        dataStart + (<usize>to << alignof<T>()),
        dataStart + (<usize>from << alignof<T>()),
        <usize>count << alignof<T>()
      );
    }
    return this;
  }

  pop(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError("Array is empty");
    var element = load<T>(this.dataStart + (<usize>(--length) << alignof<T>()));
    this.length_ = length;
    return element;
  }

  forEach(callbackfn: (value: T, index: i32, array: Array<T>) => void): void {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      callbackfn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
    }
  }

  map<U>(callbackfn: (value: T, index: i32, array: Array<T>) => U): Array<U> {
    var length = this.length_;
    var out = new Array<U>(length);
    var outStart = out.dataStart;
    for (let index = 0; index < min(length, this.length_); ++index) {
      let value = load<T>(this.dataStart + (<usize>index << alignof<T>()));
      let result = callbackfn(value, index, this);
      store<U>(outStart + (<usize>index << alignof<U>()),
        isManaged<U>()
          ? LINK<U,Array<U>>(result, out)
          : result
      );
    }
    return out;
  }

  filter(callbackfn: (value: T, index: i32, array: Array<T>) => bool): Array<T> {
    var result = new Array<T>();
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      let value = load<T>(this.dataStart + (<usize>index << alignof<T>()));
      if (callbackfn(value, index, this)) result.push(value);
    }
    return result;
  }

  reduce<U>(
    callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accum = initialValue;
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      accum = callbackfn(accum, load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
    }
    return accum;
  }

  reduceRight<U>(
    callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accum = initialValue;
    for (let index = this.length_ - 1; index >= 0; --index) {
      accum = callbackfn(accum, load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this);
    }
    return accum;
  }

  shift(): T {
    var length = this.length_;
    if (length < 1) throw new RangeError("Array is empty");
    var base = this.dataStart;
    var element = load<T>(base);
    var lastIndex = length - 1;
    memory.copy(
      base,
      base + sizeof<T>(),
      <usize>lastIndex << alignof<T>()
    );
    store<T>(base + (<usize>lastIndex << alignof<T>()),
      // @ts-ignore: cast
      <T>null
    );
    this.length_ = lastIndex;
    return element;
  }

  some(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    for (let index = 0, length = this.length_; index < min(length, this.length_); ++index) {
      if (callbackfn(load<T>(this.dataStart + (<usize>index << alignof<T>())), index, this)) return true;
    }
    return false;
  }

  unshift(element: T): i32 {
    var newLength = this.length_ + 1;
    ensureCapacity(this, newLength, alignof<T>());
    var base = this.dataStart;
    memory.copy(
      base + sizeof<T>(),
      base,
      <usize>(newLength - 1) << alignof<T>()
    );
    store<T>(base,
      isManaged<T>()
        ? LINK<T,this>(element, this)
        : element
    );
    this.length_ = newLength;
    return newLength;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Array<T> {
    var length = this.length_;
    begin = begin < 0 ? max(begin + length, 0) : min(begin, length);
    end   = end   < 0 ? max(end   + length, 0) : min(end  , length);
    length = max(end - begin, 0);
    var slice = new Array<T>(length);
    var sliceBase = slice.dataStart;
    var thisBase = this.dataStart + (<usize>begin << alignof<T>());
    for (let i = 0; i < length; ++i) {
      let offset = <usize>i << alignof<T>();
      let element = load<T>(thisBase + offset);
      store<T>(sliceBase + offset,
        isManaged<T>()
          ? LINK<T,Array<T>>(element, slice)
          : element
      );
    }
    return slice;
  }

  splice(start: i32, deleteCount: i32 = i32.MAX_VALUE): Array<T> {
    var length  = this.length_;
    start       = start < 0 ? max<i32>(length + start, 0) : min<i32>(start, length);
    deleteCount = max<i32>(min<i32>(deleteCount, length - start), 0);
    var splice = new Array<T>(deleteCount);
    var spliceStart = splice.dataStart;
    var thisStart = this.dataStart;
    var thisBase  = thisStart + (<usize>start << alignof<T>());
    for (let i = 0; i < deleteCount; ++i) {
      let element = load<T>(thisBase + (<usize>i << alignof<T>()));
      store<T>(spliceStart + (<usize>i << alignof<T>()),
        isManaged<T>()
          ? LINK<T,Array<T>>(element, splice)
          : element
      );
    }
    memory.copy(
      splice.dataStart,
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
    return splice;
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
    // TODO remove this when flow will allow tracking null
    assert(comparator); // The comparison function must be a function

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
    if (isBoolean<T>()) return this.join_bool(separator);
    if (isInteger<T>()) return this.join_int(separator);
    if (isFloat<T>()) return this.join_flt(separator);
    if (isString<T>()) return this.join_str(separator);
    if (isArray<T>()) return this.join_arr(separator);
    if (isReference<T>()) return this.join_ref(separator);
    ERROR("unspported element type");
    return <string>unreachable();
  }

  private join_bool(separator: string = ","): string {
    var lastIndex = this.length_ - 1;
    if (lastIndex < 0) return "";
    var dataStart = this.dataStart;
    if (!lastIndex) return select("true", "false", load<bool>(dataStart));

    var sepLen = separator.length;
    var valueLen = 5; // max possible length of element len("false")
    var estLen = (valueLen + sepLen) * lastIndex + valueLen;
    var result = ALLOCATE(estLen << 1);
    var offset = 0;
    var value: bool;
    for (let i = 0; i < lastIndex; ++i) {
      value = load<bool>(dataStart + i);
      valueLen = 4 + i32(!value);
      memory.copy(
        result + (<usize>offset << 1),
        changetype<usize>(select("true", "false", value)),
        <usize>valueLen << 1
      );
      offset += valueLen;
      if (sepLen) {
        memory.copy(
          result + (<usize>offset << 1),
          changetype<usize>(separator),
          <usize>sepLen << 1
        );
        offset += sepLen;
      }
    }
    value = load<bool>(dataStart + <usize>lastIndex);
    valueLen = 4 + i32(!value);
    memory.copy(
      result + (<usize>offset << 1),
      changetype<usize>(select("true", "false", value)),
      valueLen << 1
    );
    offset += valueLen;

    if (estLen > offset) {
      let trimmed = changetype<string>(result).substring(0, offset);
      DISCARD(result);
      return trimmed; // registered in .substring
    }
    return REGISTER<string>(result);
  }

  private join_int(separator: string = ","): string {
    var lastIndex = this.length_ - 1;
    if (lastIndex < 0) return "";
    var dataStart = this.dataStart;
    // @ts-ignore: type
    if (!lastIndex) return changetype<string>(itoa<T>(load<T>(dataStart)));

    var sepLen = separator.length;
    const valueLen = (sizeof<T>() <= 4 ? 10 : 20) + i32(isSigned<T>());
    var estLen = (valueLen + sepLen) * lastIndex + valueLen;
    var result = ALLOCATE(estLen << 1);
    var offset = 0;
    var value: T;
    for (let i = 0; i < lastIndex; ++i) {
      value = load<T>(dataStart + (<usize>i << alignof<T>()));
      // @ts-ignore: type
      offset += itoa_stream<T>(result, offset, value);
      if (sepLen) {
        memory.copy(
          result + (<usize>offset << 1),
          changetype<usize>(separator),
          <usize>sepLen << 1
        );
        offset += sepLen;
      }
    }
    value = load<T>(dataStart + (<usize>lastIndex << alignof<T>()));
    // @ts-ignore: type
    offset += itoa_stream<T>(result, offset, value);
    if (estLen > offset) {
      let trimmed = changetype<string>(result).substring(0, offset);
      DISCARD(result);
      return trimmed; // registered in .substring
    }
    return REGISTER<string>(result);
  }

  private join_flt(separator: string = ","): string {
    var lastIndex = this.length_ - 1;
    if (lastIndex < 0) return "";
    var dataStart = this.dataStart;
    if (!lastIndex) {
      return changetype<string>(dtoa(
        // @ts-ignore: type
        load<T>(dataStart))
      );
    }

    const valueLen = MAX_DOUBLE_LENGTH;
    var sepLen = separator.length;
    var estLen = (valueLen + sepLen) * lastIndex + valueLen;
    var result = ALLOCATE(estLen << 1);
    var offset = 0;
    var value: T;
    for (let i = 0; i < lastIndex; ++i) {
      value = load<T>(dataStart + (<usize>i << alignof<T>()));
      offset += dtoa_stream(result, offset,
        // @ts-ignore: type
        value
      );
      if (sepLen) {
        memory.copy(
          result + (<usize>offset << 1),
          changetype<usize>(separator),
          <usize>sepLen << 1
        );
        offset += sepLen;
      }
    }
    value = load<T>(dataStart + (<usize>lastIndex << alignof<T>()));
    offset += dtoa_stream(result, offset,
      // @ts-ignore: type
      value
    );
    if (estLen > offset) {
      let trimmed = changetype<string>(result).substring(0, offset);
      DISCARD(result);
      return trimmed; // registered in .substring
    }
    return REGISTER<string>(result);
  }

  private join_str(separator: string = ","): string {
    var lastIndex = this.length_ - 1;
    if (lastIndex < 0) return "";
    var dataStart = this.dataStart;
    if (!lastIndex) return load<string>(dataStart);

    var sepLen = separator.length;
    var estLen = 0;
    var value: string | null;
    for (let i = 0, len = lastIndex + 1; i < len; ++i) {
      value = load<string>(dataStart + (<usize>i << alignof<T>()));
      if (value !== null) estLen += value.length;
    }
    var offset = 0;
    var result = ALLOCATE((estLen + sepLen * lastIndex) << 1);
    for (let i = 0; i < lastIndex; ++i) {
      value = load<string>(dataStart + (<usize>i << alignof<T>()));
      if (value !== null) {
        let valueLen = changetype<string>(value).length;
        memory.copy(
          result + (<usize>offset << 1),
          changetype<usize>(value),
          <usize>valueLen << 1
        );
        offset += valueLen;
      }
      if (sepLen) {
        memory.copy(
          result + (<usize>offset << 1),
          changetype<usize>(separator),
          <usize>sepLen << 1
        );
        offset += sepLen;
      }
    }
    value = load<string>(dataStart + (<usize>lastIndex << alignof<T>()));
    if (value !== null) {
      memory.copy(
        result + (<usize>offset << 1),
        changetype<usize>(value),
        <usize>changetype<string>(value).length << 1
      );
    }
    return REGISTER<string>(result);
  }

  private join_arr(separator: string = ","): string {
    var lastIndex = this.length_ - 1;
    if (lastIndex < 0) return "";

    var result = "";
    var sepLen = separator.length;
    var base = this.dataStart;
    var value: T;
    if (!lastIndex) {
      value = load<T>(base);
      // @ts-ignore: type
      return value ? value.join(separator) : "";
    }
    for (let i = 0; i < lastIndex; ++i) {
      value = load<T>(base + (<usize>i << alignof<T>()));
      // @ts-ignore: type
      if (value) result += value.join(separator);
      if (sepLen) result += separator;
    }
    value = load<T>(base + (<usize>lastIndex << alignof<T>()));
    // @ts-ignore: type
    if (value) result += value.join(separator);
    return result; // registered by concatenation (FIXME: lots of garbage)
  }

  private join_ref(separator: string = ","): string {
    var lastIndex = this.length_ - 1;
    if (lastIndex < 0) return "";
    var base = this.dataStart;
    if (!lastIndex) return "[object Object]";

    const valueLen = 15; // max possible length of element len("[object Object]")
    var sepLen = separator.length;
    var estLen = (valueLen + sepLen) * lastIndex + valueLen;
    var result = ALLOCATE(estLen << 1);
    var offset = 0;
    var value: T;
    for (let i = 0; i < lastIndex; ++i) {
      value = load<T>(base + (<usize>i << alignof<T>()));
      if (value) {
        memory.copy(
          result + (<usize>offset << 1),
          changetype<usize>("[object Object]"),
          <usize>valueLen << 1
        );
        offset += valueLen;
      }
      if (sepLen) {
        memory.copy(
          result + (<usize>offset << 1),
          changetype<usize>(separator),
          <usize>sepLen << 1
        );
        offset += sepLen;
      }
    }
    if (load<T>(base + (<usize>lastIndex << alignof<T>()))) {
      memory.copy(
        result + (<usize>offset << 1),
        changetype<usize>("[object Object]"),
        <usize>valueLen << 1
      );
      offset += valueLen;
    }
    if (estLen > offset) {
      let out = changetype<string>(result).substring(0, offset);
      DISCARD(result);
      return out; // registered in .substring
    }
    return REGISTER<string>(result);
  }

  toString(): string {
    return this.join();
  }

  // private __gc(): void {
  //   var buffer = this.buffer_;
  //   __gc_mark(changetype<usize>(buffer)); // tslint:disable-line
  //   if (isManaged<T>()) {
  //     let offset: usize = 0;
  //     let end = <usize>this.length_ << alignof<usize>();
  //     while (offset < end) {
  //       __gc_mark(load<usize>(changetype<usize>(buffer) + offset, HEADER_SIZE)); // tslint:disable-line
  //       offset += sizeof<usize>();
  //     }
  //   }
  // }
}
