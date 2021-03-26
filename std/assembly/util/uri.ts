// References:
// https://github.com/brianmario/escape_utils/blob/master/ext/escape_utils/houdini_uri_e.c
// https://github.com/brianmario/escape_utils/blob/master/ext/escape_utils/houdini_uri_u.c

import { E_URI_MALFORMED } from "./error";
import { CharCode } from "./string";

// @ts-ignore: decorator
@lazy export const URI_UNSAFE = memory.data<u8>([
/* skip 32 + 1 head slots
  */ 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0,
  1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, /*
  skip 128 + 1 tail slots */
]);

// @ts-ignore: decorator
@lazy export const URL_UNSAFE = memory.data<u8>([
/* skip 32 + 1 head slots
  */ 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1,
  1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0,
  1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, /*
  skip 128 + 1 tail slots */
]);

function storeHex(dst: usize, offset: usize, ch: u32): void {
  // @ts-ignore: decorator
  const HEX_CHARS = memory.data<u8>([
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
    0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46
  ]);

  let hex =
    <u32>load<u8>(HEX_CHARS + (ch >> 4 & 0x0F)) |
    <u32>load<u8>(HEX_CHARS + (ch      & 0x0F)) << 16;

  store<u16>(dst + offset, CharCode.PERCENT, 0); // %
  store<u32>(dst + offset, hex, 2); // XX
}

export function encode(dst: usize, src: usize, len: usize, table: usize): usize {
  var i: usize = 0, offset: usize = 0, outSize = len << 1;
  while (i < len) {
    let org = i;
    let c: u32, c1: u32;
    do {
      c = <u32>load<u16>(src + (i << 1));
      if ((c - 33) < 0x7F - 33) {
        if (load<u8>(table + (c - 33))) break;
      } else break;
    } while (++i < len);

    if (i > org) {
      let size = i - org << 1;
      if (offset + size > outSize) {
        outSize = offset + size;
        dst = __renew(dst, outSize);
      }
      if (size == 2) {
        store<u16>(dst + offset, load<u16>(src + (org << 1)));
      } else if (size == 4) {
        store<u32>(dst + offset, load<u32>(src + (org << 1)));
      } else {
        memory.copy(
          dst + offset,
          src + (org << 1),
          size
        );
      }
      offset += size;
      if (i >= len) break;
    }

    if (c >= 0xD800) {
      if (c >= 0xDC00 && c <= 0xDFFF) {
        throw new URIError(E_URI_MALFORMED);
      }
      if (c <= 0xDBFF) {
        if (i >= len) {
          throw new URIError(E_URI_MALFORMED);
        }
        c1 = <u32>load<u16>(src + (++i << 1));
        if (c1 < 0xDC00 || c1 > 0xDFFF) {
          throw new URIError(E_URI_MALFORMED);
        }
        c = (((c & 0x3FF) << 10) | (c1 & 0x3FF)) + 0x10000;
      }
    }

    let estSize = offset + (c < 0x80 ? 1 * 6 : 4 * 6);
    if (estSize > outSize) {
      outSize = len > 1 ? estSize << 1 : estSize;
      dst = __renew(dst, outSize);
    }

    if (c < 0x80) {
      storeHex(dst, offset, c);
      offset += 6;
    } else {
      if (c < 0x800) {
        storeHex(dst, offset, (c >> 6) | 0xC0);
        offset += 6;
      } else {
        if (c < 0x10000) {
          storeHex(dst, offset, (c >> 12) | 0xE0);
          offset += 6;
        } else {
          storeHex(dst, offset, (c >> 18) | 0xF0);
          offset += 6;
          storeHex(dst, offset, (c >> 12 & 0x3F) | 0x80);
          offset += 6;
        }
        storeHex(dst, offset, (c >> 6 & 0x3F) | 0x80);
        offset += 6;
      }
      storeHex(dst, offset, (c & 0x3F) | 0x80);
      offset += 6;
    }
    ++i;
  }
  if (outSize > offset) {
    dst = __renew(dst, offset);
  }
  return dst;
}
