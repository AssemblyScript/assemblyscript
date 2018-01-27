const EMPTY: String = changetype<String>("");

const cp: u16 = 43;  // "+"
const cn: u16 = 45;  // "-"
const cx: u16 = 120; // "x"
const cX: u16 = 88;  // "X"
const c0: u16 = 48;  // "0"
const c9: u16 = 57;  // "9"
const ca: u16 = 97;  // "a"
const cz: u16 = 122; // "z"
const cA: u16 = 65;  // "A"
const cZ: u16 = 90;  // "Z"

function allocate(length: i32): String {
  var ptr = allocate_memory(4 + length * 2);
  store<i32>(ptr, length);
  return changetype<String>(ptr);
}

@unmanaged
export class String {

  readonly length: i32;

  @operator("[]")
  charAt(pos: i32): String {
    if (<u32>pos >= this.length)
      return EMPTY;
    var out = allocate(1);
    store<u16>(changetype<usize>(out), load<u16>(changetype<usize>(this) + (<usize>pos << 1), 4), 4);
    return out;
  }

  charCodeAt(pos: i32): i32 {
    if (<u32>pos >= this.length)
      return -1; // NaN
    return load<u16>(changetype<usize>(this) + (<usize>pos << 1), 4);
  }

  codePointAt(pos: i32): i32 {
    if (<u32>pos >= this.length)
      return -1; // undefined
    var first = <i32>load<u16>(changetype<usize>(this) + (<usize>pos << 1), 4);
    if (first < 0xD800 || first > 0xDBFF || pos + 1 == this.length)
      return first;
    var second = <i32>load<u16>(changetype<usize>(this) + ((<usize>pos + 1) << 1), 4);
    if (second < 0xDC00 || second > 0xDFFF)
      return first;
    return ((first - 0xD800) << 10) + (second - 0xDC00) + 0x10000;
  }

  @operator("+")
  concat(other: String): String {
    assert(this != null);
    assert(other != null);
    var thisLen: isize = this.length;
    var otherLen: isize = other.length;
    var len: usize = thisLen + otherLen;
    var out = allocate(len);
    move_memory(changetype<usize>(out) + 4, changetype<usize>(this) + 4, thisLen << 1);
    move_memory(changetype<usize>(out) + 4 + (thisLen << 1), changetype<usize>(other) + 4, otherLen << 1);
    return out;
  }

  endsWith(searchString: String, endPosition: i32 = 0x7fffffff): bool {
    assert(searchString != null);
    var end: isize = <isize>min<i32>(max<i32>(endPosition, 0), this.length);
    var searchLength: isize = searchString.length;
    var start: isize = end - searchLength;
    if (start < 0)
      return false;
    return !compare_memory(changetype<usize>(this) + 4 + (start << 1), changetype<usize>(searchString) + 4, searchLength << 1);
  }

  @operator("==")
  private __eq(other: String): bool {
    if (this == null)
      return other == null;
    else if (other == null)
      return false;
    if (this.length != other.length)
      return false;
    return !compare_memory(changetype<usize>(this) + 4, changetype<usize>(other) + 4, <usize>(this.length << 1));
  }

  includes(searchString: String, position: i32 = 0): bool {
    return this.indexOf(searchString, position) != -1;
  }

  indexOf(searchString: String, position: i32 = 0): i32 {
    assert(searchString != null);
    var pos: isize = position;
    var len: isize = this.length;
    var start: isize = min<isize>(max<isize>(pos, 0), len);
    var searchLen: isize = searchString.length;
    for (var k: usize = start; <isize>k + searchLen <= len; ++k)
      if (!compare_memory(changetype<usize>(this) + 4 + (k << 1), changetype<usize>(searchString) + 4, searchLen << 1))
        return <i32>k;
    return -1;
  }

  startsWith(searchString: String, position: i32 = 0): bool {
    assert(this != null);
    assert(searchString != null);
    var pos: isize = position;
    var len: isize = this.length;
    var start: isize = min<isize>(max<isize>(position, 0), len);
    var searchLength: isize = searchString.length;
    if (searchLength + start > len)
      return false;
    return !compare_memory(changetype<usize>(this) + 4 + (start << 1), changetype<usize>(searchString) + 4, searchLength << 1);
  }

  substr(start: i32, length: i32 = i32.MAX_VALUE): String {
    assert(this != null);
    var intStart: isize = start;
    var end: isize = length;
    var size: isize = this.length;
    if (intStart < 0)
      intStart = max<isize>(size + intStart, 0);
    var resultLength: isize = min<isize>(max<isize>(end, 0), size - intStart);
    if (resultLength < 0)
      return EMPTY;
    var out = allocate(resultLength);
    move_memory(changetype<usize>(out) + 4, changetype<usize>(this) + 4 + (intStart << 1), <usize>resultLength << 1);
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
    if (!len)
      return EMPTY;
    if (!from && to == this.length)
      return this;
    var out = allocate(len);
    move_memory(changetype<usize>(out) + 4, changetype<usize>(this) + 4 + (from << 1), len << 1);
    return out;
  }

  trim(): String {
    assert(this != null);
    var length: usize = this.length;
    while (length && isWhiteSpaceOrLineTerminator(load<u16>(changetype<usize>(this) + (length << 1), 4)))
      --length;
    var start: usize = 0;
    while (start < length && isWhiteSpaceOrLineTerminator(load<u16>(changetype<usize>(this) + (start << 1), 4))) {
      ++start; --length;
    }
    if (!length)
      return EMPTY;
    if (!start && length == this.length)
      return this;
    var out = allocate(length);
    move_memory(changetype<usize>(out) + 4, changetype<usize>(this) + 4 + (start << 1), length << 1);
    return out;
  }

  trimLeft(): String {
    assert(this != null);
    var start: isize = 0;
    var len: isize = this.length;
    while (start < len && isWhiteSpaceOrLineTerminator(load<u16>(changetype<usize>(this) + (start << 1), 4)))
      ++start;
    if (!start)
      return this;
    var outLen = len - start;
    var out = allocate(outLen);
    move_memory(changetype<usize>(out) + 4, changetype<usize>(this) + 4 + (start << 1), outLen << 1);
    return out;
  }

  trimRight(): String {
    assert(this != null);
    var len: isize = this.length;
    while (len > 0 && isWhiteSpaceOrLineTerminator(load<u16>(changetype<usize>(this) + (len << 1), 4)))
      --len;
    if (len <= 0)
      return EMPTY;
    if (<i32>len == this.length)
      return this;
    var out = allocate(len);
    move_memory(changetype<usize>(out) + 4, changetype<usize>(this) + 4, len << 1);
    return out;
  }
}

function isWhiteSpaceOrLineTerminator(c: u16): bool {
  switch (c) {

    case 10:    // <LF>
    case 13:    // <CR>
    case 8232:  // <LS>
    case 8233:  // <PS>

    case 9:     // <TAB>
    case 11:    // <VT>
    case 12:    // <FF>
    case 32:    // <SP>
    case 160:   // <NBSP>
    case 65279: // <ZWNBSP>

      return true;
    default:
      return false;
  }
}

// @binding(CALL, [ STRING, PASS_THRU ], PASS_THRU)
export function parseInt(str: String, radix: i32 = 0): f64 {
  var len = <u32>str.length;
  if (len == 0 || (radix != 0 && radix < 2) || radix > 36)
    return NaN;

  var s0 = str.charCodeAt(0);
  var pos: u32 = 0;
  var neg = (s0 == cn);

  if (s0 == cp || neg) {
    if (len == 1)
      return NaN;

    pos = 1;
  }

  if (radix == 0) {
    if (str.charCodeAt(pos) == c0) {
      var s1 = str.charCodeAt(pos + 1);
      if (len > 1 && (s1 == cx || s1 == cX)) {
        if (len < pos + 3)
          return NaN;

        radix = 16;
        pos += 2;

      } else {
        // radix = 8;
        // pos += 1;
        radix = 10;
      }
    } else {
      radix = 10;
    }
  }

  var valid = false;
  var result: f64 = 0;

  for (; pos < len; ++pos) {
    var digit: i32, c: i32 = str.charCodeAt(pos);

         if (c0 <= c && c <= c9) digit = c - c0;
    else if (ca <= c && c <= cz) digit = c - ca + 10;
    else if (cA <= c && c <= cZ) digit = c - cA + 10;
    else {
      if (valid) break;
      return NaN;
    }

    if (digit >= radix) {
      if (valid) break;
      return NaN;
    }

    valid = true;

    result *= radix;
    result += digit;
  }

  if (!valid && len > 2)
    return NaN;

  return neg ? -result : result;
}

// @binding(CALL, [ STRING ], PASS_THRU)
export function parseFloat(str: string): f64 {
  throw new Error("not implemented");
}
