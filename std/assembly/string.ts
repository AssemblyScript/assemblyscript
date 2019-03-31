import {
  HEADER_SIZE,
  MAX_LENGTH,
  allocateUnsafe,
  compareUnsafe,
  repeatUnsafe,
  copyUnsafe,
  isWhiteSpaceOrLineTerminator,
  CharCode,
  parse
} from "./internal/string";

import {
  STORE
} from "./internal/arraybuffer";

@sealed
export class String {

  readonly length: i32; // capped to [0, MAX_LENGTH]

  // TODO Add and handle second argument
  static fromCharCode(code: i32): String {
    var out = allocateUnsafe(1);
    store<u16>(
      changetype<usize>(out),
      <u16>code,
      HEADER_SIZE
    );
    return out;
  }

  static fromCodePoint(code: i32): String {
    assert(<u32>code <= 0x10FFFF);
    var sur = code > 0xFFFF;
    var out = allocateUnsafe(<i32>sur + 1);
    if (!sur) {
      store<u16>(
        changetype<usize>(out),
        <u16>code,
        HEADER_SIZE
      );
    } else {
      code -= 0x10000;
      let hi: u32 = (code >>> 10) + 0xD800;
      let lo: u32 = (code & 0x3FF) + 0xDC00;
      store<u32>(
        changetype<usize>(out),
        (hi << 16) | lo,
        HEADER_SIZE
      );
    }
    return out;
  }

  @operator("[]")
  charAt(pos: i32): String {
    assert(this !== null);

    if (<u32>pos >= <u32>this.length) return changetype<String>("");

    var out = allocateUnsafe(1);
    store<u16>(
      changetype<usize>(out),
      load<u16>(
        changetype<usize>(this) + (<usize>pos << 1),
        HEADER_SIZE
      ),
      HEADER_SIZE
    );
    return out;
  }

  charCodeAt(pos: i32): i32 {
    assert(this !== null);
    if (<u32>pos >= <u32>this.length) return -1; // (NaN)

    return load<u16>(
      changetype<usize>(this) + (<usize>pos << 1),
      HEADER_SIZE
    );
  }

  codePointAt(pos: i32): i32 {
    assert(this !== null);
    if (<u32>pos >= <u32>this.length) return -1; // (undefined)

    var first = <i32>load<u16>(
      changetype<usize>(this) + (<usize>pos << 1),
      HEADER_SIZE
    );
    if (first < 0xD800 || first > 0xDBFF || pos + 1 == this.length) {
      return first;
    }
    var second = <i32>load<u16>(
      changetype<usize>(this) + ((<usize>pos + 1) << 1),
      HEADER_SIZE
    );
    if (second < 0xDC00 || second > 0xDFFF) return first;
    return ((first - 0xD800) << 10) + (second - 0xDC00) + 0x10000;
  }

  @operator("+")
  private static __concat(left: String, right: String): String {
    if (!changetype<usize>(left)) left = changetype<String>("null");
    return left.concat(right);
  }

  concat(other: String): String {
    assert(this !== null);
    if (other === null) other = changetype<String>("null");

    var thisLen: isize  = this.length;
    var otherLen: isize = other.length;
    var outLen: usize   = thisLen + otherLen;
    if (outLen == 0) return changetype<String>("");
    var out = allocateUnsafe(outLen);
    copyUnsafe(out, 0, this, 0, thisLen);
    copyUnsafe(out, thisLen, other, 0, otherLen);
    return out;
  }

  endsWith(searchString: String, endPosition: i32 = MAX_LENGTH): bool {
    assert(this !== null);
    if (searchString === null) return false;
    var end = min(max(endPosition, 0), this.length);
    var searchLength: isize = searchString.length;
    var start: isize = end - searchLength;
    if (start < 0) return false;
    return !compareUnsafe(this, start, searchString, 0, searchLength);
  }

  @operator("==")
  private static __eq(left: String, right: String): bool {
    if (left === right) return true;
    if (left === null || right === null) return false;

    var leftLength = left.length;
    if (leftLength != right.length) return false;

    return !compareUnsafe(left, 0, right, 0, leftLength);
  }

  @operator.prefix("!")
  private static __not(str: String): bool {
    return str === null || !str.length;
  }

  @operator("!=")
  private static __ne(left: String, right: String): bool {
    return !this.__eq(left, right);
  }

  @operator(">")
  private static __gt(left: String, right: String): bool {
    if (left === right || left === null || right === null) return false;

    var leftLength  = left.length;
    var rightLength = right.length;

    if (!leftLength)  return false;
    if (!rightLength) return true;

    var length = <usize>min<i32>(leftLength, rightLength);
    return compareUnsafe(left, 0, right, 0, length) > 0;
  }

  @operator(">=")
  private static __gte(left: String, right: String): bool {
    return !this.__lt(left, right);
  }

  @operator("<")
  private static __lt(left: String, right: String): bool {
    if (left === right || left === null || right === null) return false;

    var leftLength  = left.length;
    var rightLength = right.length;

    if (!rightLength) return false;
    if (!leftLength)  return true;

    var length = <usize>min<i32>(leftLength, rightLength);
    return compareUnsafe(left, 0, right, 0, length) < 0;
  }

  @operator("<=")
  private static __lte(left: String, right: String): bool {
    return !this.__gt(left, right);
  }

  @inline
  includes(searchString: String, position: i32 = 0): bool {
    return this.indexOf(searchString, position) != -1;
  }

  indexOf(searchString: String, fromIndex: i32 = 0): i32 {
    assert(this !== null);
    if (searchString === null) searchString = changetype<String>("null");

    var searchLen: isize = searchString.length;
    if (!searchLen) return 0;
    var len: isize = this.length;
    if (!len) return -1;
    var start = min<isize>(max<isize>(fromIndex, 0), len);
    len -= searchLen;
    for (let k: isize = start; k <= len; ++k) {
      if (!compareUnsafe(this, k, searchString, 0, searchLen)) return <i32>k;
    }
    return -1;
  }

  lastIndexOf(searchString: String, fromIndex: i32 = i32.MAX_VALUE): i32 {
    assert(this !== null);
    if (searchString === null) searchString = changetype<String>("null");

    var len: isize = this.length;
    var searchLen: isize = searchString.length;
    if (!searchLen) return len;
    if (!len) return -1;
    var start = min<isize>(max(fromIndex, 0), len - searchLen);
    for (let k = start; k >= 0; --k) {
      if (!compareUnsafe(this, k, searchString, 0, searchLen)) return <i32>k;
    }
    return -1;
  }

  startsWith(searchString: String, position: i32 = 0): bool {
    assert(this !== null);
    if (searchString === null) searchString = changetype<String>("null");

    var pos: isize = position;
    var len: isize = this.length;
    var start = min(max(pos, 0), len);
    var searchLength: isize = searchString.length;
    if (searchLength + start > len) return false;
    return !compareUnsafe(this, start, searchString, 0, searchLength);
  }

  substr(start: i32, length: i32 = i32.MAX_VALUE): String {
    assert(this !== null);
    var intStart: isize = start;
    var end: isize = length;
    var size: isize = this.length;
    if (intStart < 0) intStart = max(size + intStart, 0);
    var resultLength = min(max(end, 0), size - intStart);
    if (resultLength <= 0) return changetype<String>("");
    var out = allocateUnsafe(resultLength);
    copyUnsafe(out, 0, this, intStart, resultLength);
    return out;
  }

  substring(start: i32, end: i32 = i32.MAX_VALUE): String {
    assert(this !== null);
    var len = this.length;
    var finalStart = min(max(start, 0), len);
    var finalEnd = min(max(end, 0), len);
    var from = min<i32>(finalStart, finalEnd);
    var to = max<i32>(finalStart, finalEnd);
    len = to - from;
    if (!len) return changetype<String>("");
    if (!from && to == this.length) return this;
    var out = allocateUnsafe(len);
    copyUnsafe(out, 0, this, from, len);
    return out;
  }

  trim(): String {
    assert(this !== null);
    var length: usize = this.length;

    while (
      length &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + (length << 1), HEADER_SIZE)
      )
    ) {
      --length;
    }
    var start: usize = 0;
    while (
      start < length &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + (start << 1), HEADER_SIZE)
      )
    ) {
      ++start, --length;
    }
    if (!length) return changetype<String>("");
    if (!start && length == this.length) return this;
    var out = allocateUnsafe(length);
    copyUnsafe(out, 0, this, start, length);
    return out;
  }

  @inline
  trimLeft(): String {
    return this.trimStart();
  }

  @inline
  trimRight(): String {
    return this.trimEnd();
  }

  trimStart(): String {
    assert(this !== null);
    var start: isize = 0;
    var len: isize = this.length;
    while (
      start < len &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + (start << 1), HEADER_SIZE)
      )
    ) {
      ++start;
    }
    if (!start) return this;
    var outLen = len - start;
    if (!outLen) return changetype<String>("");
    var out = allocateUnsafe(outLen);
    copyUnsafe(out, 0, this, start, outLen);
    return out;
  }

  trimEnd(): String {
    assert(this !== null);
    var len: isize = this.length;
    while (
      len > 0 &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + (len << 1), HEADER_SIZE)
      )
    ) {
      --len;
    }
    if (len <= 0) return changetype<String>("");
    if (<i32>len == this.length) return this;
    var out = allocateUnsafe(len);
    copyUnsafe(out, 0, this, 0, len);
    return out;
  }

  padStart(targetLength: i32, padString: String = changetype<String>(" ")): String {
    assert(this !== null);
    var length = this.length;
    var padLen = padString.length;
    if (targetLength < length || !padLen) return this;
    var len = targetLength - length;
    var out = allocateUnsafe(targetLength);
    if (len > padLen) {
      let count = (len - 1) / padLen;
      let base = count * padLen;
      let rest = len - base;
      repeatUnsafe(out, 0, padString, count);
      if (rest) copyUnsafe(out, base, padString, 0, rest);
    } else {
      copyUnsafe(out, 0, padString, 0, len);
    }
    if (length) copyUnsafe(out, len, this, 0, length);
    return out;
  }

  padEnd(targetLength: i32, padString: String = changetype<String>(" ")): String {
    assert(this !== null);
    var length = this.length;
    var padLen = padString.length;
    if (targetLength < length || !padLen) return this;
    var len = targetLength - length;
    var out = allocateUnsafe(targetLength);
    if (length) copyUnsafe(out, 0, this, 0, length);
    if (len > padLen) {
      let count = (len - 1) / padLen;
      let base = count * padLen;
      let rest = len - base;
      repeatUnsafe(out, length, padString, count);
      if (rest) copyUnsafe(out, base + length, padString, 0, rest);
    } else {
      copyUnsafe(out, length, padString, 0, len);
    }
    return out;
  }

  repeat(count: i32 = 0): String {
    assert(this !== null);
    var length = this.length;

    // Most browsers can't handle strings 1 << 28 chars or longer
    if (count < 0 || length * count > (1 << 28)) {
      throw new RangeError("Invalid count value");
    }

    if (count == 0 || !length) return changetype<String>("");
    if (count == 1) return this;

    var result = allocateUnsafe(length * count);
    repeatUnsafe(result, 0, this, count);
    return result;
  }

  slice(beginIndex: i32, endIndex: i32 = i32.MAX_VALUE): String {
    var len   = this.length;
    var begin = beginIndex < 0 ? max(beginIndex + len, 0) : min(beginIndex, len);
    var end   = endIndex   < 0 ? max(endIndex   + len, 0) : min(endIndex,   len);
    len = end - begin;
    if (len <= 0) return changetype<String>("");
    var out = allocateUnsafe(len);
    copyUnsafe(out, 0, this, begin, len);
    return out;
  }

  split(separator: String = null, limit: i32 = i32.MAX_VALUE): String[] {
    assert(this !== null);
    if (!limit) return new Array<String>();
    if (separator === null) return <String[]>[this];
    var length: isize = this.length;
    var sepLen: isize = separator.length;
    if (limit < 0) limit = i32.MAX_VALUE;
    if (!sepLen) {
      if (!length) return new Array<String>();
      // split by chars
      length = min<isize>(length, <isize>limit);
      let result = new Array<String>(length);
      let buffer = <ArrayBuffer>result.buffer_;
      for (let i: isize = 0; i < length; ++i) {
        let char = allocateUnsafe(1);
        store<u16>(
          changetype<usize>(char),
          load<u16>(
            changetype<usize>(this) + (<usize>i << 1),
            HEADER_SIZE
          ),
          HEADER_SIZE
        );
        STORE<String>(buffer, i, char);
      }
      return result;
    } else if (!length) {
      let result = new Array<String>(1);
      unchecked(result[0] = changetype<String>(""));
      return result;
    }
    var result = new Array<String>();
    var end = 0, start = 0, i = 0;
    while ((end = this.indexOf(separator, start)) != -1) {
      let len = end - start;
      if (len > 0) {
        let out = allocateUnsafe(len);
        copyUnsafe(out, 0, this, start, len);
        result.push(out);
      } else {
        result.push(changetype<String>(""));
      }
      if (++i == limit) return result;
      start = end + sepLen;
    }
    if (!start) {
      let result = new Array<String>(1);
      unchecked(result[0] = this);
      return result;
    }
    var len = length - start;
    if (len > 0) {
      let out = allocateUnsafe(len);
      copyUnsafe(out, 0, this, start, len);
      result.push(out);
    } else {
      result.push(changetype<String>(""));
    }
    return result;
  }

  toString(): String {
    return this;
  }

  get lengthUTF8(): i32 {
    var len = 1; // null terminated
    var pos: usize = 0;
    var end = <usize>this.length;
    while (pos < end) {
      let c = <u32>load<u16>(changetype<usize>(this) + (pos << 1), HEADER_SIZE);
      if (c < 128) {
        len += 1; ++pos;
      } else if (c < 2048) {
        len += 2; ++pos;
      } else {
        if (
          (c & 0xFC00) == 0xD800 && pos + 1 < end &&
          (<u32>load<u16>(changetype<usize>(this) + ((pos + 1) << 1), HEADER_SIZE) & 0xFC00) == 0xDC00
        ) {
          len += 4; pos += 2;
        } else {
          len += 3; ++pos;
        }
      }
    }
    return len;
  }

  static fromUTF8(ptr: usize, len: usize): String {
    if (len < 1) return changetype<String>("");
    var ptrPos = <usize>0;
    var buf = memory.allocate(<usize>len << 1);
    var bufPos = <usize>0;
    while (ptrPos < len) {
      let cp = <u32>load<u8>(ptr + ptrPos++);
      if (cp < 128) {
        store<u16>(buf + bufPos, cp);
        bufPos += 2;
      } else if (cp > 191 && cp < 224) {
        assert(ptrPos + 1 <= len);
        store<u16>(buf + bufPos, (cp & 31) << 6 | load<u8>(ptr + ptrPos++) & 63);
        bufPos += 2;
      } else if (cp > 239 && cp < 365) {
        assert(ptrPos + 3 <= len);
        cp = (
          (cp                       &  7) << 18 |
          (load<u8>(ptr + ptrPos++) & 63) << 12 |
          (load<u8>(ptr + ptrPos++) & 63) <<  6 |
           load<u8>(ptr + ptrPos++) & 63
        ) - 0x10000;
        store<u16>(buf + bufPos, 0xD800 + (cp >> 10));
        bufPos += 2;
        store<u16>(buf + bufPos, 0xDC00 + (cp & 1023));
        bufPos += 2;
      } else {
        assert(ptrPos + 2 <= len);
        store<u16>(buf + bufPos,
          (cp                       & 15) << 12 |
          (load<u8>(ptr + ptrPos++) & 63) <<  6 |
           load<u8>(ptr + ptrPos++) & 63
        );
        bufPos += 2;
      }
    }
    assert(ptrPos == len);
    var str = allocateUnsafe(<u32>(bufPos >> 1));
    memory.copy(changetype<usize>(str) + HEADER_SIZE, buf, bufPos);
    memory.free(buf);
    return str;
  }

  toUTF8(): usize {
    var buf = memory.allocate(<usize>this.lengthUTF8);
    var pos: usize = 0;
    var end = <usize>this.length;
    var off: usize = 0;
    while (pos < end) {
      let c1 = <u32>load<u16>(changetype<usize>(this) + (pos << 1), HEADER_SIZE);
      if (c1 < 128) {
        store<u8>(buf + off, c1);
        ++off; ++pos;
      } else if (c1 < 2048) {
        let ptr = buf + off;
        store<u8>(ptr, c1 >> 6 | 192);
        store<u8>(ptr, c1 & 63 | 128, 1);
        off += 2; ++pos;
      } else {
        let ptr = buf + off;
        if ((c1 & 0xFC00) == 0xD800 && pos + 1 < end) {
          let c2 = <u32>load<u16>(changetype<usize>(this) + ((pos + 1) << 1), HEADER_SIZE);
          if ((c2 & 0xFC00) == 0xDC00) {
            c1 = 0x10000 + ((c1 & 0x03FF) << 10) + (c2 & 0x03FF);
            store<u8>(ptr, c1 >> 18      | 240);
            store<u8>(ptr, c1 >> 12 & 63 | 128, 1);
            store<u8>(ptr, c1 >>  6 & 63 | 128, 2);
            store<u8>(ptr, c1       & 63 | 128, 3);
            off += 4; pos += 2;
            continue;
          }
        }
        store<u8>(ptr, c1 >> 12     | 224);
        store<u8>(ptr, c1 >> 6 & 63 | 128, 1);
        store<u8>(ptr, c1      & 63 | 128, 2);
        off += 3; ++pos;
      }
    }
    store<u8>(buf + off, 0);
    return buf;
  }
}

export type string = String;

export function parseInt(str: String, radix: i32 = 0): f64 {
  return parse<f64>(str, radix);
}

export function parseI32(str: String, radix: i32 = 0): i32 {
  return parse<i32>(str, radix);
}

export function parseI64(str: String, radix: i32 = 0): i64 {
  return parse<i64>(str, radix);
}

// FIXME: naive implementation
export function parseFloat(str: String): f64 {
  var len: i32 = str.length;
  if (!len) return NaN;

  var ptr = changetype<usize>(str) /* + HEAD -> offset */;
  var code = <i32>load<u16>(ptr, HEADER_SIZE);

  // determine sign
  var sign: f64;
  if (code == CharCode.MINUS) {
    if (!--len) return NaN;
    code = <i32>load<u16>(ptr += 2, HEADER_SIZE);
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) return NaN;
    code = <i32>load<u16>(ptr += 2, HEADER_SIZE);
    sign = 1;
  } else {
    sign = 1;
  }

  // calculate value
  var num: f64 = 0;
  while (len--) {
    code = <i32>load<u16>(ptr, HEADER_SIZE);
    if (code == CharCode.DOT) {
      ptr += 2;
      let fac: f64 = 0.1; // precision :(
      while (len--) {
        code = <i32>load<u16>(ptr, HEADER_SIZE);
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
    num = (num * 10) + code;
    ptr += 2;
  }
  return sign * num;
}
