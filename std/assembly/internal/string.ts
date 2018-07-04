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
export function toLower8(c: u32): u32 {
  return select<u32>(c - CharCode.A + CharCode.a, c, isUpper(c));
}

@inline
export function toUpper8(c: u32): u32 {
  return select<u32>(c - CharCode.a + CharCode.A, c, isLower(c));
}

// Lower case mapping for UTF16 chars.
// Code adopted from https://github.com/eblot/newlib/blob/master/newlib/libc/ctype/towlower.c
export function toLower16(c: u32): u32 {
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
      let k: u32;
      switch (c) {
        case 0x0178: { k = 0x00ff; break; }
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
        case 0x01f4: { k = c + 1;  break; }
        case 0x0181: { k = 0x0253; break; }
        case 0x0186: { k = 0x0254; break; }
        case 0x0189: { k = 0x0256; break; }
        case 0x018a: { k = 0x0257; break; }
        case 0x018e: { k = 0x01dd; break; }
        case 0x018f: { k = 0x0259; break; }
        case 0x0190: { k = 0x025b; break; }
        case 0x0193: { k = 0x0260; break; }
        case 0x0194: { k = 0x0263; break; }
        case 0x0196: { k = 0x0269; break; }
        case 0x0197: { k = 0x0268; break; }
        case 0x019c: { k = 0x026f; break; }
        case 0x019d: { k = 0x0272; break; }
        case 0x019f: { k = 0x0275; break; }
        case 0x01a6: { k = 0x0280; break; }
        case 0x01a9: { k = 0x0283; break; }
        case 0x01ae: { k = 0x0288; break; }
        case 0x01b1: { k = 0x028a; break; }
        case 0x01b2: { k = 0x028b; break; }
        case 0x01b7: { k = 0x0292; break; }
        case 0x01c4:
        case 0x01c7:
        case 0x01ca:
        case 0x01f1: { k = c + 2;  break; }
        case 0x01f6: { k = 0x0195; break; }
        case 0x01f7: { k = 0x01bf; break; }
        default:       k = 0;
      }
      if (k != 0) return k;
    }
    else if (c == 0x0220) return 0x019e;
    else if (c >= 0x023a && c <= 0x024e) {
      let k: u32;
      switch (c) {
        case 0x023a: { k = 0x2c65; break; }
        case 0x023b:
        case 0x0241:
        case 0x0246:
        case 0x0248:
        case 0x024a:
        case 0x024c:
        case 0x024e: { k = c + 1;  break; }
        case 0x023d: { k = 0x019a; break; }
        case 0x023e: { k = 0x2c66; break; }
        case 0x0243: { k = 0x0180; break; }
        case 0x0244: { k = 0x0289; break; }
        case 0x0245: { k = 0x028c; break; }
        default: k = 0;
      }
      if (k != 0) return k;
    }
  } else if (c < 0x0400) {
    if (c == 0x0370 || c == 0x0372 || c == 0x0376) return c + 1;
    if (c >= 0x0391 && c <= 0x03ab && c != 0x03a2) return c + 0x20;
    if (c >= 0x03d8 && c <= 0x03ee && !(c & 1)) return c + 1;
    if (c >= 0x0386 && c <= 0x03ff) {
      let k: u32;
      switch (c) {
        case 0x0386: { k = 0x03ac; break; }
        case 0x0388: { k = 0x03ad; break; }
        case 0x0389: { k = 0x03ae; break; }
        case 0x038a: { k = 0x03af; break; }
        case 0x038c: { k = 0x03cc; break; }
        case 0x038e: { k = 0x03cd; break; }
        case 0x038f: { k = 0x03ce; break; }
        case 0x03cf: { k = 0x03d7; break; }
        case 0x03f4: { k = 0x03b8; break; }
        case 0x03f7: { k = 0x03f8; break; }
        case 0x03f9: { k = 0x03f2; break; }
        case 0x03fa: { k = 0x03fb; break; }
        case 0x03fd: { k = 0x037b; break; }
        case 0x03fe: { k = 0x037c; break; }
        case 0x03ff: { k = 0x037d; break; }
        default: k = 0;
      }
      if (k != 0) return k;
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
      let k: u32;
      switch (c) {
        case 0x1fb8:
        case 0x1fb9:
        case 0x1fd8:
        case 0x1fd9:
        case 0x1fe8:
        case 0x1fe9: { k = c - 0x08; break; }
        case 0x1fba:
        case 0x1fbb: { k = c - 0x4a; break; }
        case 0x1fbc: { k = 0x1fb3; break; }
        case 0x1fc8:
        case 0x1fc9:
        case 0x1fca:
        case 0x1fcb: { k = c - 0x56; break; }
        case 0x1fcc: { k = 0x1fc3; break; }
        case 0x1fda:
        case 0x1fdb: { k = c - 0x64; break; }
        case 0x1fea:
        case 0x1feb: { k = c - 0x70; break; }
        case 0x1fec: { k = 0x1fe5; break; }
        case 0x1ff8:
        case 0x1ff9: { k = c - 0x80; break; }
        case 0x1ffa:
        case 0x1ffb: { k = c - 0x7e; break; }
        case 0x1ffc: { k = 0x1ff3; break; }
        default: k = 0;
      }
      if (k != 0) return k;
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
    }
  } else {
    if (c >= 0x0ff21 && c <= 0x0ff3a) return c + 0x20;
    if (c >= 0x10400 && c <= 0x10427) return c + 0x28;
  }
  return c;
}

// Upper case mapping for UTF16 chars.
// Code adopted from https://github.com/eblot/newlib/blob/master/newlib/libc/ctype/towupper.c
export function toUpper16(c: u32): u32 {
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
      let k: u32;
      switch (c) {
        case 0x017f: { k = 0x0053; break; }
        case 0x0180: { k = 0x0243; break; }
        case 0x0183: { k = 0x0182; break; }
        case 0x0185: { k = 0x0184; break; }
        case 0x0188: { k = 0x0187; break; }
        case 0x018c: { k = 0x018b; break; }
        case 0x0192: { k = 0x0191; break; }
        case 0x0195: { k = 0x01f6; break; }
        case 0x0199: { k = 0x0198; break; }
        case 0x019a: { k = 0x023d; break; }
        case 0x019e: { k = 0x0220; break; }
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
        case 0x01f5: { k = c - 1; break; }
        case 0x01bf: { k = 0x01f7; break; }
        case 0x01c6:
        case 0x01c9:
        case 0x01cc: { k = c - 2; break; }
        case 0x01dd: { k = 0x018e; break; }
        case 0x01f3: { k = 0x01f1; break; }
        case 0x023f: { k = 0x2c7e; break; }
        case 0x0240: { k = 0x2c7f; break; }
        case 0x0250: { k = 0x2c6f; break; }
        case 0x0251: { k = 0x2c6d; break; }
        case 0x0252: { k = 0x2c70; break; }
        case 0x0253: { k = 0x0181; break; }
        case 0x0254: { k = 0x0186; break; }
        case 0x0256: { k = 0x0189; break; }
        case 0x0257: { k = 0x018a; break; }
        case 0x0259: { k = 0x018f; break; }
        case 0x025b: { k = 0x0190; break; }
        case 0x0260: { k = 0x0193; break; }
        case 0x0263: { k = 0x0194; break; }
        case 0x0268: { k = 0x0197; break; }
        case 0x0269: { k = 0x0196; break; }
        case 0x026b: { k = 0x2c62; break; }
        case 0x026f: { k = 0x019c; break; }
        case 0x0271: { k = 0x2c6e; break; }
        case 0x0272: { k = 0x019d; break; }
        case 0x0275: { k = 0x019f; break; }
        case 0x027d: { k = 0x2c64; break; }
        case 0x0280: { k = 0x01a6; break; }
        case 0x0283: { k = 0x01a9; break; }
        case 0x0288: { k = 0x01ae; break; }
        case 0x0289: { k = 0x0244; break; }
        case 0x028a: { k = 0x01b1; break; }
        case 0x028b: { k = 0x01b2; break; }
        case 0x028c: { k = 0x0245; break; }
        case 0x0292: { k = 0x01b7; break; }
        default: k = 0;
      }
      if (k != 0) return k;
    }
  } else if (c < 0x0400) {
    let k: u32;
    if (c >= 0x03ad && c <= 0x03af) return c - 0x25;
    if (c >= 0x03b1 && c <= 0x03cb && c != 0x03c2) return c - 0x20;
    if (c >= 0x03d9 && c <= 0x03ef && <bool>(c & 1)) return c - 1;
    switch (c) {
      case 0x0345: { k = 0x0399; break; }
      case 0x0371:
      case 0x0373:
      case 0x0377:
      case 0x03f8:
      case 0x03fb: { k = c - 1; break; }
      case 0x037b:
      case 0x037c:
      case 0x037d: { k = c + 0x82; break; }
      case 0x03ac: { k = 0x0386; break; }
      case 0x03c2: { k = 0x03a3; break; }
      case 0x03cc: { k = 0x038c; break; }
      case 0x03cd:
      case 0x03ce: { k = c - 0x3f; break; }
      case 0x03d0: { k = 0x0392; break; }
      case 0x03d1: { k = 0x0398; break; }
      case 0x03d5: { k = 0x03a6; break; }
      case 0x03d6: { k = 0x03a0; break; }
      case 0x03d7: { k = 0x03cf; break; }
      case 0x03f0: { k = 0x039a; break; }
      case 0x03f1: { k = 0x03a1; break; }
      case 0x03f2: { k = 0x03f9; break; }
      case 0x03f5: { k = 0x0395; break; }
      default: k = 0;
    }
    if (k != 0) return k;
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
      let k: u32;
      switch (c) {
        case 0x1fb0: { k = 0x1fb8; break; }
        case 0x1fb1: { k = 0x1fb9; break; }
        case 0x1f70: { k = 0x1fba; break; }
        case 0x1f71: { k = 0x1fbb; break; }
        case 0x1fb3: { k = 0x1fbc; break; }
        case 0x1fbe: { k = 0x0399; break; }
        case 0x1f72: { k = 0x1fc8; break; }
        case 0x1f73: { k = 0x1fc9; break; }
        case 0x1f74: { k = 0x1fca; break; }
        case 0x1f75: { k = 0x1fcb; break; }
        case 0x1fc3: { k = 0x1fcc; break; }
        case 0x1fd0: { k = 0x1fd8; break; }
        case 0x1fd1: { k = 0x1fd9; break; }
        case 0x1f76: { k = 0x1fda; break; }
        case 0x1f77: { k = 0x1fdb; break; }
        case 0x1fe0: { k = 0x1fe8; break; }
        case 0x1fe1: { k = 0x1fe9; break; }
        case 0x1f7a: { k = 0x1fea; break; }
        case 0x1f7b: { k = 0x1feb; break; }
        case 0x1fe5: { k = 0x1fec; break; }
        case 0x1f78: { k = 0x1ff8; break; }
        case 0x1f79: { k = 0x1ff9; break; }
        case 0x1f7c: { k = 0x1ffa; break; }
        case 0x1f7d: { k = 0x1ffb; break; }
        case 0x1ff3: { k = 0x1ffc; break; }
        default: k = 0;
      }
      if (k != 0) return k;
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
