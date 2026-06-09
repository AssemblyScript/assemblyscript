// ECMAScript-compatible f32 -> string (ftoa). Self-contained port of xjb's
// hi-only-multiply f32 shortest-decimal core (no f64 machinery, so an f32-only
// build stays ~3 KB).

// @ts-expect-error: may exist
const HAS_SIMD: bool = isDefined(XJB_SIMD) ? <bool>XJB_SIMD : (isDefined(ASC_FEATURE_SIMD) && ASC_FEATURE_SIMD);

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

const DIV10K_EXP = 40;
const DIV10K_SIG: u64 = ((<u64>1) << DIV10K_EXP) / 10000 + 1;
const NEG10K: u64 = ((<u64>1) << 32) - 10000;

const DIV100_EXP = 19;
const DIV100_SIG: u64 = (1 << DIV100_EXP) / 100 + 1;
const NEG100: u64 = (1 << 16) - 100;

const DIV10_EXP = 10;
const DIV10_SIG: u64 = (1 << DIV10_EXP) / 10 + 1;
const NEG10: u64 = (1 << 8) - 10;

const ZEROS: u64 = 0x3030303030303030;
const DIGIT_PAIRS = memory.data<u16>([
  0x3030, 0x3130, 0x3230, 0x3330, 0x3430, 0x3530, 0x3630, 0x3730, 0x3830, 0x3930,
  0x3031, 0x3131, 0x3231, 0x3331, 0x3431, 0x3531, 0x3631, 0x3731, 0x3831, 0x3931,
  0x3032, 0x3132, 0x3232, 0x3332, 0x3432, 0x3532, 0x3632, 0x3732, 0x3832, 0x3932,
  0x3033, 0x3133, 0x3233, 0x3333, 0x3433, 0x3533, 0x3633, 0x3733, 0x3833, 0x3933,
  0x3034, 0x3134, 0x3234, 0x3334, 0x3434, 0x3534, 0x3634, 0x3734, 0x3834, 0x3934,
  0x3035, 0x3135, 0x3235, 0x3335, 0x3435, 0x3535, 0x3635, 0x3735, 0x3835, 0x3935,
  0x3036, 0x3136, 0x3236, 0x3336, 0x3436, 0x3536, 0x3636, 0x3736, 0x3836, 0x3936,
  0x3037, 0x3137, 0x3237, 0x3337, 0x3437, 0x3537, 0x3637, 0x3737, 0x3837, 0x3937,
  0x3038, 0x3138, 0x3238, 0x3338, 0x3438, 0x3538, 0x3638, 0x3738, 0x3838, 0x3938,
  0x3039, 0x3139, 0x3239, 0x3339, 0x3439, 0x3539, 0x3639, 0x3739, 0x3839, 0x3939,
]);

let gBcd: u64 = 0;
let gBcdLen: i32 = 0;

// Converts a value < 1e8 to 8 packed BCD digits ('a' in the low byte)
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

// to_digits<32> result: ASCII digits + significant digit count.
export let gDigHi: u64 = 0;
export let gDigNum: i32 = 0;

// Unsigned 16-bit multiply-high across all 8 lanes (= _mm_mulhi_epu16).
// @ts-expect-error: decorator
@inline function mulhiU16(a: v128, b: v128): v128 {
  const lo = i32x4.shr_u(i32x4.extmul_low_i16x8_u(a, b), 16);
  const hi = i32x4.shr_u(i32x4.extmul_high_i16x8_u(a, b), 16);
  return i16x8.narrow_i32x4_u(lo, hi);
}

// Converts four 4-digit values (one per i32 lane) into 16 BCD bytes, where byte
// i holds the 10**i digit.
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
  if (HAS_SIMD) return toDigits32Simd(value);
  toBcd8(value);
  gDigHi = gBcd + ZEROS;
  gDigNum = gBcdLen;
}

export let gSig: i64 = 0;
export let gExp: i32 = 0;
export let gLastDigit: i32 = 0;
export let gHasLastDigit: bool = false;

const FLOAT_EXP_OFFSET = 150; // exp_bias(127) + num_sig_bits(23)
const FLOAT_BIT = 36; // xjb's fixed-point split for the f32 core
// xjb's c1, ASCII offset stripped so the `one` digit comes out numeric.
const FLOAT_ONE_BIAS: u64 = ((<u64>1) << (FLOAT_BIT - 2)) - 7;

// Fixed notation when decExp (= decimal-point position - 1) is in [-6, 20].
const MIN_FIXED_DEC_EXP = -6;
const MAX_FIXED_DEC_EXP = 20;

export const FLOAT_MAX_DIGITS10 = 9;

// Eight packed ASCII digits in a u64 -> 8 UTF-16 code units (16 bytes) at
// `p + off`. SIMD zero-extends the bytes to u16 lanes in one store.
// @ts-expect-error: decorator
@inline function putBlock8(p: usize, ascii: u64, off: usize = 0): void {
  const base = p + off;
  if (HAS_SIMD) {
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
@inline function writeNaN(buf: usize): usize {
  store<u16>(buf, 0x4e); store<u16>(buf, 0x61, 2); store<u16>(buf, 0x4e, 4); // "NaN"
  return buf + 6;
}
// @ts-expect-error: decorator
@inline function writeInfinity(buf: usize, neg: bool): usize {
  if (neg) { store<u16>(buf, 0x2d); buf += 2; }
  putBlock8(buf, 0x7974696e69666e49); // "Infinity" little-endian
  return buf + 16;
}

// Fixed-notation tail: 8-digit significand block (gDigHi) plus an optional 9th
// ("extra") digit.
// @ts-expect-error: decorator
@inline function writeFixed(
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
@inline function writeExpNotation(
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

// Writes "e +/- d" / "e +/- dd" / "e +/- ddd" exponent.
// @ts-expect-error: decorator
@inline function writeExponent(buf: usize, decExp: i32): usize {
  // m is all-ones when decExp < 0
  const m = decExp >> 31; // all-ones if decExp < 0
  store<u16>(buf, 0x65); // 'e'
  store<u16>(buf, 0x2b + (m & 2), 2); // '+' / '-' branchlessly
  buf += 4;
  const e = (decExp ^ m) - m; // abs(decExp); always < 100 for f32
  if (e >= 10) {
    const pair = <u32>load<u16>(DIGIT_PAIRS + (<usize>e << 1));
    store<u16>(buf, pair & 0xff);
    store<u16>(buf, pair >> 8, 2);
    return buf + 4;
  }
  store<u16>(buf, 0x30 + e);
  return buf + 2;
}

// Scratch for the allocating path: format UTF-16 here, then copy the exact byte
// length out. Oversized (128 B) so the block writers can overshoot the logical end.
const SCRATCH = memory.data(128);

// @ts-expect-error: decorator
@inline function scratchString(byteLen: usize): string {
  // @ts-expect-error: runtime
  const str = changetype<string>(__new(byteLen, idof<string>()));
  memory.copy(changetype<usize>(str), SCRATCH, byteLen);
  return str;
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
    return writeFixed(buf, start, decExp, hasLastDigit, hasExtraDigit);
  return writeExpNotation(buf, start, decExp, hasLastDigit, hasExtraDigit);
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
