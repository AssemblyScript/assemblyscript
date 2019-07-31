export function compareImpl(str1: string, index1: usize, str2: string, index2: usize, len: usize): i32 {
  var result = 0;
  var ptr1 = changetype<usize>(str1) + (index1 << 1);
  var ptr2 = changetype<usize>(str2) + (index2 << 1);
  while (len && !(result = <i32>load<u16>(ptr1) - <i32>load<u16>(ptr2))) {
    --len, ptr1 += 2, ptr2 += 2;
  }
  return result;
}

// @ts-ignore: decorator
@inline
export const enum CharCode {
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
  Z = 0x5A,
  a = 0x61,
  b = 0x62,
  e = 0x65,
  n = 0x6E,
  o = 0x6F,
  x = 0x78,
  z = 0x7A
}

export function isSpace(c: i32): bool {
  if (c <= 0xFF) {
    switch (c) {
      case 0x09: // <TAB>
      case 0x0A: // <LF>
      case 0x0B: // <VT>
      case 0x0C: // <FF>
      case 0x0D: // <CR>
      case 0x20: // <SP>
      case 0xA0: return true; // <NBSP>
    }
    return false;
  }
  if (c >= 0x2000 && c <= 0x200A) return true;
  switch (c) {
    case 0x1680: // <LS> (1)
    case 0x2028: // <LS> (2)
    case 0x2029: // <PS>
    case 0x202F: // <NNS>
    case 0x205F: // <MMSP>
    case 0x3000: // <IS>
    case 0xFEFF: return true; // <ZWNBSP>
  }
  return false;
}

/** Parses a string to an integer (usually), using the specified radix. */
export function strtol<T>(str: string, radix: i32 = 0): T {
  var len: i32 = str.length;
  if (!len) {
    // @ts-ignore: cast
    if (isFloat<T>()) return <T>NaN;
    // @ts-ignore: cast
    return <T>0;
  }

  var ptr = changetype<usize>(str) /* + HEAD -> offset */;
  var code = <i32>load<u16>(ptr);

  // determine sign
  // @ts-ignore: cast
  var sign: T = 1;
  // trim white spaces
  while (isSpace(code)) {
    code = <i32>load<u16>(ptr += 2);
    --len;
  }
  if (code == CharCode.MINUS) {
    if (!--len) {
      // @ts-ignore: cast
      if (isFloat<T>()) return <T>NaN;
      // @ts-ignore: cast
      return <T>0;
    }
    code = <i32>load<u16>(ptr += 2);
    // @ts-ignore: type
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) {
      // @ts-ignore: cast
      if (isFloat<T>()) return <T>NaN;
      // @ts-ignore: cast
      return <T>0;
    }
    code = <i32>load<u16>(ptr += 2);
  }

  // determine radix
  if (!radix) {
    if (code == CharCode._0 && len > 2) {
      switch (<i32>load<u16>(ptr + 2)) {
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
    // @ts-ignore: cast
    if (isFloat<T>()) return <T>NaN;
    // @ts-ignore: cast
    return <T>0;
  }

  // calculate value
  // @ts-ignore: type
  var num: T = 0;
  while (len--) {
    code = <i32>load<u16>(ptr);
    if (code >= CharCode._0 && code <= CharCode._9) {
      code -= CharCode._0;
    } else if (code >= CharCode.A && code <= CharCode.Z) {
      code -= CharCode.A - 10;
    } else if (code >= CharCode.a && code <= CharCode.z) {
      code -= CharCode.a - 10;
    } else break;
    if (code >= radix) break;
    // @ts-ignore: type
    num = num * radix + code;
    ptr += 2;
  }
  // @ts-ignore: type
  return sign * num;
}

// FIXME: naive implementation
export function strtod(str: string): f64 {
  var len: i32 = str.length;
  if (!len) return NaN;

  var ptr = changetype<usize>(str);
  var code = <i32>load<u16>(ptr);

  // determine sign
  var sign = 1.0;
  // trim white spaces
  while (isSpace(code)) {
    code = <i32>load<u16>(ptr += 2);
    --len;
  }
  if (code == CharCode.MINUS) {
    if (!--len) return NaN;
    code = <i32>load<u16>(ptr += 2);
    sign = -1.0;
  } else if (code == CharCode.PLUS) {
    if (!--len) return NaN;
    code = <i32>load<u16>(ptr += 2);
  }

  // calculate value
  var num = 0.0;
  while (len--) {
    code = <i32>load<u16>(ptr);
    if (code == CharCode.DOT) {
      ptr += 2;
      let fac = 0.1; // precision :(
      while (len--) {
        code = <i32>load<u16>(ptr);
        if (code == CharCode.E || code == CharCode.e) {
          assert(false); // TODO
        }
        code -= CharCode._0;
        if (<u32>code > 9) break;
        num += <f64>code * fac;
        fac *= 0.1;
        ptr += 2;
      }
      break;
    }
    code -= CharCode._0;
    if (<u32>code >= 10) break;
    num = num * 10 + code;
    ptr += 2;
  }
  return sign * num;
}
