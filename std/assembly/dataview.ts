import { BLOCK_MAXSIZE } from "./rt/common";
import { ArrayBuffer } from "./arraybuffer";
import { E_INDEXOUTOFRANGE, E_INVALIDLENGTH } from "./util/error";

// TODO: there is probably a smarter way to check byteOffset for accesses larger than 1 byte

export class DataView {

  readonly buffer: ArrayBuffer;
  @unsafe readonly dataStart: usize;
  readonly byteLength: i32;

  get byteOffset(): i32 {
    return <i32>(this.dataStart - changetype<usize>(this.buffer));
  }

  constructor(
    buffer: ArrayBuffer,
    byteOffset: i32 = 0,
    byteLength: i32 = buffer.byteLength
  ) {
    if (
      i32(<u32>byteLength > <u32>BLOCK_MAXSIZE) |
      i32(<u32>byteOffset + byteLength > <u32>buffer.byteLength)
    ) throw new RangeError(E_INVALIDLENGTH);
    this.buffer = buffer; // links
    var dataStart = changetype<usize>(buffer) + <usize>byteOffset;
    this.dataStart = dataStart;
    this.byteLength = byteLength;
  }

  getFloat32(byteOffset: i32, littleEndian: bool = false): f32 {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 4 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    return littleEndian
      ? load<f32>(this.dataStart + <usize>byteOffset)
      : reinterpret<f32>(bswap<u32>(load<u32>(this.dataStart + <usize>byteOffset)));
  }

  getFloat64(byteOffset: i32, littleEndian: bool = false): f64 {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 8 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    return littleEndian
      ? load<f64>(this.dataStart + <usize>byteOffset)
      : reinterpret<f64>(bswap<u64>(load<u64>(this.dataStart + <usize>byteOffset)));
  }

  getInt8(byteOffset: i32): i8 {
    if (<u32>byteOffset >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<i8>(this.dataStart + <usize>byteOffset);
  }

  getInt16(byteOffset: i32, littleEndian: bool = false): i16 {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 2 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    var result: i16 = load<i16>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<u16>(result);
  }

  getInt32(byteOffset: i32, littleEndian: bool = false): i32 {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 4 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    var result: i32 = load<i32>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<u32>(result);
  }

  getUint8(byteOffset: i32): u8 {
    if (<u32>byteOffset >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return load<u8>(this.dataStart + <usize>byteOffset);
  }

  getUint16(byteOffset: i32, littleEndian: bool = false): u16 {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 2 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    var result: u16 = load<u16>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<u16>(result);
  }

  getUint32(byteOffset: i32, littleEndian: bool = false): u32 {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 4 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    var result: u32 = load<u32>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<u32>(result);
  }

  setFloat32(byteOffset: i32, value: f32, littleEndian: bool = false): void {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 4 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    if (littleEndian) store<f32>(this.dataStart + <usize>byteOffset, value);
    else store<u32>(this.dataStart + <usize>byteOffset, bswap<u32>(reinterpret<u32>(value)));
  }

  setFloat64(byteOffset: i32, value: f64, littleEndian: bool = false): void {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 8 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    if (littleEndian) store<f64>(this.dataStart + <usize>byteOffset, value);
    else store<u64>(this.dataStart + <usize>byteOffset, bswap<u64>(reinterpret<u64>(value)));
  }

  setInt8(byteOffset: i32, value: i8): void {
    if (<u32>byteOffset >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i8>(this.dataStart + <usize>byteOffset, value);
  }

  setInt16(byteOffset: i32, value: i16, littleEndian: bool = false): void {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 2 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i16>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<u16>(value));
  }

  setInt32(byteOffset: i32, value: i32, littleEndian: bool = false): void {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 4 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i32>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<u32>(value));
  }

  setUint8(byteOffset: i32, value: u8): void {
    if (<u32>byteOffset >= <u32>this.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u8>(this.dataStart + <usize>byteOffset, value);
  }

  setUint16(byteOffset: i32, value: u16, littleEndian: bool = false): void {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 2 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u16>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<u16>(value));
  }

  setUint32(byteOffset: i32, value: u32, littleEndian: bool = false): void {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 4 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u32>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<u32>(value));
  }

  // Non-standard additions that make sense in WebAssembly, but won't work in JS:

  getInt64(byteOffset: i32, littleEndian: bool = false): i64 {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 8 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    var result: i64 = load<i64>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<u64>(result);
  }

  getUint64(byteOffset: i32, littleEndian: bool = false): u64 {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 8 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    var result = load<u64>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<u64>(result);
  }

  setInt64(byteOffset: i32, value: i64, littleEndian: bool = false): void {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 8 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    store<i64>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<u64>(value));
  }

  setUint64(byteOffset: i32, value: u64, littleEndian: bool = false): void {
    if (
      (byteOffset >>> 31) | i32(byteOffset + 8 > this.byteLength)
    ) throw new RangeError(E_INDEXOUTOFRANGE);
    store<u64>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<u64>(value));
  }

  toString(): string {
    return "[object DataView]";
  }
}
