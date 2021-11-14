/**
 * @fileoverview Various binary reading and writing utility.
 * @license Apache-2.0
 */

/** Reads an 8-bit integer from the specified buffer. */
export function readI8(buffer: Uint8Array, offset: i32): i32 {
  return buffer[offset];
}

/** Writes an 8-bit integer to the specified buffer. */
export function writeI8(value: i32, buffer: Uint8Array, offset: i32): void {
  buffer[offset] = value;
}

/** Reads a 16-bit integer from the specified buffer. */
export function readI16(buffer: Uint8Array, offset: i32): i32 {
  return i32(buffer[offset    ])
       | i32(buffer[offset + 1]) << 8;
}

/** Writes a 16-bit integer to the specified buffer. */
export function writeI16(value: i32, buffer: Uint8Array, offset: i32): void {
  buffer[offset    ] = value;
  buffer[offset + 1] = value >>> 8;
}

/** Reads a 32-bit integer from the specified buffer. */
export function readI32(buffer: Uint8Array, offset: i32): i32 {
  return i32(buffer[offset    ])
       | i32(buffer[offset + 1]) << 8
       | i32(buffer[offset + 2]) << 16
       | i32(buffer[offset + 3]) << 24;
}

/** Writes a 32-bit integer to the specified buffer. */
export function writeI32(value: i32, buffer: Uint8Array, offset: i32): void {
  buffer[offset    ] = value;
  buffer[offset + 1] = value >>> 8;
  buffer[offset + 2] = value >>> 16;
  buffer[offset + 3] = value >>> 24;
}

/** Writes a 32-bit integer as a 64-bit integer to the specified buffer. */
export function writeI32AsI64(value: i32, buffer: Uint8Array, offset: i32, unsigned: bool = false): void {
  writeI32(value, buffer, offset);
  writeI32(unsigned || value >= 0 ? 0 : -1, buffer, offset + 4);
}

/** Reads a 64-bit integer from the specified buffer. */
export function readI64(buffer: Uint8Array, offset: i32): i64 {
  var lo = readI32(buffer, offset);
  var hi = readI32(buffer, offset + 4);
  return i64_new(lo, hi);
}

/** Writes a 64-bit integer to the specified buffer. */
export function writeI64(value: i64, buffer: Uint8Array, offset: i32): void {
  writeI32(i64_low(value), buffer, offset);
  writeI32(i64_high(value), buffer, offset + 4);
}

/** Writes a 64-bit integer as a 32-bit integer to the specified buffer. */
export function writeI64AsI32(value: i64, buffer: Uint8Array, offset: i32, unsigned: bool = false): void {
  assert(unsigned ? i64_is_u32(value) : i64_is_i32(value));
  writeI32(i64_low(value), buffer, offset);
}

/** Reads a 32-bit float from the specified buffer. */
export function readF32(buffer: Uint8Array, offset: i32): f32 {
  return i32_as_f32(readI32(buffer, offset));
}

/** Writes a 32-bit float to the specified buffer. */
export function writeF32(value: f32, buffer: Uint8Array, offset: i32): void {
  writeI32(f32_as_i32(value), buffer, offset);
}

/** Reads a 64-bit float from the specified buffer. */
export function readF64(buffer: Uint8Array, offset: i32): f64 {
  return i64_as_f64(readI64(buffer, offset));
}

/** Writes a 64-bit float to the specified buffer. */
export function writeF64(value: f64, buffer: Uint8Array, offset: i32): void {
  var valueI64 = f64_as_i64(value);
  writeI32(i64_low(valueI64), buffer, offset);
  writeI32(i64_high(valueI64), buffer, offset + 4);
}
