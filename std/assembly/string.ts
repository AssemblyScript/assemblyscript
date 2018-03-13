// singleton empty string
const EMPTY: String = changetype<String>("");

// number of bytes preceeding string data
const HEAD: usize = 4;

function allocate(length: i32): String {
  assert(length > 0); // 0 -> EMPTY
  var ptr = allocate_memory(HEAD + (<usize>length << 1));
  store<i32>(ptr, length);
  return changetype<String>(ptr);
}

export class String {

  readonly length: i32; // capped to [0, 0x7fffffff]

  @operator("[]")
  charAt(pos: i32): String {
    assert(this != null);

    if (<u32>pos >= <u32>this.length) {
      return EMPTY;
    }

    var out = allocate(1);
    store<u16>(
      changetype<usize>(out),
      load<u16>(
        changetype<usize>(this) + (<usize>pos << 1),
        HEAD
      ),
      HEAD
    );
    return out;
  }

  charCodeAt(pos: i32): i32 {
    assert(this != null);
    if (<u32>pos >= <u32>this.length) {
      return -1; // (NaN)
    }
    return load<u16>(
      changetype<usize>(this) + (<usize>pos << 1),
      HEAD
    );
  }

  codePointAt(pos: i32): i32 {
    assert(this != null);
    if (<u32>pos >= <u32>this.length) {
      return -1; // (undefined)
    }
    var first = <i32>load<u16>(
      changetype<usize>(this) + (<usize>pos << 1),
      HEAD
    );
    if (first < 0xD800 || first > 0xDBFF || pos + 1 == this.length) {
      return first;
    }
    var second = <i32>load<u16>(
      changetype<usize>(this) + ((<usize>pos + 1) << 1),
      HEAD
    );
    if (second < 0xDC00 || second > 0xDFFF) {
      return first;
    }
    return ((first - 0xD800) << 10) + (second - 0xDC00) + 0x10000;
  }

  @operator("+")
  private static __concat(left: String, right: String): String {
    if (left == null) {
      left = changetype<String>("null");
    }
    return left.concat(right);
  }

  concat(other: String): String {
    assert(this != null);
    if (other == null) {
      other = changetype<String>("null");
    }
    var thisLen: isize = this.length;
    var otherLen: isize = other.length;
    var outLen: usize = thisLen + otherLen;
    if (outLen == 0) {
      return EMPTY;
    }
    var out = allocate(outLen);
    move_memory(
      changetype<usize>(out) + HEAD,
      changetype<usize>(this) + HEAD,
      thisLen << 1
    );
    move_memory(
      changetype<usize>(out) + HEAD + (thisLen << 1),
      changetype<usize>(other) + HEAD,
      otherLen << 1
    );
    return out;
  }

  endsWith(searchString: String, endPosition: i32 = 0x7fffffff): bool {
    assert(this != null);
    if (searchString == null) {
      return false;
    }
    var end: isize = <isize>min(max(endPosition, 0), this.length);
    var searchLength: isize = searchString.length;
    var start: isize = end - searchLength;
    if (start < 0) {
      return false;
    }
    return !compare_memory(
      changetype<usize>(this) + HEAD + (start << 1),
      changetype<usize>(searchString) + HEAD,
      searchLength << 1
    );
  }

  @operator("==")
  private static __eq(left: String, right: String): bool {
    if (left == null) {
      return right == null;
    } else if (right == null) {
      return false;
    }
    var leftLength = left.length;
    if (leftLength != right.length) {
      return false;
    }
    return !compare_memory(
      changetype<usize>(left) + HEAD,
      changetype<usize>(right) + HEAD,
      (<usize>leftLength << 1)
    );
  }

  includes(searchString: String, position: i32 = 0): bool {
    return this.indexOf(searchString, position) != -1;
  }

  indexOf(searchString: String, position: i32 = 0): i32 {
    assert(this != null);
    if (searchString == null) {
      searchString = changetype<String>("null");
    }
    var pos: isize = position;
    var len: isize = this.length;
    var start: isize = min<isize>(max<isize>(pos, 0), len);
    var searchLen: isize = <isize>searchString.length;

    // TODO: two-way, multiple char codes
    for (let k: usize = start; <isize>k + searchLen <= len; ++k) {
      if (!compare_memory(
        changetype<usize>(this) + HEAD + (k << 1),
        changetype<usize>(searchString) + HEAD,
        searchLen << 1)
      ) {
        return <i32>k;
      }
    }
    return -1;
  }

  startsWith(searchString: String, position: i32 = 0): bool {
    assert(this != null);
    if (searchString == null) {
      searchString = changetype<String>("null");
    }
    var pos: isize = position;
    var len: isize = this.length;
    var start: isize = min<isize>(max<isize>(pos, 0), len);
    var searchLength: isize = <isize>searchString.length;
    if (searchLength + start > len) {
      return false;
    }
    return !compare_memory(
      changetype<usize>(this) + HEAD + (start << 1),
      changetype<usize>(searchString) + HEAD,
      searchLength << 1
    );
  }

  substr(start: i32, length: i32 = i32.MAX_VALUE): String {
    assert(this != null);
    var intStart: isize = start;
    var end: isize = length;
    var size: isize = this.length;
    if (intStart < 0) {
      intStart = max<isize>(size + intStart, 0);
    }
    var resultLength: isize = min<isize>(max<isize>(end, 0), size - intStart);
    if (resultLength <= 0) {
      return EMPTY;
    }
    var out = allocate(resultLength);
    move_memory(
      changetype<usize>(out) + HEAD,
      changetype<usize>(this) + HEAD + (intStart << 1),
      <usize>resultLength << 1
    );
    return out;
  }

  substring(start: i32, end: i32 = i32.MAX_VALUE): String {
    assert(this != null);
    var len = this.length;
    var finalStart = min<i32>(max<i32>(start, 0), len);
    var finalEnd = min<i32>(max<i32>(end, 0), len);
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
    move_memory(
      changetype<usize>(out) + HEAD,
      changetype<usize>(this) + HEAD + (from << 1),
      len << 1
    );
    return out;
  }

  trim(): String {
    assert(this != null);
    var length: usize = this.length;
    while (
      length &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + (length << 1), HEAD)
      )
    ) {
      --length;
    }
    var start: usize = 0;
    while (
      start < length &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + (start << 1), HEAD)
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
    move_memory(
      changetype<usize>(out) + HEAD,
      changetype<usize>(this) + HEAD + (start << 1),
      length << 1
    );
    return out;
  }

  trimLeft(): String {
    assert(this != null);
    var start: isize = 0;
    var len: isize = this.length;
    while (
      start < len &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + (start << 1), HEAD)
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
    move_memory(
      changetype<usize>(out) + HEAD,
      changetype<usize>(this) + HEAD + (start << 1),
      outLen << 1
    );
    return out;
  }

  trimRight(): String {
    assert(this != null);
    var len: isize = this.length;
    while (
      len > 0 &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + (len << 1), HEAD)
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
    move_memory(
      changetype<usize>(out) + HEAD,
      changetype<usize>(this) + HEAD,
      len << 1
    );
    return out;
  }
}

function isWhiteSpaceOrLineTerminator(c: u16): bool {
  switch (c) {
    case 10:      // <LF>
    case 13:      // <CR>
    case 8232:    // <LS>
    case 8233:    // <PS>
    case 9:       // <TAB>
    case 11:      // <VT>
    case 12:      // <FF>
    case 32:      // <SP>
    case 160:     // <NBSP>
    case 65279: { // <ZWNBSP>
      return true;
    }
    default: return false;
  }
}

const enum CharCode {
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
  O = 0x4F,
  X = 0x58,
  Z = 0x5a,
  a = 0x61,
  b = 0x62,
  e = 0x65,
  o = 0x6F,
  x = 0x78,
  z = 0x7A
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

function parse<T>(str: String, radix: i32 = 0): T {
  var len: i32 = str.length;
  if (!len) {
    return <T>NaN;
  }
  var ptr = changetype<usize>(str) /* + HEAD -> offset */;
  var code = <i32>load<u16>(ptr, HEAD);

  // determine sign
  var sign: T;
  if (code == CharCode.MINUS) {
    if (!--len) {
      return <T>NaN;
    }
    code = <i32>load<u16>(ptr += 2, HEAD);
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) {
      return <T>NaN;
    }
    code = <i32>load<u16>(ptr += 2, HEAD);
    sign = 1;
  } else {
    sign = 1;
  }

  // determine radix
  if (!radix) {
    if (code == CharCode._0 && len > 2) {
      switch (<i32>load<u16>(ptr + 2, HEAD)) {
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
        default: {
          radix = 10;
        }
      }
    } else radix = 10;
  } else if (radix < 2 || radix > 36) {
    return <T>NaN;
  }

  // calculate value
  var num: T = 0;
  while (len--) {
    code = <i32>load<u16>(ptr, HEAD);
    if (code >= CharCode._0 && code <= CharCode._9) {
      code -= CharCode._0;
    } else if (code >= CharCode.A && code <= CharCode.Z) {
      code -= CharCode.A - 10;
    } else if (code >= CharCode.a && code <= CharCode.z) {
      code -= CharCode.a - 10;
    } else {
      break;
    }
    if (code >= radix) {
      break;
    }
    num = (num * radix) + code;
    ptr += 2;
  }
  return sign * num;
}

export function parseFloat(str: String): f64 {
  var len: i32 = str.length;
  if (!len) {
    return NaN;
  }
  var ptr = changetype<usize>(str) /* + HEAD -> offset */;
  var code = <i32>load<u16>(ptr, HEAD);

  // determine sign
  var sign: f64;
  if (code == CharCode.MINUS) {
    if (!--len) {
      return NaN;
    }
    code = <i32>load<u16>(ptr += 2, HEAD);
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) {
      return NaN;
    }
    code = <i32>load<u16>(ptr += 2, HEAD);
    sign = 1;
  } else {
    sign = 1;
  }

  // calculate value
  var num: f64 = 0;
  while (len--) {
    code = <i32>load<u16>(ptr, HEAD);
    if (code == CharCode.DOT) {
      ptr += 2;
      let fac: f64 = 0.1; // precision :(
      while (len--) {
        code = <i32>load<u16>(ptr, HEAD);
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
