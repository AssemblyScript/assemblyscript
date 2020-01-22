/// <reference path="./rt/index.d.ts" />

import { BLOCK, BLOCK_OVERHEAD, BLOCK_MAXSIZE } from "./rt/common";
import { compareImpl, strtol, strtod, isSpace, isAscii, toLower8, toUpper8 } from "./util/string";
import { specialsUpper, casemap, bsearch } from "./util/casemap";
import { E_INVALIDLENGTH } from "./util/error";
import { ArrayBufferView } from "./arraybuffer";
import { idof } from "./builtins";

@sealed export abstract class String {

  @lazy static readonly MAX_LENGTH: i32 = BLOCK_MAXSIZE >>> alignof<u16>();

  static fromCharCode(unit: i32, surr: i32 = -1): String {
    var hasSur = surr > 0;
    var out = __alloc(2 << i32(hasSur), idof<String>());
    store<u16>(out, <u16>unit);
    if (hasSur) store<u16>(out, <u16>surr, 2);
    return changetype<String>(out); // retains
  }

  static fromCodePoint(code: i32): String {
    assert(<u32>code <= 0x10FFFF);
    var hasSur = code > 0xFFFF;
    var out = __alloc(2 << i32(hasSur), idof<String>());
    if (!hasSur) {
      store<u16>(out, <u16>code);
    } else {
      code -= 0x10000;
      let hi = (code & 0x03FF) | 0xDC00;
      let lo = (code >>> 10) | 0xD800;
      store<u32>(out, lo | (hi << 16));
    }
    return changetype<String>(out); // retains
  }

  get length(): i32 {
    return changetype<BLOCK>(changetype<usize>(this) - BLOCK_OVERHEAD).rtSize >> 1;
  }

  @operator("[]") charAt(pos: i32): String {
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
    var len = this.length;
    if (<u32>pos >= <u32>len) return -1; // (undefined)
    var first = <i32>load<u16>(changetype<usize>(this) + (<usize>pos << 1));
    if ((first & 0xFC00) != 0xD800 || pos + 1 == len) return first;
    var second = <i32>load<u16>(changetype<usize>(this) + ((<usize>pos + 1) << 1));
    if ((second & 0xFC00) != 0xDC00) return first;
    return (first - 0xD800 << 10) + (second - 0xDC00) + 0x10000;
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
    if (!leftLength) return false;
    var rightLength = right.length;
    if (!rightLength) return true;
    // @ts-ignore: string <-> String
    return compareImpl(left, 0, right, 0, min(leftLength, rightLength)) > 0;
  }

  @operator(">=") private static __gte(left: String, right: String): bool {
    return !this.__lt(left, right);
  }

  @operator("<") private static __lt(left: String, right: String): bool {
    if (left === right || left === null || right === null) return false;
    var rightLength = right.length;
    if (!rightLength) return false;
    var leftLength  = left.length;
    if (!leftLength) return true;
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

  // TODO: implement full locale comparison with locales and Collator options
  localeCompare(other: String): i32 {
    if (other === this) return 0; // compare pointers
    var len: isize = this.length;
    var otherLen: isize = other.length;
    if (otherLen != len) return select(1, -1, len > otherLen);
    if (!otherLen) return 0; // "" == ""
    // @ts-ignore: string <-> String
    return compareImpl(this, 0, other, 0, otherLen);
  }

  startsWith(search: String, start: i32 = 0): bool {
    if (search === null) search = changetype<String>("null");
    var len = <isize>this.length;
    var searchStart = min(max(<isize>start, 0), len);
    var searchLength = <isize>search.length;
    if (searchLength + searchStart > len) return false;
    // @ts-ignore: string <-> String
    return !compareImpl(this, searchStart, search, 0, searchLength);
  }

  substr(start: i32, length: i32 = i32.MAX_VALUE): String { // legacy
    var intStart: isize = start;
    var end: isize = length;
    var len: isize = this.length;
    if (intStart < 0) intStart = max(len + intStart, 0);
    var size = min(max(end, 0), len - intStart) << 1;
    if (size <= 0) return changetype<String>("");
    var out = __alloc(size, idof<String>());
    memory.copy(out, changetype<usize>(this) + (intStart << 1), size);
    return changetype<String>(out); // retains
  }

  substring(start: i32, end: i32 = i32.MAX_VALUE): String {
    var len: isize = this.length;
    var finalStart = min<isize>(max(start, 0), len);
    var finalEnd = min<isize>(max(end, 0), len);
    var fromPos = min<isize>(finalStart, finalEnd) << 1;
    var toPos = max<isize>(finalStart, finalEnd) << 1;
    var size = toPos - fromPos;
    if (!size) return changetype<String>("");
    if (!fromPos && toPos == len << 1) return this;
    var out = __alloc(size, idof<String>());
    memory.copy(out, changetype<usize>(this) + fromPos, size);
    return changetype<String>(out); // retains
  }

  trim(): String {
    var len = this.length;
    var size: usize = len << 1;
    while (size && isSpace(load<u16>(changetype<usize>(this) + size - 2))) {
      size -= 2;
    }
    var offset: usize = 0;
    while (offset < size && isSpace(load<u16>(changetype<usize>(this) + offset))) {
      offset += 2; size -= 2;
    }
    if (!size) return changetype<String>("");
    if (!offset && size == len << 1) return this;
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
    var size = <usize>this.length << 1;
    var offset: usize = 0;
    while (offset < size && isSpace(load<u16>(changetype<usize>(this) + offset))) {
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
    var originalSize = <usize>this.length << 1;
    var size = originalSize;
    while (size && isSpace(load<u16>(changetype<usize>(this) + size - 2))) {
      size -= 2;
    }
    if (!size) return changetype<String>("");
    if (size == originalSize) return this;
    var out = __alloc(size, idof<String>());
    memory.copy(out, changetype<usize>(this), size);
    return changetype<String>(out); // retains
  }

  padStart(length: i32, pad: string = " "): String {
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

  replace(search: String, replacement: String): String {
    var len: usize = this.length;
    var slen: usize = search.length;
    if (len <= slen) {
      return len < slen ? this : select<String>(replacement, this, search == this);
    }
    var index: isize = this.indexOf(search);
    if (~index) {
      let rlen: usize = replacement.length;
      len -= slen;
      let olen = len + rlen;
      if (olen) {
        let out = __alloc(olen << 1, idof<String>());
        memory.copy(out, changetype<usize>(this), index << 1);
        memory.copy(
          out + (index << 1),
          changetype<usize>(replacement),
          rlen << 1
        );
        memory.copy(
          out + ((index + rlen) << 1),
          changetype<usize>(this) + ((index + slen) << 1),
          (len - index) << 1
        );
        return changetype<String>(out);
      }
    }
    return this;
  }

  replaceAll(search: String, replacement: String): String {
    var len: usize = this.length;
    var slen: usize = search.length;
    if (len <= slen) {
      return len < slen ? this : select<String>(replacement, this, search == this);
    }
    var rlen: usize = replacement.length;
    if (!slen) {
      if (!rlen) return this;
      // Special case: 'abc'.replaceAll('', '-') -> '-a-b-c-'
      let out = __alloc((len + (len + 1) * rlen) << 1, idof<String>());
      memory.copy(out, changetype<usize>(replacement), rlen << 1);
      let offset = rlen;
      for (let i: usize = 0; i < len; ++i) {
        store<u16>(
          changetype<usize>(out) + (offset++ << 1),
          load<u16>(changetype<usize>(this) + (i << 1))
        );
        memory.copy(
          out + (offset << 1),
          changetype<usize>(replacement),
          rlen << 1
        );
        offset += rlen;
      }
      return changetype<String>(out);
    }
    var prev: isize = 0, next: isize = 0;
    if (slen == rlen) {
      // Fast path when search and replacement have same length
      let size = len << 1;
      let out = __alloc(size, idof<String>());
      memory.copy(out, changetype<usize>(this), size);
      while (~(next = <isize>this.indexOf(search, <i32>prev))) {
        memory.copy(out + (next << 1), changetype<usize>(replacement), rlen << 1);
        prev = next + slen;
      }
      return changetype<String>(out);
    }
    var out: usize = 0, offset: usize = 0, resLen = len;
    while (~(next = <isize>this.indexOf(search, <i32>prev))) {
      if (!out) out = __alloc(len << 1, idof<String>());
      if (offset > resLen) {
        let newLength = resLen << 1;
        out = __realloc(out, newLength << 1);
        resLen = newLength;
      }
      let chunk = next - prev;
      memory.copy(
        out + (offset << 1),
        changetype<usize>(this) + (prev << 1),
        chunk << 1
      );
      offset += chunk;
      memory.copy(
        out + (offset << 1),
        changetype<usize>(replacement),
        rlen << 1
      );
      offset += rlen;
      prev = next + slen;
    }
    if (offset) {
      if (offset > resLen) {
        let newLength = resLen << 1;
        out = __realloc(out, newLength << 1);
        resLen = newLength;
      }
      let rest = len - prev;
      if (rest) {
        memory.copy(
          out + (offset << 1),
          changetype<usize>(this) + (prev << 1),
          rest << 1
        );
      }
      rest += offset;
      if (resLen > rest) out = __realloc(out, rest << 1);
      return changetype<String>(out);
    }
    return this;
  }

  slice(start: i32, end: i32 = i32.MAX_VALUE): String {
    var len = this.length;
    start = start < 0 ? max(start + len, 0) : min(start, len);
    end   = end   < 0 ? max(end   + len, 0) : min(end,   len);
    len   = end - start;
    if (len <= 0) return changetype<String>("");
    var out = __alloc(len << 1, idof<String>());
    memory.copy(out, changetype<usize>(this) + (<usize>start << 1), <usize>len << 1);
    return changetype<String>(out); // retains
  }

  split(separator: String | null = null, limit: i32 = i32.MAX_VALUE): String[] {
    if (!limit) return changetype<Array<String>>(__allocArray(0, alignof<String>(), idof<Array<String>>())); // retains
    if (separator === null) return [this];
    var length: isize = this.length;
    var sepLen: isize = separator.length;
    if (limit < 0) limit = i32.MAX_VALUE;
    if (!sepLen) {
      if (!length) return changetype<Array<String>>(__allocArray(0, alignof<String>(), idof<Array<String>>()));  // retains
      // split by chars
      length = min<isize>(length, <isize>limit);
      let result = changetype<Array<String>>(__allocArray(length, alignof<String>(), idof<Array<String>>())); // retains
      // @ts-ignore: cast
      let resultStart = result.dataStart as usize;
      for (let i: isize = 0; i < length; ++i) {
        let charStr = __alloc(2, idof<String>());
        store<u16>(charStr, load<u16>(changetype<usize>(this) + (<usize>i << 1)));
        store<usize>(resultStart + (<usize>i << alignof<usize>()), charStr); // result[i] = charStr
        if (isManaged<String>()) __retain(charStr);
      }
      return result;
    } else if (!length) {
      let result = changetype<Array<String>>(__allocArray(1, alignof<String>(), idof<Array<String>>())); // retains
      // @ts-ignore: cast
      store<usize>(result.dataStart as usize, changetype<usize>("")); // static ""
      return result;
    }
    var result = changetype<Array<String>>(__allocArray(0, alignof<String>(), idof<Array<String>>())); // retains
    var end = 0, start = 0, i = 0;
    while (~(end = this.indexOf(separator, start))) {
      let len = end - start;
      if (len > 0) {
        let out = __alloc(<usize>len << 1, idof<String>());
        memory.copy(out, changetype<usize>(this) + (<usize>start << 1), <usize>len << 1);
        result.push(changetype<String>(out));
      } else {
        result.push(changetype<String>(""));
      }
      if (++i == limit) return result;
      start = end + sepLen;
    }
    if (!start) { // also means: loop above didn't do anything
      result.push(this);
      return result;
    }
    var len = length - start;
    if (len > 0) {
      let out = __alloc(<usize>len << 1, idof<String>());
      memory.copy(out, changetype<usize>(this) + (<usize>start << 1), <usize>len << 1);
      result.push(changetype<String>(out)); // retains
    } else {
      result.push(changetype<String>("")); // static ""
    }
    return result;
  }

  toLowerCase(): String {
    var len = <usize>this.length;
    if (!len) return this;
    var codes = __alloc(len * 2 * 2, idof<String>());
    var j: usize = 0;
    for (let i: usize = 0; i < len; ++i, ++j) {
      let c = <u32>load<u16>(changetype<usize>(this) + (i << 1));
      if (isAscii(c)) {
        store<u16>(codes + (j << 1), toLower8(c));
      } else {
        // check and read surrogate pair
        if ((c - 0xD7FF < 0xDC00 - 0xD7FF) && i < len - 1) {
          let c1 = <u32>load<u16>(changetype<usize>(this) + (i << 1), 2);
          if (c1 - 0xDBFF < 0xE000 - 0xDBFF) {
            let c0 = c;
            c = (((c & 0x03FF) << 10) | (c1 & 0x03FF)) + 0x10000;
            ++i;
            if (c >= 0x20000) {
              store<u32>(codes + (j << 1), c0 | (c1 << 16));
              ++j;
              continue;
            }
          }
        }
        // check special casing for lower table. It has one ently so instead lookup we just inline this.
        if (c == 0x0130) {
          // 0x0130 -> [0x0069, 0x0307]
          store<u32>(codes + (j << 1), (0x0307 << 16) | 0x0069);
          ++j;
        } else if (c - 0x24B6 <= 0x24CF - 0x24B6) {
          // Range 0x24B6 <= c <= 0x24CF not covered by casemap and require special early handling
          store<u16>(codes + (j << 1), c + 26);
        } else {
          let code = casemap(c, 0) & 0x1FFFFF;
          if (code < 0x10000) {
            store<u16>(codes + (j << 1), code);
          } else {
            // store as surrogare pair
            code -= 0x10000;
            let lo = (code >>> 10) | 0xD800;
            let hi = (code & 0x03FF) | 0xDC00;
            store<u32>(codes + (j << 1), lo | (hi << 16));
            ++j;
          }
        }
      }
    }
    codes = __realloc(codes, j << 1);
    return changetype<String>(codes); // retains
  }

  toUpperCase(): String {
    var len = <usize>this.length;
    if (!len) return this;
    var codes = __alloc(len * 3 * 2, idof<String>());
    // @ts-ignore: cast
    var specialsUpperPtr = specialsUpper.dataStart as usize;
    var specialsUpperLen = specialsUpper.length;
    var j: usize = 0;
    for (let i: usize = 0; i < len; ++i, ++j) {
      let c = <u32>load<u16>(changetype<usize>(this) + (i << 1));
      if (isAscii(c)) {
        store<u16>(codes + (j << 1), toUpper8(c));
      } else {
        // check and read surrogate pair
        if ((c - 0xD7FF < 0xDC00 - 0xD7FF) && i < len - 1) {
          let c1 = <u32>load<u16>(changetype<usize>(this) + (i << 1), 2);
          if (c1 - 0xDBFF < 0xE000 - 0xDBFF) {
            let c0 = c;
            c = (((c & 0x03FF) << 10) | (c1 & 0x03FF)) + 0x10000;
            ++i;
            if (c >= 0x20000) {
              store<u32>(codes + (j << 1), c0 | (c1 << 16));
              ++j;
              continue;
            }
          }
        }
        // Range 0x24D0 <= c <= 0x24E9 not covered by casemap and require special early handling
        if (c - 0x24D0 <= 0x24E9 - 0x24D0) {
          // monkey patch
          store<u16>(codes + (j << 1), c - 26);
        } else {
          let index = -1;
          // Fast range check. See first and last rows in specialsUpper table
          if (c - 0x00DF <= 0xFB17 - 0x00DF) {
            index = <usize>bsearch(c, specialsUpperPtr, specialsUpperLen);
          }
          if (~index) {
            // load next 3 code points from row with `index` offset for specialsUpper table
            let ab = load<u32>(specialsUpperPtr + (index << 1), 2);
            let cc = load<u16>(specialsUpperPtr + (index << 1), 6);
            store<u32>(codes + (j << 1), ab, 0);
            store<u16>(codes + (j << 1), cc, 4);
            j += 1 + usize(cc != 0);
          } else {
            let code = casemap(c, 1) & 0x1FFFFF;
            if (code < 0x10000) {
              store<u16>(codes + (j << 1), code);
            } else {
              // store as surrogare pair
              code -= 0x10000;
              let lo = (code >>> 10) | 0xD800;
              let hi = (code & 0x03FF) | 0xDC00;
              store<u32>(codes + (j << 1), lo | (hi << 16));
              ++j;
            }
          }
        }
      }
    }
    codes = __realloc(codes, j << 1);
    return changetype<String>(codes); // retains
  }

  toString(): String {
    return this;
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

// Encoding helpers
export namespace String {

  export namespace UTF8 {

    export function byteLength(str: string, nullTerminated: bool = false): i32 {
      var strOff = changetype<usize>(str);
      var strEnd = strOff + <usize>changetype<BLOCK>(changetype<usize>(str) - BLOCK_OVERHEAD).rtSize;
      var bufLen = i32(nullTerminated);
      while (strOff < strEnd) {
        let c1 = <u32>load<u16>(strOff);
        if (c1 < 128) {
          if (nullTerminated && !c1) break;
          bufLen += 1; strOff += 2;
        } else if (c1 < 2048) {
          bufLen += 2; strOff += 2;
        } else {
          if ((c1 & 0xFC00) == 0xD800 && strOff + 2 < strEnd) {
            if ((<u32>load<u16>(strOff, 2) & 0xFC00) == 0xDC00) {
              strOff += 4; bufLen += 4;
              continue;
            }
          }
          strOff += 2; bufLen += 3;
        }
      }
      return bufLen;
    }

    export function encode(str: string, nullTerminated: bool = false): ArrayBuffer {
      var strOff = changetype<usize>(str);
      var strEnd = changetype<usize>(str) + <usize>changetype<BLOCK>(changetype<usize>(str) - BLOCK_OVERHEAD).rtSize;
      var bufLen = <usize>UTF8.byteLength(str, nullTerminated);
      var buf = __alloc(bufLen, idof<ArrayBuffer>());
      var bufEnd = buf + bufLen - usize(nullTerminated);
      var bufOff = buf;
      while (bufOff < bufEnd) {
        let c1 = <u32>load<u16>(strOff);
        if (c1 < 128) {
          store<u8>(bufOff, c1);
          bufOff += 1; strOff += 2;
        } else if (c1 < 2048) {
          store<u8>(bufOff, c1 >> 6      | 192);
          store<u8>(bufOff, c1      & 63 | 128, 1);
          bufOff += 2; strOff += 2;
        } else {
          if ((c1 & 0xFC00) == 0xD800 && strOff + 2 < strEnd) {
            let c2 = <u32>load<u16>(strOff, 2);
            if ((c2 & 0xFC00) == 0xDC00) {
              c1 = 0x10000 + ((c1 & 0x03FF) << 10) | (c2 & 0x03FF);
              store<u8>(bufOff, c1 >> 18      | 240);
              store<u8>(bufOff, c1 >> 12 & 63 | 128, 1);
              store<u8>(bufOff, c1 >> 6  & 63 | 128, 2);
              store<u8>(bufOff, c1       & 63 | 128, 3);
              strOff += 4; bufOff += 4;
              continue;
            }
          }
          store<u8>(bufOff, c1 >> 12      | 224);
          store<u8>(bufOff, c1 >> 6  & 63 | 128, 1);
          store<u8>(bufOff, c1       & 63 | 128, 2);
          strOff += 2; bufOff += 3;
        }
      }
      assert(strOff <= strEnd);
      if (nullTerminated) {
        store<u8>(bufOff, 0);
      }
      return changetype<ArrayBuffer>(buf); // retains
    }

    export function decode(buf: ArrayBuffer, nullTerminated: bool = false): String {
      return decodeUnsafe(changetype<usize>(buf), buf.byteLength, nullTerminated);
    }

    // @ts-ignore: decorator
    @unsafe
    export function decodeUnsafe(buf: usize, len: usize, nullTerminated: bool = false): String {
      var bufOff = buf;
      var bufEnd = buf + len;
      assert(bufEnd >= bufOff); // guard wraparound
      var str = __alloc(len << 1, idof<String>()); // max is one u16 char per u8 byte
      var strOff = str;
      while (bufOff < bufEnd) {
        let cp = <u32>load<u8>(bufOff++);
        if (cp < 128) {
          if (nullTerminated && !cp) break;
          store<u16>(strOff, cp);
          strOff += 2;
        } else if (cp > 191 && cp < 224) {
          if (bufEnd - bufOff < 1) break;
          store<u16>(strOff, (cp & 31) << 6 | load<u8>(bufOff++) & 63);
          strOff += 2;
        } else if (cp > 239 && cp < 365) {
          if (bufEnd - bufOff < 3) break;
          cp = (
            (cp                  &  7) << 18 |
            (load<u8>(bufOff)    & 63) << 12 |
            (load<u8>(bufOff, 1) & 63) << 6  |
             load<u8>(bufOff, 2) & 63
          ) - 0x10000;
          bufOff += 3;
          store<u16>(strOff, 0xD800 | (cp >> 10));
          store<u16>(strOff, 0xDC00 | (cp & 1023), 2);
          strOff += 4;
        } else {
          if (bufEnd - bufOff < 2) break;
          store<u16>(strOff,
            (cp                  & 15) << 12 |
            (load<u8>(bufOff)    & 63) << 6  |
             load<u8>(bufOff, 1) & 63
          );
          bufOff += 2; strOff += 2;
        }
      }
      return changetype<String>(__realloc(str, strOff - str)); // retains
    }
  }

  export namespace UTF16 {

    export function byteLength(str: string): i32 {
      return changetype<BLOCK>(changetype<usize>(str) - BLOCK_OVERHEAD).rtSize;
    }

    export function encode(str: string): ArrayBuffer {
      var size = changetype<BLOCK>(changetype<usize>(str) - BLOCK_OVERHEAD).rtSize;
      var buf = __alloc(size, idof<ArrayBuffer>());
      memory.copy(buf, changetype<usize>(str), <usize>size);
      return changetype<ArrayBuffer>(buf); // retains
    }

    export function decode(buf: ArrayBuffer): String {
      return decodeUnsafe(changetype<usize>(buf), buf.byteLength);
    }

    // @ts-ignore: decorator
    @unsafe
    export function decodeUnsafe(buf: usize, len: usize): String {
      var str = __alloc(len &= ~1, idof<String>());
      memory.copy(str, buf, len);
      return changetype<String>(str); // retains
    }
  }
}
