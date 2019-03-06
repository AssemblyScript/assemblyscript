import {
  CharCode,
  allocateUnsafe as allocateUnsafeString,
  freeUnsafe as freeUnsafeString,
  HEADER_SIZE as STRING_HEADER_SIZE
} from "./string";

import {
  LOAD
} from "./arraybuffer";

@inline export const MAX_DOUBLE_LENGTH = 28;

@lazy @inline const POWERS10: u32[] = [
  1,
  10,
  100,
  1000,
  10000,
  100000,
  1000000,
  10000000,
  100000000,
  1000000000
];

/*
  Lookup table for pairwise char codes in range [0-99]

  "00", "01", "02", "03", "04", "05", "06", "07", "08", "09",
  "10", "11", "12", "13", "14", "15", "16", "17", "18", "19",
  "20", "21", "22", "23", "24", "25", "26", "27", "28", "29",
  "30", "31", "32", "33", "34", "35", "36", "37", "38", "39",
  "40", "41", "42", "43", "44", "45", "46", "47", "48", "49",
  "50", "51", "52", "53", "54", "55", "56", "57", "58", "59",
  "60", "61", "62", "63", "64", "65", "66", "67", "68", "69",
  "70", "71", "72", "73", "74", "75", "76", "77", "78", "79",
  "80", "81", "82", "83", "84", "85", "86", "87", "88", "89",
  "90", "91", "92", "93", "94", "95", "96", "97", "98", "99"
*/
@lazy @inline const DIGITS: u32[] = [
  0x00300030, 0x00310030, 0x00320030, 0x00330030, 0x00340030,
  0x00350030, 0x00360030, 0x00370030, 0x00380030, 0x00390030,
  0x00300031, 0x00310031, 0x00320031, 0x00330031, 0x00340031,
  0x00350031, 0x00360031, 0x00370031, 0x00380031, 0x00390031,
  0x00300032, 0x00310032, 0x00320032, 0x00330032, 0x00340032,
  0x00350032, 0x00360032, 0x00370032, 0x00380032, 0x00390032,
  0x00300033, 0x00310033, 0x00320033, 0x00330033, 0x00340033,
  0x00350033, 0x00360033, 0x00370033, 0x00380033, 0x00390033,
  0x00300034, 0x00310034, 0x00320034, 0x00330034, 0x00340034,
  0x00350034, 0x00360034, 0x00370034, 0x00380034, 0x00390034,
  0x00300035, 0x00310035, 0x00320035, 0x00330035, 0x00340035,
  0x00350035, 0x00360035, 0x00370035, 0x00380035, 0x00390035,
  0x00300036, 0x00310036, 0x00320036, 0x00330036, 0x00340036,
  0x00350036, 0x00360036, 0x00370036, 0x00380036, 0x00390036,
  0x00300037, 0x00310037, 0x00320037, 0x00330037, 0x00340037,
  0x00350037, 0x00360037, 0x00370037, 0x00380037, 0x00390037,
  0x00300038, 0x00310038, 0x00320038, 0x00330038, 0x00340038,
  0x00350038, 0x00360038, 0x00370038, 0x00380038, 0x00390038,
  0x00300039, 0x00310039, 0x00320039, 0x00330039, 0x00340039,
  0x00350039, 0x00360039, 0x00370039, 0x00380039, 0x00390039
];

@lazy @inline const EXP_POWERS: i16[] = [
  -1220, -1193, -1166, -1140, -1113, -1087, -1060, -1034, -1007,  -980,
   -954,  -927,  -901,  -874,  -847,  -821,  -794,  -768,  -741,  -715,
   -688,  -661,  -635,  -608,  -582,  -555,  -529,  -502,  -475,  -449,
   -422,  -396,  -369,  -343,  -316,  -289,  -263,  -236,  -210,  -183,
   -157,  -130,  -103,   -77,   -50,   -24,     3,    30,    56,    83,
    109,   136,   162,   189,   216,   242,   269,   295,   322,   348,
    375,   402,   428,   455,   481,   508,   534,   561,   588,   614,
    641,   667,   694,   720,   747,   774,   800,   827,   853,   880,
    907,   933,   960,   986,  1013,  1039,  1066
];

// 1e-348, 1e-340, ..., 1e340
@lazy @inline const FRC_POWERS: u64[] = [
  0xFA8FD5A0081C0288, 0xBAAEE17FA23EBF76, 0x8B16FB203055AC76, 0xCF42894A5DCE35EA,
  0x9A6BB0AA55653B2D, 0xE61ACF033D1A45DF, 0xAB70FE17C79AC6CA, 0xFF77B1FCBEBCDC4F,
  0xBE5691EF416BD60C, 0x8DD01FAD907FFC3C, 0xD3515C2831559A83, 0x9D71AC8FADA6C9B5,
  0xEA9C227723EE8BCB, 0xAECC49914078536D, 0x823C12795DB6CE57, 0xC21094364DFB5637,
  0x9096EA6F3848984F, 0xD77485CB25823AC7, 0xA086CFCD97BF97F4, 0xEF340A98172AACE5,
  0xB23867FB2A35B28E, 0x84C8D4DFD2C63F3B, 0xC5DD44271AD3CDBA, 0x936B9FCEBB25C996,
  0xDBAC6C247D62A584, 0xA3AB66580D5FDAF6, 0xF3E2F893DEC3F126, 0xB5B5ADA8AAFF80B8,
  0x87625F056C7C4A8B, 0xC9BCFF6034C13053, 0x964E858C91BA2655, 0xDFF9772470297EBD,
  0xA6DFBD9FB8E5B88F, 0xF8A95FCF88747D94, 0xB94470938FA89BCF, 0x8A08F0F8BF0F156B,
  0xCDB02555653131B6, 0x993FE2C6D07B7FAC, 0xE45C10C42A2B3B06, 0xAA242499697392D3,
  0xFD87B5F28300CA0E, 0xBCE5086492111AEB, 0x8CBCCC096F5088CC, 0xD1B71758E219652C,
  0x9C40000000000000, 0xE8D4A51000000000, 0xAD78EBC5AC620000, 0x813F3978F8940984,
  0xC097CE7BC90715B3, 0x8F7E32CE7BEA5C70, 0xD5D238A4ABE98068, 0x9F4F2726179A2245,
  0xED63A231D4C4FB27, 0xB0DE65388CC8ADA8, 0x83C7088E1AAB65DB, 0xC45D1DF942711D9A,
  0x924D692CA61BE758, 0xDA01EE641A708DEA, 0xA26DA3999AEF774A, 0xF209787BB47D6B85,
  0xB454E4A179DD1877, 0x865B86925B9BC5C2, 0xC83553C5C8965D3D, 0x952AB45CFA97A0B3,
  0xDE469FBD99A05FE3, 0xA59BC234DB398C25, 0xF6C69A72A3989F5C, 0xB7DCBF5354E9BECE,
  0x88FCF317F22241E2, 0xCC20CE9BD35C78A5, 0x98165AF37B2153DF, 0xE2A0B5DC971F303A,
  0xA8D9D1535CE3B396, 0xFB9B7CD9A4A7443C, 0xBB764C4CA7A44410, 0x8BAB8EEFB6409C1A,
  0xD01FEF10A657842C, 0x9B10A4E5E9913129, 0xE7109BFBA19C0C9D, 0xAC2820D9623BF429,
  0x80444B5E7AA7CF85, 0xBF21E44003ACDD2D, 0x8E679C2F5E44FF8F, 0xD433179D9C8CB841,
  0x9E19DB92B4E31BA9, 0xEB96BF6EBADF77D9, 0xAF87023B9BF0EE6B
];

// Count number of decimals for u32 values
// In our case input value always non-zero so we can simplify some parts
export function decimalCount32(value: u32): u32 {
  if (ASC_SHRINK_LEVEL >= 1) {
    let l: u32 = 32 - clz<u32>(value); // log2
    let t = l * 1233 >>> 12; // log10

    let lutbuf = <ArrayBuffer>POWERS10.buffer_;
    let power  = LOAD<u32>(lutbuf, t);
    t -= <u32>(value < power);
    return t + 1;
  } else {
    if (value < 100000) {
      if (value < 100) {
        return select<u32>(1, 2, value < 10);
      } else {
        let m = select<u32>(4, 5, value < 10000);
        return select<u32>(3, m, value < 1000);
      }
    } else {
      if (value < 10000000) {
        return select<u32>(6, 7, value < 1000000);
      } else {
        let m = select<u32>(9, 10, value < 1000000000);
        return select<u32>(8, m, value < 100000000);
      }
    }
  }
}

// Count number of decimals for u64 values
// In our case input value always greater than 2^32-1 so we can skip some parts
export function decimalCount64(value: u64): u32 {
  if (ASC_SHRINK_LEVEL >= 1) {
    let l: u32 = 64 - <u32>clz<u64>(value); // log2
    let t = l * 1233 >>> 12; // log10

    let lutbuf = <ArrayBuffer>POWERS10.buffer_;
    let power  = LOAD<u32,u64>(lutbuf, t - 10);
    t -= <u32>(value < 10000000000 * power);
    return t + 1;
  } else {
    if (value < 1000000000000000) {
      if (value < 1000000000000) {
        return select<u32>(11, 12, value < 100000000000);
      } else {
        let m = select<u32>(14, 15, value < 100000000000000);
        return select<u32>(13, m, value < 10000000000000);
      }
    } else {
      if (value < 100000000000000000) {
        return select<u32>(16, 17, value < 10000000000000000);
      } else {
        let m = select<u32>(19, 20, value < 10000000000000000000);
        return select<u32>(18, m, value < 1000000000000000000);
      }
    }
  }
}

function utoa32_lut(buffer: usize, num: u32, offset: usize): void {
  var lutbuf = <ArrayBuffer>DIGITS.buffer_;

  while (num >= 10000) {
    // in most VMs i32/u32 div and modulo by constant can be shared and simplificate
    let t = num / 10000;
    let r = num % 10000;
    num = t;

    let d1 = r / 100;
    let d2 = r % 100;

    let digits1 = LOAD<u32,u64>(lutbuf, d1);
    let digits2 = LOAD<u32,u64>(lutbuf, d2);

    offset -= 4;
    store<u64>(buffer + (offset << 1), digits1 | (digits2 << 32), STRING_HEADER_SIZE);
  }

  if (num >= 100) {
    let t  = num / 100;
    let d1 = num % 100;
    num = t;
    offset -= 2;
    let digits = LOAD<u32>(lutbuf, d1);
    store<u32>(buffer + (offset << 1), digits, STRING_HEADER_SIZE);
  }

  if (num >= 10) {
    offset -= 2;
    let digits = LOAD<u32>(lutbuf, num);
    store<u32>(buffer + (offset << 1), digits, STRING_HEADER_SIZE);
  } else {
    offset -= 1;
    let digit = CharCode._0 + num;
    store<u16>(buffer + (offset << 1), digit, STRING_HEADER_SIZE);
  }
}

function utoa64_lut(buffer: usize, num: u64, offset: usize): void {
  var lutbuf = <ArrayBuffer>DIGITS.buffer_;

  while (num >= 100000000) {
    let t = num / 100000000;
    let r = <usize>(num - t * 100000000);
    num = t;

    let b = r / 10000;
    let c = r % 10000;

    let b1 = b / 100;
    let b2 = b % 100;
    let c1 = c / 100;
    let c2 = c % 100;

    let digits1 = LOAD<u32,u64>(lutbuf, c1);
    let digits2 = LOAD<u32,u64>(lutbuf, c2);

    offset -= 4;
    store<u64>(buffer + (offset << 1), digits1 | (digits2 << 32), STRING_HEADER_SIZE);

    digits1 = LOAD<u32,u64>(lutbuf, b1);
    digits2 = LOAD<u32,u64>(lutbuf, b2);

    offset -= 4;
    store<u64>(buffer + (offset << 1), digits1 | (digits2 << 32), STRING_HEADER_SIZE);
  }

  utoa32_lut(buffer, <u32>num, offset);
}

function utoa_simple<T>(buffer: usize, num: T, offset: usize): void {
  do {
    let t = num / 10;
    let r = <u32>(num % 10);
    num = t;
    offset -= 1;
    store<u16>(buffer + (offset << 1), CharCode._0 + r, STRING_HEADER_SIZE);
  } while (num);
}

@inline
export function utoa32_core(buffer: usize, num: u32, offset: u32): void {
  if (ASC_SHRINK_LEVEL >= 1) {
    utoa_simple(buffer, num, offset);
  } else {
    utoa32_lut(buffer, num, offset);
  }
}

@inline
export function utoa64_core(buffer: usize, num: u64, offset: u32): void {
  if (ASC_SHRINK_LEVEL >= 1) {
    utoa_simple(buffer, num, offset);
  } else {
    utoa64_lut(buffer, num, offset);
  }
}

export function utoa32(value: u32): String {
  if (!value) return "0";

  var decimals = decimalCount32(value);
  var buffer   = allocateUnsafeString(decimals);

  utoa32_core(changetype<usize>(buffer), value, decimals);
  return buffer;
}

export function itoa32(value: i32): String {
  if (!value) return "0";

  var sign = value < 0;
  if (sign) value = -value;

  var decimals = decimalCount32(value) + <u32>sign;
  var buffer   = allocateUnsafeString(decimals);

  utoa32_core(changetype<usize>(buffer), value, decimals);
  if (sign) store<u16>(changetype<usize>(buffer), CharCode.MINUS, STRING_HEADER_SIZE);

  return buffer;
}

export function utoa64(value: u64): String {
  if (!value) return "0";

  var buffer: String;
  if (value <= u32.MAX_VALUE) {
    let val32    = <u32>value;
    let decimals = decimalCount32(val32);
    buffer = allocateUnsafeString(decimals);
    utoa32_core(changetype<usize>(buffer), val32, decimals);
  } else {
    let decimals = decimalCount64(value);
    buffer = allocateUnsafeString(decimals);
    utoa64_core(changetype<usize>(buffer), value, decimals);
  }
  return buffer;
}

export function itoa64(value: i64): String {
  if (!value) return "0";

  var sign = value < 0;
  if (sign) value = -value;

  var buffer: String;
  if (<u64>value <= <u64>u32.MAX_VALUE) {
    let val32    = <u32>value;
    let decimals = decimalCount32(val32) + <u32>sign;
    buffer = allocateUnsafeString(decimals);
    utoa32_core(changetype<usize>(buffer), val32, decimals);
  } else {
    let decimals = decimalCount64(value) + <u32>sign;
    buffer = allocateUnsafeString(decimals);
    utoa64_core(changetype<usize>(buffer), value, decimals);
  }
  if (sign) store<u16>(changetype<usize>(buffer), CharCode.MINUS, STRING_HEADER_SIZE);

  return buffer;
}

export function itoa<T>(value: T): String {
  if (!isInteger<T>()) {
    assert(false); // unexpecteble non-integer generic type
  } else {
    if (isSigned<T>()) {
      if (sizeof<T>() <= 4) {
        return itoa32(<i32>value);
      } else {
        return itoa64(<i64>value);
      }
    } else {
      if (sizeof<T>() <= 4) {
        return utoa32(<u32>value);
      } else {
        return utoa64(<u64>value);
      }
    }
  }
}

@lazy var _K: i32 = 0;
// @lazy var _frc: u64 = 0;
@lazy var _exp: i32 = 0;
@lazy var _frc_minus: u64 = 0;
@lazy var _frc_plus:  u64 = 0;
@lazy var _frc_pow: u64 = 0;
@lazy var _exp_pow: i32 = 0;

@inline
function umul64f(u: u64, v: u64): u64 {
  var u0 = u & 0xFFFFFFFF;
  var v0 = v & 0xFFFFFFFF;

  var u1 = u >> 32;
  var v1 = v >> 32;

  var l = u0 * v0;
  var t = u1 * v0 + (l >> 32);
  var w = u0 * v1 + (t & 0xFFFFFFFF);

  w += 0x7FFFFFFF; // rounding

  t >>= 32;
  w >>= 32;

  return u1 * v1 + t + w;
}

@inline
function umul64e(e1: i32, e2: i32): i32 {
  return e1 + e2 + 64; // where 64 is significand size
}

@inline
function normalizedBoundaries(f: u64, e: i32): void {
  var frc = (f << 1) + 1;
  var exp = e - 1;
  var off = <i32>clz<u64>(frc);
  frc <<= off;
  exp  -= off;

  var m = 1 + <i32>(f == 0x0010000000000000);

  _frc_plus  = frc;
  _frc_minus = ((f << m) - 1) << e - m - exp;
  _exp = exp;
}

@inline
function grisuRound(buffer: usize, len: i32, delta: u64, rest: u64, ten_kappa: u64, wp_w: u64): void {
  var lastp = buffer + ((len - 1) << 1);
  var digit = load<u16>(lastp, STRING_HEADER_SIZE);
  while (
    rest < wp_w &&
    delta - rest >= ten_kappa && (
      rest + ten_kappa < wp_w ||
      wp_w - rest > rest + ten_kappa - wp_w
    )
  ) {
    --digit;
    rest += ten_kappa;
  }
  store<u16>(lastp, digit, STRING_HEADER_SIZE);
}

@inline
function getCachedPower(minExp: i32): void {
  const c = reinterpret<f64>(0x3FD34413509F79FE); // 1 / lg(10) = 0.30102999566398114
  var dk = (-61 - minExp) * c + 347;	            // dk must be positive, so can do ceiling in positive
  var k = <i32>dk;
      k += <i32>(k != dk); // conversion with ceil

  var index = (k >> 3) + 1;
  _K = 348 - (index << 3);	// decimal exponent no need lookup table
  var frcPowers = <ArrayBuffer>FRC_POWERS.buffer_;
  var expPowers = <ArrayBuffer>EXP_POWERS.buffer_;
  _frc_pow = LOAD<u64>(frcPowers, index);
  _exp_pow = LOAD<i16,i32>(expPowers, index);
}

@inline
function grisu2(value: f64, buffer: usize, sign: i32): i32 {

  // frexp routine
  var uv  = reinterpret<u64>(value);
  var exp = <i32>((uv & 0x7FF0000000000000) >>> 52);
  var sid = uv & 0x000FFFFFFFFFFFFF;
  var frc = (<u64>(exp != 0) << 52) + sid;
      exp = select<i32>(exp, 1, exp != 0) - (0x3FF + 52);

  normalizedBoundaries(frc, exp);
  getCachedPower(_exp);

  // normalize
  var off = <i32>clz<u64>(frc);
  frc <<= off;
  exp  -= off;

  var frc_pow = _frc_pow;
  var exp_pow = _exp_pow;

  var w_frc = umul64f(frc, frc_pow);
  var w_exp = umul64e(exp, exp_pow);

  var wp_frc = umul64f(_frc_plus, frc_pow) - 1;
  var wp_exp = umul64e(_exp,      exp_pow);

  var wm_frc = umul64f(_frc_minus, frc_pow) + 1;
  var delta  = wp_frc - wm_frc;

  return genDigits(buffer, w_frc, w_exp, wp_frc, wp_exp, delta, sign);
}

function genDigits(buffer: usize, w_frc: u64, w_exp: i32, mp_frc: u64, mp_exp: i32, delta: u64, sign: i32): i32 {
  var one_exp = -mp_exp;
  var one_frc = (<u64>1) << one_exp;
  var mask    = one_frc - 1;

  var wp_w_frc = mp_frc - w_frc;
  var wp_w_exp = mp_exp;

  var p1 = <u32>(mp_frc >> one_exp);
  var p2 = mp_frc & mask;

  var kappa = <i32>decimalCount32(p1);
  var len = sign;

  var powers10 = <ArrayBuffer>POWERS10.buffer_;

  while (kappa > 0) {
    let d: u32;
    switch (kappa) {
      case 10: { d = p1 / 1000000000; p1 %= 1000000000; break; }
      case  9: { d = p1 /  100000000; p1 %=  100000000; break; }
      case  8: { d = p1 /   10000000; p1 %=   10000000; break; }
      case  7: { d = p1 /    1000000; p1 %=    1000000; break; }
      case  6: { d = p1 /     100000; p1 %=     100000; break; }
      case  5: { d = p1 /      10000; p1 %=      10000; break; }
      case  4: { d = p1 /       1000; p1 %=       1000; break; }
      case  3: { d = p1 /        100; p1 %=        100; break; }
      case  2: { d = p1 /         10; p1 %=         10; break; }
      case  1: { d = p1;              p1 =           0; break; }
      default: { d = 0; break; }
    }

    if (d | len) store<u16>(buffer + (len++ << 1), CharCode._0 + <u16>d, STRING_HEADER_SIZE);

    --kappa;
    let tmp = ((<u64>p1) << one_exp) + p2;
    if (tmp <= delta) {
      _K += kappa;
      grisuRound(buffer, len, delta, tmp, LOAD<u32,u64>(powers10, kappa) << one_exp, wp_w_frc);
      return len;
    }
  }

  while (1) {
    p2    *= 10;
    delta *= 10;

    let d = p2 >> one_exp;
    if (d | len) store<u16>(buffer + (len++ << 1), CharCode._0 + <u16>d, STRING_HEADER_SIZE);

    p2 &= mask;
    --kappa;
    if (p2 < delta) {
      _K += kappa;
      wp_w_frc *= LOAD<u32,u64>(powers10, -kappa);
      grisuRound(buffer, len, delta, p2, one_frc, wp_w_frc);
      return len;
    }
  }

  return len;
}

@inline
function genExponent(buffer: usize, k: i32): i32 {
  var sign = k < 0;
  if (sign) k = -k;
  var decimals = decimalCount32(k) + 1;
  utoa32_core(buffer, k, decimals);
  store<u16>(buffer, <u16>select<u32>(CharCode.MINUS, CharCode.PLUS, sign), STRING_HEADER_SIZE);
  return decimals;
}

function prettify(buffer: usize, length: i32, k: i32): i32 {
  if (!k) {
    store<u32>(buffer + (length << 1), CharCode.DOT | (CharCode._0 << 16), STRING_HEADER_SIZE);
    return length + 2;
  }

  var kk = length + k;
  if (length <= kk && kk <= 21) {
    // 1234e7 -> 12340000000
    for (let i = length; i < kk; ++i) {
      store<u16>(buffer + (i << 1), CharCode._0, STRING_HEADER_SIZE);
    }
    store<u32>(buffer + (kk << 1), CharCode.DOT | (CharCode._0 << 16), STRING_HEADER_SIZE);
    return kk + 2;
  } else if (kk > 0 && kk <= 21) {
    // 1234e-2 -> 12.34
    let ptr = buffer + (kk << 1);
    memory.copy(
      ptr + STRING_HEADER_SIZE + 2,
      ptr + STRING_HEADER_SIZE,
      -k << 1
    );
    store<u16>(buffer + (kk << 1), CharCode.DOT, STRING_HEADER_SIZE);
    return length + 1;
  } else if (-6 < kk && kk <= 0) {
    // 1234e-6 -> 0.001234
    let offset = 2 - kk;
    memory.copy(
      buffer + STRING_HEADER_SIZE + (offset << 1),
      buffer + STRING_HEADER_SIZE,
      length << 1
    );
    store<u32>(buffer, CharCode._0 | (CharCode.DOT << 16), STRING_HEADER_SIZE);
    for (let i = 2; i < offset; ++i) {
      store<u16>(buffer + (i << 1), CharCode._0, STRING_HEADER_SIZE);
    }
    return length + offset;
  } else if (length == 1) {
    // 1e30
    store<u16>(buffer, CharCode.e, STRING_HEADER_SIZE + 2);
    length = genExponent(buffer + 4, kk - 1);
    return length + 2;
  } else {
    let len = length << 1;
    memory.copy(
      buffer + STRING_HEADER_SIZE + 4,
      buffer + STRING_HEADER_SIZE + 2,
      len - 2
    );
    store<u16>(buffer,       CharCode.DOT, STRING_HEADER_SIZE + 2);
    store<u16>(buffer + len, CharCode.e,   STRING_HEADER_SIZE + 2);
    length += genExponent(buffer + len + 4, kk - 1);
    return length + 2;
  }
}

export function dtoa_core(buffer: usize, value: f64): i32 {
  var sign = <i32>(value < 0);
  if (sign) {
    value = -value;
    store<u16>(buffer, CharCode.MINUS, STRING_HEADER_SIZE);
  }
  // assert(value > 0 && value <= 1.7976931348623157e308);
  var len = grisu2(value, buffer, sign);
      len = prettify(buffer + (sign << 1), len - sign, _K);
  return len + sign;
}

export function dtoa(value: f64): String {
  if (value == 0) return "0.0";
  if (!isFinite(value)) {
    if (isNaN(value)) return "NaN";
    return select<String>("-Infinity", "Infinity", value < 0);
  }
  var buffer = allocateUnsafeString(MAX_DOUBLE_LENGTH);
  var length = dtoa_core(changetype<usize>(buffer), value);
  var result = buffer.substring(0, length);
  freeUnsafeString(buffer);
  return result;
}

export function itoa_stream<T>(buffer: usize, offset: usize, value: T): u32 {
  buffer += (offset << 1);
  if (!value) {
    store<u16>(buffer, CharCode._0, STRING_HEADER_SIZE);
    return 1;
  }
  var decimals: u32 = 0;
  if (isSigned<T>()) {
    let sign = value < 0;
    if (sign) value = -value;
    if (sizeof<T>() <= 4) {
      decimals = decimalCount32(value) + <u32>sign;
      utoa32_core(buffer, value, decimals);
    } else {
      if (<u64>value <= <u64>u32.MAX_VALUE) {
        let val32 = <u32>value;
        decimals = decimalCount32(val32) + <u32>sign;
        utoa32_core(buffer, val32, decimals);
      } else {
        decimals = decimalCount64(value) + <u32>sign;
        utoa64_core(buffer, value, decimals);
      }
    }
    if (sign) store<u16>(buffer, CharCode.MINUS, STRING_HEADER_SIZE);
  } else {
    if (sizeof<T>() <= 4) {
      decimals = decimalCount32(value);
      utoa32_core(buffer, value, decimals);
    } else {
      if (<u64>value <= <u64>u32.MAX_VALUE) {
        let val32 = <u32>value;
        decimals = decimalCount32(val32);
        utoa32_core(buffer, val32, decimals);
      } else {
        decimals = decimalCount64(value);
        utoa64_core(buffer, value, decimals);
      }
    }
  }
  return decimals;
}

export function dtoa_stream(buffer: usize, offset: usize, value: f64): u32 {
  buffer += (offset << 1);
  if (value == 0.0) {
    store<u16>(buffer, CharCode._0,  STRING_HEADER_SIZE + 0);
    store<u16>(buffer, CharCode.DOT, STRING_HEADER_SIZE + 2);
    store<u16>(buffer, CharCode._0,  STRING_HEADER_SIZE + 4);
    return 3;
  }
  if (!isFinite(value)) {
    if (isNaN(value)) {
      store<u16>(buffer, CharCode.N, STRING_HEADER_SIZE + 0);
      store<u16>(buffer, CharCode.a, STRING_HEADER_SIZE + 2);
      store<u16>(buffer, CharCode.N, STRING_HEADER_SIZE + 4);
      return 3;
    } else {
      let sign = <i32>(value < 0);
      let len  = 8 + sign;
      let source = changetype<usize>(select<String>("-Infinity", "Infinity", sign));
      memory.copy(buffer + STRING_HEADER_SIZE, source + STRING_HEADER_SIZE, len << 1);
      return len;
    }
  }
  return dtoa_core(buffer, value);
}
