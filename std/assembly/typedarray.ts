import { COMPARATOR, SORT } from "./util/sort";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH, E_NOTIMPLEMENTED } from "./util/error";
import { joinIntegerArray, joinFloatArray } from "./util/string";
import { idof } from "./builtins";
import { ArrayBufferView } from "./arraybuffer";

export class Int8Array extends ArrayBufferView {
  [key: number]: i8;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<i8>();

  constructor(length: i32) {
    super(length, alignof<i8>());
  }

  get length(): i32 {
    return this.byteLength;
  }

  @operator("[]")
  private __get(index: i32): i8 {
    if (<u32>index >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i8>(this.dataStart + <usize>index);
  }

  @unsafe @operator("{}")
  private __uget(index: i32): i8 {
    return load<i8>(this.dataStart + <usize>index);
  }

  @operator("[]=")
  private __set(index: i32, value: native<i8>): void {
    if (<u32>index >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i8>(this.dataStart + <usize>index, value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: native<i8>): void {
    store<i8>(this.dataStart + <usize>index, value);
  }

  at(index: i32): i8 {
    var len = this.byteLength;
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i8>(this.dataStart + <usize>index);
  }

  includes(searchElement: i8, fromIndex: i32 = 0): bool {
    return INCLUDES<Int8Array, i8>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: i8, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Int8Array, i8>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: i8, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Int8Array, i8>(this, searchElement, fromIndex);
  }

  fill(value: i32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Int8Array {
    return FILL<Int8Array, i8>(this, value, start, end);
  }

  sort(comparator: (a: i8, b: i8) => i32 = COMPARATOR<i8>()): Int8Array {
    SORT<i8>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Int8Array {
    return SLICE<Int8Array, i8>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Int8Array {
    return SUBARRAY<Int8Array, i8>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Int8Array {
    return COPY_WITHIN<Int8Array, i8>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: i8, index: i32, array: Int8Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Int8Array, i8, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: i8, index: i32, array: Int8Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Int8Array, i8, T>(this, fn, initialValue);
  }

  map(fn: (value: i8, index: i32, self: Int8Array) => i8): Int8Array {
    return MAP<Int8Array, i8>(this, fn);
  }

  filter(fn: (value: i8, index: i32, self: Int8Array) => bool): Int8Array {
    return FILTER<Int8Array, i8>(this, fn);
  }

  findIndex(fn: (value: i8, index: i32, self: Int8Array) => bool): i32 {
    return FIND_INDEX<Int8Array, i8>(this, fn);
  }

  findLastIndex(fn: (value: i8, index: i32, self: Int8Array) => bool): i32 {
    return FIND_LAST_INDEX<Int8Array, i8>(this, fn);
  }

  some(fn: (value: i8, index: i32, self: Int8Array) => bool): bool {
    return SOME<Int8Array, i8>(this, fn);
  }

  every(fn: (value: i8, index: i32, self: Int8Array) => bool): bool {
    return EVERY<Int8Array, i8>(this, fn);
  }

  forEach(fn: (value: i8, index: i32, self: Int8Array) => void): void {
    FOREACH<Int8Array, i8>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, i8>(this);
  }

  join(separator: string = ","): string {
    return joinIntegerArray<i8>(this.dataStart, this.length, separator);
  }

  toString(): string {
    return this.join();
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Int8Array, i8, U, valueof<U>>(this, source, offset);
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Int8Array {
    return WRAP<Int8Array, i8>(buffer, byteOffset, length);
  }
}

export class Uint8Array extends ArrayBufferView {
  [key: number]: u8;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<u8>();

  constructor(length: i32) {
    super(length, alignof<u8>());
  }

  get length(): i32 {
    return this.byteLength;
  }

  @operator("[]")
  private __get(index: i32): u8 {
    if (<u32>index >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u8>(this.dataStart + <usize>index);
  }

  @unsafe @operator("{}")
  private __uget(index: i32): u8 {
    return load<u8>(this.dataStart + <usize>index);
  }

  @operator("[]=")
  private __set(index: i32, value: native<u8>): void {
    if (<u32>index >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u8>(this.dataStart + <usize>index, value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: native<u8>): void {
    store<u8>(this.dataStart + <usize>index, value);
  }

  at(index: i32): u8 {
    var len = this.byteLength;
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u8>(this.dataStart + <usize>index);
  }

  includes(searchElement: u8, fromIndex: i32 = 0): bool {
    return INCLUDES<Uint8Array, u8>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: u8, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Uint8Array, u8>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: u8, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Uint8Array, u8>(this, searchElement, fromIndex);
  }

  fill(value: u32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint8Array {
    return FILL<Uint8Array, u8>(this, value, start, end);
  }

  sort(comparator: (a: u8, b: u8) => i32 = COMPARATOR<u8>()): Uint8Array {
    SORT<u8>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Uint8Array {
    return SLICE<Uint8Array, u8>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Uint8Array {
    return SUBARRAY<Uint8Array, u8>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Uint8Array {
    return COPY_WITHIN<Uint8Array, u8>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: u8, index: i32, array: Uint8Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint8Array, u8, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: u8, index: i32, array: Uint8Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint8Array, u8, T>(this, fn, initialValue);
  }

  map(fn: (value: u8, index: i32, self: Uint8Array) => u8): Uint8Array {
    return MAP<Uint8Array, u8>(this, fn);
  }

  filter(fn: (value: u8, index: i32, self: Uint8Array) => bool): Uint8Array {
    return FILTER<Uint8Array, u8>(this, fn);
  }

  findIndex(fn: (value: u8, index: i32, self: Uint8Array) => bool): i32 {
    return FIND_INDEX<Uint8Array, u8>(this, fn);
  }

  findLastIndex(fn: (value: u8, index: i32, self: Uint8Array) => bool): i32 {
    return FIND_LAST_INDEX<Uint8Array, u8>(this, fn);
  }

  some(fn: (value: u8, index: i32, self: Uint8Array) => bool): bool {
    return SOME<Uint8Array, u8>(this, fn);
  }

  every(fn: (value: u8, index: i32, self: Uint8Array) => bool): bool {
    return EVERY<Uint8Array, u8>(this, fn);
  }

  forEach(fn: (value: u8, index: i32, self: Uint8Array) => void): void {
    FOREACH<Uint8Array, u8>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, u8>(this);
  }

  join(separator: string = ","): string {
    return joinIntegerArray<u8>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Uint8Array, u8, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Uint8Array {
    return WRAP<Uint8Array, u8>(buffer, byteOffset, length);
  }
}

export class Uint8ClampedArray extends ArrayBufferView {
  [key: number]: u8;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<u8>();

  constructor(length: i32) {
    super(length, alignof<u8>());
  }

  get length(): i32 {
    return this.byteLength;
  }

  @operator("[]")
  private __get(index: i32): u8 {
    if (<u32>index >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u8>(this.dataStart + <usize>index);
  }

  @unsafe @operator("{}")
  private __uget(index: i32): u8 {
    return load<u8>(this.dataStart + <usize>index);
  }

  @operator("[]=")
  private __set(index: i32, value: native<u8>): void {
    if (<u32>index >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u8>(this.dataStart + <usize>index, ~(<i32>value >> 31) & (((255 - value) >> 31) | value));
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: native<u8>): void {
    store<u8>(this.dataStart + <usize>index, ~(<i32>value >> 31) & (((255 - value) >> 31) | value));
  }

  at(index: i32): u8 {
    var len = this.byteLength;
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u8>(this.dataStart + <usize>index);
  }

  includes(searchElement: u8, fromIndex: i32 = 0): bool {
    return INCLUDES<Uint8ClampedArray, u8>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: u8, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Uint8ClampedArray, u8>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: u8, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Uint8ClampedArray, u8>(this, searchElement, fromIndex);
  }

  fill(value: u32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint8ClampedArray {
    return FILL<Uint8ClampedArray, u8>(this, value, start, end);
  }

  sort(comparator: (a: u8, b: u8) => i32 = COMPARATOR<u8>()): Uint8ClampedArray {
    SORT<u8>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Uint8ClampedArray {
    return SLICE<Uint8ClampedArray, u8>(this, begin, end);
  }

  subarray(start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint8ClampedArray {
    return SUBARRAY<Uint8ClampedArray, u8>(this, start, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Uint8ClampedArray {
    return COPY_WITHIN<Uint8ClampedArray, u8>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: u8, index: i32, array: Uint8ClampedArray) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint8ClampedArray, u8, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: u8, index: i32, array: Uint8ClampedArray) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint8ClampedArray, u8, T>(this, fn, initialValue);
  }

  map(fn: (value: u8, index: i32, self: Uint8ClampedArray) => u8): Uint8ClampedArray {
    return MAP<Uint8ClampedArray, u8>(this, fn);
  }

  filter(fn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): Uint8ClampedArray {
    return FILTER<Uint8ClampedArray, u8>(this, fn);
  }

  findIndex(fn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): i32 {
    return FIND_INDEX<Uint8ClampedArray, u8>(this, fn);
  }

  findLastIndex(fn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): i32 {
    return FIND_LAST_INDEX<Uint8ClampedArray, u8>(this, fn);
  }

  some(fn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): bool {
    return SOME<Uint8ClampedArray, u8>(this, fn);
  }

  every(fn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): bool {
    return EVERY<Uint8ClampedArray, u8>(this, fn);
  }

  forEach(fn: (value: u8, index: i32, self: Uint8ClampedArray) => void): void {
    FOREACH<Uint8ClampedArray, u8>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, u8>(this);
  }

  join(separator: string = ","): string {
    return joinIntegerArray<u8>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Uint8ClampedArray, u8, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Uint8ClampedArray {
    return WRAP<Uint8ClampedArray, u8>(buffer, byteOffset, length);
  }
}

export class Int16Array extends ArrayBufferView {
  [key: number]: i16;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<i16>();

  constructor(length: i32) {
    super(length, alignof<i16>());
  }

  get length(): i32 {
    return this.byteLength >>> alignof<i16>();
  }

  @operator("[]")
  private __get(index: i32): i16 {
    if (<u32>index >= <u32>this.byteLength >>> alignof<i16>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i16>(this.dataStart + (<usize>index << alignof<i16>()));
  }

  @unsafe @operator("{}")
  private __uget(index: i32): i16 {
    return load<i16>(this.dataStart + (<usize>index << alignof<i16>()));
  }

  @operator("[]=")
  private __set(index: i32, value: native<i16>): void {
    if (<u32>index >= <u32>this.byteLength >>> alignof<i16>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i16>(this.dataStart + (<usize>index << alignof<i16>()), value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: native<i16>): void {
    store<i16>(this.dataStart + (<usize>index << alignof<i16>()), value);
  }

  at(index: i32): i16 {
    var len = this.byteLength >>> alignof<i16>();
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i16>(this.dataStart + (<usize>index << alignof<i16>()));
  }

  includes(searchElement: i16, fromIndex: i32 = 0): bool {
    return INCLUDES<Int16Array, i16>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: i16, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Int16Array, i16>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: i16, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Int16Array, i16>(this, searchElement, fromIndex);
  }

  fill(value: i32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Int16Array {
    return FILL<Int16Array, i16>(this, value, start, end);
  }

  sort(comparator: (a: i16, b: i16) => i32 = COMPARATOR<i16>()): Int16Array {
    SORT<i16>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Int16Array {
    return SLICE<Int16Array, i16>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Int16Array {
    return SUBARRAY<Int16Array, i16>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Int16Array {
    return COPY_WITHIN<Int16Array, i16>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: i16, index: i32, array: Int16Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Int16Array, i16, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: i16, index: i32, array: Int16Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Int16Array, i16, T>(this, fn, initialValue);
  }

  map(fn: (value: i16, index: i32, self: Int16Array) => i16): Int16Array {
    return MAP<Int16Array, i16>(this, fn);
  }

  filter(fn: (value: i16, index: i32, self: Int16Array) => bool): Int16Array {
    return FILTER<Int16Array, i16>(this, fn);
  }

  findIndex(fn: (value: i16, index: i32, self: Int16Array) => bool): i32 {
    return FIND_INDEX<Int16Array, i16>(this, fn);
  }

  findLastIndex(fn: (value: i16, index: i32, self: Int16Array) => bool): i32 {
    return FIND_LAST_INDEX<Int16Array, i16>(this, fn);
  }

  some(fn: (value: i16, index: i32, self: Int16Array) => bool): bool {
    return SOME<Int16Array, i16>(this, fn);
  }

  every(fn: (value: i16, index: i32, self: Int16Array) => bool): bool {
    return EVERY<Int16Array, i16>(this, fn);
  }

  forEach(fn: (value: i16, index: i32, self: Int16Array) => void): void {
    FOREACH<Int16Array, i16>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, i16>(this);
  }

  join(separator: string = ","): string {
    return joinIntegerArray<i16>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Int16Array, i16, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Int16Array {
    return WRAP<Int16Array, i16>(buffer, byteOffset, length);
  }
}

export class Uint16Array extends ArrayBufferView {
  [key: number]: u16;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<u16>();

  constructor(length: i32) {
    super(length, alignof<u16>());
  }

  get length(): i32 {
    return this.byteLength >>> alignof<u16>();
  }

  @operator("[]")
  private __get(index: i32): u16 {
    if (<u32>index >= <u32>this.byteLength >>> alignof<u16>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u16>(this.dataStart + (<usize>index << alignof<u16>()));
  }

  @unsafe @operator("{}")
  private __uget(index: i32): u16 {
    return load<u16>(this.dataStart + (<usize>index << alignof<u16>()));
  }

  @operator("[]=")
  private __set(index: i32, value: native<u16>): void {
    if (<u32>index >= <u32>this.byteLength >>> alignof<u16>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u16>(this.dataStart + (<usize>index << alignof<u16>()), value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: native<u16>): void {
    store<u16>(this.dataStart + (<usize>index << alignof<u16>()), value);
  }

  at(index: i32): u16 {
    var len = this.byteLength >>> alignof<u16>();
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u16>(this.dataStart + (<usize>index << alignof<u16>()));
  }

  includes(searchElement: u16, fromIndex: i32 = 0): bool {
    return INCLUDES<Uint16Array, u16>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: u16, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Uint16Array, u16>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: u16, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Uint16Array, u16>(this, searchElement, fromIndex);
  }

  fill(value: u32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint16Array {
    return FILL<Uint16Array, u16>(this, value, start, end);
  }

  sort(comparator: (a: u16, b: u16) => i32 = COMPARATOR<u16>()): Uint16Array {
    SORT<u16>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Uint16Array {
    return SLICE<Uint16Array, u16>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Uint16Array {
    return SUBARRAY<Uint16Array, u16>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Uint16Array {
    return COPY_WITHIN<Uint16Array, u16>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: u16, index: i32, array: Uint16Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint16Array, u16, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: u16, index: i32, array: Uint16Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint16Array, u16, T>(this, fn, initialValue);
  }

  map(fn: (value: u16, index: i32, self: Uint16Array) => u16): Uint16Array {
    return MAP<Uint16Array, u16>(this, fn);
  }

  filter(fn: (value: u16, index: i32, self: Uint16Array) => bool): Uint16Array {
    return FILTER<Uint16Array, u16>(this, fn);
  }

  findIndex(fn: (value: u16, index: i32, self: Uint16Array) => bool): i32 {
    return FIND_INDEX<Uint16Array, u16>(this, fn);
  }

  findLastIndex(fn: (value: u16, index: i32, self: Uint16Array) => bool): i32 {
    return FIND_LAST_INDEX<Uint16Array, u16>(this, fn);
  }

  some(fn: (value: u16, index: i32, self: Uint16Array) => bool): bool {
    return SOME<Uint16Array, u16>(this, fn);
  }

  every(fn: (value: u16, index: i32, self: Uint16Array) => bool): bool {
    return EVERY<Uint16Array, u16>(this, fn);
  }

  forEach(fn: (value: u16, index: i32, self: Uint16Array) => void): void {
    FOREACH<Uint16Array, u16>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, u16>(this);
  }

  join(separator: string = ","): string {
    return joinIntegerArray<u16>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Uint16Array, u16, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Uint16Array {
    return WRAP<Uint16Array, u16>(buffer, byteOffset, length);
  }
}

export class Int32Array extends ArrayBufferView {
  [key: number]: i32;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<i32>();

  constructor(length: i32) {
    super(length, alignof<i32>());
  }

  get length(): i32 {
    return this.byteLength >>> alignof<i32>();
  }

  @operator("[]")
  private __get(index: i32): i32 {
    if (<u32>index >= <u32>this.byteLength >>> alignof<i32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i32>(this.dataStart + (<usize>index << alignof<i32>()));
  }

  @unsafe @operator("{}")
  private __uget(index: i32): i32 {
    return load<i32>(this.dataStart + (<usize>index << alignof<i32>()));
  }

  @operator("[]=")
  private __set(index: i32, value: i32): void {
    if (<u32>index >= <u32>this.byteLength >>> alignof<i32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i32>(this.dataStart + (<usize>index << alignof<i32>()), value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: i32): void {
    store<i32>(this.dataStart + (<usize>index << alignof<i32>()), value);
  }

  at(index: i32): i32 {
    var len = this.byteLength >>> alignof<i32>();
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i32>(this.dataStart + (<usize>index << alignof<i32>()));
  }

  includes(searchElement: i32, fromIndex: i32 = 0): bool {
    return INCLUDES<Int32Array, i32>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: i32, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Int32Array, i32>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: i32, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Int32Array, i32>(this, searchElement, fromIndex);
  }

  fill(value: i32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Int32Array {
    return FILL<Int32Array, i32>(this, value, start, end);
  }

  sort(comparator: (a: i32, b: i32) => i32 = COMPARATOR<i32>()): Int32Array {
    SORT<i32>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Int32Array {
    return SLICE<Int32Array, i32>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Int32Array {
    return SUBARRAY<Int32Array, i32>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Int32Array {
    return COPY_WITHIN<Int32Array, i32>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: i32, index: i32, array: Int32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Int32Array, i32, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: i32, index: i32, array: Int32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Int32Array, i32, T>(this, fn, initialValue);
  }

  map(fn: (value: i32, index: i32, self: Int32Array) => i32): Int32Array {
    return MAP<Int32Array, i32>(this, fn);
  }

  filter(fn: (value: i32, index: i32, self: Int32Array) => bool): Int32Array {
    return FILTER<Int32Array, i32>(this, fn);
  }

  findIndex(fn: (value: i32, index: i32, self: Int32Array) => bool): i32 {
    return FIND_INDEX<Int32Array, i32>(this, fn);
  }

  findLastIndex(fn: (value: i32, index: i32, self: Int32Array) => bool): i32 {
    return FIND_LAST_INDEX<Int32Array, i32>(this, fn);
  }

  some(fn: (value: i32, index: i32, self: Int32Array) => bool): bool {
    return SOME<Int32Array, i32>(this, fn);
  }

  every(fn: (value: i32, index: i32, self: Int32Array) => bool): bool {
    return EVERY<Int32Array, i32>(this, fn);
  }

  forEach(fn: (value: i32, index: i32, self: Int32Array) => void): void {
    FOREACH<Int32Array, i32>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, i32>(this);
  }

  join(separator: string = ","): string {
    return joinIntegerArray<i32>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Int32Array, i32, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Int32Array {
    return WRAP<Int32Array, i32>(buffer, byteOffset, length);
  }
}

export class Uint32Array extends ArrayBufferView {
  [key: number]: u32;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<u32>();

  constructor(length: i32) {
    super(length, alignof<u32>());
  }

  get length(): i32 {
    return this.byteLength >>> alignof<u32>();
  }

  @operator("[]")
  private __get(index: i32): u32 {
    if (<u32>index >= <u32>this.byteLength >>> alignof<u32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u32>(this.dataStart + (<usize>index << alignof<u32>()));
  }

  @unsafe @operator("{}")
  private __uget(index: i32): u32 {
    return load<u32>(this.dataStart + (<usize>index << alignof<u32>()));
  }

  @operator("[]=")
  private __set(index: i32, value: u32): void {
    if (<u32>index >= <u32>this.byteLength >>> alignof<u32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u32>(this.dataStart + (<usize>index << alignof<u32>()), value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: u32): void {
    store<u32>(this.dataStart + (<usize>index << alignof<u32>()), value);
  }

  at(index: i32): u32 {
    var len = this.byteLength >>> alignof<u32>();
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u32>(this.dataStart + (<usize>index << alignof<u32>()));
  }

  includes(searchElement: u32, fromIndex: i32 = 0): bool {
    return INCLUDES<Uint32Array, u32>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: u32, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Uint32Array, u32>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: u32, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Uint32Array, u32>(this, searchElement, fromIndex);
  }

  fill(value: u32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint32Array {
    return FILL<Uint32Array, u32>(this, value, start, end);
  }

  sort(comparator: (a: u32, b: u32) => i32 = COMPARATOR<u32>()): Uint32Array {
    SORT<u32>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Uint32Array {
    return SLICE<Uint32Array, u32>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Uint32Array {
    return SUBARRAY<Uint32Array, u32>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Uint32Array {
    return COPY_WITHIN<Uint32Array, u32>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: u32, index: i32, array: Uint32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint32Array, u32, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: u32, index: i32, array: Uint32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint32Array, u32, T>(this, fn, initialValue);
  }

  map(fn: (value: u32, index: i32, self: Uint32Array) => u32): Uint32Array {
    return MAP<Uint32Array, u32>(this, fn);
  }

  filter(fn: (value: u32, index: i32, self: Uint32Array) => bool): Uint32Array {
    return FILTER<Uint32Array, u32>(this, fn);
  }

  findIndex(fn: (value: u32, index: i32, self: Uint32Array) => bool): i32 {
    return FIND_INDEX<Uint32Array, u32>(this, fn);
  }

  findLastIndex(fn: (value: u32, index: i32, self: Uint32Array) => bool): i32 {
    return FIND_LAST_INDEX<Uint32Array, u32>(this, fn);
  }

  some(fn: (value: u32, index: i32, self: Uint32Array) => bool): bool {
    return SOME<Uint32Array, u32>(this, fn);
  }

  every(fn: (value: u32, index: i32, self: Uint32Array) => bool): bool {
    return EVERY<Uint32Array, u32>(this, fn);
  }

  forEach(fn: (value: u32, index: i32, self: Uint32Array) => void): void {
    FOREACH<Uint32Array, u32>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, u32>(this);
  }

  join(separator: string = ","): string {
    return joinIntegerArray<u32>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Uint32Array, u32, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Uint32Array {
    return WRAP<Uint32Array, u32>(buffer, byteOffset, length);
  }
}

export class Int64Array extends ArrayBufferView {
  [key: number]: i64;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<i64>();

  constructor(length: i32) {
    super(length, alignof<i64>());
  }

  get length(): i32 {
    return this.byteLength >>> alignof<i64>();
  }

  @operator("[]")
  private __get(index: i32): i64 {
    if (<u32>index >= <u32>this.byteLength >>> alignof<i64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i64>(this.dataStart + (<usize>index << alignof<i64>()));
  }

  @unsafe @operator("{}")
  private __uget(index: i32): i64 {
    return load<i64>(this.dataStart + (<usize>index << alignof<i64>()));
  }

  @operator("[]=")
  private __set(index: i32, value: i64): void {
    if (<u32>index >= <u32>this.byteLength >>> alignof<i64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i64>(this.dataStart + (<usize>index << alignof<i64>()), value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: i64): void {
    store<i64>(this.dataStart + (<usize>index << alignof<i64>()), value);
  }

  at(index: i32): i64 {
    var len = this.byteLength >>> alignof<i64>();
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i64>(this.dataStart + (<usize>index << alignof<i64>()));
  }

  includes(searchElement: i64, fromIndex: i32 = 0): bool {
    return INCLUDES<Int64Array, i64>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: i64, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Int64Array, i64>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: i64, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Int64Array, i64>(this, searchElement, fromIndex);
  }

  fill(value: i64, start: i32 = 0, end: i32 = i32.MAX_VALUE): Int64Array {
    return FILL<Int64Array, i64>(this, value, start, end);
  }

  sort(comparator: (a: i64, b: i64) => i32 = COMPARATOR<i64>()): Int64Array {
    SORT<i64>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Int64Array {
    return SLICE<Int64Array, i64>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Int64Array {
    return SUBARRAY<Int64Array, i64>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Int64Array {
    return COPY_WITHIN<Int64Array, i64>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: i64, index: i32, array: Int64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Int64Array, i64, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: i64, index: i32, array: Int64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Int64Array, i64, T>(this, fn, initialValue);
  }

  map(fn: (value: i64, index: i32, self: Int64Array) => i64): Int64Array {
    return MAP<Int64Array, i64>(this, fn);
  }

  filter(fn: (value: i64, index: i32, self: Int64Array) => bool): Int64Array {
    return FILTER<Int64Array, i64>(this, fn);
  }

  findIndex(fn: (value: i64, index: i32, self: Int64Array) => bool): i32 {
    return FIND_INDEX<Int64Array, i64>(this, fn);
  }

  findLastIndex(fn: (value: i64, index: i32, self: Int64Array) => bool): i32 {
    return FIND_LAST_INDEX<Int64Array, i64>(this, fn);
  }

  some(fn: (value: i64, index: i32, self: Int64Array) => bool): bool {
    return SOME<Int64Array, i64>(this, fn);
  }

  every(fn: (value: i64, index: i32, self: Int64Array) => bool): bool {
    return EVERY<Int64Array, i64>(this, fn);
  }

  forEach(fn: (value: i64, index: i32, self: Int64Array) => void): void {
    FOREACH<Int64Array, i64>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, i64>(this);
  }

  join(separator: string = ","): string {
    return joinIntegerArray<i64>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Int64Array, i64, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Int64Array {
    return WRAP<Int64Array, i64>(buffer, byteOffset, length);
  }
}

export class Uint64Array extends ArrayBufferView {
  [key: number]: u64;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<u64>();

  constructor(length: i32) {
    super(length, alignof<u64>());
  }

  get length(): i32 {
    return this.byteLength >>> alignof<u64>();
  }

  @operator("[]")
  private __get(index: i32): u64 {
    if (<u32>index >= <u32>this.byteLength >>> alignof<u64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u64>(this.dataStart + (<usize>index << alignof<u64>()));
  }

  @unsafe @operator("{}")
  private __uget(index: i32): u64 {
    return load<u64>(this.dataStart + (<usize>index << alignof<u64>()));
  }

  @operator("[]=")
  private __set(index: i32, value: u64): void {
    if (<u32>index >= <u32>this.byteLength >>> alignof<u64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u64>(this.dataStart + (<usize>index << alignof<u64>()), value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: u64): void {
    store<u64>(this.dataStart + (<usize>index << alignof<u64>()), value);
  }

  at(index: i32): u64 {
    var len = this.byteLength >>> alignof<u64>();
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u64>(this.dataStart + (<usize>index << alignof<u64>()));
  }

  includes(searchElement: u64, fromIndex: i32 = 0): bool {
    return INCLUDES<Uint64Array, u64>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: u64, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Uint64Array, u64>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: u64, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Uint64Array, u64>(this, searchElement, fromIndex);
  }

  fill(value: u64, start: i32 = 0, end: i32 = i32.MAX_VALUE): Uint64Array {
    return FILL<Uint64Array, u64>(this, value, start, end);
  }

  sort(comparator: (a: u64, b: u64) => i32 = COMPARATOR<u64>()): Uint64Array {
    SORT<u64>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Uint64Array {
    return SLICE<Uint64Array, u64>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Uint64Array {
    return SUBARRAY<Uint64Array, u64>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Uint64Array {
    return COPY_WITHIN<Uint64Array, u64>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: u64, index: i32, array: Uint64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Uint64Array, u64, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: u64, index: i32, array: Uint64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Uint64Array, u64, T>(this, fn, initialValue);
  }

  map(fn: (value: u64, index: i32, self: Uint64Array) => u64): Uint64Array {
    return MAP<Uint64Array, u64>(this, fn);
  }

  filter(fn: (value: u64, index: i32, self: Uint64Array) => bool): Uint64Array {
    return FILTER<Uint64Array, u64>(this, fn);
  }

  findIndex(fn: (value: u64, index: i32, self: Uint64Array) => bool): i32 {
    return FIND_INDEX<Uint64Array, u64>(this, fn);
  }

  findLastIndex(fn: (value: u64, index: i32, self: Uint64Array) => bool): i32 {
    return FIND_LAST_INDEX<Uint64Array, u64>(this, fn);
  }

  some(fn: (value: u64, index: i32, self: Uint64Array) => bool): bool {
    return SOME<Uint64Array, u64>(this, fn);
  }

  every(fn: (value: u64, index: i32, self: Uint64Array) => bool): bool {
    return EVERY<Uint64Array, u64>(this, fn);
  }

  forEach(fn: (value: u64, index: i32, self: Uint64Array) => void): void {
    FOREACH<Uint64Array, u64>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, u64>(this);
  }

  join(separator: string = ","): string {
    return joinIntegerArray<u64>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Uint64Array, u64, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Uint64Array {
    return WRAP<Uint64Array, u64>(buffer, byteOffset, length);
  }
}

export class Float32Array extends ArrayBufferView {
  [key: number]: f32;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<f32>();

  constructor(length: i32) {
    super(length, alignof<f32>());
  }

  get length(): i32 {
    return this.byteLength >>> alignof<f32>();
  }

  @operator("[]")
  private __get(index: i32): f32 {
    if (<u32>index >= <u32>this.byteLength >>> alignof<f32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<f32>(this.dataStart + (<usize>index << alignof<f32>()));
  }

  @unsafe @operator("{}")
  private __uget(index: i32): f32 {
    return load<f32>(this.dataStart + (<usize>index << alignof<f32>()));
  }

  @operator("[]=")
  private __set(index: i32, value: f32): void {
    if (<u32>index >= <u32>this.byteLength >>> alignof<f32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<f32>(this.dataStart + (<usize>index << alignof<f32>()), value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: f32): void {
    store<f32>(this.dataStart + (<usize>index << alignof<f32>()), value);
  }

  at(index: i32): f32 {
    var len = this.byteLength >>> alignof<f32>();
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<f32>(this.dataStart + (<usize>index << alignof<f32>()));
  }

  includes(searchElement: f32, fromIndex: i32 = 0): bool {
    return INCLUDES<Float32Array, f32>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: f32, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Float32Array, f32>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: f32, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Float32Array, f32>(this, searchElement, fromIndex);
  }

  fill(value: f32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Float32Array {
    return FILL<Float32Array, f32>(this, value, start, end);
  }

  sort(comparator: (a: f32, b: f32) => i32 = COMPARATOR<f32>()): Float32Array {
    SORT<f32>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Float32Array {
    return SLICE<Float32Array, f32>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Float32Array {
    return SUBARRAY<Float32Array, f32>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Float32Array {
    return COPY_WITHIN<Float32Array, f32>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: f32, index: i32, array: Float32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Float32Array, f32, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: f32, index: i32, array: Float32Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Float32Array, f32, T>(this, fn, initialValue);
  }

  map(fn: (value: f32, index: i32, self: Float32Array) => f32): Float32Array {
    return MAP<Float32Array, f32>(this, fn);
  }

  filter(fn: (value: f32, index: i32, self: Float32Array) => bool): Float32Array {
    return FILTER<Float32Array, f32>(this, fn);
  }

  findIndex(fn: (value: f32, index: i32, self: Float32Array) => bool): i32 {
    return FIND_INDEX<Float32Array, f32>(this, fn);
  }

  findLastIndex(fn: (value: f32, index: i32, self: Float32Array) => bool): i32 {
    return FIND_LAST_INDEX<Float32Array, f32>(this, fn);
  }

  some(fn: (value: f32, index: i32, self: Float32Array) => bool): bool {
    return SOME<Float32Array, f32>(this, fn);
  }

  every(fn: (value: f32, index: i32, self: Float32Array) => bool): bool {
    return EVERY<Float32Array, f32>(this, fn);
  }

  forEach(fn: (value: f32, index: i32, self: Float32Array) => void): void {
    FOREACH<Float32Array, f32>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, f32>(this);
  }

  join(separator: string = ","): string {
    return joinFloatArray<f32>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Float32Array, f32, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Float32Array {
    return WRAP<Float32Array, f32>(buffer, byteOffset, length);
  }
}

export class Float64Array extends ArrayBufferView {
  [key: number]: f64;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: i32 = sizeof<f64>();

  constructor(length: i32) {
    super(length, alignof<f64>());
  }

  get length(): i32 {
    return this.byteLength >>> alignof<f64>();
  }

  @operator("[]")
  private __get(index: i32): f64 {
    if (<u32>index >= <u32>this.byteLength >>> alignof<f64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<f64>(this.dataStart + (<usize>index << alignof<f64>()));
  }

  @unsafe @operator("{}")
  private __uget(index: i32): f64 {
    return load<f64>(this.dataStart + (<usize>index << alignof<f64>()));
  }

  @operator("[]=")
  private __set(index: i32, value: f64): void {
    if (<u32>index >= <u32>this.byteLength >>> alignof<f64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<f64>(this.dataStart + (<usize>index << alignof<f64>()), value);
  }

  @unsafe @operator("{}=")
  private __uset(index: i32, value: f64): void {
    store<f64>(this.dataStart + (<usize>index << alignof<f64>()), value);
  }

  at(index: i32): f64 {
    var len = this.byteLength >>> alignof<f64>();
    index += select(0, len, index >= 0);
    if (<u32>index >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<f64>(this.dataStart + (<usize>index << alignof<f64>()));
  }

  includes(searchElement: f64, fromIndex: i32 = 0): bool {
    return INCLUDES<Float64Array, f64>(this, searchElement, fromIndex);
  }

  indexOf(searchElement: f64, fromIndex: i32 = 0): i32 {
    return INDEX_OF<Float64Array, f64>(this, searchElement, fromIndex);
  }

  lastIndexOf(searchElement: f64, fromIndex: i32 = this.length): i32 {
    return LAST_INDEX_OF<Float64Array, f64>(this, searchElement, fromIndex);
  }

  fill(value: f64, start: i32 = 0, end: i32 = i32.MAX_VALUE): Float64Array {
    return FILL<Float64Array, f64>(this, value, start, end);
  }

  sort(comparator: (a: f64, b: f64) => i32 = COMPARATOR<f64>()): Float64Array {
    SORT<f64>(this.dataStart, this.length, comparator);
    return this;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Float64Array {
    return SLICE<Float64Array, f64>(this, begin, end);
  }

  subarray(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Float64Array {
    return SUBARRAY<Float64Array, f64>(this, begin, end);
  }

  copyWithin(target: i32, start: i32, end: i32 = i32.MAX_VALUE): Float64Array {
    return COPY_WITHIN<Float64Array, f64>(this, target, start, end);
  }

  reduce<T>(
    fn: (accumulator: T, value: f64, index: i32, array: Float64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE<Float64Array, f64, T>(this, fn, initialValue);
  }

  reduceRight<T>(
    fn: (accumulator: T, value: f64, index: i32, array: Float64Array) => T,
    initialValue: T,
  ): T {
    return REDUCE_RIGHT<Float64Array, f64, T>(this, fn, initialValue);
  }

  map(fn: (value: f64, index: i32, self: Float64Array) => f64): Float64Array {
    return MAP<Float64Array, f64>(this, fn);
  }

  filter(fn: (value: f64, index: i32, self: Float64Array) => bool): Float64Array {
    return FILTER<Float64Array, f64>(this, fn);
  }

  findIndex(fn: (value: f64, index: i32, self: Float64Array) => bool): i32 {
    return FIND_INDEX<Float64Array, f64>(this, fn);
  }

  findLastIndex(fn: (value: f64, index: i32, self: Float64Array) => bool): i32 {
    return FIND_LAST_INDEX<Float64Array, f64>(this, fn);
  }

  some(fn: (value: f64, index: i32, self: Float64Array) => bool): bool {
    return SOME<Float64Array, f64>(this, fn);
  }

  every(fn: (value: f64, index: i32, self: Float64Array) => bool): bool {
    return EVERY<Float64Array, f64>(this, fn);
  }

  forEach(fn: (value: f64, index: i32, self: Float64Array) => void): void {
    FOREACH<Float64Array, f64>(this, fn);
  }

  reverse(): this {
    return REVERSE<this, f64>(this);
  }

  join(separator: string = ","): string {
    return joinFloatArray<f64>(this.dataStart, this.length, separator);
  }

  set<U extends ArrayBufferView>(source: U, offset: i32 = 0): void {
    SET<Float64Array, f64, U, valueof<U>>(this, source, offset);
  }

  toString(): string {
    return this.join();
  }

  static wrap(buffer: ArrayBuffer, byteOffset: i32 = 0, length: i32 = -1): Float64Array {
    return WRAP<Float64Array, f64>(buffer, byteOffset, length);
  }
}

// @ts-ignore: decorator
@inline
function FILL<TArray extends ArrayBufferView, T extends number>(
  array: TArray,
  value: native<T>,
  start: i32,
  end: i32
): TArray {
  var ptr = array.dataStart;
  var len = array.length;
  start = start < 0 ? max(len + start, 0) : min(start, len);
  end   = end   < 0 ? max(len + end,   0) : min(end,   len);
  if (sizeof<T>() == 1) {
    if (start < end) memory.fill(ptr + <usize>start, <u8>value, <usize>(end - start));
  } else {
    for (; start < end; ++start) {
      store<T>(ptr + (<usize>start << alignof<T>()), value);
    }
  }
  return array;
}

// @ts-ignore: decorator
@inline
function SLICE<TArray extends ArrayBufferView, T>(
  array: TArray,
  start: i32,
  end: i32
): TArray {
  var len = array.length;
  start  = start < 0 ? max(start + len, 0) : min(start, len);
  end    = end   < 0 ? max(end   + len, 0) : min(end  , len);
  len = max(end - start, 0);
  var slice = instantiate<TArray>(len);
  memory.copy(
    slice.dataStart,
    array.dataStart + (<usize>start << alignof<T>()),
    <usize>len << alignof<T>()
  );
  return slice;
}

// @ts-ignore: decorator
@inline
function SUBARRAY<TArray extends ArrayBufferView, T>(
  array: TArray,
  begin: i32,
  end: i32
): TArray {
  var len = array.length;
  begin = begin < 0 ? max(len + begin, 0) : min(begin, len);
  end   = end   < 0 ? max(len + end,   0) : min(end,   len);
  end   = max(end, begin);

  var out = changetype<TArray>(__new(offsetof<TArray>(), idof<TArray>()));
  var buf = changetype<usize>(array.buffer);
  store<usize>(changetype<usize>(out), buf, offsetof<TArray>("buffer"));
  __link(changetype<usize>(out), buf, false);
  store<usize>(changetype<usize>(out), array.dataStart + (<usize>begin << alignof<T>()), offsetof<TArray>("dataStart"));
  store<u32>(changetype<usize>(out), (end - begin) << alignof<T>(), offsetof<TArray>("byteLength"));
  return out;
}

// @ts-ignore: decorator
@inline
function COPY_WITHIN<TArray extends ArrayBufferView, T>(
  array: TArray,
  target: i32,
  start: i32,
  end: i32
): TArray {
  var len = array.length;
  var ptr = array.dataStart;

  end   = min<i32>(end, len);
  var to    = target < 0 ? max(len + target, 0) : min(target, len);
  var from  = start < 0 ? max(len + start, 0) : min(start, len);
  var last  = end < 0 ? max(len + end, 0) : min(end, len);
  var count = min(last - from, len - to);

  memory.copy(
    ptr + (<usize>to << alignof<T>()),
    ptr + (<usize>from << alignof<T>()),
    <usize>count << alignof<T>()
  );
  return array;
}

// @ts-ignore: decorator
@inline
function REDUCE<TArray extends ArrayBufferView, T, TRet>(
  array: TArray,
  fn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var ptr = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    initialValue = fn(initialValue, load<T>(ptr + (<usize>i << alignof<T>())), i, array);
  }
  return initialValue;
}

// @ts-ignore: decorator
@inline
function REDUCE_RIGHT<TArray extends ArrayBufferView, T, TRet>(
  array: TArray,
  fn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var ptr = array.dataStart;
  for (let i = array.length - 1; i >= 0; i--) {
    initialValue = fn(initialValue, load<T>(ptr + (<usize>i << alignof<T>())), i, array);
  }
  return initialValue;
}

// @ts-ignore: decorator
@inline
function MAP<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, self: TArray) => T,
): TArray {
  var len = array.length;
  var ptr = array.dataStart;

  var byteLength = len << alignof<T>();
  var out = changetype<TArray>(__new(offsetof<TArray>(), idof<TArray>()));
  var buf = changetype<ArrayBuffer>(__new(byteLength, idof<ArrayBuffer>()));
  for (let i = 0; i < len; i++) {
    store<T>(
      changetype<usize>(buf) + (<usize>i << alignof<T>()),
      fn(load<T>(ptr + (<usize>i << alignof<T>())), i, array)
    );
  }
  store<usize>(changetype<usize>(out), changetype<usize>(buf), offsetof<TArray>("buffer"));
  __link(changetype<usize>(out), changetype<usize>(buf), false);
  store<usize>(changetype<usize>(out), changetype<usize>(buf), offsetof<TArray>("dataStart"));
  store<u32>(changetype<usize>(out), byteLength, offsetof<TArray>("byteLength"));
  return out;
}

// @ts-ignore: decorator
@inline
function FILTER<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, self: TArray) => bool,
): TArray {
  var len = array.length;
  var out = changetype<TArray>(__new(offsetof<TArray>(), idof<TArray>()));
  var buf = changetype<ArrayBuffer>(__new(len << alignof<T>(), idof<ArrayBuffer>()));
  var dataStart  = array.dataStart;
  var j: usize = 0;
  for (let i = 0; i < len; i++) {
    let value = load<T>(dataStart + (<usize>i << alignof<T>()));
    if (fn(value, i, array)) {
      store<T>(
        changetype<usize>(buf) + (j++ << alignof<T>()),
        value
      );
    }
  }
  // shrink output buffer
  var byteLength = j << alignof<T>();
  var data = __renew(changetype<usize>(buf), byteLength);
  store<usize>(changetype<usize>(out), data, offsetof<TArray>("buffer"));
  __link(changetype<usize>(out), data, false);
  store<u32>(changetype<usize>(out), byteLength, offsetof<TArray>("byteLength"));
  store<usize>(changetype<usize>(out), data, offsetof<TArray>("dataStart"));
  return out;
}

// @ts-ignore: decorator
@inline
function FIND_INDEX<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => bool,
): i32 {
  var ptr = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    if (fn(load<T>(ptr + (<usize>i << alignof<T>())), i, array)) return i;
  }
  return -1;
}

// @ts-ignore: decorator
@inline
function FIND_LAST_INDEX<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => bool,
): i32 {
  var ptr = array.dataStart;
  for (let i = array.length - 1; i >= 0; --i) {
    if (fn(load<T>(ptr + (<usize>i << alignof<T>())), i, array)) return i;
  }
  return -1;
}

// @ts-ignore: decorator
@inline
function INCLUDES<TArray extends ArrayBufferView, T>(
  array: TArray,
  searchElement: T,
  fromIndex: i32,
): bool {
  if (isFloat<T>()) {
    let index: isize = fromIndex;
    let len: isize = array.length;
    if (len == 0 || index >= len) return false;
    if (index < 0) index = max(len + index, 0);
    let dataStart = array.dataStart;
    while (index < len) {
      let elem = load<T>(dataStart + (index << alignof<T>()));
      // @ts-ignore
      if (elem == searchElement || isNaN(elem) & isNaN(searchElement)) return true;
      ++index;
    }
    return false;
  } else {
    return INDEX_OF<TArray, T>(array, searchElement, fromIndex) >= 0;
  }
}

// @ts-ignore: decorator
@inline
function INDEX_OF<TArray extends ArrayBufferView, T>(
  array: TArray,
  searchElement: T,
  fromIndex: i32,
): i32 {
  var index: isize = fromIndex;
  var len: isize = array.length;
  if (len == 0 || index >= len) return -1;
  if (index < 0) index = max(len + index, 0);
  var dataStart = array.dataStart;
  while (index < len) {
    if (load<T>(dataStart + (index << alignof<T>())) == searchElement) return <i32>index;
    ++index;
  }
  return -1;
}

// @ts-ignore: decorator
@inline
function LAST_INDEX_OF<TArray extends ArrayBufferView, T>(
  array: TArray,
  searchElement: T,
  fromIndex: i32,
): i32 {
  var index: isize = fromIndex;
  var len: isize = array.length;
  if (len == 0) return -1;
  if (index < 0) index = len + index; // no need to clamp
  else if (index >= len) index = len - 1;
  var dataStart = array.dataStart;
  while (index >= 0) {
    if (load<T>(dataStart + (index << alignof<T>())) == searchElement) return <i32>index;
    --index;
  }
  return -1;
}

// @ts-ignore: decorator
@inline
function SOME<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => bool,
): bool {
  var ptr = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    if (fn(load<T>(ptr + (<usize>i << alignof<T>())), i, array)) return true;
  }
  return false;
}

// @ts-ignore: decorator
@inline
function EVERY<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => bool,
): bool {
  var ptr = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    if (fn(load<T>(ptr + (<usize>i << alignof<T>())), i, array)) continue;
    return false;
  }
  return true;
}

// @ts-ignore: decorator
@inline
function FOREACH<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => void,
): void {
  var ptr = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    fn(load<T>(ptr + (<usize>i << alignof<T>())), i, array);
  }
}

// @ts-ignore: decorator
@inline
function REVERSE<TArray extends ArrayBufferView, T>(array: TArray): TArray {
  var ptr = array.dataStart;
  for (let front: usize = 0, back: usize = array.length - 1; front < back; ++front, --back) {
    let frontPtr = ptr + (front << alignof<T>());
    let backPtr = ptr + (back << alignof<T>());
    let temp = load<T>(frontPtr);
    store<T>(frontPtr, load<T>(backPtr));
    store<T>(backPtr, temp);
  }
  return array;
}

// @ts-ignore: decorator
@inline
function WRAP<TArray extends ArrayBufferView, T>(
  buffer: ArrayBuffer,
  byteOffset: i32 = 0,
  len: i32 = -1
): TArray {
  var byteLength: i32;
  var bufferByteLength = buffer.byteLength;
  const mask: u32 = sizeof<T>() - 1;
  if (i32(<u32>byteOffset > <u32>bufferByteLength) | (byteOffset & mask)) {
    throw new RangeError(E_INDEXOUTOFRANGE);
  }
  if (len < 0) {
    if (len == -1) {
      if (bufferByteLength & mask) {
        throw new RangeError(E_INVALIDLENGTH);
      }
      byteLength = bufferByteLength - byteOffset;
    } else {
      throw new RangeError(E_INVALIDLENGTH);
    }
  } else {
    byteLength = len << alignof<T>();
    if (byteOffset + byteLength > bufferByteLength) {
      throw new RangeError(E_INVALIDLENGTH);
    }
  }
  var out = changetype<TArray>(__new(offsetof<TArray>(), idof<TArray>()));
  store<usize>(changetype<usize>(out), changetype<usize>(buffer), offsetof<TArray>("buffer"));
  __link(changetype<usize>(out), changetype<usize>(buffer), false);
  store<u32>(changetype<usize>(out), byteLength, offsetof<TArray>("byteLength"));
  store<usize>(changetype<usize>(out), changetype<usize>(buffer) + <usize>byteOffset, offsetof<TArray>("dataStart"));
  return out;
}

// @ts-ignore: decorator
@inline
function SET<TArray extends ArrayBufferView, T, UArray extends ArrayBufferView, U>(
  target: TArray,
  source: UArray,
  offset: i32 = 0
): void {
  // need to assert at compile time that U is not a reference or a function
  if (isReference<U>()) {
    ERROR(E_NOTIMPLEMENTED);
  }

  // Uncaught RangeError: offset is out of bounds
  if (offset < 0) throw new RangeError(E_INDEXOUTOFRANGE);
  if (source.length + offset > target.length) throw new RangeError(E_INDEXOUTOFRANGE);

  // if the types align and match, use memory.copy() instead of manual loop
  if (isInteger<T>() == isInteger<U>() && alignof<T>() == alignof<U>() &&
    !(target instanceof Uint8ClampedArray && isSigned<U>())) {
    memory.copy(
      target.dataStart + (<usize>offset << alignof<T>()),
      source.dataStart,
      source.byteLength
    );
  } else {
    let targetDataStart = target.dataStart + (<usize>offset << alignof<T>());
    let sourceDataStart = source.dataStart;
    let count = source.length;
    for (let i = 0; i < count; i++) {
      // if TArray is Uint8ClampedArray, then values must be clamped
      if (target instanceof Uint8ClampedArray) {
        if (isFloat<U>()) {
          let value = load<U>(sourceDataStart + (<usize>i << alignof<U>()));
          store<T>(
            targetDataStart + (<usize>i << alignof<T>()),
            isFinite<U>(value) ? <T>max<U>(0, min<U>(255, value)) : <T>0
          );
        } else {
          let value = load<U>(sourceDataStart + (<usize>i << alignof<U>()));
          if (!isSigned<U>()) {
            store<T>(
              targetDataStart + (<usize>i << alignof<T>()),
              // @ts-ignore: cast to T is valid for numeric types here
              min<U>(255, value)
            );
          } else if (sizeof<T>() <= 4) {
            store<T>(
              targetDataStart + (<usize>i << alignof<T>()),
              // @ts-ignore: cast to T is valid for numeric types here
              ~(<i32>value >> 31) & (((255 - <i32>value) >> 31) | value)
            );
          } else {
            store<T>(
              targetDataStart + (<usize>i << alignof<T>()),
              // @ts-ignore: cast to T is valid for numeric types here
              ~(<i64>value >> 63) & (((255 - <i64>value) >> 63) | value)
            );
          }
        }
        // if U is a float, then casting float to int must include a finite check
      } else if (isFloat<U>() && !isFloat<T>()) {
        let value = load<U>(sourceDataStart + (<usize>i << alignof<U>()));
        // @ts-ignore: cast to T is valid for numeric types here
        store<T>(targetDataStart + (<usize>i << alignof<T>()), isFinite<U>(value) ? <T>value : 0);
      } else if (isFloat<T>() && !isFloat<U>()) {
        // @ts-ignore: In this case the <T> conversion is required
        store<T>(targetDataStart + (<usize>i << alignof<T>()), <T>load<U>(sourceDataStart + (<usize>i << alignof<U>())));
      } else {
        store<T>(targetDataStart + (<usize>i << alignof<T>()), load<U>(sourceDataStart + (<usize>i << alignof<U>())));
      }
    }
  }
}
