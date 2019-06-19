import { BLOCK, BLOCK_OVERHEAD } from "rt/common";

export namespace Encoding {

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
          // if (bufEnd - bufOff < 1) break;
          store<u16>(strOff, (cp & 31) << 6 | load<u8>(bufOff++) & 63);
          strOff += 2;
        } else if (cp > 239 && cp < 365) {
          // if (bufEnd - bufOff < 3) break;
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
          // if (bufEnd - bufOff < 2) break;
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
      return str.length << 1;
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
