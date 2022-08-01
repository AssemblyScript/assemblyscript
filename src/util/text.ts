/**
 * @fileoverview Various character and text utility.
 * @license Apache-2.0
 */

/** An enum of named character codes. */
export const enum CharCode {

  NULL = 0,
  LINEFEED = 0x0A,
  CARRIAGERETURN = 0x0D,
  LINESEPARATOR = 0x2028,
  PARAGRAPHSEPARATOR = 0x2029,
  NEXTLINE = 0x0085,

  SPACE = 0x20,
  NONBREAKINGSPACE = 0xA0,
  ENQUAD = 0x2000,
  EMQUAD = 0x2001,
  ENSPACE = 0x2002,
  EMSPACE = 0x2003,
  THREEPEREMSPACE = 0x2004,
  FOURPEREMSPACE = 0x2005,
  SIXPEREMSPACE = 0x2006,
  FIGURESPACE = 0x2007,
  PUNCTUATIONSPACE = 0x2008,
  THINSPACE = 0x2009,
  HAIRSPACE = 0x200A,
  ZEROWIDTHSPACE = 0x200B,
  NARROWNOBREAKSPACE = 0x202F,
  IDEOGRAPHICSPACE = 0x3000,
  MATHEMATICALSPACE = 0x205F,
  OGHAM = 0x1680,

  _ = 0x5F,

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

  a = 0x61,
  b = 0x62,
  c = 0x63,
  d = 0x64,
  e = 0x65,
  f = 0x66,
  g = 0x67,
  h = 0x68,
  i = 0x69,
  j = 0x6A,
  k = 0x6B,
  l = 0x6C,
  m = 0x6D,
  n = 0x6E,
  o = 0x6F,
  p = 0x70,
  q = 0x71,
  r = 0x72,
  s = 0x73,
  t = 0x74,
  u = 0x75,
  v = 0x76,
  w = 0x77,
  x = 0x78,
  y = 0x79,
  z = 0x7A,

  A = 0x41,
  B = 0x42,
  C = 0x43,
  D = 0x44,
  E = 0x45,
  F = 0x46,
  G = 0x47,
  H = 0x48,
  I = 0x49,
  J = 0x4A,
  K = 0x4B,
  L = 0x4C,
  M = 0x4D,
  N = 0x4E,
  O = 0x4F,
  P = 0x50,
  Q = 0x51,
  R = 0x52,
  S = 0x53,
  T = 0x54,
  U = 0x55,
  V = 0x56,
  W = 0x57,
  X = 0x58,
  Y = 0x59,
  Z = 0x5a,

  AMPERSAND = 0x26,
  ASTERISK = 0x2A,
  AT = 0x40,
  BACKSLASH = 0x5C,
  BACKTICK = 0x60,
  BAR = 0x7C,
  CARET = 0x5E,
  CLOSEBRACE = 0x7D,
  CLOSEBRACKET = 0x5D,
  CLOSEPAREN = 0x29,
  COLON = 0x3A,
  COMMA = 0x2C,
  DOLLAR = 0x24,
  DOT = 0x2E,
  DOUBLEQUOTE = 0x22,
  EQUALS = 0x3D,
  EXCLAMATION = 0x21,
  GREATERTHAN = 0x3E,
  HASH = 0x23,
  LESSTHAN = 0x3C,
  MINUS = 0x2D,
  OPENBRACE = 0x7B,
  OPENBRACKET = 0x5B,
  OPENPAREN = 0x28,
  PERCENT = 0x25,
  PLUS = 0x2B,
  QUESTION = 0x3F,
  SEMICOLON = 0x3B,
  SINGLEQUOTE = 0x27,
  SLASH = 0x2F,
  TILDE = 0x7E,

  BACKSPACE = 0x08,
  FORMFEED = 0x0C,
  BYTEORDERMARK = 0xFEFF,
  TAB = 0x09,
  VERTICALTAB = 0x0B
}

/** Tests if the specified character code is some sort of line break. */
export function isLineBreak(c: i32): bool {
  switch (c) {
    case CharCode.LINEFEED:
    case CharCode.CARRIAGERETURN:
    case CharCode.LINESEPARATOR:
    case CharCode.PARAGRAPHSEPARATOR: {
      return true;
    }
    default: {
      return false;
    }
  }
}

/** Tests if the specified character code is some sort of white space. */
export function isWhiteSpace(c: i32): bool {
  switch (c) {
    case CharCode.SPACE:
    case CharCode.TAB:
    case CharCode.VERTICALTAB:
    case CharCode.FORMFEED:
    case CharCode.NONBREAKINGSPACE:
    case CharCode.NEXTLINE:
    case CharCode.OGHAM:
    case CharCode.NARROWNOBREAKSPACE:
    case CharCode.MATHEMATICALSPACE:
    case CharCode.IDEOGRAPHICSPACE:
    case CharCode.BYTEORDERMARK: {
      return true;
    }
    default: {
      return c >= CharCode.ENQUAD && c <= CharCode.ZEROWIDTHSPACE;
    }
  }
}

/** First high (lead) surrogate. */
export const SURROGATE_HIGH = 0xD800;

/** First low (trail) surrogate. */
export const SURROGATE_LOW = 0xDC00;

/** Tests if a code unit or code point is a surrogate. */
export function isSurrogate(c: i32): bool {
  // F800: 11111 0 0000000000 Mask
  // D800: 11011 X XXXXXXXXXX Any surrogate
  return (c & 0xF800) == SURROGATE_HIGH;
}

/** Tests if a surrogate is a high (lead) surrogate. */
export function isSurrogateHigh(c: i32): bool {
  // D800-DBFF
  return c < SURROGATE_LOW;
}

/** Tests if a surrogate is a low (trail) surrogate. */
export function isSurrogateLow(c: i32): bool {
  // DC00-DFFF
  return c >= SURROGATE_LOW;
}

/** Tests if a code unit or code point is a high (lead) surrogate. */
export function isHighSurrogate(c: i32): bool {
  // FC00: 11111 1 0000000000 Mask
  // D800: 11011 0 XXXXXXXXXX High/Lead surrogate
  return (c & 0xFC00) == SURROGATE_HIGH;
}

/** Tests if a code unit or code point is a low (trail) surrogate. */
export function isLowSurrogate(c: i32): bool {
  // FC00: 11111 1 0000000000 Mask
  // DC00: 11011 1 XXXXXXXXXX Low/Trail surrogate
  return (c & 0xFC00) == SURROGATE_LOW;
}

/** Converts a surrogate pair to its respective code point. */
export function combineSurrogates(hi: i32, lo: i32): i32 {
  return 0x10000 + ((hi & 0x3FF) << 10) | (lo & 0x3FF);
}

export function isAlpha(c: i32): bool {
  let c0 = c | 32; // unify uppercases and lowercases a|A - z|Z
  return c0 >= CharCode.a && c0 <= CharCode.z;
}

/** Tests if the specified character code is a valid decimal digit. */
export function isDecimal(c: i32): bool {
  return c >= CharCode._0 && c <= CharCode._9;
}

/** Tests if the specified character code is a valid octal digit. */
export function isOctal(c: i32): bool {
  return c >= CharCode._0 && c <= CharCode._7;
}

/** Tests if the specified character code is a valid hexadecimal digit. */
export function isHex(c: i32): bool {
  let c0 = c | 32; // unify uppercases and lowercases a|A - f|F
  return isDecimal(c) || (c0 >= CharCode.a && c0 <= CharCode.f);
}

/** Tests if the specified character code is trivially alphanumeric. */
export function isAlphaOrDecimal(c: i32): bool {
  return isAlpha(c) || isDecimal(c);
}

/** Tests if the specified character code is a valid start of an identifier. */
export function isIdentifierStart(c: i32): bool {
  return isAlpha(c)
      || c == CharCode._
      || c == CharCode.DOLLAR
      || c >= 170 && c <= 65500
         && lookupInUnicodeMap(c as u16, unicodeIdentifierStart);
}

/** Tests if the specified character code is a valid part of an identifier. */
export function isIdentifierPart(c: i32): bool {
  return isAlphaOrDecimal(c)
      || c == CharCode._
      || c == CharCode.DOLLAR
      || c >= 170 && c <= 65500
         && lookupInUnicodeMap(c as u16, unicodeIdentifierPart);
}

/** Tests if the specified string is a valid identifer. */
export function isIdentifier(str: string): bool {
  var len = str.length;
  if (!len) return false;
  if (!isIdentifierStart(str.charCodeAt(0))) return false;
  for (let i = 1; i < len; ++i) {
    if (!isIdentifierPart(str.charCodeAt(i))) return false;
  }
  return true;
}

// storing as u16 to save memory
const unicodeIdentifierStart: u16[] = [
  170, 170, 181, 181, 186, 186, 192, 214, 216, 246, 248, 705, 710, 721, 736,
  740, 748, 748, 750, 750, 880, 884, 886, 887, 890, 893, 902, 902, 904, 906,
  908, 908, 910, 929, 931,
  1013, 1015, 1153, 1162, 1319, 1329, 1366, 1369, 1369, 1377, 1415, 1488, 1514,
  1520, 1522, 1568, 1610, 1646, 1647, 1649, 1747, 1749, 1749, 1765, 1766, 1774,
  1775, 1786, 1788, 1791, 1791, 1808, 1808, 1810, 1839, 1869, 1957, 1969, 1969,
  1994, 2026, 2036, 2037, 2042, 2042, 2048, 2069, 2074, 2074, 2084, 2084, 2088,
  2088, 2112, 2136, 2208, 2208, 2210, 2220, 2308, 2361, 2365, 2365, 2384, 2384,
  2392, 2401, 2417, 2423, 2425, 2431, 2437, 2444, 2447, 2448, 2451, 2472, 2474,
  2480, 2482, 2482, 2486, 2489, 2493, 2493, 2510, 2510, 2524, 2525, 2527, 2529,
  2544, 2545, 2565, 2570, 2575, 2576, 2579, 2600, 2602, 2608, 2610, 2611, 2613,
  2614, 2616, 2617, 2649, 2652, 2654, 2654, 2674, 2676, 2693, 2701, 2703, 2705,
  2707, 2728, 2730, 2736, 2738, 2739, 2741, 2745, 2749, 2749, 2768, 2768, 2784,
  2785, 2821, 2828, 2831, 2832, 2835, 2856, 2858, 2864, 2866, 2867, 2869, 2873,
  2877, 2877, 2908, 2909, 2911, 2913, 2929, 2929, 2947, 2947, 2949, 2954, 2958,
  2960, 2962, 2965, 2969, 2970, 2972, 2972, 2974, 2975, 2979, 2980, 2984, 2986,
  2990, 3001, 3024, 3024, 3077, 3084, 3086, 3088, 3090, 3112, 3114, 3123, 3125,
  3129, 3133, 3133, 3160, 3161, 3168, 3169, 3205, 3212, 3214, 3216, 3218, 3240,
  3242, 3251, 3253, 3257, 3261, 3261, 3294, 3294, 3296, 3297, 3313, 3314, 3333,
  3340, 3342, 3344, 3346, 3386, 3389, 3389, 3406, 3406, 3424, 3425, 3450, 3455,
  3461, 3478, 3482, 3505, 3507, 3515, 3517, 3517, 3520, 3526, 3585, 3632, 3634,
  3635, 3648, 3654, 3713, 3714, 3716, 3716, 3719, 3720, 3722, 3722, 3725, 3725,
  3732, 3735, 3737, 3743, 3745, 3747, 3749, 3749, 3751, 3751, 3754, 3755, 3757,
  3760, 3762, 3763, 3773, 3773, 3776, 3780, 3782, 3782, 3804, 3807, 3840, 3840,
  3904, 3911, 3913, 3948, 3976, 3980, 4096, 4138, 4159, 4159, 4176, 4181, 4186,
  4189, 4193, 4193, 4197, 4198, 4206, 4208, 4213, 4225, 4238, 4238, 4256, 4293,
  4295, 4295, 4301, 4301, 4304, 4346, 4348, 4680, 4682, 4685, 4688, 4694, 4696,
  4696, 4698, 4701, 4704, 4744, 4746, 4749, 4752, 4784, 4786, 4789, 4792, 4798,
  4800, 4800, 4802, 4805, 4808, 4822, 4824, 4880, 4882, 4885, 4888, 4954, 4992,
  5007, 5024, 5108, 5121, 5740, 5743, 5759, 5761, 5786, 5792, 5866, 5870, 5872,
  5888, 5900, 5902, 5905, 5920, 5937, 5952, 5969, 5984, 5996, 5998, 6000, 6016,
  6067, 6103, 6103, 6108, 6108, 6176, 6263, 6272, 6312, 6314, 6314, 6320, 6389,
  6400, 6428, 6480, 6509, 6512, 6516, 6528, 6571, 6593, 6599, 6656, 6678, 6688,
  6740, 6823, 6823, 6917, 6963, 6981, 6987, 7043, 7072, 7086, 7087, 7098, 7141,
  7168, 7203, 7245, 7247, 7258, 7293, 7401, 7404, 7406, 7409, 7413, 7414, 7424,
  7615, 7680, 7957, 7960, 7965, 7968, 8005, 8008, 8013, 8016, 8023, 8025, 8025,
  8027, 8027, 8029, 8029, 8031, 8061, 8064, 8116, 8118, 8124, 8126, 8126, 8130,
  8132, 8134, 8140, 8144, 8147, 8150, 8155, 8160, 8172, 8178, 8180, 8182, 8188,
  8305, 8305, 8319, 8319, 8336, 8348, 8450, 8450, 8455, 8455, 8458, 8467, 8469,
  8469, 8473, 8477, 8484, 8484, 8486, 8486, 8488, 8488, 8490, 8493, 8495, 8505,
  8508, 8511, 8517, 8521, 8526, 8526, 8544, 8584,
  11264, 11310, 11312, 11358, 11360, 11492, 11499, 11502, 11506, 11507, 11520,
  11557, 11559, 11559, 11565, 11565, 11568, 11623, 11631, 11631, 11648, 11670,
  11680, 11686, 11688, 11694, 11696, 11702, 11704, 11710, 11712, 11718, 11720,
  11726, 11728, 11734, 11736, 11742, 11823, 11823, 12293, 12295, 12321, 12329,
  12337, 12341, 12344, 12348, 12353, 12438, 12445, 12447, 12449, 12538, 12540,
  12543, 12549, 12589, 12593, 12686, 12704, 12730, 12784, 12799, 13312, 19893,
  19968, 40908, 40960, 42124, 42192, 42237, 42240, 42508, 42512, 42527, 42538,
  42539, 42560, 42606, 42623, 42647, 42656, 42735, 42775, 42783, 42786, 42888,
  42891, 42894, 42896, 42899, 42912, 42922, 43000, 43009, 43011, 43013, 43015,
  43018, 43020, 43042, 43072, 43123, 43138, 43187, 43250, 43255, 43259, 43259,
  43274, 43301, 43312, 43334, 43360, 43388, 43396, 43442, 43471, 43471, 43520,
  43560, 43584, 43586, 43588, 43595, 43616, 43638, 43642, 43642, 43648, 43695,
  43697, 43697, 43701, 43702, 43705, 43709, 43712, 43712, 43714, 43714, 43739,
  43741, 43744, 43754, 43762, 43764, 43777, 43782, 43785, 43790, 43793, 43798,
  43808, 43814, 43816, 43822, 43968, 44002, 44032, 55203, 55216, 55238, 55243,
  55291, 63744, 64109, 64112, 64217, 64256, 64262, 64275, 64279, 64285, 64285,
  64287, 64296, 64298, 64310, 64312, 64316, 64318, 64318, 64320, 64321, 64323,
  64324, 64326, 64433, 64467, 64829, 64848, 64911, 64914, 64967, 65008, 65019,
  65136, 65140, 65142, 65276, 65313, 65338, 65345, 65370, 65382, 65470, 65474,
  65479, 65482, 65487, 65490, 65495, 65498, 65500,
];
const unicodeIdentifierPart: u16[] = [
  170, 170, 181, 181, 186, 186, 192, 214, 216, 246, 248, 705, 710, 721, 736,
  740, 748, 748, 750, 750, 768, 884, 886, 887, 890, 893, 902, 902, 904, 906,
  908, 908, 910, 929, 931,
  1013, 1015, 1153, 1155, 1159, 1162, 1319, 1329, 1366, 1369, 1369, 1377, 1415,
  1425, 1469, 1471, 1471, 1473, 1474, 1476, 1477, 1479, 1479, 1488, 1514, 1520,
  1522, 1552, 1562, 1568, 1641, 1646, 1747, 1749, 1756, 1759, 1768, 1770, 1788,
  1791, 1791, 1808, 1866, 1869, 1969, 1984, 2037, 2042, 2042, 2048, 2093, 2112,
  2139, 2208, 2208, 2210, 2220, 2276, 2302, 2304, 2403, 2406, 2415, 2417, 2423,
  2425, 2431, 2433, 2435, 2437, 2444, 2447, 2448, 2451, 2472, 2474, 2480, 2482,
  2482, 2486, 2489, 2492, 2500, 2503, 2504, 2507, 2510, 2519, 2519, 2524, 2525,
  2527, 2531, 2534, 2545, 2561, 2563, 2565, 2570, 2575, 2576, 2579, 2600, 2602,
  2608, 2610, 2611, 2613, 2614, 2616, 2617, 2620, 2620, 2622, 2626, 2631, 2632,
  2635, 2637, 2641, 2641, 2649, 2652, 2654, 2654, 2662, 2677, 2689, 2691, 2693,
  2701, 2703, 2705, 2707, 2728, 2730, 2736, 2738, 2739, 2741, 2745, 2748, 2757,
  2759, 2761, 2763, 2765, 2768, 2768, 2784, 2787, 2790, 2799, 2817, 2819, 2821,
  2828, 2831, 2832, 2835, 2856, 2858, 2864, 2866, 2867, 2869, 2873, 2876, 2884,
  2887, 2888, 2891, 2893, 2902, 2903, 2908, 2909, 2911, 2915, 2918, 2927, 2929,
  2929, 2946, 2947, 2949, 2954, 2958, 2960, 2962, 2965, 2969, 2970, 2972, 2972,
  2974, 2975, 2979, 2980, 2984, 2986, 2990, 3001, 3006, 3010, 3014, 3016, 3018,
  3021, 3024, 3024, 3031, 3031, 3046, 3055, 3073, 3075, 3077, 3084, 3086, 3088,
  3090, 3112, 3114, 3123, 3125, 3129, 3133, 3140, 3142, 3144, 3146, 3149, 3157,
  3158, 3160, 3161, 3168, 3171, 3174, 3183, 3202, 3203, 3205, 3212, 3214, 3216,
  3218, 3240, 3242, 3251, 3253, 3257, 3260, 3268, 3270, 3272, 3274, 3277, 3285,
  3286, 3294, 3294, 3296, 3299, 3302, 3311, 3313, 3314, 3330, 3331, 3333, 3340,
  3342, 3344, 3346, 3386, 3389, 3396, 3398, 3400, 3402, 3406, 3415, 3415, 3424,
  3427, 3430, 3439, 3450, 3455, 3458, 3459, 3461, 3478, 3482, 3505, 3507, 3515,
  3517, 3517, 3520, 3526, 3530, 3530, 3535, 3540, 3542, 3542, 3544, 3551, 3570,
  3571, 3585, 3642, 3648, 3662, 3664, 3673, 3713, 3714, 3716, 3716, 3719, 3720,
  3722, 3722, 3725, 3725, 3732, 3735, 3737, 3743, 3745, 3747, 3749, 3749, 3751,
  3751, 3754, 3755, 3757, 3769, 3771, 3773, 3776, 3780, 3782, 3782, 3784, 3789,
  3792, 3801, 3804, 3807, 3840, 3840, 3864, 3865, 3872, 3881, 3893, 3893, 3895,
  3895, 3897, 3897, 3902, 3911, 3913, 3948, 3953, 3972, 3974, 3991, 3993, 4028,
  4038, 4038, 4096, 4169, 4176, 4253, 4256, 4293, 4295, 4295, 4301, 4301, 4304,
  4346, 4348, 4680, 4682, 4685, 4688, 4694, 4696, 4696, 4698, 4701, 4704, 4744,
  4746, 4749, 4752, 4784, 4786, 4789, 4792, 4798, 4800, 4800, 4802, 4805, 4808,
  4822, 4824, 4880, 4882, 4885, 4888, 4954, 4957, 4959, 4992, 5007, 5024, 5108,
  5121, 5740, 5743, 5759, 5761, 5786, 5792, 5866, 5870, 5872, 5888, 5900, 5902,
  5908, 5920, 5940, 5952, 5971, 5984, 5996, 5998, 6000, 6002, 6003, 6016, 6099,
  6103, 6103, 6108, 6109, 6112, 6121, 6155, 6157, 6160, 6169, 6176, 6263, 6272,
  6314, 6320, 6389, 6400, 6428, 6432, 6443, 6448, 6459, 6470, 6509, 6512, 6516,
  6528, 6571, 6576, 6601, 6608, 6617, 6656, 6683, 6688, 6750, 6752, 6780, 6783,
  6793, 6800, 6809, 6823, 6823, 6912, 6987, 6992, 7001, 7019, 7027, 7040, 7155,
  7168, 7223, 7232, 7241, 7245, 7293, 7376, 7378, 7380, 7414, 7424, 7654, 7676,
  7957, 7960, 7965, 7968, 8005, 8008, 8013, 8016, 8023, 8025, 8025, 8027, 8027,
  8029, 8029, 8031, 8061, 8064, 8116, 8118, 8124, 8126, 8126, 8130, 8132, 8134,
  8140, 8144, 8147, 8150, 8155, 8160, 8172, 8178, 8180, 8182, 8188, 8204, 8205,
  8255, 8256, 8276, 8276, 8305, 8305, 8319, 8319, 8336, 8348, 8400, 8412, 8417,
  8417, 8421, 8432, 8450, 8450, 8455, 8455, 8458, 8467, 8469, 8469, 8473, 8477,
  8484, 8484, 8486, 8486, 8488, 8488, 8490, 8493, 8495, 8505, 8508, 8511, 8517,
  8521, 8526, 8526, 8544, 8584,
  11264, 11310, 11312, 11358, 11360, 11492, 11499, 11507, 11520, 11557, 11559,
  11559, 11565, 11565, 11568, 11623, 11631, 11631, 11647, 11670, 11680, 11686,
  11688, 11694, 11696, 11702, 11704, 11710, 11712, 11718, 11720, 11726, 11728,
  11734, 11736, 11742, 11744, 11775, 11823, 11823, 12293, 12295, 12321, 12335,
  12337, 12341, 12344, 12348, 12353, 12438, 12441, 12442, 12445, 12447, 12449,
  12538, 12540, 12543, 12549, 12589, 12593, 12686, 12704, 12730, 12784, 12799,
  13312, 19893, 19968, 40908, 40960, 42124, 42192, 42237, 42240, 42508, 42512,
  42539, 42560, 42607, 42612, 42621, 42623, 42647, 42655, 42737, 42775, 42783,
  42786, 42888, 42891, 42894, 42896, 42899, 42912, 42922, 43000, 43047, 43072,
  43123, 43136, 43204, 43216, 43225, 43232, 43255, 43259, 43259, 43264, 43309,
  43312, 43347, 43360, 43388, 43392, 43456, 43471, 43481, 43520, 43574, 43584,
  43597, 43600, 43609, 43616, 43638, 43642, 43643, 43648, 43714, 43739, 43741,
  43744, 43759, 43762, 43766, 43777, 43782, 43785, 43790, 43793, 43798, 43808,
  43814, 43816, 43822, 43968, 44010, 44012, 44013, 44016, 44025, 44032, 55203,
  55216, 55238, 55243, 55291, 63744, 64109, 64112, 64217, 64256, 64262, 64275,
  64279, 64285, 64296, 64298, 64310, 64312, 64316, 64318, 64318, 64320, 64321,
  64323, 64324, 64326, 64433, 64467, 64829, 64848, 64911, 64914, 64967, 65008,
  65019, 65024, 65039, 65056, 65062, 65075, 65076, 65101, 65103, 65136, 65140,
  65142, 65276, 65296, 65305, 65313, 65338, 65343, 65343, 65345, 65370, 65382,
  65470, 65474, 65479, 65482, 65487, 65490, 65495, 65498, 65500,
];

function lookupInUnicodeMap(code: u16, map: u16[]): bool {
  var lo = 0;
  var hi = map.length;
  var mid: u32;
  var midVal: u16;

  while (lo + 1 < hi) {
    mid = lo + ((hi - lo) >>> 1);
    mid -= (mid & 1);
    midVal = map[mid];
    if (midVal <= code && code <= map[mid + 1]) {
      return true;
    }
    if (code < midVal) {
      hi = mid;
    } else {
      lo = mid + 2;
    }
  }
  return false;
}

/** Creates an indentation matching the number of specified levels. */
const indentX1 = "  ";
const indentX2 = "    ";
const indentX3 = "      ";
const indentX4 = "        ";
const indentCache = new Map<i32,string>();

export function indent(sb: string[], level: i32): void {
  if (level <= 4) {
    switch (level) {
      case 1: sb.push(indentX1); break;
      case 2: sb.push(indentX2); break;
      case 3: sb.push(indentX3); break;
      case 4: sb.push(indentX4); break;
    }
  } else {
    let indents: string;
    if (indentCache.has(level)) {
      indents = assert(indentCache.get(level));
    } else {
      indentCache.set(level, (indents = indentX1.repeat(level)));
    }
    sb.push(indents);
  }
}

/** Escapes a string using the specified kind of quote. */
export function escapeString(str: string, quote: CharCode): string {
  var sb = new Array<string>();
  var off = 0;
  var i = 0;
  for (let k = str.length; i < k;) {
    switch (str.charCodeAt(i)) {
      case CharCode.NULL: {
        if (i > off) sb.push(str.substring(off, off = i + 1));
        sb.push("\\0");
        off = ++i;
        break;
      }
      case CharCode.BACKSPACE: {
        if (i > off) sb.push(str.substring(off, i));
        off = ++i;
        sb.push("\\b");
        break;
      }
      case CharCode.TAB: {
        if (i > off) sb.push(str.substring(off, i));
        off = ++i;
        sb.push("\\t");
        break;
      }
      case CharCode.LINEFEED: {
        if (i > off) sb.push(str.substring(off, i));
        off = ++i;
        sb.push("\\n");
        break;
      }
      case CharCode.VERTICALTAB: {
        if (i > off) sb.push(str.substring(off, i));
        off = ++i;
        sb.push("\\v");
        break;
      }
      case CharCode.FORMFEED: {
        if (i > off) sb.push(str.substring(off, i));
        off = ++i;
        sb.push("\\f");
        break;
      }
      case CharCode.CARRIAGERETURN: {
        if (i > off) sb.push(str.substring(off, i));
        sb.push("\\r");
        off = ++i;
        break;
      }
      case CharCode.DOUBLEQUOTE: {
        if (quote == CharCode.DOUBLEQUOTE) {
          if (i > off) sb.push(str.substring(off, i));
          sb.push("\\\"");
          off = ++i;
        } else {
          ++i;
        }
        break;
      }
      case CharCode.SINGLEQUOTE: {
        if (quote == CharCode.SINGLEQUOTE) {
          if (i > off) sb.push(str.substring(off, i));
          sb.push("\\'");
          off = ++i;
        } else {
          ++i;
        }
        break;
      }
      case CharCode.BACKSLASH: {
        if (i > off) sb.push(str.substring(off, i));
        sb.push("\\\\");
        off = ++i;
        break;
      }
      case CharCode.BACKTICK: {
        if (quote == CharCode.BACKTICK) {
          if (i > off) sb.push(str.substring(off, i));
          sb.push("\\`");
          off = ++i;
        } else {
          ++i;
        }
        break;
      }
      default: {
        ++i;
        break;
      }
    }
  }
  if (i > off) sb.push(str.substring(off, i));
  return sb.join("");
}
