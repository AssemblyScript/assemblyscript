const EMPTY: String = changetype<String>("");

const HEAD: usize = 4;

function allocate(length: i32): String {
  assert(<u32>length >= 1);
  var ptr = allocate_memory(HEAD + length * 2);
  store<i32>(ptr, length);
  return changetype<String>(ptr);
}

export class String {

  readonly length: i32;

  @operator("[]")
  charAt(pos: i32): String {
    if (<u32>pos >= this.length)
      return EMPTY;
    var out = allocate(1);
    store<u16>(
      changetype<usize>(out),
      load<u16>(changetype<usize>(this) + (<usize>pos << 1), HEAD),
      HEAD
    );
    return out;
  }

  charCodeAt(pos: i32): i32 {
    if (<u32>pos >= this.length)
      return -1; // NaN
    return load<u16>(changetype<usize>(this) + (<usize>pos << 1), HEAD);
  }

  codePointAt(pos: i32): i32 {
    if (<u32>pos >= this.length)
      return -1; // undefined
    var first = <i32>load<u16>(changetype<usize>(this) + (<usize>pos << 1), HEAD);
    if (first < 0xD800 || first > 0xDBFF || pos + 1 == this.length)
      return first;
    var second = <i32>load<u16>(changetype<usize>(this) + ((<usize>pos + 1) << 1), HEAD);
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
    if (len == 0)
      return EMPTY;
    var out = allocate(len);
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
    assert(searchString != null);
    var end: isize = <isize>min<i32>(max<i32>(endPosition, 0), this.length);
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
  private __eq(other: String): bool {
    if (this == null)
      return other == null;
    else if (other == null)
      return false;
    if (this.length != other.length)
      return false;
    return !compare_memory(
      changetype<usize>(this) + HEAD,
      changetype<usize>(other) + HEAD,
      <usize>(this.length << 1)
    );
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
    assert(searchString != null);
    var pos: isize = position;
    var len: isize = this.length;
    var start: isize = min<isize>(max<isize>(position, 0), len);
    var searchLength: isize = searchString.length;
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
    while (start < length && isWhiteSpaceOrLineTerminator(load<u16>(changetype<usize>(this) + (start << 1), HEAD))) {
      ++start; --length;
    }
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
export function parseInt(str: string, radix: i32 = 10): f64 {
  throw new Error("not implemented");
}

// @binding(CALL, [ STRING ], PASS_THRU)
export function parseFloat(str: string): f64 {
  throw new Error("not implemented");
}
