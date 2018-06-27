const enum Token {
  ZERO = 0x00,
  MAX = 0xEF,
  NULL = 0xf0,
  TRUE = 0xf1,
  FALSE = 0xf2,
  EOBJECT = 0xf3,
  EARRAY = 0xf4,
  ESTRING = 0xf5,
  OBJECT = 0xf6,
  ARRAY = 0xf7,
  INTEGER = 0xf8,
  LONG = 0xf9,
  FLOAT = 0xfa,
  DOUBLE = 0xfb,
  STRING = 0xfc,
  STRING_ADD = 0xfd,
  STRING_GET = 0xfe,
  BINARY = 0xff
}

export declare function onNull(): void;
export declare function onTrue(): void;
export declare function onFalse(): void;
export declare function onEObject(): void;
export declare function onEArray(): void;
export declare function onEString(): void;
export declare function onObject(size: u32): void;
export declare function onArray(size: u32): void;
export declare function onInteger(value: i32): void;
export declare function onLong(valueLow: i32, valueHigh: i32): void;
export declare function onFloat(value: f32): void;
export declare function onDouble(value: f64): void;
export declare function onString(offset: usize, length: u32): void;
export declare function onBinary(offset: usize, length: u32): void;

var offset: usize = 0;

export function decode(length: usize): void {
  offset = 0;
  while (offset < length) decodeValue();
  if (offset != length) unreachable();
}

function decodeValue(): void {
  var token: u32 = load<u8>(offset++);
  var size: u32;
  var long: u64;
  switch (token) {
    case Token.NULL: {
      onNull();
      break;
    }
    case Token.TRUE: {
      onTrue();
      break;
    }
    case Token.FALSE: {
      onFalse();
      break;
    }
    case Token.EOBJECT: {
      onEObject();
      break;
    }
    case Token.EARRAY: {
      onEArray();
      break;
    }
    case Token.ESTRING: {
      onEString();
      break;
    }
    case Token.OBJECT: {
      onObject(size = readVarint32());
      while (size--) {
        decodeValue();
        decodeValue();
      }
      break;
    }
    case Token.ARRAY: {
      onArray(size = readVarint32());
      while (size--) decodeValue();
      break;
    }
    case Token.INTEGER: {
      onInteger(((size = readVarint32()) >> 1) ^ -(size & 1));
      break;
    }
    case Token.LONG: {
      long = ((long = readVarint64()) >> 1) ^ -(long & 1);
      onLong(<i32>long, <i32>(long >>> 32));
      break;
    }
    case Token.FLOAT: {
      onFloat(load<f32>(offset));
      offset += 4;
      break;
    }
    case Token.DOUBLE: {
      onDouble(load<f64>(offset));
      offset += 8;
      break;
    }
    case Token.STRING: {
      size = readVarint32();
      onString(offset, size);
      offset += size;
      break;
    }
    case Token.STRING_ADD:
    case Token.STRING_GET: {
      // could be implemented via imports as well, but isn't necessary for this example
      unreachable();
      break;
    }
    case Token.BINARY: {
      size = readVarint32();
      onBinary(offset, size);
      offset += size;
      break;
    }
    default: { // small integer?
      if (token > <u32>Token.MAX) unreachable();
      onInteger((token >> 1) ^ -(token & 1));
      break;
    }
  }
}

function readVarint32(): u32 {
  var value: u32 = 0;
  var shift: u32 = 0;
  var b: u8;
  do {
    b = load<u8>(offset++);
    value |= <u32>(b & 0x7f) << (7 * shift++);
  } while (b & 0x80);
  return value;
}

function readVarint64(): u64 {
  var value: u64 = 0;
  var shift: u64 = 0;
  var b: u8;
  do {
    b = load<u8>(offset++);
    value |= <u64>(b & 0x7f) << (7 * shift++);
  } while (b & 0x80);
  return value;
}
