import { E_URI_MALFORMED } from "./error";
import { CharCode } from "./string";

// Truncated lookup boolean table that helps us quickly determine
// if a char needs to be escaped for URIs (RFC 2396).
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

// Truncated lookup boolean table that helps us quickly determine
// if a char needs to be escaped for URLs (RFC 3986).
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

// Truncated lookup boolean table for determine reserved chars: ;/?:@&=+$,#
// @ts-ignore: decorator
@lazy export const URI_RESERVED = memory.data<u8>([
  /*  skip 32 + 3 always set to '0' head slots
        */ 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1,
  1, /* skip 191 always set to '0' tail slots */
]);

export function encode(src: usize, len: usize, table: usize): usize {
  if (!len) return src;

  var i: usize = 0, offset: usize = 0, outSize = len << 1;
  var dst = __new(outSize, idof<String>());

  while (i < len) {
    let org = i;
    let c: u32, c1: u32;
    // fast scan a check chars until it valid ASCII
    // and safe for copying withoud escaping.
    do {
      c = <u32>load<u16>(src + (i << 1));
      // is it valid ASII and safe?
      if (c - 33 < 94) { // 127 - 33
        if (load<u8>(table + (c - 33))) break;
      } else break;
    } while (++i < len);

    // if we have some safe range of sequence just copy it without encoding
    if (i > org) {
      let size = i - org << 1;
      if (offset + size > outSize) {
        outSize = offset + size;
        dst = __renew(dst, outSize);
      }
      // TODO: should we optimize for short cases like 2 byte size?
      memory.copy(
        dst + offset,
        src + (org << 1),
        size
      );
      offset += size;
      // return if we reach end on input string
      if (i >= len) break;
    }

    // decode UTF16 with checking for unpaired surrogates
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
      // doubling estimated size but only for greater than one
      // input lenght due to we already estemated it for worst case
      outSize = len > 1 ? estSize << 1 : estSize;
      dst = __renew(dst, outSize);
    }

    if (c < 0x80) {
      // encode ASCII unsafe code point
      storeHex(dst, offset, c);
      offset += 6;
    } else {
      // encode UTF-8 unsafe code point
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
  // shink output string buffer if necessary
  if (outSize > offset) {
    dst = __renew(dst, offset);
  }
  return dst;
}

export function decode(src: usize, len: usize, component: bool): usize {
  if (!len) return src;

  var i: usize = 0, offset: usize = 0, ch: u32 = 0;
  var dst = __new(len << 1, idof<String>());

  while (i < len) {
    let org = i;
    while (i < len && (ch = load<u16>(src + (i << 1))) != CharCode.PERCENT) i++;

    if (i > org) {
      let size = i - org << 1;
      // TODO: should we optimize for short cases like 2 byte size?
      memory.copy(
        dst + offset,
        src + (org << 1),
        size
      );
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
      let nb = utf8LenFromUpperByte(ch);
      // minimal surrogate: 2 => 0x80, 3 => 0x800, 4 => 0x10000, _ => -1
      let lo: u32 = 1 << (17 * nb >> 2) - 1;
      // mask: 2 => 31, 3 => 15, 4 => 7, _ =>  0
      ch &= nb ? (0x80 >> nb) - 1 : 0;

      while (--nb != 0) {
        let c1: u32;
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

      // check if UTF8 code point properly fit into invalid UTF16 encoding
      if (ch < lo || lo == -1 || ch > 0x10FFFF || (ch >= 0xD800 && ch < 0xE000)) {
        throw new URIError(E_URI_MALFORMED);
      }

      // encode UTF16
      if (ch >= 0x10000) {
        ch -= 0x10000;
        let lo = ch >> 10 | 0xD800;
        let hi = (ch & 0x03FF) | 0xDC00;
        store<u32>(dst + offset, lo | (hi << 16));
        offset += 4;
        continue;
      }
    }
    store<u16>(dst + offset, ch);
    offset += 2;
  }

  assert(offset <= (len << 1));
  // shink output string buffer if necessary
  if ((len << 1) > offset) {
    dst = __renew(dst, offset);
  }
  return dst;
}

function storeHex(dst: usize, offset: usize, ch: u32): void {
  // @ts-ignore: decorator
  const HEX_CHARS = memory.data<u8>([
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
    0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46
  ]);

  store<u16>(dst + offset, CharCode.PERCENT, 0); // %
  store<u32>(
    dst + offset,
    <u32>load<u8>(HEX_CHARS + (ch >> 4 & 0x0F)) |
    <u32>load<u8>(HEX_CHARS + (ch      & 0x0F)) << 16,
    2
  ); // XX
}

function loadHex(src: usize, offset: usize): u32 {
  let c0 = <u32>load<u16>(src + offset, 0);
  let c1 = <u32>load<u16>(src + offset, 2);
  return isHex(c0) && isHex(c1)
    ? fromHex(c0) << 4 | fromHex(c1)
    : -1;
}

// @ts-ignore: decorator
@inline function fromHex(ch: u32): u32 {
  return (ch | 32) % 39 - 9;
}

// @ts-ignore: decorator
@inline function utf8LenFromUpperByte(c0: u32): u32 {
  // same as
  // if (c0 - 0xC0 <= 0xDF - 0xC0) return 2;
  // if (c0 - 0xE0 <= 0xEF - 0xE0) return 3;
  // if (c0 - 0xF0 <= 0xF7 - 0xF0) return 4;
  // return 0;
  return c0 - 0xC0 < 56
    ? clz(~(c0 << 24))
    : 0;
}

// @ts-ignore: decorator
@inline function isReserved(ch: u32): bool {
  return ch - 35 < 30
    ? <bool>load<u8>(URI_RESERVED + (ch - 35))
    : false;
}

// @ts-ignore: decorator
@inline function isHex(ch: u32): bool {
  return (ch - CharCode._0 < 10) || ((ch | 32) - CharCode.a < 6);
}
