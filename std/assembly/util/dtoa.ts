import { CharCode, POWERS10 } from "./string";
import { DIGITS, MAX_DOUBLE_LENGTH } from "./number";

// Fixed-point log significands shared by the dec-exp / binary-exp estimates below.
@lazy @inline const LOG10_2_SIGNIFICAND = 0x4D105; // ~(log10(2) * 2**20)
@lazy const LOG10_2_EXP = 20;
@lazy @inline const LOG2_POW10_SIGNIFICAND = 0x3526B; // ~(log2(10) * 2**16)
@lazy const LOG2_POW10_EXP = 16;

@lazy @inline const DIV10_EXP = 10;
@lazy const DIV10_SIG: u64 = (1 << DIV10_EXP) / 10 + 1;
@lazy @inline const NEG10: u64 = (1 << 8) - 10;

@lazy @inline const DIV100_EXP = 19;
@lazy const DIV100_SIG: u64 = (1 << DIV100_EXP) / 100 + 1;
@lazy @inline const NEG100: u64 = (1 << 16) - 100;

@lazy @inline const DIV10K_EXP = 40;
@lazy const DIV10K_SIG: u64 = ((<u64>1) << DIV10K_EXP) / 10000 + 1;
@lazy @inline const NEG10K: u64 = ((<u64>1) << 32) - 10000;

@lazy @inline export const BCD_ZEROS: u64 = 0x3030303030303030;

@lazy @inline export const DOUBLE_EXP_OFFSET = 1075; // exp_bias(1023) + num_sig_bits(52)
@lazy export const DOUBLE_SIGNIFICAND_SIZE = 52; // explicit mantissa bits
@lazy @inline export const DOUBLE_HIDDEN_BIT: u64 = (<u64>1) << DOUBLE_SIGNIFICAND_SIZE; // implicit leading 1
@lazy export const DOUBLE_SIGNIFICAND_MASK: u64 = DOUBLE_HIDDEN_BIT - 1;
@lazy @inline export const EXTRA_SHIFT = 6;
@lazy export const BIASED_HALF: u64 = ((<u64>1) << 63) + 6;
@lazy @inline export const DOUBLE_MAX_DIGITS10 = 17;
// Fixed notation when decExp (= decimal-point position - 1) is in [-6, 20].
@lazy @inline export const MIN_FIXED_DEC_EXP = -6;
@lazy export const MAX_FIXED_DEC_EXP = 20;

// Compact pow10 (Dougall Johnson's method, ported from vitaut/zmij)
// 10**i = top-128-bits(major[(i+10)/28] * minor[(i+10)%28]) minus a per-power round-down bit.

// 23 full 128-bit anchors (hi, lo) spaced every 28 powers, covering 10**-303..10**313.
// @ts-ignore: decorator
@lazy @inline const POW10_MAJOR = memory.data<u64>([
  0xaf8e5410288e1b6f, 0x07ecf0ae5ee44dda, 0xb1442798f49ffb4a, 0x99cd11cfdf41779d,
  0xb2fe3f0b8599ef07, 0x861fa7e6dcb4aa15, 0xb4bca50b065abe63, 0x0fed077a756b53aa,
  0xb67f6455292cbf08, 0x1a3bc84c17b1d543, 0xb84687c269ef3bfb, 0x3d5d514f40eea742,
  0xba121a4650e4ddeb, 0x92f34d62616ce413, 0xbbe226efb628afea, 0x890489f70a55368c,
  0xbdb6b8e905cb600f, 0x5400e987bbc1c921, 0xbf8fdb78849a5f96, 0xde98520472bdd034,
  0xc16d9a0095928a27, 0x75b7053c0f178294, 0xc350000000000000, 0x0000000000000000,
  0xc5371912364ce305, 0x6c28000000000000, 0xc722f0ef9d80aad6, 0x424d3ad2b7b97ef6,
  0xc913936dd571c84c, 0x03bc3a19cd1e38ea, 0xcb090c8001ab551c, 0x5cadf5bfd3072cc6,
  0xcd036837130890a1, 0x36dba887c37a8c10, 0xcf02b2c21207ef2e, 0x94f967e45e03f4bc,
  0xd106f86e69d785c7, 0xe13336d701beba52, 0xd31045a8341ca07c, 0x1ede48111209a051,
  0xd51ea6fa85785631, 0x552a74227f3ea566, 0xd732290fbacaf133, 0xa97c177947ad4096,
  0xd94ad8b1c7380874, 0x18375281ae7822bc,
]);

// One round-down fixup bit per power: bit (i & 31) of word (i >> 5) is subtracted
// from the reconstructed low limb. 20 words cover all 618 powers.
// @ts-ignore: decorator
@lazy @inline const POW10_FIXUPS = memory.data<u32>([
  0x0a4e363f, 0x00001840, 0x00006400, 0x24200040, 0x00000000,
  0x0c000000, 0x82c81380, 0x5e4ce01f, 0xd730f60f, 0x0000001b,
  0x00000000, 0xcdf7fffc, 0x6e8201d8, 0x40cd3fd1, 0xdb642501,
  0x00000d0d, 0x14042400, 0x53713840, 0x11781db4, 0x00000000,
]);

// Normalized powers shared by the f32 fast path, the f64 fast path, and
// the compact cache reconstruction. The first 45 limbs are high for powers
// 10^27 through 10^-17; the last eight are low for 10^-1 through 10^-8.
// A high limb is rounded up exactly when its low limb is nonzero.
// @ts-ignore: decorator
@lazy @inline const POW10_SHARED = memory.data<u64>([
  0xcecb8f27f4200f3a, 0xa56fa5b99019a5c8, 0x84595161401484a0, 0xd3c21bcecceda100,
  0xa968163f0a57b400, 0x878678326eac9000, 0xd8d726b7177a8000, 0xad78ebc5ac620000,
  0x8ac7230489e80000, 0xde0b6b3a76400000, 0xb1a2bc2ec5000000, 0x8e1bc9bf04000000,
  0xe35fa931a0000000, 0xb5e620f480000000, 0x9184e72a00000000, 0xe8d4a51000000000,
  0xba43b74000000000, 0x9502f90000000000, 0xee6b280000000000, 0xbebc200000000000,
  0x9896800000000000, 0xf424000000000000, 0xc350000000000000, 0x9c40000000000000,
  0xfa00000000000000, 0xc800000000000000, 0xa000000000000000, 0x8000000000000000,
  0xcccccccccccccccd, 0xa3d70a3d70a3d70b, 0x83126e978d4fdf3c, 0xd1b71758e219652c,
  0xa7c5ac471b478424, 0x8637bd05af6c69b6, 0xd6bf94d5e57a42bd, 0xabcc77118461cefd,
  0x89705f4136b4a598, 0xdbe6fecebdedd5bf, 0xafebff0bcb24aaff, 0x8cbccc096f5088cc,
  0xe12e13424bb40e14, 0xb424dc35095cd810, 0x901d7cf73ab0acda, 0xe69594bec44de15c,
  0xb877aa3236a4b44a, 0xcccccccccccccccc, 0x3d70a3d70a3d70a3, 0x645a1cac083126e9,
  0xd3c36113404ea4a8, 0x0fcf80dc33721d53, 0xa63f9a49c2c1b10f, 0x3d32907604691b4c,
  0xfdc20d2b36ba7c3d
]);

@lazy @inline const FLOAT_EXP_OFFSET = 150; // exp_bias(127) + num_sig_bits(23)
@lazy const FLOAT_SIGNIFICAND_SIZE = 23; // explicit mantissa bits
@lazy @inline const FLOAT_HIDDEN_BIT: u64 = (<u64>1) << FLOAT_SIGNIFICAND_SIZE; // implicit leading 1
@lazy const FLOAT_SIGNIFICAND_MASK: u32 = (<u32>1 << FLOAT_SIGNIFICAND_SIZE) - 1;
@lazy @inline const FLOAT_BIT = 36; // xjb's fixed-point split for the f32 core
// xjb's c1, ASCII offset stripped so the `one` digit comes out numeric.
@lazy @inline const FLOAT_ONE_BIAS: u64 = ((<u64>1) << (FLOAT_BIT - 2)) - 7;

@lazy @inline export const FLOAT_MAX_DIGITS10 = 9;

// @ts-ignore: decorator
@lazy @inline export const SCRATCH = memory.data(128);

// Shared results where the caller needs more than one return value.
@lazy export let gPow10Hi: u64 = 0;
@lazy let gBcdValue: u64 = 0;
@lazy export let gDigHi: u64 = 0;
@lazy export let gDigLo: u64 = 0;
@lazy export let gDigits: i32 = 0;
@lazy export let gSig: i64 = 0;
@lazy export let gExp: i32 = 0;
@lazy export let gLastDigit: i32 = 0;
@lazy export let gHasLastDigit: bool = false;

// High 64 bits of the 128-bit product x * y. Matches umul128.
// @ts-ignore: decorator
@inline export function umul64hi(a: u64, b: u64): u64 {
  let a0 = a & 0xffffffff
  let a1 = a >> 32

  let b0 = b & 0xffffffff
  let b1 = b >> 32

  let w0 = a0 * b0
  let t = a1 * b0 + (w0 >> 32)
  let w1 = t & 0xffffffff
  let w2 = t >> 32

  w1 = a0 * b1 + w1

  return a1 * b1 + w2 + (w1 >> 32)
}

// Returns (x * y + c) >> 64.
// @ts-ignore: decorator
@inline export function umul64hiCarry(a: u64, b: u64, carry: u64): u64 {
  let lo = a * b;
  let hi = umul64hi(a, b);
  return hi + u64(lo + carry < lo);
}

// floor(log10(2**bin_exp)). (The f64 path only ever needs the regular form; the
// irregular 3/4 variant lives in ftoa.ts's own copy.)
// @ts-ignore: decorator
@inline export function toDecExponent(binExp: i32): i32 {
  return (binExp * LOG10_2_SIGNIFICAND) >> LOG10_2_EXP;
}

// Shift that keeps a fixed 128-bit fractional part after scaling by 10**dec_exp.
// @ts-ignore: decorator
@inline export function exponentShift(binExp: i32, decExp: i32): i32 {
  let pow10BinExp = (-decExp * LOG2_POW10_SIGNIFICAND) >> LOG2_POW10_EXP;
  return binExp + pow10BinExp + 1;
}

// Rebuild the top 128 bits of 10**(i - 293) for table index i in [0,617]:
// major[(i+10)/28] * minor[(i+10)%28], normalized left if the top bit is clear,
// then the per-power fixup bit subtracted off the low limb.
// @ts-ignore: decorator
@inline function computePow10(i: i32): u64 {
  if (i >= 285 && i <= 320) {
    let t = 337 - i;
    let hi = load<u64>(POW10_SHARED + (<usize>(t - 17) << 3));
    if (t <= 44) {
      gPow10Hi = hi;
      return 0;
    }
    let lo = load<u64>(POW10_SHARED + (<usize>t << 3));
    gPow10Hi = hi - 1;
    return lo;
  }
  return computePow10Compact(i);
}

// Shared cold path for powers outside the direct cache.
function computePow10Compact(i: i32): u64 {
  let j = i + 10;
  let major = (j * 293) >>> 13; // exact j / 28 for j in [10,627]
  let minor = j - major * 28;
  // The minor factors are POW10_SHARED[27..0] in reverse order.
  let m = load<u64>(POW10_SHARED + (<usize>(27 - minor) << 3));
  let hoff = POW10_MAJOR + (<usize>major << 4);
  let hHi = load<u64>(hoff);
  let hLo = load<u64>(hoff, 8);

  // 192-bit product major * minor as c2:c1:c0, keep the top 128 bits (c2:c1).
  let h1 = umul64hi(hLo, m);
  let c0 = hLo * m;
  let c1 = h1 + hHi * m;
  let c2 = u64(c1 < h1) + umul64hi(hHi, m);

  let hi: u64, lo: u64;
  if ((c2 >> 63) != 0) {
    lo = c1;
    hi = c2;
  } else {
    lo = (c1 << 1) | (c0 >> 63);
    hi = (c2 << 1) | (c1 >> 63);
  }
  lo -= <u64>((load<u32>(POW10_FIXUPS + (<usize>(i >> 5) << 2)) >> (i & 31)) & 1);
  gPow10Hi = hi;
  return lo;
}

// value < 1e8 -> 8 packed BCD digits (SWAR: split by divide-by-constant
// reciprocals, halving the digits-per-lane each step).
// @ts-ignore: decorator
@inline function toBcd8Digits(value: u64): u64 {
  // 12345678 -> two 4-digit groups, one per 32-bit lane: [1234][5678]
  let quads = value + NEG10K * ((value * DIV10K_SIG) >> DIV10K_EXP);
  // four 2-digit groups, one per 16-bit lane: [12][34][56][78]
  let pairs =
    quads + NEG100 * (((quads * DIV100_SIG) >> DIV100_EXP) & 0x7f0000007f);
  // eight 1-digit groups, one per byte: [1][2][3][4][5][6][7][8]
  let singles =
    pairs + NEG10 * (((pairs * DIV10_SIG) >> DIV10_EXP) & 0xf000f000f000f);
  // bswap to big-endian so the most-significant digit lands in the high byte
  gBcdValue = bswap<u64>(singles);
  return singles;
}

function toBcd8(value: u64): i32 {
  let singles = toBcd8Digits(value);
  const BCD_LENGTH_BIAS = 70; // 64 bits, one sentinel bit, and a six-bit rounding offset
  return <i32>((BCD_LENGTH_BIAS - clz<u64>((singles << 1) | 1)) / 8);
}

// Four 4-digit lanes -> 16 BCD bytes (byte i = 10**i digit).
// @ts-ignore: decorator
@inline function toBcd4x4(y: v128): v128 {
  // Products fit in their lanes because y <= 9999 and each pair <= 99.
  let hundreds = i32x4.shr_u(i32x4.mul(y, i32x4.splat(5243)), 19);
  let pairs = i32x4.add(y, i32x4.mul(hundreds, i32x4.splat(65436)));
  let tens = i16x8.shr_u(i16x8.mul(pairs, i16x8.splat(103)), 10);
  return i16x8.add(pairs, i16x8.mul(tens, i16x8.splat(246)));
}

// Pack the low 32 bits of each i64 lane into adjacent i32 lanes 0,1 (zero the
// rest), so a single-input swizzle replaces a two-input shuffle.
// @ts-ignore: decorator
@inline function packLo32(v: v128): v128 {
  return v128.swizzle(v, i8x16(
    0, 1, 2, 3, 8, 9, 10, 11,
    -128, -128, -128, -128, -128, -128, -128, -128
  ));
}

// SIMD version of toDigits64: builds all 16 ASCII digits in one pass.
// @ts-ignore: decorator
@inline function toDigits64Simd(value: u64, countDigits: bool = true): void {
  let revOrder = i8x16(15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0);

  let hi = value / 100000000;
  let lo = value - hi * 100000000;

  let x = i64x2.replace_lane(i64x2.splat(lo), 1, hi);

  let q = i64x2.shr_u(
    i64x2.extmul_low_i32x4_u(packLo32(x), i32x4.splat(<i32>DIV10K_SIG)),
    DIV10K_EXP
  );
  let sub = i64x2.extmul_low_i32x4_u(packLo32(q), i32x4.splat(-10000));
  let y = i64x2.add(x, sub);

  let bcd = toBcd4x4(y);

  if (countDigits) {
    let mask = i8x16.bitmask(i8x16.gt_s(bcd, i8x16.splat(0)));
    gDigits = 32 - clz(mask); // mask is never 0 (significand >= 1)
  }

  let ascii = v128.or(
    v128.swizzle(bcd, revOrder),
    i8x16.splat(<i8>CharCode._0)
  );
  gDigHi = i64x2.extract_lane(ascii, 0);
  gDigLo = i64x2.extract_lane(ascii, 1);
}

// SWAR version of toDigits64: two register-parallel to_bcd8 passes over u64.
// @ts-ignore: decorator
@inline function toDigits64Swar(value: u64, fixed16: bool = false): void {
  let hi = value / 100000000;
  let lo = value - hi * 100000000;

  if (fixed16) {
    toBcd8Digits(hi);
    let hiBcd = gBcdValue;
    toBcd8Digits(lo);
    gDigHi = hiBcd + BCD_ZEROS;
    gDigLo = gBcdValue + BCD_ZEROS;
    return;
  }

  let hiLen = toBcd8(hi);

  let hiBcd = gBcdValue;

  if (lo == 0) {
    gDigHi = hiBcd + BCD_ZEROS;
    gDigLo = BCD_ZEROS;
    gDigits = hiLen + 8;
    return;
  }

  let loLen = toBcd8(lo);

  gDigHi = hiBcd + BCD_ZEROS;
  gDigLo = gBcdValue + BCD_ZEROS;
  gDigits = hi == 0 ? loLen : hiLen + 8;
}

// @ts-ignore: decorator
@inline export function toDigits64(value: u64): void {
  if (ASC_FEATURE_SIMD) {
    toDigits64Simd(value);
  } else {
    toDigits64Swar(value);
  }
}

// Pack a zero-padded 16-digit block without computing the logical length.
// @ts-ignore: decorator
@inline function toDigits64Fixed16(value: u64): void {
  if (ASC_FEATURE_SIMD) toDigits64Simd(value, false);
  else toDigits64Swar(value, true);
}

// Eight packed ASCII digits in a u64 -> 8 UTF-16 code units (16 bytes) at
// `p + off`. SIMD zero-extends the bytes to u16 lanes in one store.
// @ts-ignore: decorator
@inline export function writeUnpacked8(p: usize, ascii: u64, off: usize = 0): void {
  let base = p + off;
  if (ASC_FEATURE_SIMD) {
    v128.store(base, i16x8.extend_low_i8x16_u(i64x2.splat(ascii)));
  } else {
    let lo = ascii & 0xffffffff;
    let hi = ascii >> 32;
    lo = (lo | (lo << 16)) & 0x0000ffff0000ffff;
    hi = (hi | (hi << 16)) & 0x0000ffff0000ffff;
    lo = (lo | (lo << 8)) & 0x00ff00ff00ff00ff;
    hi = (hi | (hi << 8)) & 0x00ff00ff00ff00ff;
    store<u64>(base, lo);
    store<u64>(base, hi, 8);
  }
}

// ECMAScript spellings for the non-finite cases.
// @ts-ignore: decorator
@inline export function writeNaN(buf: usize): usize {
  store<u16>(buf, CharCode.N, 0); // 'N'
  store<u16>(buf, CharCode.a, 2); // 'a'
  store<u16>(buf, CharCode.N, 4); // 'N'
  return buf + 6;
}

// @ts-ignore: decorator
@inline export function writeInfinity(buf: usize, neg: bool): usize {
  if (neg) {
    store<u16>(buf, CharCode.MINUS);  // '-'
    buf += 2;
  }
  writeUnpacked8(buf, 0x7974696e69666e49); // 'Infinity'
  return buf + 16;
}

// @ts-ignore: decorator
@inline function finishInteger(end: usize, dotZero: bool): usize {
  if (dotZero) {
    store<u16>(end, CharCode.DOT);
    store<u16>(end, CharCode._0, 2);
    end += 4;
  }
  return end;
}

// f64 fixed-notation layout: a full 16-digit block (gDigHi:gDigLo) plus a 17th
// digit (always, so no leading-'0' fold or bcdSize param like the f32 path).
// @ts-ignore: decorator
@inline function packedTrailingZeros16(high: u64, low: u64): i32 {
  let count = <i32>(clz<u64>(low ^ BCD_ZEROS) >> 3);
  if (count == 8) count += <i32>(clz<u64>(high ^ BCD_ZEROS) >> 3);
  return count;
}

// @ts-ignore: decorator
@inline export function writeFixed(
  buf: usize,
  start: usize,
  decExp: i32,
  hasLastDigit: bool,
  dotZero: bool,
): usize {
  if (decExp < 0) writeUnpacked8(start, BCD_ZEROS);
  let lastDigitChar = <u64>(CharCode._0 + (hasLastDigit ? gLastDigit : 0));
  let numDigits = hasLastDigit ? 16 : 15;
  let dHi = gDigHi;
  let dLo = gDigLo;

  // decExp >= 16: integer rendered as significant digits then trailing zeros.
  if (decExp >= 16) {
    writeUnpacked8(buf, dHi);
    writeUnpacked8(buf, dLo, 16);
    store<u16>(buf + 32, <u32>lastDigitChar);
    let endByte = buf + ((decExp + 1) << 1);
    for (let z = buf + (17 << 1); z < endByte; z += 16) {
      writeUnpacked8(z, BCD_ZEROS);
    }
    return finishInteger(endByte, dotZero);
  }

  // Everything reaching here has a fractional part (exact integers < 1e16 are
  // absorbed by writeUInt16 upstream), so n > decExp + 1 and output is "int.frac".
  let n = numDigits + 1;
  let endPos = decExp >= 0 ? n + 1 : n;

  // Branchless `decExp < 0 ? 1 - decExp : 0` (decExp >> 31 is all-ones if < 0).
  let startPos = (1 - decExp) & (decExp >> 31);

  buf += startPos << 1;
  writeUnpacked8(buf, dHi);
  writeUnpacked8(buf, dLo, 16);
  store<u16>(buf + 32, <u32>lastDigitChar);

  if (decExp >= 0) {
    // Place '.' after k integer digits with no memmove: re-store the digits
    // shifted right by k chars (fractional part at [k+1,...]), then drop '.' at k.
    let k = decExp + 1;
    let d16: u64 = lastDigitChar;
    let s = k << 3;
    let fHi: u64, fLo: u64;
    if (s < 64) {
      fHi = (dHi >> s) | (dLo << (64 - s));
      fLo = (dLo >> s) | (d16 << (64 - s));
    } else if (s == 64) {
      fHi = dLo;
      fLo = d16;
    } else if (s < 128) {
      let s2 = s - 64;
      fHi = (dLo >> s2) | (d16 << (64 - s2));
      fLo = d16 >> s2;
    } else {
      fHi = d16; fLo = 0;
    }
    writeUnpacked8(buf + ((k + 1) << 1), fHi);
    // fLo's window starts at char k + 9; skip it if the output ends before there.
    if (endPos > k + 9) writeUnpacked8(buf + ((k + 9) << 1), fLo);
    store<u16>(buf + (k << 1), CharCode.DOT);
  } else {
    store<u16>(start, CharCode.DOT, 2); // "0." prefix
  }

  let end = buf + (endPos << 1);
  if (decExp >= 0 && endPos == decExp + 1) return finishInteger(end, dotZero);
  if (!hasLastDigit) end -= <usize>packedTrailingZeros16(dHi, dLo) << 1;
  if (load<u16>(end - 2) == CharCode.DOT) {
    if (dotZero) {
      store<u16>(end, CharCode._0);
      end += 2;
    } else {
      end -= 2;
    }
  }
  return end;
}

// Exponential-notation tail. Lays the mantissa "d.ddd" (single leading digit)
// then the "e +/- d" exponent.
// @ts-ignore: decorator
@inline export function writeExpNotation(
  buf: usize,
  start: usize,
  decExp: i32,
  hasLastDigit: bool,
  hasExtraDigit: bool,
  bcdSize: i32,
): usize {
  buf += usize(hasExtraDigit) << 1;
  writeUnpacked8(buf, gDigHi);
  if (bcdSize == 16) writeUnpacked8(buf, gDigLo, 16);
  store<u16>(buf + (bcdSize << 1), <u32>(CharCode._0 + gLastDigit));
  buf += (bcdSize + i32(hasLastDigit)) << 1;
  if (!hasLastDigit) buf -= <usize>packedTrailingZeros16(gDigHi, gDigLo) << 1;
  // Move the lead digit to pos 0, drop '.' at pos 1.
  let lead: u32 = <u32>load<u16>(start, 2);
  store<u16>(start, lead);
  store<u16>(start, CharCode.DOT, 2);
  buf -= usize(buf - 2 == start + 2) << 1; // drop a trailing point
  return writeExponent(buf, decExp);
}

// Writes "e +/- d" / "e +/- dd" / "e +/- ddd" exponent.
// @ts-ignore: decorator
@inline export function writeExponent(buf: usize, decExp: i32): usize {
  let m = decExp >> 31; // all-ones if decExp < 0
  store<u16>(buf, CharCode.e); // 'e'
  store<u16>(buf, CharCode.PLUS + (m & 2), 2); // '+' / '-' branchlessly
  buf += 4;
  let e = (decExp ^ m) - m; // abs(decExp)
  if (e >= 100) {
    let d = (<u32>e * <u32>DIV100_SIG) >> DIV100_EXP; // e / 100
    store<u16>(buf, CharCode._0 + d);
    store<u32>(buf, load<u32>(DIGITS + (<usize>(e - <i32>d * 100) << alignof<u32>())), 2);
    return buf + 6;
  }
  if (e >= 10) {
    store<u32>(buf, load<u32>(DIGITS + (<usize>e << alignof<u32>())));
    return buf + 4;
  }
  store<u16>(buf, CharCode._0 + e);
  return buf + 2;
}

// @ts-ignore: decorator
@inline export function scratchString(byteLen: usize): string {
  let str = changetype<string>(__new(byteLen, idof<string>()));
  memory.copy(changetype<usize>(str), SCRATCH, byteLen);
  return str;
}

// @ts-ignore: decorator
@inline function setDecimalResult(integral: u64, one: u64, decExp: i32): void {
  if (one == 10) {
    gSig = <i64>(integral + 1);
    gLastDigit = 0;
    gHasLastDigit = false;
  } else if (one == 0) {
    gSig = <i64>integral;
    gLastDigit = 0;
    gHasLastDigit = false;
  } else {
    gSig = <i64>integral;
    gLastDigit = <i32>one;
    gHasLastDigit = true;
  }
  gExp = decExp;
}

// Normal f64 -> shortest decimal.
// @ts-ignore: decorator
@inline function toDecimalDoubleNormal(binSig: u64, rawExp: i32, regular: bool): void {
  let c = binSig | DOUBLE_HIDDEN_BIT;
  let q = rawExp - DOUBLE_EXP_OFFSET;

  if (!regular) {
    let decExp = (q * LOG10_2_SIGNIFICAND - 131072) >> LOG10_2_EXP; // 131072 = 2**17 rounding bias
    let powExp = -decExp - 1;
    let h = q + ((powExp * LOG2_POW10_SIGNIFICAND) >> LOG2_POW10_EXP);

    computePow10(powExp + 293);
    let pow10Hi = gPow10Hi;

    let integral = pow10Hi >> (11 - h);
    let halfUlp = pow10Hi >> (-h);
    let dotOne = pow10Hi << (53 + h);

    let one = ((((dotOne >> (53 + h)) * 5) + (((<u64>1) << (9 - h)))) >> (10 - h));
    one = ((((dotOne >> 54) * 5) & 0x1ff) > ((halfUlp >> 55) * 5))
      ? ((((dotOne >> 54) * 5) >> 9) + 1)
      : one;
    one = dotOne == ((<u64>1) << 62) ? 2 : one;
    one = (halfUlp >> 1) > dotOne ? 0 : one;
    one = halfUlp > u64.MAX_VALUE - dotOne ? 10 : one;

    setDecimalResult(integral, one, decExp);
    return;
  }

  let decExp = ((rawExp - DOUBLE_EXP_OFFSET) * 78913) >> 18; // 78913/2**18 ~= log10(2) (Q18)
  let powExp = -decExp - 1;
  let h = q + ((powExp * LOG2_POW10_SIGNIFICAND) >> LOG2_POW10_EXP);
  let shift = h + 1 + EXTRA_SHIFT;

  // xjb64 rounds up the negative-power low limb by one.
  let pLo = computePow10(powExp + 293) + u64(powExp < 0);
  let pHi = gPow10Hi;
  let y = c << shift;

  let a = umul64hi(pHi, y);
  let pLo64 = pHi * y;
  let lo = pLo64 + umul64hi(pLo, y);
  let pHi64 = a + u64(lo < pLo64);

  let integral = pHi64 >> EXTRA_SHIFT;
  let dotOne = (pHi64 << (64 - EXTRA_SHIFT)) | (lo >> EXTRA_SHIFT);
  let halfUlp = (pHi >> (-h)) + <u64>(1 - (c & 1));

  let one = umul64hiCarry(dotOne, 10, dotOne == ((<u64>1) << 62) ? 0 : BIASED_HALF);
  one = dotOne < halfUlp ? 0 : one;
  one = u64.MAX_VALUE - dotOne < halfUlp ? 10 : one;

  setDecimalResult(integral, one, decExp);
}

// bin_sig * 2**(raw_exp - exp_offset) -> shortest decimal.
// @ts-ignore: decorator
@inline export function toDecimalDouble(binSig: u64, rawExp: i32, regular: bool): void {
  if (rawExp != 0) return toDecimalDoubleNormal(binSig, rawExp, regular);

  let decExp = toDecExponent(-1074);
  let shift = exponentShift(-1074, decExp + 1) + EXTRA_SHIFT;

  let powExp = -decExp - 1;
  let pLo = computePow10(powExp + 293) + u64(powExp < 0);
  let pHi = gPow10Hi;
  let y = binSig << shift;

  let a = umul64hi(pHi, y);
  let pLo64 = pHi * y;
  let lo = pLo64 + umul64hi(pLo, y);
  let pHi64 = a + u64(lo < pLo64);

  let integral = pHi64 >> EXTRA_SHIFT;
  let dotOne = (pHi64 << (64 - EXTRA_SHIFT)) | (lo >> EXTRA_SHIFT);
  let halfUlp = (pHi >> (EXTRA_SHIFT + 1 - shift)) + <u64>(1 - (binSig & 1));

  let one = umul64hiCarry(dotOne, 10, BIASED_HALF);
  one = dotOne < halfUlp ? 0 : one;
  one = u64.MAX_VALUE - dotOne < halfUlp ? 10 : one;

  setDecimalResult(integral, one, decExp);
}

// @ts-ignore: decorator
@inline function decimalLen15(v: u64): i32 {
  if (v < 100000000) {
    if (v < 10000) {
      if (v < 100) return 1 + i32(v >= 10);
      return 3 + i32(v >= 1000);
    }
    if (v < 1000000) return 5 + i32(v >= 100000);
    return 7 + i32(v >= 10000000);
  }
  if (v < 1000000000000) {
    if (v < 10000000000) return 9 + i32(v >= 1000000000);
    return 11 + i32(v >= 100000000000);
  }
  if (v < 100000000000000) return 13 + i32(v >= 10000000000000);
  return 15;
}

// @ts-ignore: decorator
@inline function decimalLen16(v: u64): i32 {
  return v < 1000000000000000 ? decimalLen15(v) : 16;
}

// @ts-ignore: decorator
@inline function writeUInt16(buf: usize, value: u64): usize {
  let len = decimalLen16(value);
  if (ASC_FEATURE_SIMD && value >= 100000000) {
    toDigits64Fixed16(value);
    let prefix = len - 8;
    writeUnpacked8(buf, gDigHi >> ((8 - prefix) << 3));
    writeUnpacked8(buf + (<usize>prefix << 1), gDigLo);
    return buf + (<usize>len << 1);
  }
  let p = buf + (<usize>len << 1);
  let v = value;
  if (v >= 100) {
    let q = v / 100;
    p -= 4;
    store<u32>(p, load<u32>(DIGITS + (<usize>(v - q * 100) << alignof<u32>())));
    v = q;
  }
  if (v >= 100) {
    let q = v / 100;
    p -= 4;
    store<u32>(p, load<u32>(DIGITS + (<usize>(v - q * 100) << alignof<u32>())));
    v = q;
  }
  if (v >= 100) {
    let q = v / 100;
    p -= 4;
    store<u32>(p, load<u32>(DIGITS + (<usize>(v - q * 100) << alignof<u32>())));
    v = q;
  }
  if (v >= 100) {
    let q = v / 100;
    p -= 4;
    store<u32>(p, load<u32>(DIGITS + (<usize>(v - q * 100) << alignof<u32>())));
    v = q;
  }
  if (v >= 100) {
    let q = v / 100;
    p -= 4;
    store<u32>(p, load<u32>(DIGITS + (<usize>(v - q * 100) << alignof<u32>())));
    v = q;
  }
  if (v >= 100) {
    let q = v / 100;
    p -= 4;
    store<u32>(p, load<u32>(DIGITS + (<usize>(v - q * 100) << alignof<u32>())));
    v = q;
  }
  if (v >= 100) {
    let q = v / 100;
    p -= 4;
    store<u32>(p, load<u32>(DIGITS + (<usize>(v - q * 100) << alignof<u32>())));
    v = q;
  }
  if (v >= 10) {
    store<u32>(buf, load<u32>(DIGITS + (<usize>v << alignof<u32>())));
  } else {
    store<u16>(buf, CharCode._0 + <u32>v);
  }
  return buf + (<usize>len << 1);
}

// @ts-ignore: decorator
@inline function normalizeDoubleShortest(): void {
  let full = <u64>gSig * 10 + <u64>(gHasLastDigit ? gLastDigit : 0);
  if (full >= 1000000000000000) {
    gSig = <i64>full;
    --gExp;
    gLastDigit = 0;
    gHasLastDigit = false;
    return;
  }
  let scale = 16 - decimalLen15(full);
  let mul = <u64>load<f64>(POWERS10 + (<usize>scale << 3));
  gSig = <i64>(full * mul);
  gExp -= scale + 1;
  gLastDigit = 0;
  gHasLastDigit = false;
}

// @ts-ignore: decorator
@inline function formatDecodedDouble(buf: usize, bits: u64, binExp: i32, binSig: u64, dotZero: bool): usize {
  let neg = bits >> 63 != 0;
  let threshold: u64 = 1000000000000000;

  // is_normal: 1 <= bin_exp <= 2046
  let isNormal = <u32>(binExp - 1) < <u32>2046;
  if (!isNormal) {
    if (binExp != 0) {
      if (binSig != 0) return writeNaN(buf);
      return writeInfinity(buf, neg);
    }
    // +/-0 -> "0"
    if (binSig == 0) {
      store<u16>(buf, CharCode._0);
      return finishInteger(buf + 2, dotZero);
    }
  }

  if (neg) {
    store<u16>(buf, CharCode.MINUS);
    buf += 2;
  }
  if (isNormal) {
    let q = binExp - DOUBLE_EXP_OFFSET;
    let c = binSig | DOUBLE_HIDDEN_BIT;
    let intValue: u64 = 0;
    if (q < 0) {
      let shift = -q;
      if (shift <= 52) {
        let mask = ((<u64>1) << shift) - 1;
        if ((c & mask) == 0) intValue = c >> shift;
      }
    } else if (q < 11) {
      intValue = c << q;
      if (intValue >= 10000000000000000) intValue = 0;
    }
    if (intValue != 0) return finishInteger(writeUInt16(buf, intValue), dotZero);
  }

  if (isNormal) {
    toDecimalDoubleNormal(binSig, binExp, binSig != 0);
  } else {
    toDecimalDouble(binSig, 0, true);
  }
  if (<u64>gSig < threshold) normalizeDoubleShortest();

  let hasLastDigit = gHasLastDigit;
  let decExp = gExp + 16;
  let start = buf;
  toDigits64Fixed16(<u64>gSig);
  if (decExp >= MIN_FIXED_DEC_EXP && decExp <= MAX_FIXED_DEC_EXP)
    return writeFixed(buf, start, decExp, hasLastDigit, dotZero);
  return writeExpNotation(buf, start, decExp, hasLastDigit, true, 16);
}

// @ts-ignore: decorator
@inline function formatDouble(buf: usize, value: f64, dotZero: bool): usize {
  let bits = reinterpret<u64>(value);
  let binExp = <i32>((bits << 1) >> 53);
  let binSig = bits & DOUBLE_SIGNIFICAND_MASK;
  return formatDecodedDouble(buf, bits, binExp, binSig, dotZero);
}

export function dtoa(value: f64): string {
  let bits = reinterpret<u64>(value);
  let exp = <i32>((bits << 1) >> 53);
  let sig = bits & DOUBLE_SIGNIFICAND_MASK;

  if (exp == 2047) {
    if (sig != 0) return "NaN";
    return bits >> 63 != 0 ? "-Infinity" : "Infinity";
  }
  if ((bits << 1) == 0) return "0";

  return scratchString(formatDecodedDouble(SCRATCH, bits, exp, sig, false) - SCRATCH);
}

export function dtoa_buffered(buffer: usize, value: f64): u32 {
  return <u32>((formatDouble(buffer, value, true) - buffer) >> 1);
}

// @ts-ignore: decorator
@inline function toDigits32Simd(value: u64): void {
  // two 4-digit groups, one per 32-bit lane: [1234][5678] (rest split in SIMD)
  let quads = value + NEG10K * ((value * DIV10K_SIG) >> DIV10K_EXP);
  let x = i64x2.replace_lane(i64x2.splat(quads), 1, 0);
  let bcd = toBcd4x4(x); // bytes 0-7 = 10**0..10**7 digits
  let low = i64x2.extract_lane(bcd, 0);
  gDigHi = bswap<u64>(low) + BCD_ZEROS;
  gDigits = <i32>((70 - clz<u64>((low << 1) | 1)) / 8);
}

// to_digits<32>: a single u64 of 8 ASCII digits (value < 1e8).
// @ts-ignore: decorator
@inline export function toDigits32(value: u64): void {
  if (ASC_FEATURE_SIMD) {
    toDigits32Simd(value);
  } else {
    let length = toBcd8(value);
    gDigHi = gBcdValue + BCD_ZEROS;
    gDigits = length;
  }
}

// Fixed-notation tail: 8-digit significand block (gDigHi) plus an optional 9th
// ("extra") digit.
// @ts-ignore: decorator
@inline function writeFixedFloat(
  buf: usize,
  start: usize,
  decExp: i32,
  hasLastDigit: bool,
  hasExtraDigit: bool,
  dotZero: bool,
): usize {
  if (decExp < 0) writeUnpacked8(start, BCD_ZEROS);
  let lastDigitChar = <u64>(CharCode._0 + (hasLastDigit ? gLastDigit : 0));
  let numDigits = hasLastDigit ? 8 : gDigits - i32(hasExtraDigit);

  // !hasExtraDigit: gSig has a leading '0'; shift it out and fold the last digit
  // into the freed low slot, so the block is exactly 8 chars (no memmove).
  let dHi = gDigHi;
  if (!hasExtraDigit) {
    dHi = (dHi >> 8) | (lastDigitChar << 56);
  }

  // decExp >= 8: integer rendered as significant digits then trailing zeros.
  if (decExp >= 8) {
    writeUnpacked8(buf, dHi);
    if (hasExtraDigit) store<u16>(buf + 16, <u32>lastDigitChar);
    let sig = 8 + i32(hasExtraDigit);
    let endByte = buf + ((decExp + 1) << 1);
    for (let z = buf + (sig << 1); z < endByte; z += 16) {
      writeUnpacked8(z, BCD_ZEROS);
    }
    return finishInteger(endByte, dotZero);
  }

  let n = numDigits + i32(hasExtraDigit);
  let endPos = n;
  if (decExp >= 0) {
    endPos = n > decExp + 1 ? n + 1 : decExp + 1;
  }

  // Branchless `decExp < 0 ? 1 - decExp : 0` (decExp >> 31 is all-ones if < 0).
  let startPos = (1 - decExp) & (decExp >> 31);

  buf += startPos << 1;
  writeUnpacked8(buf, dHi);
  if (hasExtraDigit) store<u16>(buf + 16, <u32>lastDigitChar);

  if (decExp >= 0) {
    // Place '.' after k integer digits with no memmove: re-store the digits
    // shifted right by k chars (fractional part at [k+1,...]), then drop '.' at k.
    let k = decExp + 1;
    let d16: u64 = hasExtraDigit ? lastDigitChar : 0;
    let s = k << 3;
    let fHi = s < 64 ? (dHi >> s) | (d16 << (64 - s)) : d16;
    writeUnpacked8(buf + ((k + 1) << 1), fHi);
    store<u16>(buf + (k << 1), CharCode.DOT);
  } else {
    store<u16>(start, CharCode.DOT, 2); // "0." prefix
  }

  let end = buf + (endPos << 1);
  if (decExp >= 0 && endPos == decExp + 1) return finishInteger(end, dotZero);
  while (end > start + 2 && load<u16>(end - 2) == CharCode._0) {
    end -= 2;
  }
  if (load<u16>(end - 2) == CharCode.DOT) {
    if (dotZero) {
      store<u16>(end, CharCode._0);
      end += 2;
    } else {
      end -= 2;
    }
  }
  return end;
}

// Exponential-notation tail. Lays the mantissa "d.ddd" (single leading digit)
// then the "e +/- d" exponent.
// @ts-ignore: decorator
@inline function writeExpNotationFloat(
  buf: usize,
  start: usize,
  decExp: i32,
  hasLastDigit: bool,
  hasExtraDigit: bool,
): usize {
  buf += usize(hasExtraDigit) << 1;
  writeUnpacked8(buf, gDigHi);
  store<u16>(buf + 16, <u32>(CharCode._0 + gLastDigit));
  buf += (hasLastDigit ? 9 : gDigits + i32(!hasExtraDigit)) << 1;
  while (buf > start + 4 && load<u16>(buf - 2) == CharCode._0) {
    buf -= 2;
  }
  // Move the lead digit to pos 0, drop '.' at pos 1.
  let lead: u32 = <u32>load<u16>(start, 2);
  store<u16>(start, lead);
  store<u16>(start, CharCode.DOT, 2);
  buf -= usize(buf - 2 == start + 2) << 1; // drop a trailing point
  return writeExponent(buf, decExp);
}

// xjb's single-multiply f32 shortest-decimal core. One hi-only pow10 multiply
// covers both regular and irregular cases, taken as a narrow 64x24 product (two
// 32-bit partial products + a shift) since the significand is < 2**24. Sets
// gSig (integral), gExp (= k), gLastDigit (the "one" digit), gHasLastDigit.
// @ts-ignore: decorator
@inline export function toDecimalFloat(binSig: u64, rawExp: i32, regular: bool): void {
  let expBin = rawExp - FLOAT_EXP_OFFSET;

  let k: i32, h: i32;
  if (regular) {
    k = (expBin * 1233) >> 12;
    h = 37 + expBin + (((-k - 1) * 1701) >> 9);
  } else {
    k = (expBin * 1233 - 512) >> 12;
    h = 37 + expBin + ((k * -1701 + (-1701)) >> 9);
  }
  let pow10Hi: u64;
  if (k >= -28 && k <= 16) {
    pow10Hi = load<u64>(POW10_SHARED + (<usize>(28 + k) << 3));
  } else {
    let lo = computePow10Compact(292 - k);
    pow10Hi = gPow10Hi + u64(lo != 0);
  }

  // hi64 = (binSig * pow10Hi) >> (64 - h), split as >> 24 (folded into the
  // partial-product combine; exact since 64 - h >= 24) then >> (40 - h).
  let t0 = (pow10Hi & 0xffffffff) * binSig;
  let t1 = (pow10Hi >> 32) * binSig + (t0 >> 32);
  let mid = (t1 << 8) | ((t0 & 0xffffffff) >> 24);
  let hi64 = mid >> (40 - h);

  let halfUlp = (pow10Hi >> (65 - h)) + (1 - (binSig & 1));
  let dotOne = hi64 & (((<u64>1) << FLOAT_BIT) - 1);
  let mUp = (hi64 + halfUlp) >> FLOAT_BIT;
  let one = <i32>((dotOne * 5 + FLOAT_ONE_BIAS + (dotOne >> 32)) >> (FLOAT_BIT - 1));

  let upDown: bool;
  if (regular) {
    upDown = mUp > ((hi64 - halfUlp) >> FLOAT_BIT);
  } else {
    // Three exact-boundary exponents need a +1 nudge to the last digit.
    if (expBin == -119 || expBin == 64 || expBin == 67) ++one;
    upDown = mUp > ((hi64 - (halfUlp >> 1)) >> FLOAT_BIT);
  }

  gSig = <i64>mUp;
  gExp = k;
  gLastDigit = one;
  gHasLastDigit = !upDown;
}

// @ts-ignore: decorator
@inline function formatDecodedFloat(buf: usize, bits: u32, binExp: i32, binSig: u64, dotZero: bool): usize {
  let neg = bits >> 31 != 0;
  const THRESHOLD: u64 = 10000000;

  let isNormal = <u32>(binExp - 1) < <u32>254;
  if (!isNormal) {
    if (binExp != 0) {
      if (binSig != 0) return writeNaN(buf);
      return writeInfinity(buf, neg);
    }
    if (binSig == 0) {
      store<u16>(buf, CharCode._0);
      return finishInteger(buf + 2, dotZero);
    }
    if (neg) {
      store<u16>(buf, CharCode.MINUS);
      buf += 2;
    }
    toDecimalFloat(binSig, 1, true);
    let decSig = gSig * 10 + (gHasLastDigit ? gLastDigit : 0);
    let decExp = gExp;
    // At most seven powers of ten are needed; apply them in 4, 2, 1 steps.
    if (<u64>decSig < 10000) {
      decSig *= 10000;
      decExp -= 4;
    }
    if (<u64>decSig < 1000000) {
      decSig *= 100;
      decExp -= 2;
    }
    if (<u64>decSig < THRESHOLD) {
      decSig *= 10;
      --decExp;
    }
    let q = <i64>(<u64>decSig / 10);
    let last = <i32>(decSig - q * 10);
    gSig = q;
    gExp = decExp;
    gLastDigit = last;
    gHasLastDigit = last != 0;
  } else {
    if (neg) {
      store<u16>(buf, CharCode.MINUS);
      buf += 2;
    }
    let q = binExp - FLOAT_EXP_OFFSET;
    if (q >= -FLOAT_SIGNIFICAND_SIZE && q < 24) {
      let c = binSig | FLOAT_HIDDEN_BIT;
      let intValue: u64 = 0;
      if (q < 0) {
        let shift = -q;
        let mask = ((<u64>1) << shift) - 1;
        if ((c & mask) == 0) intValue = c >> shift;
      } else {
        intValue = c << q;
        if (intValue > 16777216) intValue = 0;
      }
      if (intValue != 0) return finishInteger(writeUInt16(buf, intValue), dotZero);
    }
    toDecimalFloat(binSig | FLOAT_HIDDEN_BIT, binExp, binSig != 0);
  }

  let hasLastDigit = gHasLastDigit;
  let hasExtraDigit = <u64>gSig >= THRESHOLD;
  let decExp = gExp + FLOAT_MAX_DIGITS10 - 2 + i32(hasExtraDigit);

  if (<u64>gSig < 1000000) {
    gSig = 10 * gSig + (hasLastDigit ? gLastDigit : 0);
    hasLastDigit = false;
    --decExp;
  }

  let start = buf;
  toDigits32(<u64>gSig);

  if (decExp >= MIN_FIXED_DEC_EXP && decExp <= MAX_FIXED_DEC_EXP)
    return writeFixedFloat(buf, start, decExp, hasLastDigit, hasExtraDigit, dotZero);
  return writeExpNotationFloat(buf, start, decExp, hasLastDigit, hasExtraDigit);
}

export function ftoa(value: f32): string {
  let bits = reinterpret<u32>(value);
  let exp = <i32>((bits << 1) >> 24);
  let sig = <u64>(bits & FLOAT_SIGNIFICAND_MASK);

  if (exp == 255) {
    if (sig != 0) return "NaN";
    return bits >> 31 != 0 ? "-Infinity" : "Infinity";
  }
  if ((bits << 1) == 0) return "0";

  return scratchString(formatDecodedFloat(SCRATCH, bits, exp, sig, false) - SCRATCH);
}

export function ftoa_buffered(buffer: usize, value: f32): u32 {
  let bits = reinterpret<u32>(value);
  let binExp = <i32>((bits << 1) >> 24);
  let binSig = <u64>(bits & FLOAT_SIGNIFICAND_MASK);
  return <u32>((formatDecodedFloat(buffer, bits, binExp, binSig, true) - buffer) >> 1);
}
