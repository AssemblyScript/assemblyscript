// singleton empty string
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

// number of bytes preceeding string data
const HEAD: usize = 4;

function allocate(length: i32): String {
  assert(length > 0); // 0 -> EMPTY
  var ptr = allocate_memory(HEAD + (<usize>length << 1));
  store<i32>(ptr, length);
  return changetype<String>(ptr);
}

export class String {

  readonly length: i32;

  @operator("[]")
  charAt(pos: i32): String {
    assert(this != null);

    if (<u32>pos >= this.length)
      return EMPTY;

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

    if (<u32>pos >= this.length)
      return -1; // (NaN)

    return load<u16>(
      changetype<usize>(this) + (<usize>pos << 1),
      HEAD
    );
  }

  codePointAt(pos: i32): i32 {
    assert(this != null);

    if (<u32>pos >= this.length)
      return -1; // (undefined)
    var first = <i32>load<u16>(
      changetype<usize>(this) + (<usize>pos << 1),
      HEAD
    );
    if (first < 0xD800 || first > 0xDBFF || pos + 1 == this.length)
      return first;
    var second = <i32>load<u16>(
      changetype<usize>(this) + ((<usize>pos + 1) << 1),
      HEAD
    );
    if (second < 0xDC00 || second > 0xDFFF)
      return first;
    return ((first - 0xD800) << 10) + (second - 0xDC00) + 0x10000;
  }

  @operator("+")
  private static __concat(left: String, right: String): String {
    if (left == null)
      left = changetype<String>("null");
    return left.concat(right);
  }

  concat(other: String): String {
    assert(this != null);

    if (other == null)
      other = changetype<String>("null");

    var thisLen: isize = this.length;
    var otherLen: isize = other.length;
    var outLen: usize = thisLen + otherLen;
    if (outLen == 0)
      return EMPTY;

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

    if (searchString == null)
      return false;

    var end: isize = <isize>min(max(endPosition, 0), this.length);
    var searchLength: isize = searchString.length;
    var start: isize = end - searchLength;
    if (start < 0)
      return false;

    return !compare_memory(
      changetype<usize>(this) + HEAD + (start << 1),
      changetype<usize>(searchString) + HEAD,
      searchLength << 1
    );
  }

  @operator("==")
  private static __eq(left: String, right: String): bool {
    if (left == null)
      return right == null;
    else if (right == null)
      return false;

    var leftLength = left.length;
    if (leftLength != right.length)
      return false;

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

    if (searchString == null)
      searchString = changetype<String>("null");

    var pos: isize = position;
    var len: isize = this.length;
    var start: isize = min<isize>(max<isize>(pos, 0), len);
    var searchLen: isize = <isize>searchString.length;

    // TODO: two-way, multiple char codes
    for (var k: usize = start; <isize>k + searchLen <= len; ++k)
      if (!compare_memory(
        changetype<usize>(this) + HEAD + (k << 1),
        changetype<usize>(searchString) + HEAD,
        searchLen << 1)
      )
        return <i32>k;
    return -1;
  }

  startsWith(searchString: String, position: i32 = 0): bool {
    assert(this != null);

    if (searchString == null)
      searchString = changetype<String>("null");

    var pos: isize = position;
    var len: isize = this.length;
    var start: isize = min<isize>(max<isize>(position, 0), len);
    var searchLength: isize = <isize>searchString.length;
    if (searchLength + start > len)
      return false;

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
    if (intStart < 0)
      intStart = max<isize>(size + intStart, 0);

    var resultLength: isize = min<isize>(max<isize>(end, 0), size - intStart);
    if (resultLength <= 0)
      return EMPTY;

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
    if (!len)
      return EMPTY;

    if (!from && to == this.length)
      return this;

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
    while (length && isWhiteSpaceOrLineTerminator(load<u16>(changetype<usize>(this) + (length << 1), HEAD)))
      --length;

    var start: usize = 0;
    while (start < length && isWhiteSpaceOrLineTerminator(load<u16>(changetype<usize>(this) + (start << 1), HEAD)))
      ++start, --length;

    if (!length)
      return EMPTY;

    if (!start && length == this.length)
      return this;

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
    while (start < len && isWhiteSpaceOrLineTerminator(load<u16>(changetype<usize>(this) + (start << 1), HEAD)))
      ++start;

    if (!start)
      return this;

    var outLen = len - start;
    if (!outLen)
      return EMPTY;

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
    while (len > 0 && isWhiteSpaceOrLineTerminator(load<u16>(changetype<usize>(this) + (len << 1), HEAD)))
      --len;

    if (len <= 0)
      return EMPTY;

    if (<i32>len == this.length)
      return this;

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
  var len = <i32>str.length;
  if (len == 0 || (radix != 0 && radix < 2) || radix > 36)
    return NaN;

  var s0 = str.charCodeAt(0);
  var pos: i32 = 0;
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
    var digit: i32, c = str.charCodeAt(pos);

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
