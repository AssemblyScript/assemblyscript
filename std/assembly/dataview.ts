import {
  HEADER_SIZE,
  MAX_BLENGTH
} from "./internal/arraybuffer";

export class DataView {

  constructor(
    readonly buffer: ArrayBuffer,
    readonly byteOffset: i32 = 0,
    readonly byteLength: i32 = i32.MIN_VALUE // FIXME
  ) {
    if (byteLength === i32.MIN_VALUE) byteLength = buffer.byteLength - byteOffset; // FIXME
    if (<u32>byteOffset > <u32>MAX_BLENGTH) throw new RangeError("Invalid byteOffset");
    if (<u32>byteLength > <u32>MAX_BLENGTH) throw new RangeError("Invalid byteLength");
    if (byteOffset + byteLength > buffer.byteLength) throw new RangeError("Invalid length");
  }

  getFloat32(byteOffset: i32, littleEndian: boolean = false): f32 {
    checkOffset(byteOffset, 4, this.byteLength);
    return littleEndian
      ? load<f32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE)
      : reinterpret<f32>(
          bswap<u32>(
            load<u32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE)
          )
        );
  }

  getFloat64(byteOffset: i32, littleEndian: boolean = false): f64 {
    checkOffset(byteOffset, 8, this.byteLength);
    return littleEndian
      ? load<f64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE)
      : reinterpret<f64>(
          bswap(
            load<u64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE)
          )
        );
  }

  getInt8(byteOffset: i32): i8 {
    checkOffset(byteOffset, 1, this.byteLength);
    return load<i8>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
  }

  getInt16(byteOffset: i32, littleEndian: boolean = false): i16 {
    checkOffset(byteOffset, 2, this.byteLength);
    var result: i16 = load<i16>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<i16>(result);
  }

  getInt32(byteOffset: i32, littleEndian: boolean = false): i32 {
    checkOffset(byteOffset, 4, this.byteLength);
    var result = load<i32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<i32>(result);
  }

  getUint8(byteOffset: i32): u8 {
    checkOffset(byteOffset, 1, this.byteLength);
    return load<u8>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
  }

  getUint16(byteOffset: i32, littleEndian: boolean = false): u16 {
    checkOffset(byteOffset, 2, this.byteLength);
    var result: u16 = load<u16>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<u16>(result);
  }

  getUint32(byteOffset: i32, littleEndian: boolean = false): u32 {
    checkOffset(byteOffset, 4, this.byteLength);
    var result = load<u32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap<u32>(result);
  }

  setFloat32(byteOffset: i32, value: f32, littleEndian: boolean = false): void {
    checkOffset(byteOffset, 4, this.byteLength);
    if (littleEndian) {
      store<f32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, value, HEADER_SIZE);
    } else {
      store<u32>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset,
        bswap(
          reinterpret<u32>(value)
        ),
        HEADER_SIZE
      );
    }
  }

  setFloat64(byteOffset: i32, value: f64, littleEndian: boolean = false): void {
    checkOffset(byteOffset, 8, this.byteLength);
    if (littleEndian) {
      store<f64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, value, HEADER_SIZE);
    } else {
      store<u64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset,
        bswap(
          reinterpret<u64>(value)
        ),
        HEADER_SIZE
      );
    }
  }

  setInt8(byteOffset: i32, value: i8): void {
    checkOffset(byteOffset, 1, this.byteLength);
    store<i8>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, value, HEADER_SIZE);
  }

  setInt16(byteOffset: i32, value: i16, littleEndian: boolean = false): void {
    checkOffset(byteOffset, 2, this.byteLength);
    store<i16>(
      changetype<usize>(this.buffer) + this.byteOffset + byteOffset,
      littleEndian ? value : bswap(value),
      HEADER_SIZE
    );
  }

  setInt32(byteOffset: i32, value: i32, littleEndian: boolean = false): void {
    checkOffset(byteOffset, 4, this.byteLength);
    store<i32>(
      changetype<usize>(this.buffer) + this.byteOffset + byteOffset,
      littleEndian ? value : bswap(value),
      HEADER_SIZE
    );
  }

  setUint8(byteOffset: i32, value: u8): void {
    checkOffset(byteOffset, 1, this.byteLength);
    store<u8>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, value, HEADER_SIZE);
  }

  setUint16(byteOffset: i32, value: u16, littleEndian: boolean = false): void {
    checkOffset(byteOffset, 2, this.byteLength);
    store<u16>(
      changetype<usize>(this.buffer) + this.byteOffset + byteOffset,
      littleEndian ? value : bswap(value),
      HEADER_SIZE
    );
  }

  setUint32(byteOffset: i32, value: u32, littleEndian: boolean = false): void {
    checkOffset(byteOffset, 4, this.byteLength);
    store<u32>(
      changetype<usize>(this.buffer) + this.byteOffset + byteOffset,
      littleEndian ? value : bswap(value),
      HEADER_SIZE
    );
  }

  // Non-standard additions that make sense in WebAssembly, but won't work in JS:

  getInt64(byteOffset: i32, littleEndian: boolean = false): i64 {
    checkOffset(byteOffset, 8, this.byteLength);
    var result = load<i64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap(result);
  }

  getUint64(byteOffset: i32, littleEndian: boolean = false): u64 {
    checkOffset(byteOffset, 8, this.byteLength);
    var result = load<u64>(changetype<usize>(this.buffer) + this.byteOffset + byteOffset, HEADER_SIZE);
    return littleEndian ? result : bswap(result);
  }

  setInt64(byteOffset: i32, value: i64, littleEndian: boolean = false): void {
    checkOffset(byteOffset, 8, this.byteLength);
    store<i64>(
      changetype<usize>(this.buffer) + this.byteOffset + byteOffset,
      littleEndian ? value : bswap(value),
      HEADER_SIZE
    );
  }

  setUint64(byteOffset: i32, value: u64, littleEndian: boolean = false): void {
    checkOffset(byteOffset, 8, this.byteLength);
    store<u64>(
      changetype<usize>(this.buffer) + this.byteOffset + byteOffset,
      littleEndian ? value : bswap(value),
      HEADER_SIZE
    );
  }

  toString(): string {
    return "[object DataView]";
  }
}

@inline function checkOffset(byteOffset: i32, n: i32, byteLength: i32): void {
  // n and byteLength must be known to be in bounds
  if (<u32>byteOffset > <u32>MAX_BLENGTH || byteOffset + n > byteLength) throw new Error("Offset out of bounds");
}
