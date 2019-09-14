import { itoa, dtoa, itoa_stream, dtoa_stream, MAX_DOUBLE_LENGTH } from "./number";

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
  if (!lastIndex) return load<string>(dataStart);

  var sepLen = separator.length;
  var estLen = 0;
  var value: string | null;
  for (let i = 0, len = lastIndex + 1; i < len; ++i) {
    value = load<string>(dataStart + (<usize>i << alignof<string>()));
    if (value !== null) estLen += value.length;
  }
  var offset = 0;
  var result = changetype<string>(__alloc((estLen + sepLen * lastIndex) << 1, idof<string>())); // retains
  for (let i = 0; i < lastIndex; ++i) {
    value = load<string>(dataStart + (<usize>i << alignof<string>()));
    if (value !== null) {
      let valueLen = changetype<string>(value).length;
      memory.copy(
        changetype<usize>(result) + (<usize>offset << 1),
        changetype<usize>(value),
        <usize>valueLen << 1
      );
      offset += valueLen;
    }
    if (sepLen) {
      memory.copy(
        changetype<usize>(result) + (<usize>offset << 1),
        changetype<usize>(separator),
        <usize>sepLen << 1
      );
      offset += sepLen;
    }
  }
  value = load<string>(dataStart + (<usize>lastIndex << alignof<string>()));
  if (value !== null) {
    memory.copy(
      changetype<usize>(result) + (<usize>offset << 1),
      changetype<usize>(value),
      <usize>changetype<string>(value).length << 1
    );
  }
  return result;
}

export function joinArrays<T>(dataStart: usize, length: i32, separator: string): string {
  var lastIndex = length - 1;
  if (lastIndex < 0) return "";

  var result = "";
  var sepLen = separator.length;
  var value: T;
  if (!lastIndex) {
    value = load<T>(dataStart);
    // @ts-ignore: type
    return value ? value.join(separator) : "";
  }
  for (let i = 0; i < lastIndex; ++i) {
    value = load<T>(dataStart + (<usize>i << alignof<T>()));
    // @ts-ignore: type
    if (value) result += value.join(separator);
    if (sepLen) result += separator;
  }
  value = load<T>(dataStart + (<usize>lastIndex << alignof<T>()));
  // @ts-ignore: type
  if (value) result += value.join(separator);
  return result; // registered by concatenation (FIXME: lots of garbage)
}

export function joinObjectArray<T>(dataStart: usize, length: i32, separator: string): string {
  var lastIndex = length - 1;
  if (lastIndex < 0) return "";
  if (!lastIndex) return "[object Object]";

  const valueLen = 15; // max possible length of element len("[object Object]")
  var sepLen = separator.length;
  var estLen = (valueLen + sepLen) * lastIndex + valueLen;
  var result = changetype<string>(__alloc(estLen << 1, idof<string>()));
  var offset = 0;
  var value: T;
  for (let i = 0; i < lastIndex; ++i) {
    value = load<T>(dataStart + (<usize>i << alignof<T>()));
    if (value) {
      memory.copy(
        changetype<usize>(result) + (<usize>offset << 1),
        changetype<usize>("[object Object]"),
        <usize>valueLen << 1
      );
      offset += valueLen;
    }
    if (sepLen) {
      memory.copy(
        changetype<usize>(result) + (<usize>offset << 1),
        changetype<usize>(separator),
        <usize>sepLen << 1
      );
      offset += sepLen;
    }
  }
  if (load<T>(dataStart + (<usize>lastIndex << alignof<T>()))) {
    memory.copy(
      changetype<usize>(result) + (<usize>offset << 1),
      changetype<usize>("[object Object]"),
      <usize>valueLen << 1
    );
    offset += valueLen;
  }
  if (estLen > offset) return result.substring(0, offset);
  return result;
}
