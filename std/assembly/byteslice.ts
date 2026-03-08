/// <reference path="./rt/index.d.ts" />

import { Pointer } from "./pointer";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH } from "./util/error";

// Zero-alloc memory view: pointer + length with bounds-checked endian-aware reads/writes.
// Unlike DataView, does not own an ArrayBuffer — the viewed memory is unowned/raw.

@final
export class ByteSlice {
  readonly ptr: usize;
  readonly length: i32;

  constructor(ptr: usize, length: i32) {
    if (length < 0) throw new RangeError(E_INVALIDLENGTH);
    this.ptr = ptr;
    this.length = length;
  }

  // --- Unsigned reads ---

  @inline getU8(offset: i32): u8 {
    if (<u32>offset >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u8>(this.ptr + <usize>offset);
  }

  @inline getU16(offset: i32, be: bool = true): u16 {
    if ((offset >>> 31) | i32(offset + 2 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    let v = load<u16>(this.ptr + <usize>offset);
    return be ? bswap<u16>(v) : v;
  }

  @inline getU32(offset: i32, be: bool = true): u32 {
    if ((offset >>> 31) | i32(offset + 4 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    let v = load<u32>(this.ptr + <usize>offset);
    return be ? bswap<u32>(v) : v;
  }

  @inline getU64(offset: i32, be: bool = true): u64 {
    if ((offset >>> 31) | i32(offset + 8 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    let v = load<u64>(this.ptr + <usize>offset);
    return be ? bswap<u64>(v) : v;
  }

  // --- Signed reads ---

  @inline getI8(offset: i32): i8 {
    if (<u32>offset >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i8>(this.ptr + <usize>offset);
  }

  @inline getI16(offset: i32, be: bool = true): i16 {
    if ((offset >>> 31) | i32(offset + 2 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    let v = load<i16>(this.ptr + <usize>offset);
    return be ? <i16>bswap<u16>(<u16>v) : v;
  }

  @inline getI32(offset: i32, be: bool = true): i32 {
    if ((offset >>> 31) | i32(offset + 4 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    let v = load<i32>(this.ptr + <usize>offset);
    return be ? <i32>bswap<u32>(<u32>v) : v;
  }

  @inline getI64(offset: i32, be: bool = true): i64 {
    if ((offset >>> 31) | i32(offset + 8 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    let v = load<i64>(this.ptr + <usize>offset);
    return be ? <i64>bswap<u64>(<u64>v) : v;
  }

  // --- Unsigned writes ---

  @inline setU8(offset: i32, value: u8): void {
    if (<u32>offset >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u8>(this.ptr + <usize>offset, value);
  }

  @inline setU16(offset: i32, value: u16, be: bool = true): void {
    if ((offset >>> 31) | i32(offset + 2 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u16>(this.ptr + <usize>offset, be ? bswap<u16>(value) : value);
  }

  @inline setU32(offset: i32, value: u32, be: bool = true): void {
    if ((offset >>> 31) | i32(offset + 4 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u32>(this.ptr + <usize>offset, be ? bswap<u32>(value) : value);
  }

  @inline setU64(offset: i32, value: u64, be: bool = true): void {
    if ((offset >>> 31) | i32(offset + 8 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u64>(this.ptr + <usize>offset, be ? bswap<u64>(value) : value);
  }

  // --- Signed writes ---

  @inline setI8(offset: i32, value: i8): void {
    if (<u32>offset >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i8>(this.ptr + <usize>offset, value);
  }

  @inline setI16(offset: i32, value: i16, be: bool = true): void {
    if ((offset >>> 31) | i32(offset + 2 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i16>(this.ptr + <usize>offset, be ? <i16>bswap<u16>(<u16>value) : value);
  }

  @inline setI32(offset: i32, value: i32, be: bool = true): void {
    if ((offset >>> 31) | i32(offset + 4 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i32>(this.ptr + <usize>offset, be ? <i32>bswap<u32>(<u32>value) : value);
  }

  @inline setI64(offset: i32, value: i64, be: bool = true): void {
    if ((offset >>> 31) | i32(offset + 8 > this.length)) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i64>(this.ptr + <usize>offset, be ? <i64>bswap<u64>(<u64>value) : value);
  }

  // --- Byte indexing operators ---

  @operator("[]") private __get(index: i32): u8 {
    if (<u32>index >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u8>(this.ptr + <usize>index);
  }

  @operator("[]=") private __set(index: i32, value: u8): void {
    if (<u32>index >= <u32>this.length) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u8>(this.ptr + <usize>index, value);
  }

  // --- Bulk operations ---

  slice(start: i32, end: i32 = this.length): ByteSlice {
    let len = this.length;
    if (start < 0) start = max(len + start, 0);
    if (end < 0) end = max(len + end, 0);
    start = min(start, len);
    end = min(end, len);
    let newLen = max(end - start, 0);
    return new ByteSlice(this.ptr + <usize>start, newLen);
  }

  copyTo(dst: ByteSlice, dstOff: i32 = 0, srcOff: i32 = 0, count: i32 = this.length - srcOff): void {
    if (
      (count >>> 31) |
      (srcOff >>> 31) | i32(srcOff + count > this.length) |
      (dstOff >>> 31) | i32(dstOff + count > dst.length)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    memory.copy(dst.ptr + <usize>dstOff, this.ptr + <usize>srcOff, <usize>count);
  }

  fill(value: u8, start: i32 = 0, end: i32 = this.length): void {
    let len = this.length;
    if (start < 0) start = max(len + start, 0);
    if (end < 0) end = max(len + end, 0);
    start = min(start, len);
    end = min(end, len);
    if (start < end) {
      memory.fill(this.ptr + <usize>start, value, <usize>(end - start));
    }
  }

  equals(other: ByteSlice): bool {
    if (this.length != other.length) return false;
    if (this.length == 0) return true;
    return memory.compare(this.ptr, other.ptr, <usize>this.length) == 0;
  }

  toPointer<T>(): Pointer<T> {
    return new Pointer<T>(this.ptr);
  }

  toString(): string {
    return "[object ByteSlice]";
  }

  // RT integration — ptr is raw usize, not managed

  @unsafe private __visit(_cookie: u32): void {
    // no-op: ptr is raw, not a managed reference
  }
}
