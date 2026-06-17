import { POWERS10 } from "./string";
import { DIGITS } from "./number";

// High 64 bits of the 128-bit product x * y. Matches umul128.
// @ts-expect-error: decorator
@inline export function mulhi64(a: u64, b: u64): u64 {
  const a0 = a & 0xffffffff, a1 = a >> 32;
  const b0 = b & 0xffffffff, b1 = b >> 32;
  const w0 = a0 * b0;
  const t = a1 * b0 + (w0 >> 32);
  let w1 = t & 0xffffffff;
  const w2 = t >> 32;
  w1 = a0 * b1 + w1;
  return a1 * b1 + w2 + (w1 >> 32);
}

// Returns (x * y + c) >> 64.
// @ts-expect-error: decorator
@inline export function umul128AddHi64(x: u64, y: u64, c: u64): u64 {
  const lo = x * y;
  const hi = mulhi64(x, y);
  return hi + u64(lo + c < lo);
}

// floor(log10(2**bin_exp)). (The f64 path only ever needs the regular form; the
// irregular 3/4 variant lives in ftoa.ts's own copy.)
// @ts-expect-error: decorator
@inline export function computeDecExp(binExp: i32): i32 {
  const log10_2_sig = 315653, log10_2_exp = 20;
  return (binExp * log10_2_sig) >> log10_2_exp;
}

// Shift that keeps a fixed 128-bit fractional part after scaling by 10**dec_exp.
// @ts-expect-error: decorator
@inline export function computeExpShift(binExp: i32, decExp: i32): i32 {
  const log2_pow10_sig = 217707, log2_pow10_exp = 16;
  const pow10BinExp = (-decExp * log2_pow10_sig) >> log2_pow10_exp;
  return binExp + pow10BinExp + 1;
}

export let gPow10Hi: u64 = 0;
export let gPow10Lo: u64 = 0;

// Compact pow10 (Dougall Johnson's method, ported from vitaut/zmij)
// 10**i = top-128-bits(major[(i+10)/28] * minor[(i+10)%28]) minus a per-power round-down bit.

// 28 normalized exact powers 10**0..10**27 - the within-stride minor factors.
const POW10_MINOR = memory.data<u64>([
  0x8000000000000000, 0xa000000000000000, 0xc800000000000000, 0xfa00000000000000,
  0x9c40000000000000, 0xc350000000000000, 0xf424000000000000, 0x9896800000000000,
  0xbebc200000000000, 0xee6b280000000000, 0x9502f90000000000, 0xba43b74000000000,
  0xe8d4a51000000000, 0x9184e72a00000000, 0xb5e620f480000000, 0xe35fa931a0000000,
  0x8e1bc9bf04000000, 0xb1a2bc2ec5000000, 0xde0b6b3a76400000, 0x8ac7230489e80000,
  0xad78ebc5ac620000, 0xd8d726b7177a8000, 0x878678326eac9000, 0xa968163f0a57b400,
  0xd3c21bcecceda100, 0x84595161401484a0, 0xa56fa5b99019a5c8, 0xcecb8f27f4200f3a,
]);

// 23 full 128-bit anchors (hi, lo) spaced every 28 powers, covering 10**-303..10**313.
const POW10_MAJOR = memory.data<u64>([
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
const POW10_FIXUPS = memory.data<u32>([
  0x0a4e363f, 0x00001840, 0x00006400, 0x24200040, 0x00000000,
  0x0c000000, 0x82c81380, 0x5e4ce01f, 0xd730f60f, 0x0000001b,
  0x00000000, 0xcdf7fffc, 0x6e8201d8, 0x40cd3fd1, 0xdb642501,
  0x00000d0d, 0x14042400, 0x53713840, 0x11781db4, 0x00000000,
]);

// Rebuild gPow10Hi/gPow10Lo for table index i in [0,617]: the top 128 bits of
// major[(i+10)/28] * minor[(i+10)%28], normalized left if the top bit is clear,
// then the per-power fixup bit subtracted off the low limb.
// @ts-expect-error: decorator
@inline function computePow10(i: i32): void {
  const m = load<u64>(POW10_MINOR + (<usize>((i + 10) % 28) << 3));
  const hoff = POW10_MAJOR + (<usize>((i + 10) / 28) << 4);
  const hHi = load<u64>(hoff);
  const hLo = load<u64>(hoff, 8);

  // 192-bit product major * minor as c2:c1:c0, keep the top 128 bits (c2:c1).
  const h1 = mulhi64(hLo, m);
  const c0 = hLo * m;
  const c1 = h1 + hHi * m;
  const c2 = u64(c1 < h1) + mulhi64(hHi, m);

  let hi: u64, lo: u64;
  if ((c2 >> 63) != 0) {
    hi = c2; lo = c1;
  } else {
    hi = (c2 << 1) | (c1 >> 63);
    lo = (c1 << 1) | (c0 >> 63);
  }
  lo -= <u64>((load<u32>(POW10_FIXUPS + (<usize>(i >> 5) << 2)) >> (i & 31)) & 1);
  gPow10Hi = hi;
  gPow10Lo = lo;
}

// xjb64 v2 rounds up the negative-power low limb by one.
// @ts-expect-error: decorator
@inline export function loadPow10Xjb64(power: i32): void {
  computePow10(power + 293);
  gPow10Lo += u64(power < 0);
}

// @ts-expect-error: decorator
@inline export function loadPow10HiXjb64(power: i32): u64 {
  computePow10(power + 293);
  return gPow10Hi;
}

const DIV10K_EXP = 40;
const DIV10K_SIG: u64 = ((<u64>1) << DIV10K_EXP) / 10000 + 1;
const NEG10K: u64 = ((<u64>1) << 32) - 10000;
const DIV100_EXP = 19;
const DIV100_SIG: u64 = (1 << DIV100_EXP) / 100 + 1;
const NEG100: u64 = (1 << 16) - 100;
const DIV10_EXP = 10;
const DIV10_SIG: u64 = (1 << DIV10_EXP) / 10 + 1;
const NEG10: u64 = (1 << 8) - 10;
export const ZEROS: u64 = 0x3030303030303030;

let gBcd: u64 = 0;
let gBcdLen: i32 = 0;

// value < 1e8 -> 8 packed BCD digits (SWAR: divide-by-const reciprocals).
function toBcd8(abcdefgh: u64): void {
  const abcd_efgh = abcdefgh + NEG10K * ((abcdefgh * DIV10K_SIG) >> DIV10K_EXP);
  const ab_cd_ef_gh =
    abcd_efgh + NEG100 * (((abcd_efgh * DIV100_SIG) >> DIV100_EXP) & 0x7f0000007f);
  const a_b_c_d_e_f_g_h =
    ab_cd_ef_gh + NEG10 * (((ab_cd_ef_gh * DIV10_SIG) >> DIV10_EXP) & 0xf000f000f000f);
  const bcd = bswap<u64>(a_b_c_d_e_f_g_h);
  gBcd = bcd;
  gBcdLen = <i32>((70 - clz<u64>((bcd << 1) | 1)) / 8);
}

// to_digits<64> result: two u64 of ASCII digits + significant digit count.
export let gDigHi: u64 = 0;
export let gDigLo: u64 = 0;
export let gDigNum: i32 = 0;

// Unsigned 16-bit multiply-high across all 8 lanes (= _mm_mulhi_epu16).
// @ts-expect-error: decorator
@inline function mulhiU16(a: v128, b: v128): v128 {
  const lo = i32x4.shr_u(i32x4.extmul_low_i16x8_u(a, b), 16);
  const hi = i32x4.shr_u(i32x4.extmul_high_i16x8_u(a, b), 16);
  return i16x8.narrow_i32x4_u(lo, hi);
}

// Four 4-digit lanes -> 16 BCD bytes (byte i = 10**i digit).
// @ts-expect-error: decorator
@inline function toBcd4x4(y: v128): v128 {
  const div100 = i32x4.splat(<i32>DIV100_SIG); // 5243
  const div10v = i16x8.splat(6554); // (1 << 16) / 10 + 1
  const neg100v = i32x4.splat(65436); // (1 << 16) - 100
  const neg10v = i16x8.splat(246); // (1 << 8) - 10
  const t = i32x4.shr_u(mulhiU16(y, div100), 3);
  const z = i32x4.add(y, i32x4.mul(neg100v, t));
  return i16x8.add(z, i16x8.mul(neg10v, mulhiU16(z, div10v)));
}

// Pack the low 32 bits of each i64 lane into adjacent i32 lanes 0,1 (zero the
// rest), so a single-input swizzle replaces a two-input shuffle.
// @ts-expect-error: decorator
@inline function packLo32(v: v128): v128 {
  return v128.swizzle(v, i8x16(0, 1, 2, 3, 8, 9, 10, 11, -128, -128, -128, -128, -128, -128, -128, -128));
}

// SIMD version of toDigits64: builds all 16 ASCII digits in one pass.
// @ts-expect-error: decorator
@inline function toDigits64Simd(value: u64): void {
  const hi = value / 100000000;
  const lo = value - hi * 100000000;

  const x = i64x2.replace_lane(i64x2.splat(lo), 1, hi);

  const q = i64x2.shr_u(
    i64x2.extmul_low_i32x4_u(packLo32(x), i32x4.splat(<i32>DIV10K_SIG)), DIV10K_EXP);
  const sub = i64x2.extmul_low_i32x4_u(packLo32(q), i32x4.splat(-10000));
  const y = i64x2.add(x, sub);

  const bcd = toBcd4x4(y);

  const mask = i8x16.bitmask(i8x16.gt_s(bcd, i8x16.splat(0)));
  gDigNum = 16 - ctz(mask); // mask is never 0 (significand >= 1)

  const ascii = v128.or(
    v128.swizzle(bcd, i8x16(15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0)),
    i8x16.splat(0x30));
  gDigHi = i64x2.extract_lane(ascii, 0);
  gDigLo = i64x2.extract_lane(ascii, 1);
}

// SWAR version of toDigits64: two register-parallel to_bcd8 passes over u64.
// @ts-expect-error: decorator
@inline function toDigits64Swar(value: u64): void {
  const hi = value / 100000000;
  const lo = value - hi * 100000000;
  toBcd8(hi);
  const hiBcd = gBcd, hiLen = gBcdLen;
  if (lo == 0) {
    gDigHi = hiBcd + ZEROS;
    gDigLo = ZEROS;
    gDigNum = hiLen;
    return;
  }
  toBcd8(lo);
  gDigHi = hiBcd + ZEROS;
  gDigLo = gBcd + ZEROS;
  gDigNum = 8 + gBcdLen;
}

// @ts-expect-error: decorator
@inline export function toDigits64(value: u64): void {
  if (ASC_FEATURE_SIMD) return toDigits64Simd(value);
  toDigits64Swar(value);
}

export let gSig: i64 = 0;
export let gExp: i32 = 0;
export let gLastDigit: i32 = 0;
export let gHasLastDigit: bool = false;

export const DOUBLE_EXP_OFFSET = 1075; // exp_bias(1023) + num_sig_bits(52)
export const EXTRA_SHIFT = 6;
export const BIASED_HALF: u64 = ((<u64>1) << 63) + 6;
export const DOUBLE_MAX_DIGITS10 = 17;
// Fixed notation when decExp (= decimal-point position - 1) is in [-6, 20].
export const MIN_FIXED_DEC_EXP = -6;
export const MAX_FIXED_DEC_EXP = 20;

// Eight packed ASCII digits in a u64 -> 8 UTF-16 code units (16 bytes) at
// `p + off`. SIMD zero-extends the bytes to u16 lanes in one store.
// @ts-expect-error: decorator
@inline export function putBlock8(p: usize, ascii: u64, off: usize = 0): void {
  const base = p + off;
  if (ASC_FEATURE_SIMD) {
    v128.store(base, i16x8.extend_low_i8x16_u(i64x2.splat(ascii)));
  } else {
    store<u16>(base, <u16>(ascii & 0xff));
    store<u16>(base, <u16>((ascii >> 8) & 0xff), 2);
    store<u16>(base, <u16>((ascii >> 16) & 0xff), 4);
    store<u16>(base, <u16>((ascii >> 24) & 0xff), 6);
    store<u16>(base, <u16>((ascii >> 32) & 0xff), 8);
    store<u16>(base, <u16>((ascii >> 40) & 0xff), 10);
    store<u16>(base, <u16>((ascii >> 48) & 0xff), 12);
    store<u16>(base, <u16>(ascii >> 56), 14);
  }
}

// ECMAScript spellings for the non-finite cases.
// @ts-expect-error: decorator
@inline export function writeNaN(buf: usize): usize {
  store<u16>(buf, 0x4e); store<u16>(buf, 0x61, 2); store<u16>(buf, 0x4e, 4); // "NaN"
  return buf + 6;
}

// @ts-expect-error: decorator
@inline export function writeInfinity(buf: usize, neg: bool): usize {
  if (neg) { store<u16>(buf, 0x2d); buf += 2; }
  putBlock8(buf, 0x7974696e69666e49); // "Infinity" little-endian
  return buf + 16;
}

// f64 fixed-notation layout: a full 16-digit block (gDigHi:gDigLo) plus a 17th
// digit (always, so no leading-'0' fold or bcdSize param like the f32 path).
// @ts-expect-error: decorator
@inline export function writeFixed(
  buf: usize,
  start: usize,
  decExp: i32,
  hasLastDigit: bool,
): usize {
  if (decExp < 0) putBlock8(start, ZEROS);
  const lastDigitChar = <u64>(0x30 + (hasLastDigit ? gLastDigit : 0));
  const numDigits = hasLastDigit ? 16 : gDigNum - 1;
  const dHi = gDigHi, dLo = gDigLo;

  // decExp >= 16: integer rendered as significant digits then trailing zeros.
  if (decExp >= 16) {
    putBlock8(buf, dHi);
    putBlock8(buf, dLo, 16);
    store<u16>(buf + 32, <u32>lastDigitChar);
    const endByte = buf + ((decExp + 1) << 1);
    for (let z = buf + (17 << 1); z < endByte; z += 16) putBlock8(z, ZEROS);
    return endByte;
  }

  // Everything reaching here has a fractional part (exact integers < 1e16 are
  // absorbed by writeUInt16 upstream), so n > decExp + 1 and output is "int.frac".
  const n = numDigits + 1;
  const endPos = decExp >= 0 ? n + 1 : n;

  // Branchless `decExp < 0 ? 1 - decExp : 0` (decExp >> 31 is all-ones if < 0).
  const startPos = (1 - decExp) & (decExp >> 31);

  buf += startPos << 1;
  putBlock8(buf, dHi);
  putBlock8(buf, dLo, 16);
  store<u16>(buf + 32, <u32>lastDigitChar);

  if (decExp >= 0) {
    // Place '.' after k integer digits with no memmove: re-store the digits
    // shifted right by k chars (fractional part at [k+1,...]), then drop '.' at k.
    const k = decExp + 1;
    const d16: u64 = lastDigitChar;
    const s = k << 3;
    let fHi: u64, fLo: u64;
    if (s < 64) {
      fHi = (dHi >> s) | (dLo << (64 - s));
      fLo = (dLo >> s) | (d16 << (64 - s));
    } else if (s == 64) {
      fHi = dLo; fLo = d16;
    } else if (s < 128) {
      const s2 = s - 64;
      fHi = (dLo >> s2) | (d16 << (64 - s2));
      fLo = d16 >> s2;
    } else {
      fHi = d16; fLo = 0;
    }
    putBlock8(buf + ((k + 1) << 1), fHi);
    // fLo's window starts at char k + 9; skip it if the output ends before there.
    if (endPos > k + 9) putBlock8(buf + ((k + 9) << 1), fLo);
    store<u16>(buf + (k << 1), 0x2e);
  } else {
    store<u16>(start, 0x2e, 2); // "0." prefix
  }

  return buf + (endPos << 1);
}

// Exponential-notation tail. Lays the mantissa "d.ddd" (single leading digit)
// then the "e +/- d" exponent.
// @ts-expect-error: decorator
@inline export function writeExpNotation(
  buf: usize,
  start: usize,
  decExp: i32,
  hasLastDigit: bool,
  hasExtraDigit: bool,
  bcdSize: i32,
): usize {
  buf += usize(hasExtraDigit) << 1;
  putBlock8(buf, gDigHi);
  if (bcdSize == 16) putBlock8(buf, gDigLo, 16);
  store<u16>(buf + (bcdSize << 1), <u32>(0x30 + gLastDigit));
  buf += (hasLastDigit ? bcdSize + 1 : gDigNum) << 1;
  // Move the lead digit to pos 0, drop '.' at pos 1.
  const lead: u32 = <u32>load<u16>(start, 2);
  store<u16>(start, lead);
  store<u16>(start, 0x2e, 2);
  buf -= usize(buf - 2 == start + 2) << 1; // drop a trailing point
  return writeExponent(buf, decExp);
}

// Writes "e +/- d" / "e +/- dd" / "e +/- ddd" exponent.
// @ts-expect-error: decorator
@inline export function writeExponent(buf: usize, decExp: i32): usize {
  const m = decExp >> 31; // all-ones if decExp < 0
  store<u16>(buf, 0x65); // 'e'
  store<u16>(buf, 0x2b + (m & 2), 2); // '+' / '-' branchlessly
  buf += 4;
  const e = (decExp ^ m) - m; // abs(decExp)
  if (e >= 100) {
    const d = (<u32>e * <u32>DIV100_SIG) >> DIV100_EXP; // e / 100
    store<u16>(buf, 0x30 + d);
    store<u32>(buf, load<u32>(DIGITS + (<usize>(e - <i32>d * 100) << alignof<u32>())), 2);
    return buf + 6;
  }
  if (e >= 10) {
    store<u32>(buf, load<u32>(DIGITS + (<usize>e << alignof<u32>())));
    return buf + 4;
  }
  store<u16>(buf, 0x30 + e);
  return buf + 2;
}

export const SCRATCH = memory.data(128);

// @ts-expect-error: decorator
@inline export function scratchString(byteLen: usize): string {
  const str = changetype<string>(__new(byteLen, idof<string>()));
  memory.copy(changetype<usize>(str), SCRATCH, byteLen);
  return str;
}

// @ts-expect-error: decorator
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
// @ts-expect-error: decorator
@inline function toDecimalDoubleNormal(binSig: u64, rawExp: i32, regular: bool): void {
  const c = binSig | ((<u64>1) << 52);
  const q = rawExp - DOUBLE_EXP_OFFSET;

  if (!regular) {
    const decExp = (q * 315653 - 131072) >> 20;
    const powExp = -decExp - 1;
    const h = q + ((powExp * 217707) >> 16);

    const pow10Hi = loadPow10HiXjb64(powExp);

    const integral = pow10Hi >> (11 - h);
    const halfUlp = pow10Hi >> (-h);
    const dotOne = pow10Hi << (53 + h);

    let one = ((((dotOne >> (53 + h)) * 5) + (((<u64>1) << (9 - h)))) >> (10 - h));
    one = ((((dotOne >> 54) * 5) & 0x1ff) > ((halfUlp >> 55) * 5))
      ? ((((dotOne >> 54) * 5) >> 9) + 1)
      : one;
    one = dotOne == ((<u64>1) << 62) ? 2 : one;
    one = (halfUlp >> 1) > dotOne ? 0 : one;
    one = halfUlp > ~(<u64>0) - dotOne ? 10 : one;

    setDecimalResult(integral, one, decExp);
    return;
  }

  const decExp = ((rawExp - DOUBLE_EXP_OFFSET) * 78913) >> 18;
  const powExp = -decExp - 1;
  const h = q + ((powExp * 217707) >> 16);
  const shift = h + 1 + EXTRA_SHIFT;

  loadPow10Xjb64(powExp);
  const pHi = gPow10Hi, pLo = gPow10Lo;
  const y = c << shift;

  const a = mulhi64(pHi, y);
  const plo64 = pHi * y;
  const lo = plo64 + mulhi64(pLo, y);
  const p_hi = a + u64(lo < plo64);

  const integral = p_hi >> EXTRA_SHIFT;
  const dotOne = (p_hi << (64 - EXTRA_SHIFT)) | (lo >> EXTRA_SHIFT);
  const halfUlp = (pHi >> (-h)) + <u64>(1 - (c & 1));

  let one = umul128AddHi64(dotOne, 10, dotOne == ((<u64>1) << 62) ? 0 : BIASED_HALF);
  one = dotOne < halfUlp ? 0 : one;
  one = ~(<u64>0) - dotOne < halfUlp ? 10 : one;

  setDecimalResult(integral, one, decExp);
}

// bin_sig * 2**(raw_exp - exp_offset) -> shortest decimal.
// @ts-expect-error: decorator
@inline export function toDecimalDouble(binSig: u64, rawExp: i32, regular: bool): void {
  if (rawExp != 0) return toDecimalDoubleNormal(binSig, rawExp, regular);

  const decExp = computeDecExp(-1074);
  const shift = computeExpShift(-1074, decExp + 1) + EXTRA_SHIFT;

  loadPow10Xjb64(-decExp - 1);
  const pHi = gPow10Hi, pLo = gPow10Lo;
  const y = binSig << shift;

  const a = mulhi64(pHi, y);
  const plo64 = pHi * y;
  const lo = plo64 + mulhi64(pLo, y);
  const p_hi = a + u64(lo < plo64);

  const integral = p_hi >> EXTRA_SHIFT;
  const dotOne = (p_hi << (64 - EXTRA_SHIFT)) | (lo >> EXTRA_SHIFT);
  const halfUlp = (pHi >> (EXTRA_SHIFT + 1 - shift)) + <u64>(1 - (binSig & 1));

  let one = umul128AddHi64(dotOne, 10, BIASED_HALF);
  one = dotOne < halfUlp ? 0 : one;
  one = ~(<u64>0) - dotOne < halfUlp ? 10 : one;

  setDecimalResult(integral, one, decExp);
}

// @ts-expect-error: decorator
@inline function decimalLen15(v: u64): i32 {
  if (v < 100000000) {
    if (v < 10000) {
      if (v < 100) return v < 10 ? 1 : 2;
      return v < 1000 ? 3 : 4;
    }
    if (v < 1000000) return v < 100000 ? 5 : 6;
    return v < 10000000 ? 7 : 8;
  }
  if (v < 1000000000000) {
    if (v < 10000000000) return v < 1000000000 ? 9 : 10;
    return v < 100000000000 ? 11 : 12;
  }
  if (v < 100000000000000) return v < 10000000000000 ? 13 : 14;
  return 15;
}

// @ts-expect-error: decorator
@inline function decimalLen16(v: u64): i32 {
  return v < 1000000000000000 ? decimalLen15(v) : 16;
}

// @ts-expect-error: decorator
@inline function writeUInt16(buf: usize, value: u64): usize {
  const len = decimalLen16(value);
  let p = buf + (<usize>len << 1);
  let v = value;
  while (v >= 100) {
    const q = v / 100;
    p -= 4;
    store<u32>(p, load<u32>(DIGITS + (<usize>(v - q * 100) << alignof<u32>())));
    v = q;
  }
  if (v >= 10) {
    store<u32>(buf, load<u32>(DIGITS + (<usize>v << alignof<u32>())));
  } else {
    store<u16>(buf, 0x30 + <u32>v);
  }
  return buf + (<usize>len << 1);
}

// @ts-expect-error: decorator
@inline function normalizeDoubleShortest(): void {
  const full = <u64>gSig * 10 + <u64>(gHasLastDigit ? gLastDigit : 0);
  if (full >= 1000000000000000) {
    gSig = <i64>full;
    --gExp;
    gLastDigit = 0;
    gHasLastDigit = false;
    return;
  }
  const scale = 16 - decimalLen15(full);
  const mul = <u64>load<f64>(POWERS10 + (<usize>scale << 3));
  gSig = <i64>(full * mul);
  gExp -= scale + 1;
  gLastDigit = 0;
  gHasLastDigit = false;
}

// @ts-expect-error: decorator
@inline function formatDecodedDouble(buf: usize, bits: u64, binExp: i32, binSig: u64): usize {
  const neg = bits >> 63 != 0;
  const threshold: u64 = 1000000000000000;

  // is_normal: 1 <= bin_exp <= 2046
  const isNormal = <u32>(binExp - 1) < <u32>2046;
  if (!isNormal) {
    if (binExp != 0) {
      if (binSig != 0) return writeNaN(buf);
      return writeInfinity(buf, neg);
    }
    if (binSig == 0) { store<u16>(buf, 0x30); return buf + 2; } // +/-0 -> "0"
  }

  if (neg) { store<u16>(buf, 0x2d); buf += 2; }
  if (isNormal) {
    const q = binExp - DOUBLE_EXP_OFFSET;
    const c = binSig | ((<u64>1) << 52);
    let intValue: u64 = 0;
    if (q < 0) {
      const shift = -q;
      if (shift <= 52) {
        const mask = ((<u64>1) << shift) - 1;
        if ((c & mask) == 0) intValue = c >> shift;
      }
    } else if (q < 11) {
      intValue = c << q;
      if (intValue >= 10000000000000000) intValue = 0;
    }
    if (intValue != 0) return writeUInt16(buf, intValue);
  }

  if (isNormal) {
    toDecimalDoubleNormal(binSig, binExp, binSig != 0);
  } else {
    toDecimalDouble(binSig, 0, true);
  }
  if (<u64>gSig < threshold) normalizeDoubleShortest();

  const hasLastDigit = gHasLastDigit;
  const hasExtraDigit = <u64>gSig >= threshold;
  const decExp = gExp + DOUBLE_MAX_DIGITS10 - 2 + i32(hasExtraDigit);
  const start = buf;
  toDigits64(<u64>gSig);
  if (decExp >= MIN_FIXED_DEC_EXP && decExp <= MAX_FIXED_DEC_EXP)
    return writeFixed(buf, start, decExp, hasLastDigit);
  return writeExpNotation(buf, start, decExp, hasLastDigit, hasExtraDigit, 16);
}

// @ts-expect-error: decorator
@inline function formatDouble(buf: usize, value: f64): usize {
  const bits = reinterpret<u64>(value);
  const binExp = <i32>((bits << 1) >> 53);
  const binSig = bits & (((<u64>1) << 52) - 1);
  return formatDecodedDouble(buf, bits, binExp, binSig);
}

export function dtoa(value: f64): string {
  const bits = reinterpret<u64>(value);
  const exp = <i32>((bits << 1) >> 53);
  const sig = bits & (((<u64>1) << 52) - 1);

  if (exp == 2047) {
    if (sig != 0) return "NaN";
    return bits >> 63 != 0 ? "-Infinity" : "Infinity";
  }
  if ((bits << 1) == 0) return "0";

  return scratchString(formatDecodedDouble(SCRATCH, bits, exp, sig) - SCRATCH);
}

export function dtoa_buffered(buffer: usize, value: f64): u32 {
  return <u32>((formatDouble(buffer, value) - buffer) >> 1);
}

// hi-only significand of 10**i, 77 entries (index = 45 + k, k in [-45,31]) with
// the xjb64 +1 low-limb rounding folded in. One hi-only multiply covers both the
// regular and power-of-two paths.
const POW10_FLOAT_HI = memory.data<u64>([
  0x8f7e32ce7bea5c70, 0xe596b7b0c643c71a, 0xb7abc627050305ae, 0x92efd1b8d0cf37bf,
  0xeb194f8e1ae525fe, 0xbc143fa4e250eb32, 0x96769950b50d88f5, 0xf0bdc21abb48db21,
  0xc097ce7bc90715b4, 0x9a130b963a6c115d, 0xf684df56c3e01bc7, 0xc5371912364ce306,
  0x9dc5ada82b70b59e, 0xfc6f7c4045812297, 0xc9f2c9cd04674edf, 0xa18f07d736b90be6,
  0x813f3978f8940985, 0xcecb8f27f4200f3a, 0xa56fa5b99019a5c8, 0x84595161401484a0,
  0xd3c21bcecceda100, 0xa968163f0a57b400, 0x878678326eac9000, 0xd8d726b7177a8000,
  0xad78ebc5ac620000, 0x8ac7230489e80000, 0xde0b6b3a76400000, 0xb1a2bc2ec5000000,
  0x8e1bc9bf04000000, 0xe35fa931a0000000, 0xb5e620f480000000, 0x9184e72a00000000,
  0xe8d4a51000000000, 0xba43b74000000000, 0x9502f90000000000, 0xee6b280000000000,
  0xbebc200000000000, 0x9896800000000000, 0xf424000000000000, 0xc350000000000000,
  0x9c40000000000000, 0xfa00000000000000, 0xc800000000000000, 0xa000000000000000,
  0x8000000000000000, 0xcccccccccccccccd, 0xa3d70a3d70a3d70b, 0x83126e978d4fdf3c,
  0xd1b71758e219652c, 0xa7c5ac471b478424, 0x8637bd05af6c69b6, 0xd6bf94d5e57a42bd,
  0xabcc77118461cefd, 0x89705f4136b4a598, 0xdbe6fecebdedd5bf, 0xafebff0bcb24aaff,
  0x8cbccc096f5088cc, 0xe12e13424bb40e14, 0xb424dc35095cd810, 0x901d7cf73ab0acda,
  0xe69594bec44de15c, 0xb877aa3236a4b44a, 0x9392ee8e921d5d08, 0xec1e4a7db69561a6,
  0xbce5086492111aeb, 0x971da05074da7bef, 0xf1c90080baf72cb2, 0xc16d9a0095928a28,
  0x9abe14cd44753b53, 0xf79687aed3eec552, 0xc612062576589ddb, 0x9e74d1b791e07e49,
  0xfd87b5f28300ca0e, 0xcad2f7f5359a3b3f, 0xa2425ff75e14fc32, 0x81ceb32c4b43fcf5,
  0xcfb11ead453994bb,
]);

// Precomputed regular-path shift h = 37 + exp_bin + floor((-k-1)*log2(10)),
// indexed by raw biased exponent (a byte load instead of a multiply).
const H37 = memory.data<u8>([
  34, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34,
  35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36, 34,
  35, 36, 33, 34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35, 36,
  34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36,
  34, 35, 36, 33, 34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35,
  36, 34, 35, 36, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36, 34, 35,
  36, 33, 34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35, 36, 34,
  35, 36, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36, 34, 35, 36, 33,
  34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36,
  34, 35, 36, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36, 34, 35, 36,
  33, 34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35, 36, 34, 35,
  36, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34,
  35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36, 34,
  35, 36, 33, 34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35, 36,
  34, 35, 36, 34, 35, 36, 33, 34, 35, 36, 34, 35, 36, 34, 35, 36,
  33, 34, 35, 36, 34, 35, 36, 34, 35, 36, 34, 35, 36, 33, 34, 35,
]);

const FLOAT_EXP_OFFSET = 150; // exp_bias(127) + num_sig_bits(23)
const FLOAT_BIT = 36; // xjb's fixed-point split for the f32 core
// xjb's c1, ASCII offset stripped so the `one` digit comes out numeric.
const FLOAT_ONE_BIAS: u64 = ((<u64>1) << (FLOAT_BIT - 2)) - 7;

export const FLOAT_MAX_DIGITS10 = 9;

// @ts-expect-error: decorator
@inline function toDigits32Simd(value: u64): void {
  const abcd_efgh = value + NEG10K * ((value * DIV10K_SIG) >> DIV10K_EXP);
  const x = i64x2.replace_lane(i64x2.splat(abcd_efgh), 1, 0);
  const bcd = toBcd4x4(x); // bytes 0-7 = 10**0..10**7 digits
  const low = i64x2.extract_lane(bcd, 0);
  gDigHi = bswap<u64>(low) + ZEROS;
  gDigNum = 8 - <i32>(ctz(low) >> 3); // low is never 0 (significand >= 1)
}

// to_digits<32>: a single u64 of 8 ASCII digits (value < 1e8).
// @ts-expect-error: decorator
@inline export function toDigits32(value: u64): void {
  if (ASC_FEATURE_SIMD) return toDigits32Simd(value);
  toBcd8(value);
  gDigHi = gBcd + ZEROS;
  gDigNum = gBcdLen;
}

// Fixed-notation tail: 8-digit significand block (gDigHi) plus an optional 9th
// ("extra") digit.
// @ts-expect-error: decorator
@inline function writeFixedFloat(
  buf: usize,
  start: usize,
  decExp: i32,
  hasLastDigit: bool,
  hasExtraDigit: bool,
): usize {
  if (decExp < 0) putBlock8(start, ZEROS);
  const lastDigitChar = <u64>(0x30 + (hasLastDigit ? gLastDigit : 0));
  const numDigits = hasLastDigit ? 8 : gDigNum - 1;

  // !hasExtraDigit: gSig has a leading '0'; shift it out and fold the last digit
  // into the freed low slot, so the block is exactly 8 chars (no memmove).
  let dHi = gDigHi;
  if (!hasExtraDigit) {
    dHi = (dHi >> 8) | (lastDigitChar << 56);
  }

  // decExp >= 8: integer rendered as significant digits then trailing zeros.
  if (decExp >= 8) {
    putBlock8(buf, dHi);
    if (hasExtraDigit) store<u16>(buf + 16, <u32>lastDigitChar);
    const sig = 8 + i32(hasExtraDigit);
    const endByte = buf + ((decExp + 1) << 1);
    for (let z = buf + (sig << 1); z < endByte; z += 16) putBlock8(z, ZEROS);
    return endByte;
  }

  const n = numDigits + i32(hasExtraDigit);
  const endPos = decExp >= 0 ? (n > decExp + 1 ? n + 1 : decExp + 1) : n;

  // Branchless `decExp < 0 ? 1 - decExp : 0` (decExp >> 31 is all-ones if < 0).
  const startPos = (1 - decExp) & (decExp >> 31);

  buf += startPos << 1;
  putBlock8(buf, dHi);
  if (hasExtraDigit) store<u16>(buf + 16, <u32>lastDigitChar);

  if (decExp >= 0) {
    // Place '.' after k integer digits with no memmove: re-store the digits
    // shifted right by k chars (fractional part at [k+1,...]), then drop '.' at k.
    const k = decExp + 1;
    const d16: u64 = hasExtraDigit ? lastDigitChar : 0;
    const s = k << 3;
    const fHi = s < 64 ? (dHi >> s) | (d16 << (64 - s)) : d16;
    putBlock8(buf + ((k + 1) << 1), fHi);
    store<u16>(buf + (k << 1), 0x2e);
  } else {
    store<u16>(start, 0x2e, 2); // "0." prefix
  }

  return buf + (endPos << 1);
}

// Exponential-notation tail. Lays the mantissa "d.ddd" (single leading digit)
// then the "e +/- d" exponent.
// @ts-expect-error: decorator
@inline function writeExpNotationFloat(
  buf: usize,
  start: usize,
  decExp: i32,
  hasLastDigit: bool,
  hasExtraDigit: bool,
): usize {
  buf += usize(hasExtraDigit) << 1;
  putBlock8(buf, gDigHi);
  store<u16>(buf + 16, <u32>(0x30 + gLastDigit));
  buf += (hasLastDigit ? 9 : gDigNum) << 1;
  // Move the lead digit to pos 0, drop '.' at pos 1.
  const lead: u32 = <u32>load<u16>(start, 2);
  store<u16>(start, lead);
  store<u16>(start, 0x2e, 2);
  buf -= usize(buf - 2 == start + 2) << 1; // drop a trailing point
  return writeExponent(buf, decExp);
}

// xjb's single-multiply f32 shortest-decimal core. One hi-only pow10 multiply
// covers both regular and irregular cases, taken as a narrow 64x24 product (two
// 32-bit partial products + a shift) since the significand is < 2**24. Sets
// gSig (integral), gExp (= k), gLastDigit (the "one" digit), gHasLastDigit.
// @ts-expect-error: decorator
@inline export function toDecimalFloat(binSig: u64, rawExp: i32, regular: bool): void {
  const expBin = rawExp - FLOAT_EXP_OFFSET;

  let k: i32, h: i32;
  if (regular) {
    k = (expBin * 1233) >> 12;
    h = <i32>load<u8>(H37 + rawExp);
  } else {
    k = (expBin * 1233 - 512) >> 12;
    h = 37 + expBin + ((k * -1701 + (-1701)) >> 9);
  }
  const pow10Hi = load<u64>(POW10_FLOAT_HI + ((45 + k) << 3));

  // hi64 = (binSig * pow10Hi) >> (64 - h), split as >> 24 (folded into the
  // partial-product combine; exact since 64 - h >= 24) then >> (40 - h).
  const t0 = (pow10Hi & 0xffffffff) * binSig;
  const t1 = (pow10Hi >> 32) * binSig + (t0 >> 32);
  const mid = (t1 << 8) | ((t0 & 0xffffffff) >> 24);
  const hi64 = mid >> (40 - h);

  const halfUlp = (pow10Hi >> (65 - h)) + (1 - (binSig & 1));
  const dotOne = hi64 & (((<u64>1) << FLOAT_BIT) - 1);
  const mUp = (hi64 + halfUlp) >> FLOAT_BIT;
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

// @ts-expect-error: decorator
@inline function formatDecodedFloat(buf: usize, bits: u32, binExp: i32, binSig: u64): usize {
  const neg = bits >> 31 != 0;
  const threshold: u64 = 10000000;

  const isNormal = <u32>(binExp - 1) < <u32>254;
  if (!isNormal) {
    if (binExp != 0) {
      if (binSig != 0) return writeNaN(buf);
      return writeInfinity(buf, neg);
    }
    if (binSig == 0) { store<u16>(buf, 0x30); return buf + 2; }
    if (neg) { store<u16>(buf, 0x2d); buf += 2; }
    toDecimalFloat(binSig, 1, true);
    let decSig = gSig * 10 + (gHasLastDigit ? gLastDigit : 0);
    let decExp = gExp;
    while (<u64>decSig < threshold) {
      decSig *= 10;
      --decExp;
    }
    const q = <i64>(<u64>decSig / 10);
    const last = <i32>(decSig - q * 10);
    gSig = q;
    gExp = decExp;
    gLastDigit = last;
    gHasLastDigit = last != 0;
  } else {
    if (neg) { store<u16>(buf, 0x2d); buf += 2; }
    toDecimalFloat(binSig | ((<u64>1) << 23), binExp, binSig != 0);
  }

  let hasLastDigit = gHasLastDigit;
  const hasExtraDigit = <u64>gSig >= threshold;
  let decExp = gExp + FLOAT_MAX_DIGITS10 - 2 + i32(hasExtraDigit);

  if (<u64>gSig < 1000000) {
    gSig = 10 * gSig + (hasLastDigit ? gLastDigit : 0);
    hasLastDigit = false;
    --decExp;
  }

  const start = buf;
  toDigits32(<u64>gSig);

  if (decExp >= MIN_FIXED_DEC_EXP && decExp <= MAX_FIXED_DEC_EXP)
    return writeFixedFloat(buf, start, decExp, hasLastDigit, hasExtraDigit);
  return writeExpNotationFloat(buf, start, decExp, hasLastDigit, hasExtraDigit);
}

export function ftoa(value: f32): string {
  const bits = reinterpret<u32>(value);
  const exp = <i32>((bits << 1) >> 24);
  const sig = <u64>(bits & (((<u32>1) << 23) - 1));

  if (exp == 255) {
    if (sig != 0) return "NaN";
    return bits >> 31 != 0 ? "-Infinity" : "Infinity";
  }
  if ((bits << 1) == 0) return "0";

  return scratchString(formatDecodedFloat(SCRATCH, bits, exp, sig) - SCRATCH);
}

export function ftoa_buffered(buffer: usize, value: f32): u32 {
  const bits = reinterpret<u32>(value);
  const binExp = <i32>((bits << 1) >> 24);
  const binSig = <u64>(bits & (((<u32>1) << 23) - 1));
  return <u32>((formatDecodedFloat(buffer, bits, binExp, binSig) - buffer) >> 1);
}
