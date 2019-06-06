/// <reference path="./rt/index.d.ts" />

import { BLOCK, BLOCK_OVERHEAD, BLOCK_MAXSIZE } from "./rt/common";
import { compareImpl, strtol, strtod, isWhiteSpaceOrLineTerminator } from "./util/string";
import { E_INVALIDLENGTH } from "./util/error";
import { ArrayBufferView } from "./arraybuffer";
import { idof } from "./builtins";

@sealed export abstract class String {

  @lazy static readonly MAX_LENGTH: i32 = BLOCK_MAXSIZE >>> alignof<u16>();

  static fromCharCode(unit: i32, surr: i32 = -1): string {
    var out: usize;
    if (~surr) {
      out = __alloc(4, idof<string>());
      store<u16>(out, <u16>unit);
      store<u16>(out, <u16>surr, 2);
    } else {
      out = __alloc(2, idof<string>());
      store<u16>(out, <u16>unit);
    }
    return changetype<string>(out); // retains
  }

  static fromCodePoint(code: i32): string {
    assert(<u32>code <= 0x10FFFF);
    var sur = code > 0xFFFF;
    var out = __alloc((i32(sur) + 1) << 1, idof<string>());
    if (!sur) {
      store<u16>(out, <u16>code);
    } else {
      code -= 0x10000;
      let hi: u32 = (code >>> 10) + 0xD800;
      let lo: u32 = (code & 0x3FF) + 0xDC00;
      store<u32>(out, (hi << 16) | lo);
    }
    return changetype<string>(out); // retains
  }

  get length(): i32 {
    return changetype<BLOCK>(changetype<usize>(this) - BLOCK_OVERHEAD).rtSize >> 1;
  }

  @operator("[]") charAt(pos: i32): String {
    assert(this !== null);
    if (<u32>pos >= <u32>this.length) return changetype<String>("");
    var out = __alloc(2, idof<String>());
    store<u16>(out, load<u16>(changetype<usize>(this) + (<usize>pos << 1)));
    return changetype<String>(out); // retains
  }

  charCodeAt(pos: i32): i32 {
    if (<u32>pos >= <u32>this.length) return -1; // (NaN)
    return load<u16>(changetype<usize>(this) + (<usize>pos << 1));
  }

  codePointAt(pos: i32): i32 {
    if (<u32>pos >= <u32>this.length) return -1; // (undefined)
    var first = <i32>load<u16>(changetype<usize>(this) + (<usize>pos << 1));
    if (first < 0xD800 || first > 0xDBFF || pos + 1 == this.length) return first;
    var second = <i32>load<u16>(changetype<usize>(this) + ((<usize>pos + 1) << 1));
    if (second < 0xDC00 || second > 0xDFFF) return first;
    return ((first - 0xD800) << 10) + (second - 0xDC00) + 0x10000;
  }

  @operator("+") private static __concat(left: String, right: String): String {
    return select<String>(left, changetype<String>("null"), left !== null).concat(right);
  }

  concat(other: String): String {
    if (other === null) other = changetype<String>("null");
    var thisSize: isize = this.length << 1;
    var otherSize: isize = other.length << 1;
    var outSize: usize = thisSize + otherSize;
    if (outSize == 0) return changetype<String>("");
    var out = changetype<String>(__alloc(outSize, idof<String>())); // retains
    memory.copy(changetype<usize>(out), changetype<usize>(this), thisSize);
    memory.copy(changetype<usize>(out) + thisSize, changetype<usize>(other), otherSize);
    return out;
  }

  endsWith(search: String, end: i32 = String.MAX_LENGTH): bool {
    assert(this !== null);
    if (search === null) return false;
    end = min(max(end, 0), this.length);
    var searchLength = <isize>search.length;
    var searchStart = <isize>end - searchLength;
    if (searchStart < 0) return false;
    // @ts-ignore: string <-> String
    return !compareImpl(this, searchStart, search, 0, searchLength);
  }

  @operator("==") private static __eq(left: String | null, right: String | null): bool {
    if (left === right) return true;
    if (left === null || right === null) return false;
    var leftLength = left.length;
    if (leftLength != right.length) return false;
    // @ts-ignore: string <-> String
    return !compareImpl(left, 0, right, 0, leftLength);
  }

  @operator.prefix("!")
  private static __not(str: String | null): bool {
    return str === null || !str.length;
  }

  @operator("!=")
  private static __ne(left: String | null, right: String | null): bool {
    return !this.__eq(left, right);
  }

  @operator(">") private static __gt(left: String | null, right: String | null): bool {
    if (left === right || left === null || right === null) return false;
    var leftLength  = left.length;
    var rightLength = right.length;
    if (!leftLength)  return false;
    if (!rightLength) return true;
    // @ts-ignore: string <-> String
    return compareImpl(left, 0, right, 0, min(leftLength, rightLength)) > 0;
  }

  @operator(">=") private static __gte(left: String, right: String): bool {
    return !this.__lt(left, right);
  }

  @operator("<") private static __lt(left: String, right: String): bool {
    if (left === right || left === null || right === null) return false;
    var leftLength  = left.length;
    var rightLength = right.length;
    if (!rightLength) return false;
    if (!leftLength)  return true;
    // @ts-ignore: string <-> String
    return compareImpl(left, 0, right, 0, min(leftLength, rightLength)) < 0;
  }

  @operator("<=") private static __lte(left: String, right: String): bool {
    return !this.__gt(left, right);
  }

  includes(search: String, start: i32 = 0): bool {
    return this.indexOf(search, start) != -1;
  }

  indexOf(search: String, start: i32 = 0): i32 {
    var searchLen = <isize>search.length;
    if (!searchLen) return 0;
    var len = <isize>this.length;
    if (!len) return -1;
    var searchStart = min(max(<isize>start, 0), len);
    for (len -= searchLen; searchStart <= len; ++searchStart) {
      // @ts-ignore: string <-> String
      if (!compareImpl(this, searchStart, search, 0, searchLen)) return <i32>searchStart;
    }
    return -1;
  }

  lastIndexOf(search: String, start: i32 = i32.MAX_VALUE): i32 {
    var searchLen = <isize>search.length;
    if (!searchLen) return this.length;
    var len = this.length;
    if (!len) return -1;
    var searchStart = min(max(<isize>start, 0), <isize>len - searchLen);
    for (; searchStart >= 0; --searchStart) {
      // @ts-ignore: string <-> String
      if (!compareImpl(this, searchStart, search, 0, searchLen)) return <i32>searchStart;
    }
    return -1;
  }

  startsWith(search: String, start: i32 = 0): bool {
    assert(this !== null);
    if (search === null) search = changetype<String>("null");
    var len = <isize>this.length;
    var searchStart = min(max(<isize>start, 0), len);
    var searchLength = <isize>search.length;
    if (searchLength + searchStart > len) return false;
    // @ts-ignore: string <-> String
    return !compareImpl(this, searchStart, search, 0, searchLength);
  }

  substr(start: i32, length: i32 = i32.MAX_VALUE): String { // legacy
    assert(this !== null);
    var intStart: isize = start;
    var end: isize = length;
    var size: isize = this.length;
    if (intStart < 0) intStart = max(size + intStart, 0);
    var resultLength = min(max(end, 0), size - intStart);
    if (resultLength <= 0) return changetype<String>("");
    var out = __alloc(resultLength << 1, idof<String>());
    memory.copy(out, changetype<usize>(this) + intStart, resultLength);
    return changetype<String>(out); // retains
  }

  substring(start: i32, end: i32 = i32.MAX_VALUE): String {
    assert(this !== null);
    var len: isize = this.length;
    var finalStart = min<isize>(max(start, 0), len);
    var finalEnd = min<isize>(max(end, 0), len);
    var fromPos = min<isize>(finalStart, finalEnd) << 1;
    var toPos = max<isize>(finalStart, finalEnd) << 1;
    len = toPos - fromPos;
    if (!len) return changetype<String>("");
    if (!fromPos && toPos == this.length << 1) return this;
    var out = __alloc(len, idof<String>());
    memory.copy(out, changetype<usize>(this) + fromPos, len);
    return changetype<String>(out); // retains
  }

  trim(): String {
    assert(this !== null);
    var length = this.length;
    var size: usize = length << 1;
    while (
      size &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + size)
      )
    ) {
      size -= 2;
    }
    var offset: usize = 0;
    while (
      offset < size &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + offset)
      )
    ) {
      offset += 2; size -= 2;
    }
    if (!size) return changetype<String>("");
    if (!start && size == length << 1) return this;
    var out = __alloc(size, idof<String>());
    memory.copy(out, changetype<usize>(this) + offset, size);
    return changetype<String>(out); // retains
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
    var size = <usize>this.length << 1;
    var offset: usize = 0;
    while (
      offset < size &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + offset)
      )
    ) {
      offset += 2;
    }
    if (!offset) return this;
    size -= offset;
    if (!size) return changetype<String>("");
    var out = __alloc(size, idof<String>());
    memory.copy(out, changetype<usize>(this) + offset, size);
    return changetype<String>(out); // retains
  }

  trimEnd(): String {
    assert(this !== null);
    var originalSize = <usize>this.length << 1;
    var size = originalSize;
    while (
      size &&
      isWhiteSpaceOrLineTerminator(
        load<u16>(changetype<usize>(this) + size)
      )
    ) {
      size -= 2;
    }
    if (!size) return changetype<String>("");
    if (size == originalSize) return this;
    var out = __alloc(size, idof<String>());
    memory.copy(out, changetype<usize>(this), size);
    return changetype<String>(out); // retains
  }

  padStart(length: i32, pad: string = " "): String {
    assert(this !== null);
    var thisSize = <usize>this.length << 1;
    var targetSize = <usize>length << 1;
    var padSize = <usize>pad.length << 1;
    if (targetSize < thisSize || !padSize) return this;
    var prependSize = targetSize - thisSize;
    var out = __alloc(targetSize, idof<String>());
    if (prependSize > padSize) {
      let repeatCount = (prependSize - 2) / padSize;
      let restBase = repeatCount * padSize;
      let restSize = prependSize - restBase;
      memory.repeat(out, changetype<usize>(pad), padSize, repeatCount);
      memory.copy(out + restBase, changetype<usize>(pad), restSize);
    } else {
      memory.copy(out, changetype<usize>(pad), prependSize);
    }
    memory.copy(out + prependSize, changetype<usize>(this), thisSize);
    return changetype<String>(out); //  retains
  }

  padEnd(length: i32, pad: string = " "): String {
    assert(this !== null);
    var thisSize = <usize>this.length << 1;
    var targetSize = <usize>length << 1;
    var padSize = <usize>pad.length << 1;
    if (targetSize < thisSize || !padSize) return this;
    var appendSize = targetSize - thisSize;
    var out = __alloc(targetSize, idof<String>());
    memory.copy(out, changetype<usize>(this), thisSize);
    if (appendSize > padSize) {
      let repeatCount = (appendSize - 2) / padSize;
      let restBase = repeatCount * padSize;
      let restSize = appendSize - restBase;
      memory.repeat(out + thisSize, changetype<usize>(pad), padSize, repeatCount);
      memory.copy(out + thisSize + restBase, changetype<usize>(pad), restSize);
    } else {
      memory.copy(out + thisSize, changetype<usize>(pad), appendSize);
    }
    return changetype<String>(out); // retains
  }

  repeat(count: i32 = 0): String {
    assert(this !== null);
    var length = this.length;

    // Most browsers can't handle strings 1 << 28 chars or longer
    if (count < 0 || <u64>length * count > (1 << 28)) {
      throw new RangeError(E_INVALIDLENGTH);
    }

    if (count == 0 || !length) return changetype<String>("");
    if (count == 1) return this;
    var out = __alloc((length * count) << 1, idof<String>());
    memory.repeat(out, changetype<usize>(this), <usize>length << 1, count);
    return changetype<String>(out); // retains
  }

  slice(start: i32, end: i32 = i32.MAX_VALUE): String {
    var len   = this.length;
    start = start < 0 ? max(start + len, 0) : min(start, len);
    end   = end   < 0 ? max(end   + len, 0) : min(end,   len);
    len   = end - start;
    if (len <= 0) return changetype<String>("");
    var out = __alloc(len << 1, idof<String>());
    memory.copy(out, changetype<usize>(this) + (<usize>start << 1), <usize>len << 1);
    return changetype<String>(out); // retains
  }

  split(separator: String | null = null, limit: i32 = i32.MAX_VALUE): String[] {
    assert(this !== null);
    if (!limit) return changetype<Array<String>>(__allocArray(0, alignof<String>(), idof<Array<String>>())); // retains
    if (separator === null) return <String[]>[this];
    var length: isize = this.length;
    var sepLen: isize = separator.length;
    if (limit < 0) limit = i32.MAX_VALUE;
    if (!sepLen) {
      if (!length) return changetype<Array<String>>(__allocArray(0, alignof<String>(), idof<Array<String>>()));  // retains
      // split by chars
      length = min<isize>(length, <isize>limit);
      let result = __allocArray(length, alignof<String>(), idof<Array<String>>());
      let resultStart = changetype<ArrayBufferView>(result).dataStart;
      for (let i: isize = 0; i < length; ++i) {
        let charStr = __alloc(2, idof<String>());
        store<u16>(charStr, load<u16>(changetype<usize>(this) + (<usize>i << 1)));
        store<usize>(resultStart + (<usize>i << alignof<usize>()), charStr); // result[i] = charStr
        if (isManaged<String>()) __retain(charStr);
      }
      return changetype<Array<String>>(result); // retains
    } else if (!length) {
      let result = __allocArray(1, alignof<String>(), idof<Array<String>>());
      store<usize>(changetype<ArrayBufferView>(result).dataStart, changetype<usize>("")); // static ""
      return changetype<Array<String>>(result); // retains
    }
    var result = changetype<Array<String>>(__allocArray(0, alignof<String>(), idof<Array<String>>())); // retains
    var end = 0, start = 0, i = 0;
    while ((end = this.indexOf(separator, start)) != -1) {
      let len = end - start;
      if (len > 0) {
        let out = __alloc(<usize>len << 1, idof<String>());
        memory.copy(out, changetype<usize>(this) + (<usize>start << 1), <usize>len << 1);
        result.push(changetype<String>(out));
      } else {
        result.push(changetype<String>(""));
      }
      if (++i == limit) return changetype<Array<String>>(result); // retains
      start = end + sepLen;
    }
    if (!start) { // also means: loop above didn't do anything
      result.push(this);
      return changetype<Array<String>>(result); // retains
    }
    var len = length - start;
    if (len > 0) {
      let out = __alloc(<usize>len << 1, idof<String>());
      memory.copy(out, changetype<usize>(this) + (<usize>start << 1), <usize>len << 1);
      result.push(changetype<String>(out)); // retains
    } else {
      result.push(changetype<String>("")); // static ""
    }
    return changetype<Array<String>>(result); // retains
    // releases result
  }

  toString(): String {
    return this;
  }

  get lengthUTF8(): i32 {
    var len = 1; // null terminated
    var pos: usize = 0;
    var end = <usize>this.length;
    while (pos < end) {
      let c = <u32>load<u16>(changetype<usize>(this) + (pos << 1));
      if (c < 128) {
        len += 1; ++pos;
      } else if (c < 2048) {
        len += 2; ++pos;
      } else {
        if (
          (c & 0xFC00) == 0xD800 && pos + 1 < end &&
          (<u32>load<u16>(changetype<usize>(this) + ((pos + 1) << 1)) & 0xFC00) == 0xDC00
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
    var buf = __alloc(<usize>len << 1, 0);
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
    var out = __alloc(bufPos, idof<String>());
    memory.copy(out, buf, bufPos);
    __free(buf);
    return changetype<String>(out); // retains
  }

  toUTF8(): usize {
    var buf = __alloc(<usize>this.lengthUTF8, 0);
    var pos: usize = 0;
    var end = <usize>this.length;
    var off: usize = 0;
    while (pos < end) {
      let c1 = <u32>load<u16>(changetype<usize>(this) + (pos << 1));
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
          let c2 = <u32>load<u16>(changetype<usize>(this) + ((pos + 1) << 1));
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

// @ts-ignore: nolib
export type string = String;

export function parseInt(str: string, radix: i32 = 0): f64 {
  return strtol<f64>(str, radix);
}

export function parseFloat(str: string): f64 {
  return strtod(str);
}
