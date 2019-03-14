import { ArrayBuffer } from "./arraybuffer";
import { ArrayBufferView } from "./runtime";

export class DataView {

  private data: ArrayBuffer;
  private dataStart: usize;
  private dataEnd: usize;

  constructor(
    buffer: ArrayBuffer,
    byteOffset: i32 = 0,
    byteLength: i32 = i32.MIN_VALUE // FIXME
  ) {
    if (byteLength === i32.MIN_VALUE) byteLength = buffer.byteLength - byteOffset; // FIXME
    if (<u32>byteLength > <u32>ArrayBufferView.MAX_BYTELENGTH) throw new RangeError("Invalid byteLength");
    if (<u32>byteOffset + byteLength > <u32>buffer.byteLength) throw new RangeError("Invalid length");
    this.data = buffer; // links
    var dataStart = changetype<usize>(buffer) + <usize>byteOffset;
    this.dataStart = dataStart;
    this.dataEnd = dataStart + <usize>byteLength;
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get byteOffset(): i32 {
    return <i32>(this.dataStart - changetype<usize>(this.data));
  }

  get byteLength(): i32 {
    return <i32>(this.dataEnd - this.dataStart);
  }

  getFloat32(byteOffset: i32, littleEndian: boolean = false): f32 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 4 > this.dataEnd) throw new Error("Offset out of bounds");
    return littleEndian
      ? load<f32>(dataOffset)
      : reinterpret<f32>(
          bswap<u32>(
            load<u32>(dataOffset)
          )
        );
  }

  getFloat64(byteOffset: i32, littleEndian: boolean = false): f64 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 4 > this.dataEnd) throw new Error("Offset out of bounds");
    return littleEndian
      ? load<f64>(dataOffset)
      : reinterpret<f64>(
          bswap<u64>(
            load<u64>(dataOffset)
          )
        );
  }

  getInt8(byteOffset: i32): i8 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset >= this.dataEnd) throw new Error("Offset out of bounds");
    return load<i8>(dataOffset);
  }

  getInt16(byteOffset: i32, littleEndian: boolean = false): i16 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 2 > this.dataEnd) throw new Error("Offset out of bounds");
    var result: i16 = load<i16>(dataOffset);
    return littleEndian ? result : bswap<i16>(result);
  }

  getInt32(byteOffset: i32, littleEndian: boolean = false): i32 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 4 > this.dataEnd) throw new Error("Offset out of bounds");
    var result: i32 = load<i32>(dataOffset);
    return littleEndian ? result : bswap<i32>(result);
  }

  getUint8(byteOffset: i32): u8 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset >= this.dataEnd) throw new Error("Offset out of bounds");
    return load<u8>(dataOffset);
  }

  getUint16(byteOffset: i32, littleEndian: boolean = false): u16 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 2 > this.dataEnd) throw new Error("Offset out of bounds");
    var result: u16 = load<u16>(dataOffset);
    return littleEndian ? result : bswap<u16>(result);
  }

  getUint32(byteOffset: i32, littleEndian: boolean = false): u32 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 2 > this.dataEnd) throw new Error("Offset out of bounds");
    var result: u32 = load<u32>(dataOffset);
    return littleEndian ? result : bswap<u32>(result);
  }

  setFloat32(byteOffset: i32, value: f32, littleEndian: boolean = false): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 4 > this.dataEnd) throw new Error("Offset out of bounds");
    if (littleEndian) store<f32>(dataOffset, value);
    else store<u32>(dataOffset, bswap(reinterpret<u32>(value)));
  }

  setFloat64(byteOffset: i32, value: f64, littleEndian: boolean = false): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 4 > this.dataEnd) throw new Error("Offset out of bounds");
    if (littleEndian) store<f64>(dataOffset, value);
    else store<u64>(dataOffset, bswap(reinterpret<u64>(value)));
  }

  setInt8(byteOffset: i32, value: i8): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset >= this.dataEnd) throw new Error("Offset out of bounds");
    store<i8>(dataOffset, value);
  }

  setInt16(byteOffset: i32, value: i16, littleEndian: boolean = false): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 2 > this.dataEnd) throw new Error("Offset out of bounds");
    store<i16>(dataOffset, littleEndian ? value : bswap(value));
  }

  setInt32(byteOffset: i32, value: i32, littleEndian: boolean = false): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 4 > this.dataEnd) throw new Error("Offset out of bounds");
    store<i32>(dataOffset, littleEndian ? value : bswap(value));
  }

  setUint8(byteOffset: i32, value: u8): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset >= this.dataEnd) throw new Error("Offset out of bounds");
    store<u8>(dataOffset, value);
  }

  setUint16(byteOffset: i32, value: u16, littleEndian: boolean = false): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 2 > this.dataEnd) throw new Error("Offset out of bounds");
    store<u16>(dataOffset, littleEndian ? value : bswap(value));
  }

  setUint32(byteOffset: i32, value: u32, littleEndian: boolean = false): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 4 > this.dataEnd) throw new Error("Offset out of bounds");
    store<u32>(dataOffset, littleEndian ? value : bswap(value));
  }

  // Non-standard additions that make sense in WebAssembly, but won't work in JS:

  getInt64(byteOffset: i32, littleEndian: boolean = false): i64 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 8 > this.dataEnd) throw new Error("Offset out of bounds");
    var result: i64 = load<i64>(dataOffset);
    return littleEndian ? result : bswap(result);
  }

  getUint64(byteOffset: i32, littleEndian: boolean = false): u64 {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 8 > this.dataEnd) throw new Error("Offset out of bounds");
    var result = load<u64>(dataOffset);
    return littleEndian ? result : bswap(result);
  }

  setInt64(byteOffset: i32, value: i64, littleEndian: boolean = false): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 8 > this.dataEnd) throw new Error("Offset out of bounds");
    store<i64>(dataOffset, littleEndian ? value : bswap(value));
  }

  setUint64(byteOffset: i32, value: u64, littleEndian: boolean = false): void {
    var dataStart = this.dataStart;
    var dataOffset = dataStart + <usize>byteOffset;
    if (dataOffset + 8 > this.dataEnd) throw new Error("Offset out of bounds");
    store<u64>(dataOffset, littleEndian ? value : bswap(value));
  }

  toString(): string {
    return "[object DataView]";
  }
}
