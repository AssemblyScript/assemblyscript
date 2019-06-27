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
    var size: isize = this.length;
    if (intStart < 0) intStart = max(size + intStart, 0);
    var resultLength = min(max(end, 0), size - intStart);
    if (resultLength <= 0) return changetype<String>("");
    var out = __alloc(resultLength << 1, idof<String>());
    memory.copy(out, changetype<usize>(this) + intStart, resultLength);
    return changetype<String>(out); // retains
  }

  substring(start: i32, end: i32 = i32.MAX_VALUE): String {
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
    while (~(end = this.indexOf(separator, start))) {
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

  toUpperCase(): String {
    // Calculate the final length of the string without special characters
    let length = this.length;
    let finalLength = length << 1;

    // Create a string of the same size. It might get larger.
    let out = __alloc(finalLength, idof<String>());
    // Create an index to the output string
    let outpos: usize = 0;

    // For each character in the input string
    for (let pos = 0; pos < length; pos++) {
      // Read the character.
      let char = <u32>load<u16>(changetype<usize>(this) + (pos << 1));

      /**
       * These cover the DESERET SMALL LETTER cases in:
       * https://github.com/tc39/test262/blob/ee3715ee56744ccc8aeb22a921f442e98090b3c1/test/built-ins/String/prototype/toUpperCase/supplementary_plane.js
       *
       * The string doesn't need to be resized, but two characters need to be read.
       */
      if (((pos + 1) < length) && char == 0xD801) {
        let char2 = <u32>load<u16>(changetype<usize>(this) + ((pos + 1) << 1));
        if (char2 >= 0xDC28 && char2 <= 0xDC4F) {
          store<u32>(out + outpos, (<u32>(char2 - 40) << <u32>16) | <u32>0xD801); // always store 0xD801(number - 40)
          outpos += 4; // we wrote 2 chars
          pos++; // we read 2 chars (1 + loop increment)
          continue;
        }
      }


      /**
       * These are the special toUpperCase cases. The string needs to be resized and more than one
       * character must be output.
       */
      if (char == 0x00df) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x00530053);
        outpos += 4;
        continue;
      } else if (char == 0xfb00) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x00460046);
        outpos += 4;
        continue;
      } else if (char == 0xfb01) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x00490046);
        outpos += 4;
        continue;
      } else if (char == 0xfb02) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x004c0046);
        outpos += 4;
        continue;
      } else if (char == 0xfb03) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x00460046);
        store<u16>(out + outpos + 4, 0x0049);
        outpos += 6;
        continue;
      } else if (char == 0xfb04) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x00460046);
        store<u16>(out + outpos + 4, 0x004C);
        outpos += 6;
        continue;
      } else if (char == 0xfb05) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x00540053);
        outpos += 4;
        continue;
      } else if (char == 0xfb06) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x00540053);
        outpos += 4;
        continue;
      } else if (char == 0x0587) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x05520535);
        outpos += 4;
        continue;
      } else if (char == 0xfb13) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x05460544);
        outpos += 4;
        continue;
      } else if (char == 0xfb14) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x05350544);
        outpos += 4;
        continue;
      } else if (char == 0xfb15) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x053b0544);
        outpos += 4;
        continue;
      } else if (char == 0xfb16) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x0546054e);
        outpos += 4;
        continue;
      } else if (char == 0xfb17) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x053d0544);
        outpos += 4;
        continue;
      } else if (char == 0x0149) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x004e02bc);
        outpos += 4;
        continue;
      } else if (char == 0x0390) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03080399);
        store<u16>(out + outpos + 4, 0x0301);
        outpos += 6;
        continue;
      } else if (char == 0x03b0) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x030803a5);
        store<u16>(out + outpos + 4, 0x0301);
        outpos += 6;
        continue;
      } else if (char == 0x01f0) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x030c004a);
        outpos += 4;
        continue;
      } else if (char == 0x1e96) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03310048);
        outpos += 4;
        continue;
      } else if (char == 0x1e97) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03080054);
        outpos += 4;
        continue;
      } else if (char == 0x1e98) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x030a0057);
        outpos += 4;
        continue;
      } else if (char == 0x1e99) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x030a0059);
        outpos += 4;
        continue;
      } else if (char == 0x1e9a) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x02be0041);
        outpos += 4;
        continue;
      } else if (char == 0x1f50) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x031303a5);
        outpos += 4;
        continue;
      } else if (char == 0x1f52) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x031303a5);
        store<u16>(out + outpos + 4, 0x0300);
        outpos += 6;
        continue;
      } else if (char == 0x1f54) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x031303a5);
        store<u16>(out + outpos + 4, 0x0301);
        outpos += 6;
        continue;
      } else if (char == 0x1f56) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x031303a5);
        store<u16>(out + outpos + 4, 0x0342);
        outpos += 6;
        continue;
      } else if (char == 0x1fb6) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03420391);
        outpos += 4;
        continue;
      } else if (char == 0x1fc6) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03420397);
        outpos += 4;
        continue;
      } else if (char == 0x1fd2) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03080399);
        store<u16>(out + outpos + 4, 0x0300);
        outpos += 6;
        continue;
      } else if (char == 0x1fd3) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03080399);
        store<u16>(out + outpos + 4, 0x0301);
        outpos += 6;
        continue;
      } else if (char == 0x1fd6) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03420399);
        outpos += 4;
        continue;
      } else if (char == 0x1fd7) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03080399);
        store<u16>(out + outpos + 4, 0x0342);
        outpos += 6;
        continue;
      } else if (char == 0x1fe2) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x030803a5);
        store<u16>(out + outpos + 4, 0x0300);
        outpos += 6;
        continue;
      } else if (char == 0x1fe3) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x030803a5);
        store<u16>(out + outpos + 4, 0x0301);
        outpos += 6;
        continue;
      } else if (char == 0x1fe4) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x031303a1);
        outpos += 4;
        continue;
      } else if (char == 0x1fe6) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x034203a5);
        outpos += 4;
        continue;
      } else if (char == 0x1fe7) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x030803a5);
        store<u16>(out + outpos + 4, 0x0342);
        outpos += 6;
        continue;
      } else if (char == 0x1ff6) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x034203a9);
        outpos += 4;
        continue;
      } else if (char == 0x1f80) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f08);
        outpos += 4;
        continue;
      } else if (char == 0x1f81) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f09);
        outpos += 4;
        continue;
      } else if (char == 0x1f82) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0a);
        outpos += 4;
        continue;
      } else if (char == 0x1f83) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0b);
        outpos += 4;
        continue;
      } else if (char == 0x1f84) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0c);
        outpos += 4;
        continue;
      } else if (char == 0x1f85) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0d);
        outpos += 4;
        continue;
      } else if (char == 0x1f86) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0e);
        outpos += 4;
        continue;
      } else if (char == 0x1f87) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0f);
        outpos += 4;
        continue;
      } else if (char == 0x1f88) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f08);
        outpos += 4;
        continue;
      } else if (char == 0x1f89) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f09);
        outpos += 4;
        continue;
      } else if (char == 0x1f8a) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0a);
        outpos += 4;
        continue;
      } else if (char == 0x1f8b) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0b);
        outpos += 4;
        continue;
      } else if (char == 0x1f8c) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0c);
        outpos += 4;
        continue;
      } else if (char == 0x1f8d) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0d);
        outpos += 4;
        continue;
      } else if (char == 0x1f8e) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0e);
        outpos += 4;
        continue;
      } else if (char == 0x1f8f) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f0f);
        outpos += 4;
        continue;
      } else if (char == 0x1f90) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f28);
        outpos += 4;
        continue;
      } else if (char == 0x1f91) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f29);
        outpos += 4;
        continue;
      } else if (char == 0x1f92) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2a);
        outpos += 4;
        continue;
      } else if (char == 0x1f93) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2b);
        outpos += 4;
        continue;
      } else if (char == 0x1f94) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2c);
        outpos += 4;
        continue;
      } else if (char == 0x1f95) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2d);
        outpos += 4;
        continue;
      } else if (char == 0x1f96) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2e);
        outpos += 4;
        continue;
      } else if (char == 0x1f97) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2f);
        outpos += 4;
        continue;
      } else if (char == 0x1f98) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f28);
        outpos += 4;
        continue;
      } else if (char == 0x1f99) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f29);
        outpos += 4;
        continue;
      } else if (char == 0x1f9a) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2a);
        outpos += 4;
        continue;
      } else if (char == 0x1f9b) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2b);
        outpos += 4;
        continue;
      } else if (char == 0x1f9c) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2c);
        outpos += 4;
        continue;
      } else if (char == 0x1f9d) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2d);
        outpos += 4;
        continue;
      } else if (char == 0x1f9e) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2e);
        outpos += 4;
        continue;
      } else if (char == 0x1f9f) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f2f);
        outpos += 4;
        continue;
      } else if (char == 0x1fa0) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f68);
        outpos += 4;
        continue;
      } else if (char == 0x1fa1) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f69);
        outpos += 4;
        continue;
      } else if (char == 0x1fa2) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6a);
        outpos += 4;
        continue;
      } else if (char == 0x1fa3) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6b);
        outpos += 4;
        continue;
      } else if (char == 0x1fa4) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6c);
        outpos += 4;
        continue;
      } else if (char == 0x1fa5) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6d);
        outpos += 4;
        continue;
      } else if (char == 0x1fa6) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6e);
        outpos += 4;
        continue;
      } else if (char == 0x1fa7) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6f);
        outpos += 4;
        continue;
      } else if (char == 0x1fa8) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f68);
        outpos += 4;
        continue;
      } else if (char == 0x1fa9) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f69);
        outpos += 4;
        continue;
      } else if (char == 0x1faa) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6a);
        outpos += 4;
        continue;
      } else if (char == 0x1fab) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6b);
        outpos += 4;
        continue;
      } else if (char == 0x1fac) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6c);
        outpos += 4;
        continue;
      } else if (char == 0x1fad) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6d);
        outpos += 4;
        continue;
      } else if (char == 0x1fae) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6e);
        outpos += 4;
        continue;
      } else if (char == 0x1faf) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991f6f);
        outpos += 4;
        continue;
      } else if (char == 0x1fb3) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03990391);
        outpos += 4;
        continue;
      } else if (char == 0x1fbc) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03990391);
        outpos += 4;
        continue;
      } else if (char == 0x1fc3) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03990397);
        outpos += 4;
        continue;
      } else if (char == 0x1fcc) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03990397);
        outpos += 4;
        continue;
      } else if (char == 0x1ff3) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x039903a9);
        outpos += 4;
        continue;
      } else if (char == 0x1ffc) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x039903a9);
        outpos += 4;
        continue;
      } else if (char == 0x1fb2) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991fba);
        outpos += 4;
        continue;
      } else if (char == 0x1fb4) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03990386);
        outpos += 4;
        continue;
      } else if (char == 0x1fc2) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991fca);
        outpos += 4;
        continue;
      } else if (char == 0x1fc4) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03990389);
        outpos += 4;
        continue;
      } else if (char == 0x1ff2) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03991ffa);
        outpos += 4;
        continue;
      } else if (char == 0x1ff4) {
        finalLength += 2;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x0399038f);
        outpos += 4;
        continue;
      } else if (char == 0x1fb7) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03420391);
        store<u16>(out + outpos + 4, 0x0399);
        outpos += 6;
        continue;
      } else if (char == 0x1fc7) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x03420397);
        store<u16>(out + outpos + 4, 0x0399);
        outpos += 6;
        continue;
      } else if (char == 0x1ff7) {
        finalLength += 4;
        out = __realloc(out, finalLength);
        store<u32>(out + outpos, 0x034203a9);
        store<u16>(out + outpos + 4, 0x0399);
        outpos += 6;
        continue;
      }

      // even and odd calculation for normal cases
      let odd = bool(char & 1);
      let even = !odd;

      if (char >= 43888 && char <= 43967) char -= 38864;
      else if (char == 11365) char = 570;
      else if (char == 11366) char = 574;
      else if (char == 7834) char = 65;
      else if (char == 7830) char = 72;
      else if (char == 7831) char = 84;
      else if (char == 7832) char = 87;
      else if (char == 7833) char = 89;
      else if (char == 8180) char = 911;

      else if (char >= 11520 && char <= 11557
        || char == 11559
        || char == 11565) char -= 7264;

      else if (char == 8188
        || char == 8183
        || char == 8182
        || char == 8179) char = 937;

      else if (char == 8164) char = 929;

      else if (char == 8162
        || char == 8163
        || char == 8166
        || char == 8167) char = 933;

      else if (char == 8132) char = 905;

      else if (char == 8150
        || char == 8151
        || char == 8147
        || char == 8146) char = 921;

      else if (char == 8140
        || char == 8135
        || char == 8134
        || char == 8131) char = 919;

      else if (char == 8116) char = 902;
      else if (char == 8126) char = 921;

      else if (char == 8124
        || char == 8119
        || char == 8118
        || char == 8115) char = 913;

      else if (char == 8022
        || char == 8020
        || char == 8018
        || char == 8016) char = 933;

      else if (char == 7296) char = 1042;
      else if (char == 7297) char = 1044;
      else if (char == 7298) char = 1054;
      else if (char == 7301) char = 1058;
      else if (char == 7299) char = 1057;
      else if (char == 7300) char = 1058;
      else if (char == 7302) char = 1066;
      else if (char == 7303) char = 1122;
      else if (char == 43859) char = 42931;
      else if (char == 496) char = 74;
      else if (char == 305) char = 73;
      else if (char == 658) char = 439;
      else if (char == 640) char = 422;
      else if (char == 643) char = 425;
      else if (char == 648) char = 430;
      else if (char == 650) char = 433;
      else if (char == 651) char = 434;
      else if (char == 629) char = 415;
      else if (char == 626) char = 413;
      else if (char == 617) char = 406;
      else if (char == 623) char = 412;
      else if (char == 595) char = 385;
      else if (char == 616) char = 407;
      else if (char == 611) char = 404;
      else if (char == 596) char = 390;
      else if (char == 598) char = 393;
      else if (char == 599) char = 394;
      else if (char == 608) char = 403;
      else if (char == 603) char = 400;
      else if (char == 601) char = 399;

      else if (char == 383
        || char == 223
        || char == 64261
        || char == 64262) char = 83;

      else if (char >= 8072 && char <= 8078) char -= 128;
      else if (char >= 8064 && char <= 8071) char -= 120;
      else if (char == 1011) char = 895;
      else if (char >= 8088 && char <= 8095) char -= 112;
      else if (char >= 8080 && char <= 8087) char -= 104;
      else if (char == 1013) char = 917;
      else if (char == 1008) char = 922;
      else if (char == 1415) char = 1333;

      else if (char == 1009
        || char >= 1104 && char <= 1119) char -= 80;

      else if (char == 477) char = 398;
      else if (char == 652) char = 581;
      else if (char == 649) char = 580;

      else if (char == 972
        || (char >= 8104 && char <= 8111)) char -= 64;

      else if (char == 973) char = 910;
      else if (char == 974) char = 911;
      else if (char == 976) char = 914;
      else if (char == 7835) char = 7776;
      else if (char == 977) char = 920;
      else if (char >= 8096 && char <= 8103) char -= 56;
      else if (char == 982) char = 928;

      else if (char >= 1377 && char <= 1414
        || char >= 11312 && char <= 11358) char = 48;

      else if (char == 981) char = 934;
      else if (char == 940) char = 902;
      else if (char >= 941 && char <= 943) char -= 37;

      else if ((char >= 97 && char <= 122)
        || (char >= 224 && char <= 246)
        || (char >= 248 && char <= 254)
        || (char >= 945 && char <= 961)
        || (char >= 963 && char <= 971)
        || (char >= 1072 && char <= 1103)
        || (char >= 65345 && char <= 65370)) char -= 32;

      else if (char == 962) char = 931;
      else if (char == 8526) char = 8498;
      else if (char >= 9424 && char <= 9449) char -= 26;
      else if (char >= 8560 && char <= 8575) char -= 16;
      else if (char == 1231) char = 1216;
      else if (char == 944) char = 933;

      else if (char == 983
        || char >= 5112 && char <= 5117) char -= 8;

      else if (char == 454
        || char == 457
        || char == 460
        || char == 499) char -= 2;

      else if ((char >= 257 && char <= 311 && odd)
        || (char >= 314 && char <= 328 && even)
        || (char >= 331 && char <= 375 && odd)
        || char == 378
        || char == 380
        || char == 382
        || char == 387
        || char == 389
        || char == 392
        || char == 396
        || char == 402
        || char == 409
        || char == 417
        || char == 419
        || char == 421
        || char == 424
        || char == 429
        || char == 432
        || char == 436
        || char == 438
        || char == 441
        || char == 445
        || char == 453
        || char == 456
        || char == 456
        || char == 459
        || (char >= 462 && char <= 476 && even)
        || (char >= 479 && char <= 495 && odd)
        || char == 498
        || char == 501
        || (char >= 505 && char <= 543 && odd)
        || (char >= 547 && char <= 563 && odd)
        || char == 572
        || char == 578
        || (char >= 583 && char <= 591 && odd)
        || char == 881
        || char == 883
        || char == 887
        || (char >= 985 && char <= 1007 && odd)
        || char == 1016
        || char == 1019
        || (char >= 1121 && char <= 1153 && odd)
        || (char >= 1163 && char <= 1215 && odd)
        || (char >= 1218 && char <= 1230 && even)
        || (char >= 1233 && char <= 1327 && odd)
        || (char >= 7681 && char <= 7829 && odd)
        || (char >= 7841 && char <= 7935 && odd)
        || char == 8580
        || char == 11361
        || char == 11368
        || char == 11370
        || char == 11372
        || char == 11379
        || char == 11382
        || (char >= 11393 && char <= 11491 && odd)
        || char == 11500
        || char == 11502
        || char == 11507
        || (char >= 42561 && char <= 42605 && odd)
        || (char >= 42625 && char <= 42651 && odd)
        || (char >= 42787 && char <= 42799 && odd)
        || (char >= 42803 && char <= 42863 && odd)
        || char == 42874
        || char == 42876
        || (char >= 42879 && char <= 42887 && odd)
        || char == 42892
        || char == 42897
        || char == 42899
        || (char >= 42903 && char <= 42921 && odd)
        || (char >= 42933 && char <= 42943 && odd)
        || char == 42947) char -= 1;

      else if (char == 1010
        || char == 8165) char += 7;

      else if (char >= 7936 && char <= 7943
        || (char >= 7952 && char <= 7957)
        || (char >= 7968 && char <= 7975)
        || (char >= 7984 && char <= 7991)
        || (char >= 8000 && char <= 8005)
        || (char >= 8017 && char <= 8023 && odd)
        || (char >= 8032 && char <= 8039)
        || char == 8112
        || char == 8113
        || char == 8114
        || char == 8130
        || char == 8144
        || char == 8145
        || char == 8160
        || char == 8161
        || char == 8178) char += 8;

      else if (char == 912) char = 921;
      else if (char == 42900) char = 42948;
      else if (char == 447) char = 503;
      else if (char == 8048) char = 8122;
      else if (char == 8049) char = 8123;
      else if (char == 837) char = 921;
      else if (char >= 8050 && char <= 8053) char += 86;
      else if (char == 405) char = 502;
      else if (char == 8054) char = 8154;
      else if (char == 8055) char = 8155;
      else if (char == 8058) char = 8170;
      else if (char == 8059) char = 8171;
      else if (char == 255) char = 376;
      else if (char == 8060) char = 8186;
      else if (char == 8061) char = 8187;
      else if (char == 8056) char = 8184;
      else if (char == 8057) char = 8185;
      else if (char == 414) char = 544;
      else if (char == 891) char = 1021;
      else if (char == 892) char = 1022;
      else if (char == 893) char = 1023;
      else if (char == 410) char = 573;
      else if (char == 384) char = 579;
      else if (char == 329) char = 700;
      else if (char == 181) char = 924;

      if ((char >= 4304 && char <= 4346)
        || (char >= 4349 && char <= 4351)) char += 3008;

      else if (char == 7549) char = 11363;
      else if (char == 637) char = 11364;
      else if (char == 619) char = 11362;
      else if (char == 625) char = 11374;
      else if (char == 593) char = 11373;
      else if (char == 594) char = 11376;
      else if (char == 592) char = 11375;
      else if (char == 575) char = 11390;
      else if (char == 576) char = 11391;
      else if (char == 7304) char = 42570;
      else if (char == 7545) char = 42877;
      else if (char == 7566) char = 42950;
      else if (char == 670) char = 42928;
      else if (char == 669) char = 42930;
      else if (char == 613) char = 42893;
      else if (char == 647) char = 42929;
      else if (char == 620) char = 42925;
      else if (char == 642) char = 42949;
      else if (char == 614) char = 42922;
      else if (char == 618) char = 42926;
      else if (char == 609) char = 42924;
      else if (char == 604) char = 42923;

      else if (char == 64256
        || char == 64257
        || char == 64258
        || char == 64259
        || char == 64260) char = 70;

      else if (char == 64275
       || char == 64276
       || char == 64277
       || char == 64279) char = 1348;

      else if (char == 64278) char = 1358;
      else if (char == 8079) char = 7951;
      // else the character is already upper case

      store<u16>(out + outpos, char);
      outpos += 2;
    }

    return changetype<String>(out);
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
      var bufLen = nullTerminated ? 1 : 0;
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
      var buf = __alloc(UTF8.byteLength(str, nullTerminated), idof<ArrayBuffer>());
      var bufOff = buf;
      while (strOff < strEnd) {
        let c1 = <u32>load<u16>(strOff);
        if (c1 < 128) {
          if (nullTerminated && !c1) break;
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
              c1 = 0x10000 + ((c1 & 0x03FF) << 10) + (c2 & 0x03FF);
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
      if (nullTerminated) {
        assert(strOff <= strEnd);
        buf = __realloc(buf, bufOff - buf + 1);
        store<u8>(bufOff, 0);
      } else {
        assert(strOff == strEnd);
      }
      return changetype<ArrayBuffer>(buf); // retains
    }

    export function decode(buf: ArrayBuffer, nullTerminated: bool = false): string {
      return decodeUnsafe(changetype<usize>(buf), buf.byteLength, nullTerminated);
    }

    // @ts-ignore: decorator
    @unsafe
    export function decodeUnsafe(buf: usize, len: usize, nullTerminated: bool = false): string {
      var bufOff = buf;
      var bufEnd = buf + len;
      assert(bufEnd >= bufOff); // guard wraparound
      var str = __alloc(len << 1, idof<string>()); // max is one u16 char per u8 byte
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
          store<u16>(strOff, 0xD800 + (cp >> 10));
          store<u16>(strOff, 0xDC00 + (cp & 1023), 2);
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
      return changetype<string>(__realloc(str, strOff - str)); // retains
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

    export function decode(buf: ArrayBuffer): string {
      return decodeUnsafe(changetype<usize>(buf), buf.byteLength);
    }

    // @ts-ignore: decorator
    @unsafe
    export function decodeUnsafe(buf: usize, len: usize): string {
      var str = __alloc(len &= ~1, idof<string>());
      memory.copy(str, buf, len);
      return changetype<string>(str); // retains
    }
  }
}
