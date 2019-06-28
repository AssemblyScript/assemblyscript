import { COMPARATOR, SORT as SORT_IMPL } from "./util/sort";
import { E_INDEXOUTOFRANGE } from "./util/error";
import { idof } from "./builtins";
import { ArrayBufferView } from "./arraybuffer";

export class Int8Array extends ArrayBufferView {
  [key: number]: i8;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i8>();

  constructor(length: i32) {
    super(length, alignof<i8>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength;
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): i8 {
    if (<u32>index >= <u32>this.dataLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i8>(this.dataStart + <usize>index);
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: native<i8>): void {
    if (<u32>index >= <u32>this.dataLength) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i8>(this.dataStart + <usize>index, value);
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
    return SORT<Int8Array, i8>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int8Array {
    return SUBARRAY<Int8Array, i8>(this, begin, end);
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

  findIndex(fn: (value: i8, index: i32, self: Int8Array) => bool): i32 {
    return FIND_INDEX<Int8Array, i8>(this, fn);
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
}

export class Uint8Array extends ArrayBufferView {
  [key: number]: u8;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  constructor(length: i32) {
    super(length, alignof<u8>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength;
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): u8 {
    if (<u32>index >= <u32>this.dataLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u8>(this.dataStart + <usize>index);
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: native<u8>): void {
    if (<u32>index >= <u32>this.dataLength) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u8>(this.dataStart + <usize>index, value);
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
    return SORT<Uint8Array, u8>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint8Array {
    return SUBARRAY<Uint8Array, u8>(this, begin, end);
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

  findIndex(fn: (value: u8, index: i32, self: Uint8Array) => bool): i32 {
    return FIND_INDEX<Uint8Array, u8>(this, fn);
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
}

export class Uint8ClampedArray extends ArrayBufferView {
  [key: number]: u8;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u8>();

  constructor(length: i32) {
    super(length, alignof<u8>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength;
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): u8 {
    if (<u32>index >= <u32>this.dataLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u8>(this.dataStart + <usize>index);
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: native<u8>): void {
    if (<u32>index >= <u32>this.dataLength) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u8>(this.dataStart + <usize>index, ~(<i32>value >> 31) & (((255 - value) >> 31) | value));
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

  sort(fn: (a: u8, b: u8) => i32 = COMPARATOR<u8>()): Uint8ClampedArray {
    return SORT<Uint8ClampedArray, u8>(this, fn);
  }

  subarray(start: i32 = 0, end: i32 = 0x7fffffff): Uint8ClampedArray {
    return SUBARRAY<Uint8ClampedArray, u8>(this, start, end);
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

  findIndex(fn: (value: u8, index: i32, self: Uint8ClampedArray) => bool): i32 {
    return FIND_INDEX<Uint8ClampedArray, u8>(this, fn);
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
}

export class Int16Array extends ArrayBufferView {
  [key: number]: i16;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i16>();

  constructor(length: i32) {
    super(length, alignof<i16>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength >>> alignof<i16>();
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): i16 {
    if (<u32>index >= <u32>this.dataLength >>> alignof<i16>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i16>(this.dataStart + (<usize>index << alignof<i16>()));
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: native<i16>): void {
    if (<u32>index >= <u32>this.dataLength >>> alignof<i16>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i16>(this.dataStart + (<usize>index << alignof<i16>()), value);
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
    return SORT<Int16Array, i16>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int16Array {
    return SUBARRAY<Int16Array, i16>(this, begin, end);
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

  findIndex(fn: (value: i16, index: i32, self: Int16Array) => bool): i32 {
    return FIND_INDEX<Int16Array, i16>(this, fn);
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
}

export class Uint16Array extends ArrayBufferView {
  [key: number]: u16;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u16>();

  constructor(length: i32) {
    super(length, alignof<u16>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength >>> alignof<u16>();
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): u16 {
    if (<u32>index >= <u32>this.dataLength >>> alignof<u16>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u16>(this.dataStart + (<usize>index << alignof<u16>()));
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: native<u16>): void {
    if (<u32>index >= <u32>this.dataLength >>> alignof<u16>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u16>(this.dataStart + (<usize>index << alignof<u16>()), value);
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
    return SORT<Uint16Array, u16>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint16Array {
    return SUBARRAY<Uint16Array, u16>(this, begin, end);
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

  findIndex(fn: (value: u16, index: i32, self: Uint16Array) => bool): i32 {
    return FIND_INDEX<Uint16Array, u16>(this, fn);
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
}

export class Int32Array extends ArrayBufferView {
  [key: number]: i32;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i32>();

  constructor(length: i32) {
    super(length, alignof<i32>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength >>> alignof<i32>();
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): i32 {
    if (<u32>index >= <u32>this.dataLength >>> alignof<i32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i32>(this.dataStart + (<usize>index << alignof<i32>()));
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: i32): void {
    if (<u32>index >= <u32>this.dataLength >>> alignof<i32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i32>(this.dataStart + (<usize>index << alignof<i32>()), value);
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
    return SORT<Int32Array, i32>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int32Array {
    return SUBARRAY<Int32Array, i32>(this, begin, end);
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

  findIndex(fn: (value: i32, index: i32, self: Int32Array) => bool): i32 {
    return FIND_INDEX<Int32Array, i32>(this, fn);
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
}

export class Uint32Array extends ArrayBufferView {
  [key: number]: u32;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u32>();

  constructor(length: i32) {
    super(length, alignof<u32>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength >>> alignof<u32>();
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): u32 {
    if (<u32>index >= <u32>this.dataLength >>> alignof<u32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u32>(this.dataStart + (<usize>index << alignof<u32>()));
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: u32): void {
    if (<u32>index >= <u32>this.dataLength >>> alignof<u32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u32>(this.dataStart + (<usize>index << alignof<u32>()), value);
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
    return SORT<Uint32Array, u32>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint32Array {
    return SUBARRAY<Uint32Array, u32>(this, begin, end);
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

  findIndex(fn: (value: u32, index: i32, self: Uint32Array) => bool): i32 {
    return FIND_INDEX<Uint32Array, u32>(this, fn);
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
}

export class Int64Array extends ArrayBufferView {
  [key: number]: i64;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<i64>();

  constructor(length: i32) {
    super(length, alignof<i64>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength >>> alignof<i64>();
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): i64 {
    if (<u32>index >= <u32>this.dataLength >>> alignof<i64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i64>(this.dataStart + (<usize>index << alignof<i64>()));
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: i64): void {
    if (<u32>index >= <u32>this.dataLength >>> alignof<i64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i64>(this.dataStart + (<usize>index << alignof<i64>()), value);
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
    return SORT<Int64Array, i64>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Int64Array {
    return SUBARRAY<Int64Array, i64>(this, begin, end);
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

  findIndex(fn: (value: i64, index: i32, self: Int64Array) => bool): i32 {
    return FIND_INDEX<Int64Array, i64>(this, fn);
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
}

export class Uint64Array extends ArrayBufferView {
  [key: number]: u64;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<u64>();

  constructor(length: i32) {
    super(length, alignof<u64>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength >>> alignof<u64>();
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): u64 {
    if (<u32>index >= <u32>this.dataLength >>> alignof<u64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u64>(this.dataStart + (<usize>index << alignof<u64>()));
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: u64): void {
    if (<u32>index >= <u32>this.dataLength >>> alignof<u64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u64>(this.dataStart + (<usize>index << alignof<u64>()), value);
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
    return SORT<Uint64Array, u64>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Uint64Array {
    return SUBARRAY<Uint64Array, u64>(this, begin, end);
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

  findIndex(fn: (value: u64, index: i32, self: Uint64Array) => bool): i32 {
    return FIND_INDEX<Uint64Array, u64>(this, fn);
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
}

export class Float32Array extends ArrayBufferView {
  [key: number]: f32;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f32>();

  constructor(length: i32) {
    super(length, alignof<f32>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength >>> alignof<f32>();
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): f32 {
    if (<u32>index >= <u32>this.dataLength >>> alignof<f32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<f32>(this.dataStart + (<usize>index << alignof<f32>()));
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: f32): void {
    if (<u32>index >= <u32>this.dataLength >>> alignof<f32>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<f32>(this.dataStart + (<usize>index << alignof<f32>()), value);
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
    return SORT<Float32Array, f32>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Float32Array {
    return SUBARRAY<Float32Array, f32>(this, begin, end);
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

  findIndex(fn: (value: f32, index: i32, self: Float32Array) => bool): i32 {
    return FIND_INDEX<Float32Array, f32>(this, fn);
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
}

export class Float64Array extends ArrayBufferView {
  [key: number]: f64;

  // @ts-ignore: decorator
  @lazy
  static readonly BYTES_PER_ELEMENT: usize = sizeof<f64>();

  constructor(length: i32) {
    super(length, alignof<f64>());
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get length(): i32 {
    return this.byteLength >>> alignof<f64>();
  }

  @operator("[]") // unchecked is built-in
  private __get(index: i32): f64 {
    if (<u32>index >= <u32>this.dataLength >>> alignof<f64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<f64>(this.dataStart + (<usize>index << alignof<f64>()));
  }

  @operator("[]=") // unchecked is built-in
  private __set(index: i32, value: f64): void {
    if (<u32>index >= <u32>this.dataLength >>> alignof<f64>()) throw new RangeError(E_INDEXOUTOFRANGE);
    store<f64>(this.dataStart + (<usize>index << alignof<f64>()), value);
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
    return SORT<Float64Array, f64>(this, comparator);
  }

  subarray(begin: i32 = 0, end: i32 = 0x7fffffff): Float64Array {
    return SUBARRAY<Float64Array, f64>(this, begin, end);
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

  findIndex(fn: (value: f64, index: i32, self: Float64Array) => bool): i32 {
    return FIND_INDEX<Float64Array, f64>(this, fn);
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
}

// @ts-ignore: decorator
@inline
function FILL<TArray extends ArrayBufferView, T extends number>(
  array: TArray,
  value: native<T>,
  start: i32,
  end: i32
): TArray {
  var dataStart = array.dataStart;
  var length = array.length;
  start = start < 0 ? max(length + start, 0) : min(start, length);
  end   = end   < 0 ? max(length + end,   0) : min(end,   length);
  if (sizeof<T>() == 1) {
    if (start < end) memory.fill(dataStart + <usize>start, <u8>value, <usize>(end - start));
  } else {
    for (; start < end; ++start) {
      store<T>(dataStart + (<usize>start << alignof<T>()), value);
    }
  }
  return array;
}

// @ts-ignore: decorator
@inline
function SORT<TArray extends ArrayBufferView, T>(
  array: TArray,
  comparator: (a: T, b: T) => i32
): TArray {
  var length = array.length;
  if (length <= 1) return array;
  var base = array.dataStart;
  if (length == 2) {
    let a: T = load<T>(base, sizeof<T>()); // a = arr[1]
    let b: T = load<T>(base); // b = arr[0]
    if (comparator(a, b) < 0) {
      store<T>(base, b, sizeof<T>()); // arr[1] = b
      store<T>(base, a); // arr[0] = a
    }
    return array;
  }
  SORT_IMPL<T>(base, length, comparator);
  return array;
}

// @ts-ignore: decorator
@inline
function SUBARRAY<TArray extends ArrayBufferView, T>(
  array: TArray,
  begin: i32,
  end: i32
): TArray {
  var len = <i32>array.length;
  begin = begin < 0 ? max(len + begin, 0) : min(begin, len);
  end   = end   < 0 ? max(len + end,   0) : min(end,   len);
  end   = max(end, begin);
  var out = changetype<TArray>(__alloc(offsetof<TArray>(), idof<TArray>())); // retains
  out.data = array.data; // retains
  out.dataStart = array.dataStart + (<usize>begin << alignof<T>());
  out.dataLength = (end - begin) << alignof<T>();
  return out;
}

// @ts-ignore: decorator
@inline
function REDUCE<TArray extends ArrayBufferView, T, TRet>(
  array: TArray,
  fn: (accumulator: TRet, value: T, index: i32, array: TArray) => TRet,
  initialValue: TRet
): TRet {
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    initialValue = fn(initialValue, load<T>(dataStart + (<usize>i << alignof<T>())), i, array);
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
  var dataStart = array.dataStart;
  for (let i = array.length - 1; i >= 0; i--) {
    initialValue = fn(initialValue, load<T>(dataStart + (<usize>i << alignof<T>())), i, array);
  }
  return initialValue;
}

// @ts-ignore: decorator
@inline
function MAP<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, self: TArray) => T,
): TArray {
  var length = array.length;
  var dataStart = array.dataStart;
  var out = instantiate<TArray>(length);
  var outDataStart = out.dataStart;
  for (let i = 0; i < length; i++) {
    store<T>(
      outDataStart + (<usize>i << alignof<T>()),
      fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array)
    );
  }
  return out;
}

// @ts-ignore: decorator
@inline
function FIND_INDEX<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => bool,
): i32 {
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    if (fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array)) return i;
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
  return INDEX_OF<TArray, T>(array, searchElement, fromIndex) >= 0;
}

// @ts-ignore: decorator
@inline
function INDEX_OF<TArray extends ArrayBufferView, T>(
  array: TArray,
  searchElement: T,
  fromIndex: i32,
): i32 {
  var index: isize = fromIndex;
  var length: isize = array.length;
  if (length == 0 || index >= length) return -1;
  if (index < 0) index = max(length + index, 0);
  var dataStart = array.dataStart;
  while (index < length) {
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
  var length: isize = array.length;
  if (length == 0) return -1;
  if (index < 0) index = length + index; // no need to clamp
  else if (index >= length) index = length - 1;
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
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    if (fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array)) return true;
  }
  return false;
}

// @ts-ignore: decorator
@inline
function EVERY<TArray extends ArrayBufferView, T>(
  array: TArray,
  fn: (value: T, index: i32, array: TArray) => bool,
): bool {
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    if (fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array)) continue;
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
  var dataStart = array.dataStart;
  for (let i = 0, k = array.length; i < k; i++) {
    fn(load<T>(dataStart + (<usize>i << alignof<T>())), i, array);
  }
}

// @ts-ignore: decorator
@inline
function REVERSE<TArray extends ArrayBufferView, T>(array: TArray): TArray {
  var dataStart = array.dataStart;
  for (let front: usize = 0, back: usize = array.length - 1; front < back; ++front, --back) {
    let frontPtr = dataStart + (front << alignof<T>());
    let backPtr = dataStart + (back << alignof<T>());
    let temp = load<T>(frontPtr);
    store<T>(frontPtr, load<T>(backPtr));
    store<T>(backPtr, temp);
  }
  return array;
}
