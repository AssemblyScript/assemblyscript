import { MAX_SIZE_32 } from "./allocator";
import { String } from "../string";

/** Size of a String header. */
@inline export const HEADER_SIZE = (offsetof<String>() + 1) & ~1; // 2 byte aligned
/** Maximum length of a String. */
@inline export const MAX_LENGTH = (<i32>MAX_SIZE_32 - HEADER_SIZE) >>> 1;

// Low-level utility

function __gc(ref: usize): void {}

export function allocateUnsafe(length: i32): String {
  assert(length > 0 && length <= MAX_LENGTH);
  var buffer: usize;
  if (isManaged<String>()) {
    buffer = __gc_allocate(HEADER_SIZE + (<usize>length << 1), __gc);  // tslint:disable-line
  } else {
    buffer = memory.allocate(HEADER_SIZE + (<usize>length << 1));
  }
  store<i32>(buffer, length);
  return changetype<String>(buffer);
}

@inline
export function freeUnsafe(buffer: String): void {
  if (!isManaged<String>()) {
    assert(buffer);
    memory.free(changetype<usize>(buffer));
  }
}

export function copyUnsafe(dest: String, destOffset: usize, src: String, srcOffset: usize, len: usize): void {
  memory.copy(
    changetype<usize>(dest) + (destOffset << 1) + HEADER_SIZE,
    changetype<usize>(src)  + (srcOffset  << 1) + HEADER_SIZE,
    len << 1
  );
}

export function compareUnsafe(str1: String, offset1: usize, str2: String, offset2: usize, len: usize): i32 {
  var cmp: i32 = 0;
  var ptr1 = changetype<usize>(str1) + (offset1 << 1);
  var ptr2 = changetype<usize>(str2) + (offset2 << 1);
  while (len && !(cmp = <i32>load<u16>(ptr1, HEADER_SIZE) - <i32>load<u16>(ptr2, HEADER_SIZE))) {
    --len, ptr1 += 2, ptr2 += 2;
  }
  return cmp;
}

export function repeatUnsafe(dest: String, destOffset: usize, src: String, count: i32): void {
  var length = src.length;
  if (ASC_SHRINK_LEVEL > 1) {
    let strLen = length << 1;
    let to   = changetype<usize>(dest) + HEADER_SIZE + (destOffset << 1);
    let from = changetype<usize>(src)  + HEADER_SIZE;
    for (let i = 0, len = strLen * count; i < len; i += strLen) {
      memory.copy(to + i, from, strLen);
    }
  } else {
    switch (length) {
      case 0: break;
      case 1: {
        let cc =  load<u16>(changetype<usize>(src), HEADER_SIZE);
        let out = changetype<usize>(dest) + (destOffset << 1);
        for (let i = 0; i < count; ++i) {
          store<u16>(out + (i << 1), cc, HEADER_SIZE);
        }
        break;
      }
      case 2: {
        let cc  = load<u32>(changetype<usize>(src), HEADER_SIZE);
        let out = changetype<usize>(dest) + (destOffset << 1);
        for (let i = 0; i < count; ++i) {
          store<u32>(out + (i << 2), cc, HEADER_SIZE);
        }
        break;
      }
      case 3: {
        let cc1 = load<u32>(changetype<usize>(src), HEADER_SIZE + 0);
        let cc2 = load<u16>(changetype<usize>(src), HEADER_SIZE + 4);
        let out = changetype<usize>(dest) + (destOffset << 1);
        for (let i = 0; i < count; ++i) {
          store<u32>(out + (i << 2), cc1, HEADER_SIZE + 0);
          store<u16>(out + (i << 1), cc2, HEADER_SIZE + 4);
        }
        break;
      }
      case 4: {
        let cc = load<u64>(changetype<usize>(src), HEADER_SIZE);
        let out = changetype<usize>(dest) + (destOffset << 1);
        for (let i = 0; i < count; ++i) {
          store<u64>(out + (i << 3), cc, HEADER_SIZE);
        }
        break;
      }
      default: {
        let strLen = length << 1;
        let to   = changetype<usize>(dest) + HEADER_SIZE + (destOffset << 1);
        let from = changetype<usize>(src)  + HEADER_SIZE;
        for (let i = 0, len = strLen * count; i < len; i += strLen) {
          memory.copy(to + i, from, strLen);
        }
        break;
      }
    }
  }
}

// Helpers

@inline export const enum CharCode {
  PLUS = 0x2B,
  MINUS = 0x2D,
  DOT = 0x2E,
  _0 = 0x30,
  _1 = 0x31,
  _2 = 0x32,
  _3 = 0x33,
  _4 = 0x34,
  _5 = 0x35,
  _6 = 0x36,
  _7 = 0x37,
  _8 = 0x38,
  _9 = 0x39,
  A = 0x41,
  B = 0x42,
  E = 0x45,
  N = 0x4E,
  O = 0x4F,
  X = 0x58,
  Z = 0x5a,
  a = 0x61,
  b = 0x62,
  e = 0x65,
  n = 0x6E,
  o = 0x6F,
  x = 0x78,
  z = 0x7A
}

export function isWhiteSpaceOrLineTerminator(c: u16): bool {
  switch (c) {
    case 9:    // <TAB>
    case 10:   // <LF>
    case 13:   // <CR>
    case 11:   // <VT>
    case 12:   // <FF>
    case 32:   // <SP>
    case 160:  // <NBSP>
    case 8232: // <LS>
    case 8233: // <PS>
    case 65279: return true; // <ZWNBSP>
    default: return false;
  }
}

/** Parses a string to an integer (usually), using the specified radix. */
export function parse<T>(str: String, radix: i32 = 0): T {
  var len: i32 = str.length;
  if (!len) return <T>NaN;

  var ptr = changetype<usize>(str) /* + HEAD -> offset */;
  var code = <i32>load<u16>(ptr, HEADER_SIZE);

  // determine sign
  var sign: T;
  if (code == CharCode.MINUS) {
    if (!--len) return <T>NaN;
    code = <i32>load<u16>(ptr += 2, HEADER_SIZE);
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) return <T>NaN;
    code = <i32>load<u16>(ptr += 2, HEADER_SIZE);
    sign = 1;
  } else {
    sign = 1;
  }

  // determine radix
  if (!radix) {
    if (code == CharCode._0 && len > 2) {
      switch (<i32>load<u16>(ptr + 2, HEADER_SIZE)) {
        case CharCode.B:
        case CharCode.b: {
          ptr += 4; len -= 2;
          radix = 2;
          break;
        }
        case CharCode.O:
        case CharCode.o: {
          ptr += 4; len -= 2;
          radix = 8;
          break;
        }
        case CharCode.X:
        case CharCode.x: {
          ptr += 4; len -= 2;
          radix = 16;
          break;
        }
        default: radix = 10;
      }
    } else radix = 10;
  } else if (radix < 2 || radix > 36) {
    return <T>NaN;
  }

  // calculate value
  var num: T = 0;
  while (len--) {
    code = <i32>load<u16>(ptr, HEADER_SIZE);
    if (code >= CharCode._0 && code <= CharCode._9) {
      code -= CharCode._0;
    } else if (code >= CharCode.A && code <= CharCode.Z) {
      code -= CharCode.A - 10;
    } else if (code >= CharCode.a && code <= CharCode.z) {
      code -= CharCode.a - 10;
    } else break;
    if (code >= radix) break;
    num = (num * radix) + code;
    ptr += 2;
  }
  return sign * num;
}
