
import { ipow32 } from "../math";

// 11 * 8 = 88 bytes
@lazy const Powers10Pos1: f64[] = [1, 1e32, 1e64, 1e96, 1e128, 1e160, 1e192, 1e224, 1e256, 1e288, Infinity];
// 12 * 8 = 92 bytes
@lazy const Powers10Neg1: f64[] = [1, 1e-32, 1e-64, 1e-96, 1e-128, 1e-160, 1e-192, 1e-224, 1e-256, 1e-288, 1e-320, 0];
// 32 * 8 = 256 bytes
@lazy const Powers10Pos2: f64[] = [
  1e00, 1e01, 1e02, 1e03, 1e04, 1e05, 1e06, 1e07, 1e08, 1e09,
  1e10, 1e11, 1e12, 1e13, 1e14, 1e15, 1e16, 1e17, 1e18, 1e19,
  1e20, 1e21, 1e22, 1e23, 1e24, 1e25, 1e26, 1e27, 1e28, 1e29,
  1e30, 1e31
];
// 32 * 8 = 256 bytes
@lazy const Powers10Neg2: f64[] = [
  1e-00, 1e-01, 1e-02, 1e-03, 1e-04, 1e-05, 1e-06, 1e-07, 1e-08, 1e-09,
  1e-10, 1e-11, 1e-12, 1e-13, 1e-14, 1e-15, 1e-16, 1e-17, 1e-18, 1e-19,
  1e-20, 1e-21, 1e-22, 1e-23, 1e-24, 1e-25, 1e-26, 1e-27, 1e-28, 1e-29,
  1e-30, 1e-31
];

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
  I = 0x49,
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
      switch (<i32>load<u16>(ptr + 2) | 32) {
        case CharCode.b: {
          ptr += 4; len -= 2;
          radix = 2;
          break;
        }
        case CharCode.o: {
          ptr += 4; len -= 2;
          radix = 8;
          break;
        }
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

export function strtod(str: string): f64 {
  var len: i32 = str.length;
  if (!len) return NaN;

  var ptr  = changetype<usize>(str);
  var code = <i32>load<u16>(ptr);

  var sign = 1.;
  // skip white spaces
  while (len && isSpace(code)) {
    code = <i32>load<u16>(ptr += 2);
    --len;
  }
  if (!len) return NaN;

  // try parse '-' or '+'
  if (code == CharCode.MINUS) {
    if (!--len) return NaN;
    code = <i32>load<u16>(ptr += 2);
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) return NaN;
    code = <i32>load<u16>(ptr += 2);
  }

  // try parse Infinity
  if (len == 8 && code == CharCode.I) {
    if (
      load<u64>(ptr, 0) == 0x690066006E0049 && // ifnI
      load<u64>(ptr, 8) == 0x7900740069006E    // ytin
    ) {
      return copysign<f64>(Infinity, sign);
    }
    return NaN;
  }
  // validate next symbol
  if (!(code == CharCode.DOT || <u32>(code - CharCode._0) < 10)) {
    return NaN;
  }
  // skip zeros
  while (code == CharCode._0) {
    code = <i32>load<u16>(ptr += 2);
    --len;
  }
  if (len <= 0) return 0;
  // if (!(code == CharCode.DOT || code - CharCode._0 < 10)) {
  //   return 0;
  // }
  const capacity = 19; // int(64 * 0.3010)
  var pointed = false;
  var consumed = 0;
  var position = 0;
  var x: u64 = 0;
  if (code == CharCode.DOT) {
    ptr += 2;
    --len;
    for (pointed = true; (code = <i32>load<u16>(ptr)) == CharCode._0; --position, ptr += 2) --len;
  }
  if (len <= 0) return 0;
  for (let digit = code - CharCode._0; digit < 10 || (code == CharCode.DOT && !pointed); digit = code - CharCode._0) {
    if (digit < 10) {
      x = consumed < capacity ? 10 * x + digit : x | u64(!!digit);
      ++consumed;
    } else {
      position = consumed;
      pointed = true;
    }
    if (!--len) break;
    code = <i32>load<u16>(ptr += 2);
  }

  if (!pointed) position = consumed;
  trace("exp", 2, <f64>parseExp(ptr, len), <f64>(position - min(capacity, consumed) + parseExp(ptr, len)));
  trace("significand", 1, <f64>x);
  trace("consumed", 1, <f64>consumed);
  return scientific(x, position - min(capacity, consumed) + parseExp(ptr, len));

  // calculate value
  /*var num = 0.0;
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
  return copysign<f64>(num, sign);*/
}

@inline
function scientific(significand: u64, exp: i32): f64 {
  if (!significand || exp < -342) return 0;
  if (exp > 308) return Infinity;
  // Try use fast path
  var result = strtodFast(<f64>significand, exp);
  trace("strtodFast:", 1, result);
  if (!isNaN(result)) return result;
  if (exp < 0) {
    result = scaledown(significand, exp);
    trace("scaledown:", 1, result);
    return result;
  } else {
    // return scaleup(significand, exp);
    // TODO
    trace("scaleup:", 1, 0);
    return 0;
  }
}

function scaledown(significand: u64, exp: i32): f64 {
  const denom: u64 = 6103515625; // 1e14 * 0x1p-14
  const scale = reinterpret<f64>(0x3F06849B86A12B9B); // 1e-14 * 0x1p32

  var shift = clz(significand);
  significand <<= shift;
  shift = exp - shift;

  for (; exp <= -14; exp += 14) {
    let q = significand / denom;
    let r = significand % denom;
    let s = clz(q);
    significand = (q << s) + <u64>trunc<f64>(scale * <f64>(r << (s - 18)));
    shift -= s;
  }

  var b = <u64>ipow32(5, -exp);
  var q = significand / b;
  var r = significand % b;
  var s = clz(q);
  // significand = (q << s) + <u64>(_shift(r, s) / b);
  significand = (q << s) + <u64>(reinterpret<f64>(reinterpret<u64>(<f64>r) + (s << 52)) / <f64>b);
  shift -= s;

  return NativeMath.scalbn(<f64>significand, <i32>shift);
}

function parseExp(ptr: usize, len: i32): i32 {
  var sign = 1, magnitude = 0;
  var code = <u32>load<u16>(ptr);
  // check code is 'e' or 'E'
  if ((code | 32) != CharCode.e) return 0;

  code = <u32>load<u16>(ptr += 2);
  if (code == CharCode.MINUS) {
    if (!--len) return 0;
    code = <u32>load<u16>(ptr += 2);
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) return 0;
    code = <u32>load<u16>(ptr += 2);
  }
  // skip zeros
  while (code == CharCode._0) {
    if (!--len) return 0;
    code = <u32>load<u16>(ptr += 2);
  }
  for (let digit: u32 = code - CharCode._0; len && digit < 10; digit = code - CharCode._0) {
    if (magnitude >= 3200) return sign * 3200; // or 308?
    magnitude = 10 * magnitude + digit;
    code = <u32>load<u16>(ptr += 2);
    --len;
  }
  return sign * magnitude;
}

@inline
export function pow10(n: i32): f64 {
  if (n >= 0) {
    const powPos1 = Powers10Pos1.dataStart;
    const powPos2 = Powers10Pos2.dataStart;
    return (
      load<f64>(powPos1 + (min<i32>(n >> 5, 309) << alignof<f64>())) *
      load<f64>(powPos2 + ((n & 31) << alignof<f64>()))
    );
  } else {
    const powNeg1 = Powers10Neg1.dataStart;
    const powNeg2 = Powers10Neg2.dataStart;
    n = -n;
    return (
      load<f64>(powNeg1 + (max<i32>(n >> 5, -324) << alignof<f64>())) *
      load<f64>(powNeg2 + ((n & 31) << alignof<f64>()))
    );
  }
}

@inline
function strtodFast(significand: f64, exp: i32): f64 {
  // Use fast path for string-to-double conversion if possible
  // see http://www.exploringbinary.com/fast-path-decimal-to-floating-point-conversion
  if (exp > 22 && exp < 22 + 16) {
    significand *= pow10(exp - 22);
    exp = 22;
  }
  if (significand <= f64.MAX_SAFE_INTEGER && abs(exp) <= 22) {
    return significand * pow10(exp);
  }
  return NaN;
}
