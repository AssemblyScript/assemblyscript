// References:
// https://github.com/brianmario/escape_utils/blob/master/ext/escape_utils/houdini_uri_e.c
// https://github.com/brianmario/escape_utils/blob/master/ext/escape_utils/houdini_uri_u.c

import { E_URI_MALFORMED } from "./error";
import { CharCode } from "./string";

// @ts-ignore: decorator
@lazy export const URI_UNSAFE = memory.data<u8>([
/* skip 32 + 1 always set to '1' head slots
  */ 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0,
  1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, /*
  skip 128 + 1 always set to '1' tail slots */
]);

// @ts-ignore: decorator
@lazy export const URL_UNSAFE = memory.data<u8>([
/* skip 32 + 1 always set to '1' head slots
  */ 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1,
  1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0,
  1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, /*
  skip 128 + 1 always set to '1' tail slots */
]);

// @ts-ignore: decorator
@lazy export const URI_RESERVED = memory.data<u8>([
  /*  skip 32 + 3 always set to '0' head slots
        */ 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1,
  1, /* skip 191 always set to '0' tail slots */
]);

// @ts-ignore: decorator
@lazy export const UTF8_BYTE_LEN = memory.data<u8>([
  /* skip 128 always set to '1' head slots */
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
  3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
  4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
]);


export function encode(dst: usize, src: usize, len: usize, table: usize): usize {
  var i: usize = 0, offset: usize = 0, outSize = len << 1;
  while (i < len) {
    let org = i;
    let c: u32, c1: u32;
    do {
      c = <u32>load<u16>(src + (i << 1));
      if (c - 33 < 94) { // 127 - 33
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

export function decode(dst: usize, src: usize, len: usize, component: bool): usize {
  var i: usize = 0, offset: usize = 0, org: usize, ch: u32 = 0;

  while (i < len) {
    org = i;
    while (i < len && (ch = load<u16>(src + (i << 1))) != CharCode.PERCENT) i++;

    if (i > org) {
      let size = i - org << 1;
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

    // decode hex
    if (
      i + 2 >= len ||
      ch != CharCode.PERCENT ||
      (ch = loadHex(src, i + 1 << 1)) == -1
    ) throw new URIError(E_URI_MALFORMED);

    i += 3;
    if (ch < 0x80) {
      if (!component && isReserved(ch)) {
        ch = CharCode.PERCENT;
        i -= 2;
      }
    } else {
      // decode UTF-8 sequence
      let bytes = utf8LenFromUpperByte(ch);
      let lo: u32 = 1;
      if (bytes == 2) {
        lo  = 0x80;
        ch &= 0x1F;
      } else if (bytes == 3) {
        lo  = 0x800;
        ch &= 0x0F;
      } else if (bytes == 4) {
        lo  = 0x10000;
        ch &= 0x07;
      } else {
        ch = 0;
      }
      let c1: u32 = 0;
      while (--bytes > 0) {
        // decode hex
        if (
          i + 2 >= len ||
          load<u16>(src + (i << 1)) != CharCode.PERCENT ||
          (c1 = loadHex(src, i + 1 << 1)) == -1
        ) throw new URIError(E_URI_MALFORMED);

        i += 3;
        if ((c1 & 0xC0) != 0x80) {
          ch = 0;
          break;
        }
        ch = (ch << 6) | (c1 & 0x3F);
      }

      if (ch < lo || ch > 0x10FFFF || (ch >= 0xD800 && ch < 0xE000)) {
        throw new URIError(E_URI_MALFORMED);
      }
    }
    if (ch < 0x10000) {
      store<u16>(dst + offset, ch);
      offset += 2;
    } else {
      ch -= 0x10000;
      let lo = ch >> 10 | 0xD800;
      let hi = (ch & 0x03FF) | 0xDC00;
      store<u32>(dst + offset, lo | (hi << 16));
      offset += 4;
    }
  }

  assert(offset <= (len << 1));
  if ((len << 1) > offset) {
    dst = __renew(dst, offset);
  }
  return dst;
}

// @ts-ignore: decorator
@inline function utf8LenFromUpperByte(c0: u32): i32 {
  if (ASC_SHRINK_LEVEL > 1) {
    if (c0 >= 0xC0 && c0 <= 0xDF) return 2;
    if (c0 >= 0xE0 && c0 <= 0xEF) return 3;
    if (c0 >= 0xF0 && c0 <= 0xF7) return 4;
    return 0;
  } else {
    return c0 - 128 <= 128
      ? <i32>load<u8>(UTF8_BYTE_LEN + (c0 - 128))
      : 0;
  }
}

// @ts-ignore: decorator
@inline function isReserved(ch: u32): bool {
  return (ch - 35) < 30
    ? <bool>load<u16>(URI_RESERVED + (ch - 35))
    : false;
}

// @ts-ignore: decorator
// @inline function isHex(ch: u32): bool {
//   return ch - CharCode._0 < 10 || (ch | 32) - CharCode.a < 6;
// }

// @ts-ignore: decorator
@inline function fromHex(ch: u32): u32 {
  return (ch | 32) % 39 - 9;
}

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


function loadHex(src: usize, offset: usize): u32 {
  let c0 = <u32>load<u16>(src + offset, 0);
  let c1 = <u32>load<u16>(src + offset, 2);

  // if (!isHex(c0) || !isHex(c1)) return -1;
  // return fromHex(c0) << 4 | fromHex(c1);

  c0 = fromHex(c0);
  c1 = fromHex(c1);

  return c0 < 16 && c1 < 16
    ? c0 << 4 | c1
    : -1;
}
