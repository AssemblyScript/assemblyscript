// References:
// https://github.com/brianmario/escape_utils/blob/master/ext/escape_utils/houdini_uri_e.c
// https://github.com/brianmario/escape_utils/blob/master/ext/escape_utils/houdini_uri_u.c

import { CharCode } from "./string";

// @ts-ignore: decorator
@lazy const URI_SAFE = memory.data<u8>([
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1,
  0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1
]);

// @ts-ignore: decorator
@lazy const URL_SAFE = memory.data<u8>([
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0,
  0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1,
  0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0
]);

// @ts-ignore: decorator
@lazy const HEX_CHARS = memory.data<u8>([
  0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
  0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46
]);

function encode(dst: usize, offset: usize, c: u32): isize {
  const U: u16 = 0x75; // u
  const P: u16 = CharCode.PERCENT; // %

  store<u16>(dst + offset, P); // %
  offset += 1 << 1;
  if (c >= 0xFF) {
    store<u16>(dst + offset, U); // u
    let hex = (
      (<u32>load<u8>(HEX_CHARS + ((c >>> 12) & 0x0F))) |
      (<u32>load<u8>(HEX_CHARS + ((c >>>  8) & 0x0F)) << 16)
    );
    store<u32>(dst + offset, hex, 2); // XX
    offset += 3 << 1;
  }
  let hex = (
    (<u32>load<u8>(HEX_CHARS + ((c >>> 4) & 0x0F))) |
    (<u32>load<u8>(HEX_CHARS + ((c >>> 0) & 0x0F)) << 16)
  );
  store<u32>(dst + offset, hex); // XX
  offset += 2 << 1;
  return offset;
}

export function escape(dst: usize, src: usize, len: isize, table: usize): bool {
  var i: isize = 0, org: isize, offset: usize = 0;
  while (i < len) {
    org = i;
    let c: u32, c1: u32;
    do {
      c = <u32>load<u16>(src + (i << 1));
      if (c <= 127) {
        if (!load<u8>(table + c)) break;
      } else break;
      ++i;
    } while (i < len);

    if (i > org) {
      if (!org) {
        if (i >= len) return false;
        dst = __renew(dst, len * 12 / 10);
      }
      let size = <usize>(i - org) << 1;
      memory.copy(
        dst + offset,
        src + <usize>(org << 1),
        size
      );
      offset += size;
    }

    if (c >= 0xDC00 && c <= 0xDFFF) {
      // throw new Error("invalid character");
      return false;
    }

    if (c >= 0xD800 && c <= 0xDBFF) {
      c1 = <u32>load<u16>(src + (i << 1));
      ++i;
      if (c1 < 0xDC00 || c1 > 0xDFFF) {
        // throw new Error("expecting surrogate pair");
        return false;
      }
      c = (((c & 0x3FF) << 10) | (c1 & 0x3FF)) + 0x10000;
    }

    if (c <= 0x7F) {
      offset += encode(dst, offset, c);
    } else {
      if (c <= 0x800) {
        offset += encode(dst, offset, (c >> 6) | 0xC0);
      } else {
        if (c < 0x10000) {
          offset += encode(dst, offset, (c >> 12) | 0xE0);
        } else {
          offset += encode(dst, offset, (c >> 18) | 0xF0);
          offset += encode(dst, offset, ((c >> 12) & 0x3F) | 0x80);
        }
        offset += encode(dst, offset, ((c >> 6) & 0x3F) | 0x80);
      }
    }
  }
  return true;
}

export function escapeURI(str: string): string | null {
  var len = str.length;
  if (!len) return str;
  var result = __new(len, idof<string>());
  if (!escape(result, changetype<usize>(str), len, URI_SAFE)) {
    return null;
  }
  return changetype<string>(result);
}

export function escapeURIComponent(str: string): string | null {
  var len = str.length;
  if (!len) return str;
  var result = __new(len, idof<string>());
  if (!escape(result, changetype<usize>(str), len, URL_SAFE)) {
    return null;
  }
  return changetype<string>(result);
}
