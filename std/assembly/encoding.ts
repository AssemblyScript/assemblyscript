import { ALLOCATE, REGISTER, REALLOCATE, MAX_BYTELENGTH } from "./runtime";
import { E_INVALIDLENGTH } from "./util/error";

/** UTF16 encoding. */
export namespace UTF16 {

  /** Calculates the length of a string when encoded as an UTF16 buffer. */
  export function length(str: string): i32 {
    return str.length << 1;
  }

  /** Encodes a string as an UTF16 buffer. */
  export function encode(str: string): ArrayBuffer {
    var size = <usize>str.length << 1;
    var buf = ALLOCATE(size);
    memory.copy(buf, changetype<usize>(str), size);
    return REGISTER<ArrayBuffer>(buf);
  }

  /** Decodes an UTF16 buffer to a string.*/
  export function decode(buf: ArrayBuffer): string {
    return decodeRaw(changetype<usize>(buf), buf.byteLength);
  }

  // @ts-ignore: decorator
  @unsafe
  export function decodeRaw(buf: usize, len: i32): string {
    if (<usize>len > <usize>MAX_BYTELENGTH) throw new RangeError(E_INVALIDLENGTH);
    var size = <usize>len;
    var str = ALLOCATE(size);
    memory.copy(str, changetype<usize>(buf), size);
    return REGISTER<string>(str);
  }
}

/** UTF8 encoding. */
export namespace UTF8 {

  /** Calculates the length of a string when encoded as an UTF8 buffer. */
  export function length(str: string, delimited: bool = false): i32 {
    var strOff = changetype<usize>(str);
    var strEnd = changetype<usize>(str) + (<usize>str.length << 1);
    var bufLen = delimited ? 1 : 0;
    while (strOff < strEnd) {
      let c = <u32>load<u16>(strOff);
      if (c < 128) {
        bufLen += 1; strOff += 2;
      } else if (c < 2048) {
        bufLen += 2; strOff += 2;
      } else {
        if ((c & 0xFC00) == 0xD800 && strOff + 2 < strEnd) {
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

  /** Encodes a string as an UTF8 buffer. */
  export function encode(str: string, delimited: bool = false): ArrayBuffer {
    var strOff = changetype<usize>(str);
    var strEnd = changetype<usize>(str) + (<usize>str.length << 1);
    var buf = ALLOCATE(<usize>length(str, delimited));
    var bufOff = changetype<usize>(buf);
    while (strOff < strEnd) {
      let c1 = <u32>load<u16>(strOff);
      if (c1 < 128) {
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
    assert(strOff == strEnd);
    if (delimited) store<u8>(bufOff, 0);
    return REGISTER<ArrayBuffer>(buf);
  }

  /** Decodes an UTF8 buffer to a string.*/
  export function decode(buf: ArrayBuffer, delimited: bool = false): string {
    return delimited
      ? decodeRawDelimited(changetype<usize>(buf), buf.byteLength)
      : decodeRaw(changetype<usize>(buf), buf.byteLength);
  }

  // @ts-ignore: decorator
  @unsafe
  export function decodeRaw(buf: usize, len: i32): string {
    var bufOff = buf;
    var bufEnd = buf + <usize>len;
    var str = ALLOCATE(<usize>len << 1); // max is one u16 char per u8 byte
    var strOff = str;
    while (bufOff < bufEnd) {
      let cp = <u32>load<u8>(bufOff++);
      if (cp < 128) {
        store<u16>(strOff, cp);
        strOff += 2;
      } else if (cp > 191 && cp < 224) {
        store<u16>(strOff, (cp & 31) << 6 | load<u8>(bufOff++) & 63);
        strOff += 2;
      } else if (cp > 239 && cp < 365) {
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
        store<u16>(strOff,
          (cp                  & 15) << 12 |
          (load<u8>(bufOff)    & 63) << 6  |
           load<u8>(bufOff, 1) & 63
        );
        bufOff += 2; strOff += 2;
      }
    }
    return REGISTER<string>(REALLOCATE(str, strOff - str));
  }

  // @ts-ignore: decorator
  @unsafe
  export function decodeRawDelimited(buf: usize, maxLen: i32 = MAX_BYTELENGTH): string {
    var bufOff = buf;
    var bufLim = buf + <usize>maxLen;
    assert(bufLim > bufOff); // guard wraparound
    var str = ALLOCATE(16);  // optimize for small strings
    var strLen = <usize>0;
    while (bufOff < bufLim) {
      let cp = <u32>load<u8>(bufOff++);
      if (cp < 128) {
        if (!cp) break;
        str = REALLOCATE(str, strLen + 2);
        store<u16>(str + strLen, cp);
        strLen += 2;
      } else if (cp > 191 && cp < 224) {
        if (bufOff >= bufLim) break;
        str = REALLOCATE(str, strLen + 2);
        store<u16>(str + strLen, (cp & 31) << 6 | load<u8>(bufOff++) & 63);
        strLen += 2;
      } else if (cp > 239 && cp < 365) {
        if (bufOff + 3 > bufLim) break;
        cp = (
          (cp                  &  7) << 18 |
          (load<u8>(bufOff)    & 63) << 12 |
          (load<u8>(bufOff, 1) & 63) << 6  |
           load<u8>(bufOff, 2) & 63
        ) - 0x10000;
        bufOff += 3;
        str = REALLOCATE(str, strLen + 4);
        let strOff = str + strLen;
        store<u16>(strOff, 0xD800 + (cp >> 10));
        store<u16>(strOff, 0xDC00 + (cp & 1023), 2);
        strLen += 4;
      } else {
        if (bufOff + 2 > bufLim) break;
        str = REALLOCATE(str, strLen + 2);
        store<u16>(str + strLen,
          (cp                  & 15) << 12 |
          (load<u8>(bufOff)    & 63) << 6  |
           load<u8>(bufOff, 1) & 63
        );
        bufOff += 2; strLen += 2;
      }
    }
    return REGISTER<string>(REALLOCATE(str, strLen));
  }
}
