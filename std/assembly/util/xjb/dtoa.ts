// ECMAScript-compatible f64 -> string (dtoa). xjb64 v2 shortest-decimal core for
// doubles; shared machinery lives in xjb.ts.
import {
  mulhi64, umul128AddHi64, computeDecExp, computeExpShift,
  EXTRA_SHIFT, DOUBLE_EXP_OFFSET, BIASED_HALF, DOUBLE_MAX_DIGITS10,
  MIN_FIXED_DEC_EXP, MAX_FIXED_DEC_EXP,
  gPow10Hi, gPow10Lo, loadPow10Xjb64, loadPow10HiXjb64,
  gSig, gExp, gLastDigit, gHasLastDigit,
  toDigits64, POW10_SMALL, DIGIT_PAIRS,
  writeNaN, writeInfinity, writeFixed, writeExpNotation, SCRATCH, scratchString,
} from "./xjb";

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
    const pair = <u32>load<u16>(DIGIT_PAIRS + (<usize>(v - q * 100) << 1));
    p -= 4;
    store<u16>(p, pair & 0xff);
    store<u16>(p, pair >> 8, 2);
    v = q;
  }
  if (v >= 10) {
    const pair = <u32>load<u16>(DIGIT_PAIRS + (<usize>v << 1));
    store<u16>(buf, pair & 0xff);
    store<u16>(buf, pair >> 8, 2);
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
  const mul = load<u64>(POW10_SMALL + (<usize>scale << 3));
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
