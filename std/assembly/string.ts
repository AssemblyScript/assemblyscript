import {
  HEADER_SIZE,
  MAX_LENGTH,
  EMPTY,
  clamp,
  allocate,
  isWhiteSpaceOrLineTerminator,
  CharCode,
  parse
} from "./internal/string";

@sealed
export class String {

  readonly length: i32; // capped to [0, MAX_LENGTH]

  static fromCharCode(code: i32): String {
    var out = allocate(1);
    store<u16>(
      changetype<usize>(out),
      <u16>code,
      HEADER_SIZE
    );
    return out;
  }

  @operator("[]")
  charAt(pos: i32): String {
    assert(this !== null);

    if (<u32>pos >= <u32>this.length) {
      return EMPTY;
    }

    var out = allocate(1);
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
    if (<u32>pos >= <u32>this.length) {
      return -1; // (NaN)
    }
    return load<u16>(
      changetype<usize>(this) + (<usize>pos << 1),
      HEADER_SIZE
    );
  }

  codePointAt(pos: i32): i32 {
    assert(this !== null);
    if (<u32>pos >= <u32>this.length) {
      return -1; // (undefined)
    }
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
    var thisLen: isize = this.length;
    var otherLen: isize = other.length;
    var outLen: usize = thisLen + otherLen;
    if (outLen == 0) return EMPTY;
    var out = allocate(outLen);

    memory.copy(
      changetype<usize>(out) + HEADER_SIZE,
      changetype<usize>(this) + HEADER_SIZE,
      thisLen << 1
    );

    memory.copy(
      changetype<usize>(out) + HEADER_SIZE + (thisLen << 1),
      changetype<usize>(other) + HEADER_SIZE,
      otherLen << 1
    );

    return out;
  }

  endsWith(searchString: String, endPosition: i32 = MAX_LENGTH): bool {
    assert(this !== null);
    if (searchString === null) return false;
    var end = clamp<isize>(endPosition, 0, this.length);
    var searchLength: isize = searchString.length;
    var start: isize = end - searchLength;
    if (start < 0) return false;
    return !memory.compare(
      changetype<usize>(this) + HEADER_SIZE + (start << 1),
      changetype<usize>(searchString) + HEADER_SIZE,
      searchLength << 1
    );
  }

  @operator("==")
  private static __eq(left: String, right: String): bool {
    if (left === right) return true;
    if (left === null || right === null) return false;

    var leftLength = left.length;
    if (leftLength != right.length) return false;

    return !memory.compare(
      changetype<usize>(left) + HEADER_SIZE,
      changetype<usize>(right) + HEADER_SIZE,
      (<usize>leftLength << 1)
    );
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
    return memory.compare(
      changetype<usize>(left)  + HEADER_SIZE,
      changetype<usize>(right) + HEADER_SIZE,
      length << 1
    ) > 0;
  }

  @operator(">=")
  private static __gte(left: String, right: String): bool {
    if (left === right) return true;
    if (left === null || right === null) return false;

    var leftLength  = left.length;
    var rightLength = right.length;

    if (!leftLength)  return !rightLength;
    if (!rightLength) return true;

    var length = <usize>min<i32>(leftLength, rightLength);
    return memory.compare(
      changetype<usize>(left)  + HEADER_SIZE,
      changetype<usize>(right) + HEADER_SIZE,
      length << 1
    ) >= 0;
  }

  @operator("<")
  private static __lt(left: String, right: String): bool {
    if (left === right || left === null || right === null) return false;

    var leftLength  = left.length;
    var rightLength = right.length;

    if (!rightLength) return false;
    if (!leftLength)  return true;

    var length = <usize>min<i32>(leftLength, rightLength);
    return memory.compare(
      changetype<usize>(left)  + HEADER_SIZE,
      changetype<usize>(right) + HEADER_SIZE,
      length << 1
    ) < 0;
  }

  @operator("<=")
  private static __lte(left: String, right: String): bool {
    if (left === right) return true;
    if (left === null || right === null) return false;

    var leftLength  = left.length;
    var rightLength = right.length;

    if (!rightLength) return !leftLength;
    if (!leftLength)  return true;

    var length = <usize>min<i32>(leftLength, rightLength);
    return memory.compare(
      changetype<usize>(left)  + HEADER_SIZE,
      changetype<usize>(right) + HEADER_SIZE,
      length << 1
    ) <= 0;
  }

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
    var start = clamp<isize>(fromIndex, 0, len);
    len -= searchLen;
    // TODO: multiple char codes
    for (let k: isize = start; k <= len; ++k) {
      if (!memory.compare(
        changetype<usize>(this) + HEADER_SIZE + (k << 1),
        changetype<usize>(searchString) + HEADER_SIZE,
        searchLen << 1
      )) {
        return <i32>k;
      }
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
    var start = clamp<isize>(fromIndex, 0, len - searchLen);

    // TODO: multiple char codes
    for (let k = start; k >= 0; --k) {
      if (!memory.compare(
        changetype<usize>(this) + HEADER_SIZE + (k << 1),
        changetype<usize>(searchString) + HEADER_SIZE,
        searchLen << 1
      )) {
        return <i32>k;
      }
    }
    return -1;
  }

  startsWith(searchString: String, position: i32 = 0): bool {
    assert(this !== null);
    if (searchString === null) searchString = changetype<String>("null");

    var pos: isize = position;
    var len: isize = this.length;
    var start = clamp<isize>(pos, 0, len);
    var searchLength: isize = searchString.length;
    if (searchLength + start > len) {
      return false;
    }
    return !memory.compare(
      changetype<usize>(this) + HEADER_SIZE + (start << 1),
      changetype<usize>(searchString) + HEADER_SIZE,
      searchLength << 1
    );
  }

  substr(start: i32, length: i32 = i32.MAX_VALUE): String {
    assert(this !== null);
    var intStart: isize = start;
    var end: isize = length;
    var size: isize = this.length;
    if (intStart < 0) {
      intStart = max<isize>(size + intStart, 0);
    }
    var resultLength = clamp<isize>(end, 0, size - intStart);
    if (resultLength <= 0) {
      return EMPTY;
    }
    var out = allocate(resultLength);
    memory.copy(
      changetype<usize>(out) + HEADER_SIZE,
      changetype<usize>(this) + HEADER_SIZE + (intStart << 1),
      <usize>resultLength << 1
    );
    return out;
  }

  substring(start: i32, end: i32 = i32.MAX_VALUE): String {
    assert(this !== null);
    var len = this.length;
    var finalStart = clamp<isize>(start, 0, len);
    var finalEnd = clamp<isize>(end, 0, len);
    var from = min<i32>(finalStart, finalEnd);
    var to = max<i32>(finalStart, finalEnd);
    len = to - from;
    if (!len) {
      return EMPTY;
    }
    if (!from && to == this.length) {
      return this;
    }
    var out = allocate(len);
    memory.copy(
      changetype<usize>(out) + HEADER_SIZE,
      changetype<usize>(this) + HEADER_SIZE + (from << 1),
      len << 1
    );
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
    if (!length) {
      return EMPTY;
    }
    if (!start && length == this.length) {
      return this;
    }
    var out = allocate(length);
    memory.copy(
      changetype<usize>(out) + HEADER_SIZE,
      changetype<usize>(this) + HEADER_SIZE + (start << 1),
      length << 1
    );
    return out;
  }

  trimLeft(): String {
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
    if (!start) {
      return this;
    }
    var outLen = len - start;
    if (!outLen) {
      return EMPTY;
    }
    var out = allocate(outLen);
    memory.copy(
      changetype<usize>(out) + HEADER_SIZE,
      changetype<usize>(this) + HEADER_SIZE + (start << 1),
      outLen << 1
    );
    return out;
  }

  trimRight(): String {
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
    if (len <= 0) {
      return EMPTY;
    }
    if (<i32>len == this.length) {
      return this;
    }
    var out = allocate(len);
    memory.copy(
      changetype<usize>(out) + HEADER_SIZE,
      changetype<usize>(this) + HEADER_SIZE,
      len << 1
    );
    return out;
  }

  repeat(count: i32 = 0): String {
    assert(this !== null);
    var length = this.length;

    // Most browsers can't handle strings 1 << 28 chars or longer
    if (count < 0 || length * count > (1 << 28)) {
      throw new RangeError("Invalid count value");
    }

    if (count === 0 || !length) return EMPTY;
    if (count === 1) return this;

    var result = allocate(length * count);
    var strLen = length << 1;

    /*
     * TODO possible improvments: reuse existing result for exponentially concats like:
     * 'a' + 'a' => 'aa' + 'aa' => 'aaaa' + 'aaaa' etc
     */
    for (let offset = 0, len = strLen * count; offset < len; offset += strLen) {
      memory.copy(
        changetype<usize>(result) + HEADER_SIZE + offset,
        changetype<usize>(this)   + HEADER_SIZE,
        strLen
      );
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
        store<u8>(ptr, c1 >> 6      | 192);
        store<u8>(ptr, c1      & 63 | 128, 1);
        off += 2; ++pos;
      } else {
        let ptr = buf + off;
        if ((c1 & 0xFC00) == 0xD800 && pos + 1 < end) {
          let c2 = <u32>load<u16>(changetype<usize>(this) + ((pos + 1) << 1), HEADER_SIZE);
          if ((c2 & 0xFC00) == 0xDC00) {
            c1 = 0x10000 + ((c1 & 0x03FF) << 10) + (c2 & 0x03FF);
            store<u8>(ptr, c1 >> 18      | 240);
            store<u8>(ptr, c1 >> 12 & 63 | 128, 1);
            store<u8>(ptr, c1 >> 6  & 63 | 128, 2);
            store<u8>(ptr, c1       & 63 | 128, 3);
            off += 4; pos += 2;
            continue;
          }
        }
        store<u8>(ptr, c1 >> 12      | 224);
        store<u8>(ptr, c1 >> 6  & 63 | 128, 1);
        store<u8>(ptr, c1       & 63 | 128, 2);
        off += 3; ++pos;
      }
    }
    store<u8>(buf + off, 0);
    return buf;
  }
}

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
  if (!len) {
    return NaN;
  }
  var ptr = changetype<usize>(str) /* + HEAD -> offset */;
  var code = <i32>load<u16>(ptr, HEADER_SIZE);

  // determine sign
  var sign: f64;
  if (code == CharCode.MINUS) {
    if (!--len) {
      return NaN;
    }
    code = <i32>load<u16>(ptr += 2, HEADER_SIZE);
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) {
      return NaN;
    }
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
        if (<u32>code > 9) {
          break;
        }
        num += <f64>code * fac;
        fac *= 0.1;
        ptr += 2;
      }
      break;
    }
    code -= CharCode._0;
    if (<u32>code >= 10) {
      break;
    }
    num = (num * 10) + code;
    ptr += 2;
  }
  return sign * num;
}
