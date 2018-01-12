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

@global
export class String {
  // [key: number]: string;

  private ptr: usize;

  readonly length: i32;

  constructor(ptr: usize, lenght: i32) {
    this.ptr = ptr;
    this.length = lenght;
  }

  @operator("[]")
  charAt(pos: i32): String {
    assert(this != null);
    return pos < 0 || pos >= this.length ? EMPTY
         : new String(this.ptr + (<usize>pos << 1), 1);
  }

  charCodeAt(pos: i32): i32 {
    assert(this != null);
    return pos < 0 || pos >= this.length ? -1 // NaN
         : load<u16>(this.ptr + (<usize>pos << 1));
  }

  codePointAt(pos: i32): i32 {
    assert(this != null);
    if (pos < 0 || pos >= this.length)
      return -1; // undefined
    var first = <i32>load<u16>(this.ptr + (<usize>pos << 1));
    if (first < 0xD800 || first > 0xDBFF || pos + 1 == this.length)
      return first;
    var second = <i32>load<u16>(this.ptr + ((<usize>pos + 1) << 1));
    if (second < 0xDC00 || second > 0xDFFF)
      return first;
    return ((first - 0xD800) << 10) + (second - 0xDC00) + 0x10000;
  }

  @operator("+")
  concat(other: this): String {
    assert(this != null);
    assert(other != null);
    var thisLen: isize = this.length;
    var otherLen: isize = other.length;
    var len: usize = thisLen + otherLen;
    return new String(
      Heap.copy(
        Heap.copy(
          Heap.allocate(len << 1),
          this.ptr,
          thisLen << 1
        ) + (thisLen << 1),
        other.ptr,
        otherLen << 1
      ),
      <i32>len
    );
  }

  endsWith(searchString: this, endPosition: i32 = 0x7fffffff): bool {
    assert(this != null);
    assert(searchString != null);
    var end: isize = <isize>min<i32>(max<i32>(endPosition, 0), this.length);
    var searchLength: isize = searchString.length;
    var start: isize = end - searchLength;
    if (start < 0)
      return false;
    return !Heap.compare(this.ptr + (start << 1), searchString.ptr, searchLength << 1);
  }

  @operator("==")
  private __eq(other: this): bool {
    assert(this != null);
    assert(other != null);
    return this.length != other.length ? false
         : !Heap.compare(this.ptr, other.ptr, <usize>this.length);
  }

  includes(searchString: this, position: i32 = 0): bool {
    return this.indexOf(searchString, position) != -1;
  }

  indexOf(searchString: this, position: i32 = 0): i32 {
    assert(this != null);
    assert(searchString != null);
    var pos: isize = position;
    var len: isize = this.length;
    var start: isize = min<isize>(max<isize>(pos, 0), len);
    var searchLen: isize = searchString.length;
    for (var k: usize = start; <isize>k + searchLen <= len; ++k)
      if (!Heap.compare(this.ptr + (k << 1), searchString.ptr, searchLen << 1))
        return <i32>k;
    return -1;
  }

  startsWith(searchString: this, position: i32 = 0): bool {
    assert(this != null);
    assert(searchString != null);
    var pos: isize = position;
    var len: isize = this.length;
    var start: isize = min<isize>(max<isize>(position, 0), len);
    var searchLength: isize = searchString.length;
    if (searchLength + start > len)
      return false;
    return !Heap.compare(this.ptr + (start << 1), searchString.ptr, searchLength << 1);
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
    return new String(this.ptr + (intStart << 1), <i32>resultLength);
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
    return new String(this.ptr + (from << 1), len);
  }

  trim(): String {
    assert(this != null);
    var length: usize = this.length;
    while (length && isWhiteSpaceOrLineTerminator(load<u16>(this.ptr + (length << 1))))
      --length;
    var start: usize = 0;
    while (start < length && isWhiteSpaceOrLineTerminator(load<u16>(this.ptr + (start << 1)))) {
      ++start; --length;
    }
    if (!length)
      return EMPTY;
    if (!start && length == this.length)
      return this;
    return new String(this.ptr + (start << 1), length);
  }

  trimLeft(): String {
    assert(this != null);
    var start: isize = 0;
    var len: isize = this.length;
    while (start < len && isWhiteSpaceOrLineTerminator(load<u16>(this.ptr + (start << 1))))
      ++start;
    if (!start)
      return this;
    return new String(this.ptr + (start << 1), <i32>(len - start));
  }

  trimRight(): String {
    assert(this != null);
    var len: isize = this.length;
    while (len > 0 && isWhiteSpaceOrLineTerminator(load<u16>(this.ptr + (len << 1))))
      --len;
    if (len <= 0)
      return EMPTY;
    if (<i32>len == this.length)
      return this;
    return new String(this.ptr, <i32>len);
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

// @global
// @binding(CALL, [ STRING, PASS_THRU ], PASS_THRU)
export function parseInt(str: String, radix: i32 = 0): f64 {
  var len = <u32>str.length;
  if (len == 0 || (radix != 0 && radix < 2) || radix > 36)
    return NaN;

  var s0: u16 = str.charCodeAt(0);
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

// @global
// @binding(CALL, [ STRING ], PASS_THRU)
export function parseFloat(str: string): f64 {
  throw new Error("not implemented");
}
