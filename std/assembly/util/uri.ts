// References:
// https://github.com/brianmario/escape_utils/blob/master/ext/escape_utils/houdini_uri_e.c
// https://github.com/brianmario/escape_utils/blob/master/ext/escape_utils/houdini_uri_u.c

import { CharCode } from "./string";

// @ts-ignore: decorator
@lazy export const URI_SAFE = memory.data<u8>([
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1,
  0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1
]);

// @ts-ignore: decorator
@lazy export const URL_SAFE = memory.data<u8>([
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0,
  0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1,
  0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1
]);

function storeHex(dst: usize, offset: usize, ch: u32): usize {
  // @ts-ignore: decorator
  const HEX_CHARS = memory.data<u8>([
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
    0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46
  ]);

  let hex = (
    (<u32>load<u8>(HEX_CHARS + ((ch >>> 4) & 0x0F))) |
    (<u32>load<u8>(HEX_CHARS + ((ch >>> 0) & 0x0F)) << 16)
  );
  store<u16>(dst + offset, CharCode.PERCENT, 0); // %
  store<u32>(dst + offset, hex, 2); // XX
  return offset + (3 << 1);
}

export function encode(dst: usize, src: usize, len: isize, table: usize): void {
  var i: isize = 0, offset: usize = 0, outLen = len;
  while (i < len) {
    let org = i;
    let c: u32, c1: u32;
    do {
      c = <u32>load<u16>(src + (i << 1));
      if (c < 0x80) {
        if (!load<u8>(table + c)) break;
      } else break;
      ++i;
    } while (i < len);

    if (offset >= <usize>(outLen << 1)) {
      outLen = outLen * 12 / 10;
      dst = __renew(dst, outLen << 1);
    }

    if (i > org) {
      let size = <usize>(i - org) << 1;
      memory.copy(
        dst + offset,
        src + <usize>(org << 1),
        size
      );
      if (i >= len) break;
      offset += size;
    }

    if (c >= 0xDC00 && c <= 0xDFFF) {
      throw new Error("invalid character");
    }

    if (c >= 0xD800 && c <= 0xDBFF) {
      c1 = <u32>load<u16>(src + (i << 1));
      ++i;
      if (c1 < 0xDC00 || c1 > 0xDFFF) {
        throw new Error("expecting surrogate pair");
      }
      c = (((c & 0x3FF) << 10) | (c1 & 0x3FF)) + 0x10000;
    }

    if (c < 0x80) {
      offset += storeHex(dst, offset, c);
    } else {
      if (c <= 0x800) {
        offset += storeHex(dst, offset, (c >> 6) | 0xC0);
      } else {
        if (c < 0x10000) {
          offset += storeHex(dst, offset, (c >> 12) | 0xE0);
        } else {
          offset += storeHex(dst, offset, (c >> 18) | 0xF0);
          offset += storeHex(dst, offset, ((c >> 12) & 0x3F) | 0x80);
        }
        offset += storeHex(dst, offset, ((c >> 6) & 0x3F) | 0x80);
      }
    }
  }
}
