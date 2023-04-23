// Canonical aliases
export type funcref = ref_func | null;
export type externref = ref_extern | null;
export type anyref = ref_any | null;
export type eqref = ref_eq | null;
export type i31ref = ref_i31 | null;
export type structref = ref_struct | null;
export type arrayref = ref_array | null;
export type stringref = ref_string | null;

// TODO: Conflict with the instruction namespaces
// export type stringview_wtf8 = ref_stringview_wtf8 | null;
// export type stringview_wtf16 = ref_stringview_wtf16 | null;
// export type stringview_iter = ref_stringview_iter | null;

@unmanaged
abstract class Ref {
}

@final @unmanaged
export abstract class RefFunc extends Ref {
}

@final @unmanaged
export abstract class RefExtern extends Ref {
}

@final @unmanaged
export abstract class RefAny extends Ref {
}

@final @unmanaged
export abstract class RefEq extends Ref {
}

@final @unmanaged
export abstract class RefI31 extends Ref {
}

@final @unmanaged
export abstract class RefStruct extends Ref {
}

@final @unmanaged
export abstract class RefArray extends Ref {
}

import { E_INDEXOUTOFRANGE } from "util/error";

@final @unmanaged
export abstract class RefString extends Ref {

  @lazy static readonly MAX_LENGTH: i32 = (1 << 30) - 1;

  static fromCharCode(unit: i32, surr: i32 = -1): ref_string {
    if (~surr) unit = 0x10000 + ((unit & 0x3FF) << 10) | (surr & 0x3FF);
    return string.from_code_point(unit);
  }

  static fromCodePoint(cp: i32): ref_string {
    if (<u32>cp > 0x10ffff) throw new Error("Invalid code point");
    return string.from_code_point(cp);
  }

  // @ts-ignore: this on getter
  get length(this: ref_string): i32 {
    return string.measure_wtf16(this);
  }

  at(this: ref_string, pos: i32): stringref {
    let len = string.measure_wtf16(this);
    pos += select(0, len, pos >= 0);
    if (<u32>pos >= <u32>len) throw new RangeError(E_INDEXOUTOFRANGE);
    return string.from_code_point(stringview_wtf16.get_codeunit(string.as_wtf16(this), pos));
  }

  @operator("[]") charAt(this: ref_string, pos: i32): stringref {
    if (<u32>pos >= <u32>string.measure_wtf16(this)) return "";
    return string.from_code_point(stringview_wtf16.get_codeunit(string.as_wtf16(this), pos));
  }

  charCodeAt(this: ref_string, pos: i32): i32 {
    if (<u32>pos >= <u32>string.measure_wtf16(this)) return -1; // (NaN)
    return stringview_wtf16.get_codeunit(string.as_wtf16(this), pos);
  }

  codePointAt(this: ref_string, pos: i32): i32 {
    let len = string.measure_wtf16(this);
    if (<u32>pos >= <u32>len) return -1; // (undefined)
    let view = string.as_wtf16(this);
    let first = <i32>stringview_wtf16.get_codeunit(view, pos);
    if ((first & 0xFC00) != 0xD800 || pos + 1 == len) return first;
    let second = <i32>stringview_wtf16.get_codeunit(view, pos + 1);
    if ((second & 0xFC00) != 0xDC00) return first;
    return (first - 0xD800 << 10) + (second - 0xDC00) + 0x10000;
  }

  @operator("+")
  concat(this: ref_string, other: ref_string): ref_string {
    return string.concat(this, other);
  }

  endsWith(this: ref_string, search: ref_string, end: i32 = RefString.MAX_LENGTH): bool {
    end = min(max(end, 0), string.measure_wtf16(this));
    let searchLength = string.measure_wtf16(search);
    let searchStart = end - searchLength;
    if (searchStart < 0) return false;
    return string.eq(
      stringview_wtf16.slice(string.as_wtf16(this), searchStart, searchStart + searchLength),
      search
    );
  }

  @operator("==") private static __eq(left: ref_string | null, right: ref_string | null): bool {
    return string.eq(left, right);
  }

  @operator.prefix("!")
  private static __not(str: ref_string | null): bool {
    return str == null;
  }

  @operator("!=")
  private static __ne(left: ref_string | null, right: ref_string | null): bool {
    return !string.eq(left, right);
  }

  @operator(">") private static __gt(left: ref_string, right: ref_string): bool {
    return string.compare(left, right) > 0;
  }

  @operator(">=") private static __gte(left: ref_string, right: ref_string): bool {
    return string.compare(left, right) >= 0;
  }

  @operator("<") private static __lt(left: ref_string, right: ref_string): bool {
    return string.compare(left, right) < 0;
  }

  @operator("<=") private static __lte(left: ref_string, right: ref_string): bool {
    return string.compare(left, right) <= 0;
  }

  includes(this: ref_string, search: ref_string, start: i32 = 0): bool {
    return this.indexOf(search, start) != -1;
  }

  indexOf(this: ref_string, search: ref_string, start: i32 = 0): i32 {
    let searchLen = string.measure_wtf16(search);
    if (!searchLen) return 0;
    let len = string.measure_wtf16(this);
    if (!len) return -1;
    let searchStart = min(max(start, 0), len);
    let view = string.as_wtf16(this);
    for (len -= searchLen; searchStart <= len; ++searchStart) {
      // FIXME: slice is suboptimal
      if (string.eq(
        stringview_wtf16.slice(view, searchStart, searchStart + searchLen),
        search
      )) {
        return searchStart;
      }
    }
    return -1;
  }

  lastIndexOf(this: ref_string, search: ref_string, start: i32 = i32.MAX_VALUE): i32 {
    let searchLen = string.measure_wtf16(search);
    if (!searchLen) return string.measure_wtf16(this);
    let len = string.measure_wtf16(this);
    if (!len) return -1;
    let searchStart = min(max(start, 0), len - searchLen);
    for (; searchStart >= 0; --searchStart) {
      // FIXME: slice is suboptimal
      if (string.eq(
        stringview_wtf16.slice(string.as_wtf16(this), searchStart, searchStart + searchLen),
        search
      )) {
        return searchStart;
      }
    }
    return -1;
  }

  // TODO: port more
}
