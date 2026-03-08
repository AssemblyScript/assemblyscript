import { Pointer } from "./pointer";

// Hex and varint encoding utilities.
// Inline functions for zero-overhead encoding/decoding.

export namespace Encoding {

  export namespace Hex {
    /** Encode bytes at `src` (length `srcLen`) to hex chars at `dst`. Returns chars written (srcLen * 2). */
    @inline export function encode(src: usize, srcLen: i32, dst: usize): i32 {
      for (let i: i32 = 0; i < srcLen; ++i) {
        encodeByte(load<u8>(src + <usize>i), dst + <usize>(i << 1));
      }
      return srcLen << 1;
    }

    /** Decode hex chars at `src` (length `srcLen`, must be even) to bytes at `dst`. Returns bytes written, or -1 on error. */
    @inline export function decode(src: usize, srcLen: i32, dst: usize): i32 {
      if (srcLen & 1) return -1; // odd length
      let outLen = srcLen >> 1;
      for (let i: i32 = 0; i < outLen; ++i) {
        let b = decodeByte(src + <usize>(i << 1));
        if (b < 0) return -1;
        store<u8>(dst + <usize>i, <u8>b);
      }
      return outLen;
    }

    /** Encode a single byte to 2 hex chars at `dst`. */
    @inline export function encodeByte(value: u8, dst: usize): void {
      let hi = (value >>> 4) & 0x0F;
      let lo = value & 0x0F;
      store<u8>(dst, hi < 10 ? hi + 48 : hi + 87);      // '0'-'9' or 'a'-'f'
      store<u8>(dst + 1, lo < 10 ? lo + 48 : lo + 87);
    }

    /** Decode 2 hex chars at `src` to a byte value. Returns -1 on invalid input. */
    @inline export function decodeByte(src: usize): i32 {
      let hi = decodeNibble(load<u8>(src));
      let lo = decodeNibble(load<u8>(src + 1));
      if ((hi | lo) < 0) return -1;
      return (hi << 4) | lo;
    }

    // Internal nibble decoder
    @inline function decodeNibble(c: u8): i32 {
      if (c >= 48 && c <= 57) return <i32>(c - 48);       // '0'-'9'
      if (c >= 97 && c <= 102) return <i32>(c - 87);      // 'a'-'f'
      if (c >= 65 && c <= 70) return <i32>(c - 55);       // 'A'-'F'
      return -1;
    }
  }

  export namespace Varint {
    /** Encode a u32 as unsigned LEB128 at `dst`. Returns bytes written. */
    @inline export function encodeU32(value: u32, dst: usize): i32 {
      let i: i32 = 0;
      while (value >= 0x80) {
        store<u8>(dst + <usize>i, <u8>((value & 0x7F) | 0x80));
        value >>= 7;
        ++i;
      }
      store<u8>(dst + <usize>i, <u8>value);
      return i + 1;
    }

    /** Encode a u64 as unsigned LEB128 at `dst`. Returns bytes written. */
    @inline export function encodeU64(value: u64, dst: usize): i32 {
      let i: i32 = 0;
      while (value >= 0x80) {
        store<u8>(dst + <usize>i, <u8>((<u32>(value & 0x7F)) | 0x80));
        value >>= 7;
        ++i;
      }
      store<u8>(dst + <usize>i, <u8><u32>value);
      return i + 1;
    }

    /** Decode an unsigned LEB128-encoded u32 from `src`. Writes bytes consumed to `bytesRead`. */
    @inline export function decodeU32(src: usize, bytesRead: Pointer<i32>): u32 {
      let result: u32 = 0;
      let shift: u32 = 0;
      let i: i32 = 0;
      let b: u8;
      do {
        b = load<u8>(src + <usize>i);
        result |= <u32>(b & 0x7F) << shift;
        shift += 7;
        ++i;
      } while (b & 0x80);
      bytesRead.value = i;
      return result;
    }

    /** Decode an unsigned LEB128-encoded u64 from `src`. Writes bytes consumed to `bytesRead`. */
    @inline export function decodeU64(src: usize, bytesRead: Pointer<i32>): u64 {
      let result: u64 = 0;
      let shift: u64 = 0;
      let i: i32 = 0;
      let b: u8;
      do {
        b = load<u8>(src + <usize>i);
        result |= <u64>(b & 0x7F) << shift;
        shift += 7;
        ++i;
      } while (b & 0x80);
      bytesRead.value = i;
      return result;
    }

    /** Encode a u64 as Bitcoin CompactSize at `dst`. Returns bytes written. */
    @inline export function encodeCompact(value: u64, dst: usize): i32 {
      if (value < 0xFD) {
        store<u8>(dst, <u8><u32>value);
        return 1;
      } else if (value <= 0xFFFF) {
        store<u8>(dst, 0xFD);
        store<u16>(dst + 1, <u16><u32>value); // LE
        return 3;
      } else if (value <= 0xFFFFFFFF) {
        store<u8>(dst, 0xFE);
        store<u32>(dst + 1, <u32>value); // LE
        return 5;
      } else {
        store<u8>(dst, 0xFF);
        store<u64>(dst + 1, value); // LE
        return 9;
      }
    }

    /** Decode a Bitcoin CompactSize from `src`. Writes bytes consumed to `bytesRead`. */
    @inline export function decodeCompact(src: usize, bytesRead: Pointer<i32>): u64 {
      let first = load<u8>(src);
      if (first < 0xFD) {
        bytesRead.value = 1;
        return <u64>first;
      } else if (first == 0xFD) {
        bytesRead.value = 3;
        return <u64>load<u16>(src + 1);
      } else if (first == 0xFE) {
        bytesRead.value = 5;
        return <u64>load<u32>(src + 1);
      } else {
        bytesRead.value = 9;
        return load<u64>(src + 1);
      }
    }
  }
}
