// References:
// https://github.com/brianmario/escape_utils/blob/master/ext/escape_utils/houdini_uri_u.c

import { CharCode } from "./string";

// @ts-ignore: decorator
@lazy export const URI_SAFE = memory.data<u8>([
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
@lazy export const URL_SAFE = memory.data<u8>([
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0,
  0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1,
  0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0
]);

export function escapeUnsafe(dst: usize, src: usize, len: isize, table: usize): bool {
  const HEX_CHARS = memory.data<u8>([
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
    0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46
  ]);
  const h0: u16 = CharCode.PERCENT; // %
  var i: isize = 0, org: isize, offset: usize = 0;
  while (i < len) {
    org = i;
    let ch: u32;
    while (i < len) {
      ch = <u32>load<u16>(src + (i << 1));
      if (ch <= 127) {
        if (!load<u8>(table + ch)) break;
      } else {
        if (ch >= 0xD800 || ch == h0) break;
      }
      ++i;
    }

    if (i > org) {
      if (!org) {
        if (i >= len) return false;
        dst = __realloc(dst, len * 12 / 10);
      }
      let size = <usize>(i - org) << 1;
      memory.copy(
        dst + offset,
        src + <usize>(org << 1),
        size
      );
      offset += size;
    }
    /* escaping */
    if (i >= len) break;

    ch = <u32>load<u16>(src + (i << 1));
    let h1 = (
      (<u32>load<u8>(HEX_CHARS + ((ch >>> 4) & 0x0F))) |
      (<u32>load<u8>(HEX_CHARS + ((ch >>> 0) & 0x0F)) << 16)
    );
    store<u16>(dst + offset, h0, 0);
    store<u32>(dst + offset, h1, 2);
    offset += 3 << 1;
    ++i;
  }
  return true;
}

export function escapeURI(str: string): string | null {
  var len = str.length;
  if (!len) return str;
  var result = __alloc(1, idof<string>());
  if (!escapeUnsafe(result, changetype<usize>(str), len, URI_SAFE)) {
    __free(result);
    return null;
  }
  return changetype<string>(result); // retain
}

export function escapeURIComponent(str: string): string | null {
  var len = str.length;
  if (!len) return str;
  var result = __alloc(1, idof<string>());
  if (!escapeUnsafe(result, changetype<usize>(str), len, URL_SAFE)) {
    __free(result);
    return null;
  }
  return changetype<string>(result); // retain
}
