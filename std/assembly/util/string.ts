import { itoa, dtoa, itoa_stream, dtoa_stream, MAX_DOUBLE_LENGTH } from "./number";
import { ipow32 } from "../math";

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

// 9 * 8 = 72 bytes
// @ts-ignore: decorator
@lazy
const Powers10Hi: f64[] = [1, 1e32, 1e64, 1e96, 1e128, 1e160, 1e192, 1e224, 1e256, 1e288];
// 32 * 8 = 256 bytes
// @ts-ignore: decorator
@lazy
const Powers10Lo: f64[] = [
  1e00, 1e01, 1e02, 1e03, 1e04, 1e05, 1e06, 1e07, 1e08, 1e09,
  1e10, 1e11, 1e12, 1e13, 1e14, 1e15, 1e16, 1e17, 1e18, 1e19,
  1e20, 1e21, 1e22, 1e23, 1e24, 1e25, 1e26, 1e27, 1e28, 1e29,
  1e30, 1e31
];

export function compareImpl(str1: string, index1: usize, str2: string, index2: usize, len: usize): i32 {
  var ptr1 = changetype<usize>(str1) + (index1 << 1);
  var ptr2 = changetype<usize>(str2) + (index2 << 1);
  if (ASC_SHRINK_LEVEL < 2) {
    if (len >= 4 && !((ptr1 & 7) | (ptr2 & 7))) {
      do {
        if (load<u64>(ptr1) != load<u64>(ptr2)) break;
        ptr1 += 8;
        ptr2 += 8;
        len  -= 4;
      } while (len >= 4);
    }
  }
  while (len--) {
    let a = <i32>load<u16>(ptr1);
    let b = <i32>load<u16>(ptr2);
    if (a != b) return a - b;
    ptr1 += 2;
    ptr2 += 2;
  }
  return 0;
}

export function isSpace(c: i32): bool {
  if (c <= 0xFF) {
    // <SP>, <TAB>, <LF>, <VT>, <FF>, <CR> and <NBSP>
    return c == 0x20 || <u32>(c - 0x09) <= 0x0D - 0x09 || c == 0xA0;
  }
  if (<u32>(c - 0x2000) <= 0x200A - 0x2000) return true;
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
  var len = str.length;
  if (!len) {
    // @ts-ignore: cast
    if (isFloat<T>()) return <T>NaN;
    // @ts-ignore: cast
    return <T>0;
  }

  var ptr = changetype<usize>(str) /* + HEAD -> offset */;
  var code = <u32>load<u16>(ptr);

  // determine sign
  // @ts-ignore: cast
  var sign: T = 1;
  // trim white spaces
  while (isSpace(code)) {
    code = <u32>load<u16>(ptr += 2);
    --len;
  }
  if (code == CharCode.MINUS) {
    if (!--len) {
      // @ts-ignore: cast
      if (isFloat<T>()) return <T>NaN;
      // @ts-ignore: cast
      return <T>0;
    }
    code = <u32>load<u16>(ptr += 2);
    // @ts-ignore: type
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) {
      // @ts-ignore: cast
      if (isFloat<T>()) return <T>NaN;
      // @ts-ignore: cast
      return <T>0;
    }
    code = <u32>load<u16>(ptr += 2);
  }

  // determine radix
  if (!radix) {
    if (code == CharCode._0 && len > 2) {
      switch (<u32>load<u16>(ptr + 2) | 32) {
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
    code = <u32>load<u16>(ptr);
    if (code - CharCode._0 < 10) {
      code -= CharCode._0;
    } else if (code - CharCode.A <= <u32>(CharCode.Z - CharCode.A)) {
      code -= CharCode.A - 10;
    } else if (code - CharCode.a <= <u32>(CharCode.z - CharCode.a)) {
      code -= CharCode.a - 10;
    } else break;
    if (code >= <u32>radix) break;
    // @ts-ignore: type
    num = num * radix + code;
    ptr += 2;
  }
  // @ts-ignore: type
  return sign * num;
}

export function strtod(str: string): f64 {
  var len = str.length;
  if (!len) return NaN;

  var ptr  = changetype<usize>(str);
  var code = <u32>load<u16>(ptr);

  var sign = 1.;
  // skip white spaces
  while (len && isSpace(code)) {
    code = <u32>load<u16>(ptr += 2);
    --len;
  }
  if (!len) return NaN;

  // try parse '-' or '+'
  if (code == CharCode.MINUS) {
    if (!--len) return NaN;
    code = <u32>load<u16>(ptr += 2);
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) return NaN;
    code = <u32>load<u16>(ptr += 2);
  }

  // try parse Infinity
  if (len >= 8 && code == CharCode.I) {
    if (
      load<u64>(ptr, 0) == 0x690066006E0049 && // ifnI
      load<u64>(ptr, 8) == 0x7900740069006E    // ytin
    ) {
      return copysign<f64>(Infinity, sign);
    }
    return NaN;
  }
  // validate next symbol
  if (code != CharCode.DOT && <u32>(code - CharCode._0) >= 10) {
    return NaN;
  }
  var savedPtr = ptr;
  // skip zeros
  while (code == CharCode._0) {
    code = <u32>load<u16>(ptr += 2);
    --len;
  }
  if (len <= 0) return 0;
  const capacity = 19; // int(64 * 0.3010)
  var pointed = false;
  var consumed = 0;
  var position = 0;
  var x: u64 = 0;
  if (code == CharCode.DOT) {
    let noDigits = !(savedPtr - ptr);
    ptr += 2; --len;
    if (!len && noDigits) return NaN;
    for (pointed = true; (code = <u32>load<u16>(ptr)) == CharCode._0; --position, ptr += 2) --len;
    if (len <= 0) return 0;
    if (!position && noDigits && code - CharCode._0 >= 10) return NaN;
  }
  for (let digit = code - CharCode._0; digit < 10 || (code == CharCode.DOT && !pointed); digit = code - CharCode._0) {
    if (digit < 10) {
      x = consumed < capacity ? 10 * x + digit : x | u64(!!digit);
      ++consumed;
    } else {
      position = consumed;
      pointed = true;
    }
    if (!--len) break;
    code = <u32>load<u16>(ptr += 2);
  }

  if (!pointed) position = consumed;
  return copysign<f64>(scientific(x, position - min(capacity, consumed) + parseExp(ptr, len)), sign);
}

export function joinBooleanArray(dataStart: usize, length: i32, separator: string): string {
  var lastIndex = length - 1;
  if (lastIndex < 0) return "";
  if (!lastIndex) return select("true", "false", load<bool>(dataStart));

  var sepLen = separator.length;
  var valueLen = 5; // max possible length of element len("false")
  var estLen = (valueLen + sepLen) * lastIndex + valueLen;
  var result = changetype<string>(__alloc(estLen << 1, idof<string>())); // retains
  var offset = 0;
  var value: bool;
  for (let i = 0; i < lastIndex; ++i) {
    value = load<bool>(dataStart + i);
    valueLen = 4 + i32(!value);
    memory.copy(
      changetype<usize>(result) + (<usize>offset << 1),
      changetype<usize>(select("true", "false", value)),
      <usize>valueLen << 1
    );
    offset += valueLen;
    if (sepLen) {
      memory.copy(
        changetype<usize>(result) + (<usize>offset << 1),
        changetype<usize>(separator),
        <usize>sepLen << 1
      );
      offset += sepLen;
    }
  }
  value = load<bool>(dataStart + <usize>lastIndex);
  valueLen = 4 + i32(!value);
  memory.copy(
    changetype<usize>(result) + (<usize>offset << 1),
    changetype<usize>(select("true", "false", value)),
    valueLen << 1
  );
  offset += valueLen;

  if (estLen > offset) return result.substring(0, offset);
  return result;
}

export function joinIntegerArray<T>(dataStart: usize, length: i32, separator: string): string {
  var lastIndex = length - 1;
  if (lastIndex < 0) return "";
  // @ts-ignore: type
  if (!lastIndex) return changetype<string>(itoa<T>(load<T>(dataStart))); // retains

  var sepLen = separator.length;
  const valueLen = (sizeof<T>() <= 4 ? 10 : 20) + i32(isSigned<T>());
  var estLen = (valueLen + sepLen) * lastIndex + valueLen;
  var result = changetype<string>(__alloc(estLen << 1, idof<string>())); // retains
  var offset = 0;
  var value: T;
  for (let i = 0; i < lastIndex; ++i) {
    value = load<T>(dataStart + (<usize>i << alignof<T>()));
    // @ts-ignore: type
    offset += itoa_stream<T>(changetype<usize>(result), offset, value);
    if (sepLen) {
      memory.copy(
        changetype<usize>(result) + (<usize>offset << 1),
        changetype<usize>(separator),
        <usize>sepLen << 1
      );
      offset += sepLen;
    }
  }
  value = load<T>(dataStart + (<usize>lastIndex << alignof<T>()));
  // @ts-ignore: type
  offset += itoa_stream<T>(changetype<usize>(result), offset, value);
  if (estLen > offset) return result.substring(0, offset);
  return result;
}

export function joinFloatArray<T>(dataStart: usize, length: i32, separator: string): string {
  var lastIndex = length - 1;
  if (lastIndex < 0) return "";
  if (!lastIndex) {
    return changetype<string>(dtoa(
      // @ts-ignore: type
      load<T>(dataStart))
    ); // retains
  }

  const valueLen = MAX_DOUBLE_LENGTH;
  var sepLen = separator.length;
  var estLen = (valueLen + sepLen) * lastIndex + valueLen;
  var result = changetype<string>(__alloc(estLen << 1, idof<string>())); // retains
  var offset = 0;
  var value: T;
  for (let i = 0; i < lastIndex; ++i) {
    value = load<T>(dataStart + (<usize>i << alignof<T>()));
    offset += dtoa_stream(changetype<usize>(result), offset,
      // @ts-ignore: type
      value
    );
    if (sepLen) {
      memory.copy(
        changetype<usize>(result) + (<usize>offset << 1),
        changetype<usize>(separator),
        <usize>sepLen << 1
      );
      offset += sepLen;
    }
  }
  value = load<T>(dataStart + (<usize>lastIndex << alignof<T>()));
  offset += dtoa_stream(changetype<usize>(result), offset,
    // @ts-ignore: type
    value
  );
  if (estLen > offset) return result.substring(0, offset);
  return result;
}

export function joinStringArray(dataStart: usize, length: i32, separator: string): string {
  var lastIndex = length - 1;
  if (lastIndex < 0) return "";
  if (!lastIndex) {
    // @ts-ignore: type
    return load<string>(dataStart) || "";
  }
  var estLen = 0;
  var value: string;
  for (let i = 0; i < length; ++i) {
    value = load<string>(dataStart + (<usize>i << alignof<string>()));
    // @ts-ignore: type
    if (value !== null) estLen += value.length;
  }
  var offset = 0;
  var sepLen = separator.length;
  var result = __alloc((estLen + sepLen * lastIndex) << 1, idof<string>());
  for (let i = 0; i < lastIndex; ++i) {
    value = load<string>(dataStart + (<usize>i << alignof<string>()));
    if (value !== null) {
      let valueLen = value.length;
      memory.copy(
        result + (<usize>offset << 1),
        changetype<usize>(value),
        <usize>valueLen << 1
      );
      offset += valueLen;
    }
    if (sepLen) {
      memory.copy(
        result + (<usize>offset << 1),
        changetype<usize>(separator),
        <usize>sepLen << 1
      );
      offset += sepLen;
    }
  }
  value = load<string>(dataStart + (<usize>lastIndex << alignof<string>()));
  if (value !== null) {
    memory.copy(
      result + (<usize>offset << 1),
      changetype<usize>(value),
      <usize>value.length << 1
    );
  }
  return changetype<string>(result); // retains
}

export function joinReferenceArray<T>(dataStart: usize, length: i32, separator: string): string {
  var lastIndex = length - 1;
  if (lastIndex < 0) return "";
  var value: T;
  if (!lastIndex) {
    value = load<T>(dataStart);
    // @ts-ignore: type
    return value !== null ? value.toString() : "";
  }
  var result = "";
  var sepLen = separator.length;
  for (let i = 0; i < lastIndex; ++i) {
    value = load<T>(dataStart + (<usize>i << alignof<T>()));
    // @ts-ignore: type
    if (value !== null) result += value.toString();
    if (sepLen) result += separator;
  }
  value = load<T>(dataStart + (<usize>lastIndex << alignof<T>()));
  // @ts-ignore: type
  if (value !== null) result += value.toString();
  return result;
}

// @ts-ignore: decorator
@inline
function scientific(significand: u64, exp: i32): f64 {
  if (!significand || exp < -342) return 0;
  if (exp > 308) return Infinity;
  // Try use fast path
  // Use fast path for string-to-double conversion if possible
  // see http://www.exploringbinary.com/fast-path-decimal-to-floating-point-conversion
  // Simple integer
  var significandf = <f64>significand;
  if (!exp) return significandf;
  if (exp > 22 && exp <= 22 + 15) {
    significandf *= pow10(exp - 22);
    exp = 22;
  }
  if (significand <= 9007199254740991 && abs(exp) <= 22) {
    if (exp > 0) return significandf * pow10(exp);
    return significandf / pow10(-exp);
  } else if (exp < 0) {
    return scaledown(significand, exp);
  } else {
    return scaleup(significand, exp);
  }
}

// Adopted from metallic lib:
// https://github.com/jdh8/metallic/blob/master/src/stdlib/parse/scientific.h
// @ts-ignore: decorator
@inline
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
    significand = (q << s) + <u64>nearest(scale * <f64>(r << (s - 18)));
    shift -= s;
  }
  var b = <u64>ipow32(5, -exp);
  var q = significand / b;
  var r = significand % b;
  var s = clz(q);
  significand = (q << s) + <u64>(reinterpret<f64>(reinterpret<u64>(<f64>r) + (s << 52)) / <f64>b);
  shift -= s;

  return NativeMath.scalbn(<f64>significand, <i32>shift);
}

// Adopted from metallic lib:
// https://github.com/jdh8/metallic/blob/master/src/stdlib/parse/scientific.h
// @ts-ignore: decorator
@inline
function scaleup(significand: u64, exp: i32): f64 {
  const coeff: u32 = 1220703125; // 1e13 * 0x1p-13;
  var shift = ctz(significand);
  significand >>= shift;
  shift += exp;

  __fixmulShift = shift;
  for (; exp >= 13; exp -= 13) {
    significand = fixmul(significand, coeff);
  }
  significand = fixmul(significand, <u32>ipow32(5, exp));
  shift = __fixmulShift;
  return NativeMath.scalbn(<f64>significand, <i32>shift);
}

// Adopted from metallic lib:
// https://github.com/jdh8/metallic/blob/master/src/stdlib/parse/scientific.h
// @ts-ignore: decorator
@inline
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
    if (magnitude >= 3200) return sign * 3200;
    magnitude = 10 * magnitude + digit;
    code = <u32>load<u16>(ptr += 2);
    --len;
  }
  return sign * magnitude;
}

// @ts-ignore: decorator
@lazy
var __fixmulShift: u64 = 0;

// Adopted from metallic lib:
// https://github.com/jdh8/metallic/blob/master/src/stdlib/parse/scientific.h
// @ts-ignore: decorator
@inline
function fixmul(a: u64, b: u32): u64 {
  var low  = (a & 0xFFFFFFFF) * b;
  var high = (a >> 32) * b + (low >> 32);
  var overflow = <u32>(high >> 32);
  var space = clz(overflow);
  var revspace: u64 = 32 - space;
  __fixmulShift += revspace;
  return (high << space | (low & 0xFFFFFFFF) >> revspace) + (low << space >> 31 & 1);
}

// @ts-ignore: decorator
function pow10(n: i32): f64 {
  // @ts-ignore: type
  const hi = Powers10Hi.dataStart;
  // @ts-ignore: type
  const lo = Powers10Lo.dataStart;
  return (
    load<f64>(hi + ((n >> 5) << alignof<f64>())) *
    load<f64>(lo + ((n & 31) << alignof<f64>()))
  );
}
