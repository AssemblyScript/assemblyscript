export function compareImpl(str1: string, index1: usize, str2: string, index2: usize, len: usize): i32 {
  var result: i32 = 0;
  var ptr1 = changetype<usize>(str1) + (index1 << 1);
  var ptr2 = changetype<usize>(str2) + (index2 << 1);
  while (len && !(result = <i32>load<u16>(ptr1) - <i32>load<u16>(ptr2))) {
    --len, ptr1 += 2, ptr2 += 2;
  }
  return result;
}

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
export function parse<T>(str: string, radix: i32 = 0): T {
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
