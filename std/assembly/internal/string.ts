import {
  MAX_SIZE_32
} from "./allocator";

import {
  String
} from "../string";

/** Size of a String header. */
export const HEADER_SIZE = (offsetof<String>() + 1) & ~1; // 2 byte aligned

/** Maximum length of a String. */
export const MAX_LENGTH = (<i32>MAX_SIZE_32 - HEADER_SIZE) >>> 1;

/** Singleton empty String. */
export const EMPTY = changetype<String>(""); // TODO: is this a bad idea with '===' in place?

/** Allocates a raw String with uninitialized contents. */
export function allocate(length: i32): String {
  assert(length > 0 && length <= MAX_LENGTH);
  var buffer = allocate_memory(HEADER_SIZE + (<usize>length << 1));
  store<i32>(buffer, length);
  return changetype<String>(buffer);
}

@inline
export function isAscii(c: u32): bool {
  return (c & 0xFFFFFF80) == 0;
}

@inline
export function isUpper(c: u32): bool {
  return c - CharCode.A <= <u32>(CharCode.Z - CharCode.A);
}

@inline
export function isLower(c: u32): bool {
  return c - CharCode.a <= <u32>(CharCode.z - CharCode.a);
}

@inline
export function toLower(c: u32): u32 {
  return isAscii(c) ? toLower8(c) : toLower16(c);
}

@inline
export function toUpper(c: u32): u32 {
  return isAscii(c) ? toUpper8(c) : toUpper16(c);
}

export function isWhiteSpaceOrLineTerminator(c: u16): bool {
  switch (c) {
    case 10:      // <LF>
    case 13:      // <CR>
    case 8232:    // <LS>
    case 8233:    // <PS>
    case 9:       // <TAB>
    case 11:      // <VT>
    case 12:      // <FF>
    case 32:      // <SP>
    case 160:     // <NBSP>
    case 65279: { // <ZWNBSP>
      return true;
    }
    default: return false;
  }
}

export const enum CharCode {
  PLUS = 0x2B,
  MINUS = 0x2D,
  DOT = 0x2E,
  _0 = 0x30,
  _1 = 0x31,
  _2 = 0x32,
  _3 = 0x33,
  _4 = 0x34,
  _5 = 0x35,
  _6 = 0x36,
  _7 = 0x37,
  _8 = 0x38,
  _9 = 0x39,
  A = 0x41,
  B = 0x42,
  E = 0x45,
  O = 0x4F,
  X = 0x58,
  Z = 0x5a,
  a = 0x61,
  b = 0x62,
  e = 0x65,
  o = 0x6F,
  x = 0x78,
  z = 0x7A
}

export function parse<T>(str: String, radix: i32 = 0): T {
  var len: i32 = str.length;
  if (!len) {
    return <T>NaN;
  }
  var ptr = changetype<usize>(str) /* + HEAD -> offset */;
  var code = <i32>load<u16>(ptr, HEADER_SIZE);

  // determine sign
  var sign: T;
  if (code == CharCode.MINUS) {
    if (!--len) {
      return <T>NaN;
    }
    code = <i32>load<u16>(ptr += 2, HEADER_SIZE);
    sign = -1;
  } else if (code == CharCode.PLUS) {
    if (!--len) {
      return <T>NaN;
    }
    code = <i32>load<u16>(ptr += 2, HEADER_SIZE);
    sign = 1;
  } else {
    sign = 1;
  }

  // determine radix
  if (!radix) {
    if (code == CharCode._0 && len > 2) {
      switch (<i32>load<u16>(ptr + 2, HEADER_SIZE)) {
        case CharCode.B:
        case CharCode.b: {
          ptr += 4; len -= 2;
          radix = 2;
          break;
        }
        case CharCode.O:
        case CharCode.o: {
          ptr += 4; len -= 2;
          radix = 8;
          break;
        }
        case CharCode.X:
        case CharCode.x: {
          ptr += 4; len -= 2;
          radix = 16;
          break;
        }
        default: {
          radix = 10;
        }
      }
    } else radix = 10;
  } else if (radix < 2 || radix > 36) {
    return <T>NaN;
  }

  // calculate value
  var num: T = 0;
  while (len--) {
    code = <i32>load<u16>(ptr, HEADER_SIZE);
    if (code >= CharCode._0 && code <= CharCode._9) {
      code -= CharCode._0;
    } else if (code >= CharCode.A && code <= CharCode.Z) {
      code -= CharCode.A - 10;
    } else if (code >= CharCode.a && code <= CharCode.z) {
      code -= CharCode.a - 10;
    } else {
      break;
    }
    if (code >= radix) {
      break;
    }
    num = (num * radix) + code;
    ptr += 2;
  }
  return sign * num;
}

@inline
function toLower8(c: u32): u32 {
  return select<u32>(c - CharCode.A + CharCode.a, c, isUpper(c));
}

@inline
function toUpper8(c: u32): u32 {
  return select<u32>(c - CharCode.a + CharCode.A, c, isLower(c));
}

// Lower case mapping for UTF16 chars.
// Code adopted from https://github.com/eblot/newlib/blob/master/newlib/libc/ctype/towlower.c
function toLower16(c: u32): u32 {
  if (c < 0x100) {
    if ((c >= 0x0041 && c <= 0x005a) ||
        (c >= 0x00c0 && c <= 0x00d6) ||
        (c >= 0x00d8 && c <= 0x00de)) return c + 0x20;
    return c;
  } else if (c < 0x300) {
    if ((c >= 0x0100 && c <= 0x012e) ||
        (c >= 0x0132 && c <= 0x0136) ||
        (c >= 0x014a && c <= 0x0176) ||
        (c >= 0x01de && c <= 0x01ee) ||
        (c >= 0x01f8 && c <= 0x021e) ||
        (c >= 0x0222 && c <= 0x0232)) return c + <u32>(!(c & 1));
    if (c == 0x0130) return 0x0069;
    if ((c >= 0x0139 && c <= 0x0147) ||
        (c >= 0x01cd && c <= 0x01db)) return c + (c & 1);
    if (c >= 0x178 && c <= 0x01f7) {
      switch (c) {
        case 0x0178: return 0x00ff;
        case 0x0179:
        case 0x017b:
        case 0x017d:
        case 0x0182:
        case 0x0184:
        case 0x0187:
        case 0x018b:
        case 0x0191:
        case 0x0198:
        case 0x01a0:
        case 0x01a2:
        case 0x01a4:
        case 0x01a7:
        case 0x01ac:
        case 0x01af:
        case 0x01b3:
        case 0x01b5:
        case 0x01b8:
        case 0x01bc:
        case 0x01c5:
        case 0x01c8:
        case 0x01cb:
        case 0x01cd:
        case 0x01cf:
        case 0x01d1:
        case 0x01d3:
        case 0x01d5:
        case 0x01d7:
        case 0x01d9:
        case 0x01db:
        case 0x01f2:
        case 0x01f4: return c + 1;
        case 0x0181: return 0x0253;
        case 0x0186: return 0x0254;
        case 0x0189: return 0x0256;
        case 0x018a: return 0x0257;
        case 0x018e: return 0x01dd;
        case 0x018f: return 0x0259;
        case 0x0190: return 0x025b;
        case 0x0193: return 0x0260;
        case 0x0194: return 0x0263;
        case 0x0196: return 0x0269;
        case 0x0197: return 0x0268;
        case 0x019c: return 0x026f;
        case 0x019d: return 0x0272;
        case 0x019f: return 0x0275;
        case 0x01a6: return 0x0280;
        case 0x01a9: return 0x0283;
        case 0x01ae: return 0x0288;
        case 0x01b1: return 0x028a;
        case 0x01b2: return 0x028b;
        case 0x01b7: return 0x0292;
        case 0x01c4:
        case 0x01c7:
        case 0x01ca:
        case 0x01f1: return c + 2;
        case 0x01f6: return 0x0195;
        case 0x01f7: return 0x01bf;
        default: break;
      }
    }
    else if (c == 0x0220) return 0x019e;
    else if (c >= 0x023a && c <= 0x024e) {
      switch (c) {
        case 0x023a: return 0x2c65;
        case 0x023b:
        case 0x0241:
        case 0x0246:
        case 0x0248:
        case 0x024a:
        case 0x024c:
        case 0x024e: return c + 1;
        case 0x023d: return 0x019a;
        case 0x023e: return 0x2c66;
        case 0x0243: return 0x0180;
        case 0x0244: return 0x0289;
        case 0x0245: return 0x028c;
        default: break;
      }
    }
  } else if (c < 0x0400) {
    if (c == 0x0370 || c == 0x0372 || c == 0x0376) return c + 1;
    if (c >= 0x0391 && c <= 0x03ab && c != 0x03a2) return c + 0x20;
    if (c >= 0x03d8 && c <= 0x03ee && !(c & 1))    return c + 1;
    if (c >= 0x0386 && c <= 0x03ff) {
      switch (c) {
        case 0x0386: return 0x03ac;
        case 0x0388: return 0x03ad;
        case 0x0389: return 0x03ae;
        case 0x038a: return 0x03af;
        case 0x038c: return 0x03cc;
        case 0x038e: return 0x03cd;
        case 0x038f: return 0x03ce;
        case 0x03cf: return 0x03d7;
        case 0x03f4: return 0x03b8;
        case 0x03f7: return 0x03f8;
        case 0x03f9: return 0x03f2;
        case 0x03fa: return 0x03fb;
        case 0x03fd: return 0x037b;
        case 0x03fe: return 0x037c;
        case 0x03ff: return 0x037d;
        default: break;
      }
    }
  } else if (c < 0x500) {
    if (c >= 0x0400 && c <= 0x040f) return c + 0x50;
    if (c >= 0x0410 && c <= 0x042f) return c + 0x20;
    if ((c >= 0x0460 && c <= 0x0480) ||
        (c >= 0x048a && c <= 0x04be) ||
        (c >= 0x04d0 && c <= 0x04fe)) return c + <u32>(!(c & 1));
    if (c == 0x04c0) return 0x04cf;
    if (c >= 0x04c1 && c <= 0x04cd) return c + (c & 1);
  } else if (c < 0x1f00) {
    if ((c >= 0x0500 && c <= 0x050e) ||
        (c >= 0x0510 && c <= 0x0524) ||
        (c >= 0x1e00 && c <= 0x1e94) ||
        (c >= 0x1ea0 && c <= 0x1ef8)) return c + <u32>(!(c & 1));
    if (c >= 0x0531 && c <= 0x0556) return c + 0x30;
    if (c >= 0x10a0 && c <= 0x10c5) return c + 0x1c60;
    if (c == 0x1e9e) return 0x00df;
    if (c >= 0x1efa && c <= 0x1efe && !(c & 1)) return c + 1;
  } else if (c < 0x2000) {
    if ((c >= 0x1f08 && c <= 0x1f0f) ||
        (c >= 0x1f18 && c <= 0x1f1d) ||
        (c >= 0x1f28 && c <= 0x1f2f) ||
        (c >= 0x1f38 && c <= 0x1f3f) ||
        (c >= 0x1f48 && c <= 0x1f4d) ||
        (c >= 0x1f68 && c <= 0x1f6f) ||
        (c >= 0x1f88 && c <= 0x1f8f) ||
        (c >= 0x1f98 && c <= 0x1f9f) ||
        (c >= 0x1fa8 && c <= 0x1faf)) return c - 0x08;
    if (c >= 0x1f59 && c <= 0x1f5f) return select<u32>(c - 0x08, c, c & 1);
    if (c >= 0x1fb8 && c <= 0x1ffc) {
      switch (c) {
        case 0x1fb8:
        case 0x1fb9:
        case 0x1fd8:
        case 0x1fd9:
        case 0x1fe8:
        case 0x1fe9: return c - 0x08;
        case 0x1fba:
        case 0x1fbb: return c - 0x4a;
        case 0x1fbc: return 0x1fb3;
        case 0x1fc8:
        case 0x1fc9:
        case 0x1fca:
        case 0x1fcb: return c - 0x56;
        case 0x1fcc: return 0x1fc3;
        case 0x1fda:
        case 0x1fdb: return c - 0x64;
        case 0x1fea:
        case 0x1feb: return c - 0x70;
        case 0x1fec: return 0x1fe5;
        case 0x1ff8:
        case 0x1ff9: return c - 0x80;
        case 0x1ffa:
        case 0x1ffb: return c - 0x7e;
        case 0x1ffc: return 0x1ff3;
        default: break;
      }
    }
  } else if (c < 0x2c00) {
    if (c >= 0x2160 && c <= 0x216f) return c + 0x10;
    if (c >= 0x24b6 && c <= 0x24cf) return c + 0x1a;
    switch (c) {
      case 0x2126: return 0x03c9;
      case 0x212a: return 0x006b;
      case 0x212b: return 0x00e5;
      case 0x2132: return 0x214e;
      case 0x2183: return 0x2184;
      default: break;
    }
  } else if (c < 0x2d00) {
    if (c >= 0x2c00 && c <= 0x2c2e) return c + 0x30;
    if (c >= 0x2c80 && c <= 0x2ce2 && !(c & 1)) return c + 1;
    switch (c) {
      case 0x2c60: return 0x2c61;
      case 0x2c62: return 0x026b;
      case 0x2c63: return 0x1d7d;
      case 0x2c64: return 0x027d;
      case 0x2c67:
      case 0x2c69:
      case 0x2c6b:
      case 0x2c72:
      case 0x2c75:
      case 0x2ceb:
      case 0x2ced: return c + 1;
      case 0x2c6d: return 0x0251;
      case 0x2c6e: return 0x0271;
      case 0x2c6f: return 0x0250;
      case 0x2c70: return 0x0252;
      case 0x2c7e: return 0x023f;
      case 0x2c7f: return 0x0240;
      default: break;
    }
  } else if (c >= 0xa600 && c < 0xa800) {
    if ((c >= 0xa640 && c <= 0xa65e) ||
        (c >= 0xa662 && c <= 0xa66c) ||
        (c >= 0xa680 && c <= 0xa696) ||
        (c >= 0xa722 && c <= 0xa72e) ||
        (c >= 0xa732 && c <= 0xa76e) ||
        (c >= 0xa77f && c <= 0xa786)) return c + <u32>(!(c & 1));
    switch (c) {
      case 0xa779:
      case 0xa77b:
      case 0xa77e:
      case 0xa78b: return c + 1;
      case 0xa77d: return 0x1d79;
      default: break;
    }
  } else {
    if (c >= 0x0ff21 && c <= 0x0ff3a) return c + 0x20;
    if (c >= 0x10400 && c <= 0x10427) return c + 0x28;
  }
  return c;
}

// Upper case mapping for UTF16 chars.
// Code adopted from https://github.com/eblot/newlib/blob/master/newlib/libc/ctype/towupper.c
function toUpper16(c: u32): u32 {
  if (c < 0x100) {
    if (c == 0x00b5) return 0x039c;
    if ((c >= 0x00e0 && c <= 0x00fe && c != 0x00f7) ||
        (c >= 0x0061 && c <= 0x007a)) return c - 0x20;
    return select<u32>(0x0178, c, c == 0xff);
  } else if (c < 0x300) {
    if ((c >= 0x0101 && c <= 0x012f) ||
        (c >= 0x0133 && c <= 0x0137) ||
        (c >= 0x014b && c <= 0x0177) ||
        (c >= 0x01df && c <= 0x01ef) ||
        (c >= 0x01f9 && c <= 0x021f) ||
        (c >= 0x0223 && c <= 0x0233) ||
        (c >= 0x0247 && c <= 0x024f)) return c - (c & 1);
    if ((c >= 0x013a && c <= 0x0148) ||
        (c >= 0x01ce && c <= 0x01dc) ||
         c == 0x023c || c == 0x0242) return c - <u32>(!(c & 1));
    if (c == 0x0131) return 0x0049;
    if (c == 0x017a || c == 0x017c || c == 0x017e) return c - 1;
    if (c >= 0x017f && c <= 0x0292) {
      switch (c) {
        case 0x017f: return 0x0053;
        case 0x0180: return 0x0243;
        case 0x0183: return 0x0182;
        case 0x0185: return 0x0184;
        case 0x0188: return 0x0187;
        case 0x018c: return 0x018b;
        case 0x0192: return 0x0191;
        case 0x0195: return 0x01f6;
        case 0x0199: return 0x0198;
        case 0x019a: return 0x023d;
        case 0x019e: return 0x0220;
        case 0x01a1:
        case 0x01a3:
        case 0x01a5:
        case 0x01a8:
        case 0x01ad:
        case 0x01b0:
        case 0x01b4:
        case 0x01b6:
        case 0x01b9:
        case 0x01bd:
        case 0x01c5:
        case 0x01c8:
        case 0x01cb:
        case 0x01f2:
        case 0x01f5: return c - 1;
        case 0x01bf: return 0x01f7;
        case 0x01c6:
        case 0x01c9:
        case 0x01cc: return c - 2;
        case 0x01dd: return 0x018e;
        case 0x01f3: return 0x01f1;
        case 0x023f: return 0x2c7e;
        case 0x0240: return 0x2c7f;
        case 0x0250: return 0x2c6f;
        case 0x0251: return 0x2c6d;
        case 0x0252: return 0x2c70;
        case 0x0253: return 0x0181;
        case 0x0254: return 0x0186;
        case 0x0256: return 0x0189;
        case 0x0257: return 0x018a;
        case 0x0259: return 0x018f;
        case 0x025b: return 0x0190;
        case 0x0260: return 0x0193;
        case 0x0263: return 0x0194;
        case 0x0268: return 0x0197;
        case 0x0269: return 0x0196;
        case 0x026b: return 0x2c62;
        case 0x026f: return 0x019c;
        case 0x0271: return 0x2c6e;
        case 0x0272: return 0x019d;
        case 0x0275: return 0x019f;
        case 0x027d: return 0x2c64;
        case 0x0280: return 0x01a6;
        case 0x0283: return 0x01a9;
        case 0x0288: return 0x01ae;
        case 0x0289: return 0x0244;
        case 0x028a: return 0x01b1;
        case 0x028b: return 0x01b2;
        case 0x028c: return 0x0245;
        case 0x0292: return 0x01b7;
        default: break;
      }
    }
  } else if (c < 0x0400) {
    if (c >= 0x03ad && c <= 0x03af) return c - 0x25;
    if (c >= 0x03b1 && c <= 0x03cb && c != 0x03c2) return c - 0x20;
    if (c >= 0x03d9 && c <= 0x03ef && <bool>(c & 1)) return c - 1;
    switch (c) {
      case 0x0345: return 0x0399;
      case 0x0371:
      case 0x0373:
      case 0x0377:
      case 0x03f8:
      case 0x03fb: return c - 1;
      case 0x037b:
      case 0x037c:
      case 0x037d: return c + 0x82;
      case 0x03ac: return 0x0386;
      case 0x03c2: return 0x03a3;
      case 0x03cc: return 0x038c;
      case 0x03cd:
      case 0x03ce: return c - 0x3f;
      case 0x03d0: return 0x0392;
      case 0x03d1: return 0x0398;
      case 0x03d5: return 0x03a6;
      case 0x03d6: return 0x03a0;
      case 0x03d7: return 0x03cf;
      case 0x03f0: return 0x039a;
      case 0x03f1: return 0x03a1;
      case 0x03f2: return 0x03f9;
      case 0x03f5: return 0x0395;
      default: break;
    }
  } else if (c < 0x500) {
    if (c >= 0x0430 && c <= 0x044f) return c - 0x20;
    if (c >= 0x0450 && c <= 0x045f) return c - 0x50;
    if ((c >= 0x0461 && c <= 0x0481) ||
        (c >= 0x048b && c <= 0x04bf) ||
        (c >= 0x04d1 && c <= 0x04ff)) return c - (c & 1);
    if (c >= 0x04c2 && c <= 0x04ce) return c - <u32>(!(c & 1));
    if (c == 0x04cf) return 0x04c0;
    if (c >= 0x04f7 && c <= 0x04f9) return c - 1;
  } else if (c < 0x0600) {
    if (c >= 0x0501 && c <= 0x0525 && <bool>(c & 1)) return c - 1;
    if (c >= 0x0561 && c <= 0x0586) return c - 0x30;
  } else if (c < 0x1f00) {
    if (c == 0x1d79) return 0xa77d;
    if (c == 0x1d7d) return 0x2c63;
    if ((c >= 0x1e01 && c <= 0x1e95) ||
        (c >= 0x1ea1 && c <= 0x1eff)) return c - (c & 1);
    if (c == 0x1e9b) return 0x1e60;
  } else if (c < 0x2000) {
    if ((c >= 0x1f00 && c <= 0x1f07) ||
        (c >= 0x1f10 && c <= 0x1f15) ||
        (c >= 0x1f20 && c <= 0x1f27) ||
        (c >= 0x1f30 && c <= 0x1f37) ||
        (c >= 0x1f40 && c <= 0x1f45) ||
        (c >= 0x1f60 && c <= 0x1f67) ||
        (c >= 0x1f80 && c <= 0x1f87) ||
        (c >= 0x1f90 && c <= 0x1f97) ||
        (c >= 0x1fa0 && c <= 0x1fa7) ||
        (c >= 0x1f51 && c <= 0x1f57 && <bool>(c & 1))) return c + 0x08;
    if (c >= 0x1f70 && c <= 0x1ff3) {
      switch (c) {
        case 0x1fb0: return 0x1fb8;
        case 0x1fb1: return 0x1fb9;
        case 0x1f70: return 0x1fba;
        case 0x1f71: return 0x1fbb;
        case 0x1fb3: return 0x1fbc;
        case 0x1fbe: return 0x0399;
        case 0x1f72: return 0x1fc8;
        case 0x1f73: return 0x1fc9;
        case 0x1f74: return 0x1fca;
        case 0x1f75: return 0x1fcb;
        case 0x1fc3: return 0x1fcc;
        case 0x1fd0: return 0x1fd8;
        case 0x1fd1: return 0x1fd9;
        case 0x1f76: return 0x1fda;
        case 0x1f77: return 0x1fdb;
        case 0x1fe0: return 0x1fe8;
        case 0x1fe1: return 0x1fe9;
        case 0x1f7a: return 0x1fea;
        case 0x1f7b: return 0x1feb;
        case 0x1fe5: return 0x1fec;
        case 0x1f78: return 0x1ff8;
        case 0x1f79: return 0x1ff9;
        case 0x1f7c: return 0x1ffa;
        case 0x1f7d: return 0x1ffb;
        case 0x1ff3: return 0x1ffc;
        default: break;
      }
    }
  } else if (c < 0x3000) {
    if (c == 0x214e) return 0x2132;
    if (c == 0x2184) return 0x2183;
    if (c >= 0x2170 && c <= 0x217f) return c - 0x10;
    if (c >= 0x24d0 && c <= 0x24e9) return c - 0x1a;
    if (c >= 0x2c30 && c <= 0x2c5e) return c - 0x30;
    if ((c >= 0x2c68 && c <= 0x2c6c && !(c & 1)) ||
        (c >= 0x2c81 && c <= 0x2ce3 && <bool>(c & 1)) ||
         c == 0x2c73 || c == 0x2c76 ||
         c == 0x2cec || c == 0x2cee) return c - 1;
    if (c >= 0x2c81 && c <= 0x2ce3 && <bool>(c & 1)) return c - 1;
    if (c >= 0x2d00 && c <= 0x2d25) return c - 0x1c60;
    switch (c) {
      case 0x2c61: return 0x2c60;
      case 0x2c65: return 0x023a;
      case 0x2c66: return 0x023e;
      default: break;
    }
  } else if (c >= 0xa000 && c < 0xb000) {
    if (((c >= 0xa641 && c <= 0xa65f) ||
         (c >= 0xa663 && c <= 0xa66d) ||
         (c >= 0xa681 && c <= 0xa697) ||
         (c >= 0xa723 && c <= 0xa72f) ||
         (c >= 0xa733 && c <= 0xa76f) ||
         (c >= 0xa77f && c <= 0xa787)) &&
         <bool>(c & 1)) return c - 1;
    if (c == 0xa77a || c == 0xa77c || c == 0xa78c) return c - 1;
  } else {
    if (c >= 0x0ff41 && c <= 0x0ff5a) return c - 0x20;
    if (c >= 0x10428 && c <= 0x1044f) return c - 0x28;
  }
  return c;
}
