/** @module util *//***/

const indentX1 = "  ";
const indentX2 = "    ";
const indentX4 = "        ";

/** Creates an indentation matching the number of specified levels. */
export function indent(sb: string[], level: i32): void {
  while (level >= 4) {
    sb.push(indentX4);
    level -= 4;
  }
  if (level >= 2) {
    sb.push(indentX2);
    level -= 2;
  }
  if (level) {
    sb.push(indentX1);
  }
}

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
