import { HEADER_SIZE } from "./internal/arraybuffer";

export class DataView {
  constructor(
    readonly buffer: ArrayBuffer,
    readonly byteOffset: i32 = 0,
    readonly byteLength: i32 = i32.MIN_VALUE,
  ) {
    if (byteLength === i32.MIN_VALUE) byteLength = buffer.byteLength - byteOffset;

    if (byteOffset < 0) throw new RangeError("byteOffset cannot be negative");
    if (byteLength < 0) throw new RangeError("byteLength cannot be negative");
    if (byteOffset + byteLength > buffer.byteLength) throw new RangeError("Length out of range of buffer");
  }

  @inline
  getFloat32(byteOffset: i32, littleEndian: boolean = false): f32 {
    var result: u32 = load<u32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return reinterpret<f32>(littleEndian ? result : bswap<u32>(result));
  }

  @inline
  getFloat64(byteOffset: i32, littleEndian: boolean = false): f64 {
    var result: u64 = load<u64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return reinterpret<f64>(littleEndian ? result : bswap<u64>(result));
  }

  @inline
  getInt8(byteOffset: i32): i8 {
    return load<i8>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
  }

  @inline
  getInt16(byteOffset: i32, littleEndian: boolean = false): i16 {
    var result: i16 = load<i16>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<i16>(result);
  }

  @inline
  getInt32(byteOffset: i32, littleEndian: boolean = false): i32 {
    var result: i32 = load<i32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<i32>(result);
  }

  @inline
  getUint8(byteOffset: i32): u8 {
    return load<u8>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
  }

  @inline
  getUint16(byteOffset: i32, littleEndian: boolean = false): u16 {
    var result: u16 = load<u16>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<u16>(result);
  }

  @inline
  getUint32(byteOffset: i32, littleEndian: boolean = false): u32 {
    var result: u32 = load<u32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<u32>(result);
  }

  @inline
  setFloat32(byteOffset: i32, value: f32, littleEndian: boolean = false): void {
    var input: f32 = littleEndian ? value : reinterpret<f32>(bswap<u32>(reinterpret<u32>(value)));
    store<f32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, input, HEADER_SIZE);
  }

  @inline
  setFloat64(byteOffset: i32, value: f64, littleEndian: boolean = false): void {
    var input: f64 = littleEndian ? value : reinterpret<f64>(bswap<u64>(reinterpret<u64>(value)));
    store<f64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, input, HEADER_SIZE);
  }

  @inline
  setInt8(byteOffset: i32, value: i8): void {
    store<i8>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, value, HEADER_SIZE);
  }

  @inline
  setInt16(byteOffset: i32, value: i16, littleEndian: boolean = false): void {
    store<i16>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, littleEndian ? value : bswap<i16>(value), HEADER_SIZE);
  }

  @inline
  setInt32(byteOffset: i32, value: i32, littleEndian: boolean = false): void {
    store<i32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, littleEndian ? value : bswap<i32>(value), HEADER_SIZE);
  }

  @inline
  setUint8(byteOffset: i32, value: u8): void {
    store<u8>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, value, HEADER_SIZE);
  }

  @inline
  setUint16(byteOffset: i32, value: u16, littleEndian: boolean = false): void {
    store<u16>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, littleEndian ? value : bswap<u16>(value), HEADER_SIZE);
  }

  @inline
  setUint32(byteOffset: i32, value: u32, littleEndian: boolean = false): void {
    store<u32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, littleEndian ? value : bswap<u32>(value), HEADER_SIZE);
  }

  /**
   * Non-standard additions that makes sense in WebAssembly, but won't work in JS
   */

  @inline
  getInt64(byteOffset: i32, littleEndian: boolean = false): i64 {
    var result: i64 = load<i64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<i64>(result);
  }

  @inline
  getUint64(byteOffset: i32, littleEndian: boolean = false): u64 {
    var result: u64 = load<u64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<u64>(result);
  }

  @inline
  setInt64(byteOffset: i32, value: i64, littleEndian: boolean = false): void {
    store<i64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, littleEndian ? value : bswap<i64>(value), HEADER_SIZE);
  }

  @inline
  setUint64(byteOffset: i32, value: u64, littleEndian: boolean = false): void {
    store<u64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, littleEndian ? value : bswap<u64>(value), HEADER_SIZE);
  }
}
