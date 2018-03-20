/** @module util *//***/

export function writeI32(value: i32, buffer: Uint8Array, offset: i32): void {
  buffer[offset    ] = value;
  buffer[offset + 1] = value >>> 8;
  buffer[offset + 2] = value >>> 16;
  buffer[offset + 3] = value >>> 24;
}

export function writeI64(value: I64, buffer: Uint8Array, offset: i32): void {
  writeI32(i64_low(value), buffer, offset);
  writeI32(i64_high(value), buffer, offset + 4);
}

export function writeF32(value: f32, buffer: Uint8Array, offset: i32): void {
  writeI32(f32_as_i32(value), buffer, offset);
}

export function writeF64(value: f64, buffer: Uint8Array, offset: i32): void {
  var valueI64 = f64_as_i64(value);
  writeI32(i64_low(valueI64), buffer, offset);
  writeI32(i64_high(valueI64), buffer, offset + 4);
}
