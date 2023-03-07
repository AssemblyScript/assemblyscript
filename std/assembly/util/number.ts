/// <reference path="../rt/index.d.ts" />

import { idof } from "../builtins";
import { CharCode } from "./string";

// @ts-ignore: decorator
@inline
export const MAX_DOUBLE_LENGTH = 28;

// @ts-ignore: decorator
@lazy @inline const POWERS10 = memory.data<u32>([
  1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000,
]);

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
// @ts-ignore: decorator
@lazy @inline const DIGITS = memory.data<u32>([
  0x00300030, 0x00310030, 0x00320030, 0x00330030, 0x00340030, 0x00350030,
  0x00360030, 0x00370030, 0x00380030, 0x00390030, 0x00300031, 0x00310031,
  0x00320031, 0x00330031, 0x00340031, 0x00350031, 0x00360031, 0x00370031,
  0x00380031, 0x00390031, 0x00300032, 0x00310032, 0x00320032, 0x00330032,
  0x00340032, 0x00350032, 0x00360032, 0x00370032, 0x00380032, 0x00390032,
  0x00300033, 0x00310033, 0x00320033, 0x00330033, 0x00340033, 0x00350033,
  0x00360033, 0x00370033, 0x00380033, 0x00390033, 0x00300034, 0x00310034,
  0x00320034, 0x00330034, 0x00340034, 0x00350034, 0x00360034, 0x00370034,
  0x00380034, 0x00390034, 0x00300035, 0x00310035, 0x00320035, 0x00330035,
  0x00340035, 0x00350035, 0x00360035, 0x00370035, 0x00380035, 0x00390035,
  0x00300036, 0x00310036, 0x00320036, 0x00330036, 0x00340036, 0x00350036,
  0x00360036, 0x00370036, 0x00380036, 0x00390036, 0x00300037, 0x00310037,
  0x00320037, 0x00330037, 0x00340037, 0x00350037, 0x00360037, 0x00370037,
  0x00380037, 0x00390037, 0x00300038, 0x00310038, 0x00320038, 0x00330038,
  0x00340038, 0x00350038, 0x00360038, 0x00370038, 0x00380038, 0x00390038,
  0x00300039, 0x00310039, 0x00320039, 0x00330039, 0x00340039, 0x00350039,
  0x00360039, 0x00370039, 0x00380039, 0x00390039,
]);

// Lookup table for pairwise char codes in range [0x00-0xFF]
// @ts-ignore: decorator
@lazy @inline const HEX_DIGITS =
  "000102030405060708090a0b0c0d0e0f\
101112131415161718191a1b1c1d1e1f\
202122232425262728292a2b2c2d2e2f\
303132333435363738393a3b3c3d3e3f\
404142434445464748494a4b4c4d4e4f\
505152535455565758595a5b5c5d5e5f\
606162636465666768696a6b6c6d6e6f\
707172737475767778797a7b7c7d7e7f\
808182838485868788898a8b8c8d8e8f\
909192939495969798999a9b9c9d9e9f\
a0a1a2a3a4a5a6a7a8a9aaabacadaeaf\
b0b1b2b3b4b5b6b7b8b9babbbcbdbebf\
c0c1c2c3c4c5c6c7c8c9cacbcccdcecf\
d0d1d2d3d4d5d6d7d8d9dadbdcdddedf\
e0e1e2e3e4e5e6e7e8e9eaebecedeeef\
f0f1f2f3f4f5f6f7f8f9fafbfcfdfeff";

// @ts-ignore: decorator
@lazy @inline const ANY_DIGITS = "0123456789abcdefghijklmnopqrstuvwxyz";

// @ts-ignore: decorator
@lazy @inline const EXP_POWERS = memory.data<i16>([
  /* eslint-disable indent */ -1220, -1193, -1166, -1140, -1113, -1087, -1060,
  -1034, -1007, -980, -954, -927, -901, -874, -847, -821, -794, -768, -741,
  -715, -688, -661, -635, -608, -582, -555, -529, -502, -475, -449, -422, -396,
  -369, -343, -316, -289, -263, -236, -210, -183, -157, -130, -103, -77, -50,
  -24, 3, 30, 56, 83, 109, 136, 162, 189, 216, 242, 269, 295, 322, 348, 375,
  402, 428, 455, 481, 508, 534, 561, 588, 614, 641, 667, 694, 720, 747, 774,
  800, 827, 853, 880, 907, 933, 960, 986, 1013, 1039, 1066,
  /* eslint-enable indent */
]);

// 1e-348, 1e-340, ..., 1e340
// @ts-ignore: decorator
@lazy @inline const FRC_POWERS = memory.data<u64>([
  0xfa8fd5a0081c0288, 0xbaaee17fa23ebf76, 0x8b16fb203055ac76,
  0xcf42894a5dce35ea, 0x9a6bb0aa55653b2d, 0xe61acf033d1a45df,
  0xab70fe17c79ac6ca, 0xff77b1fcbebcdc4f, 0xbe5691ef416bd60c,
  0x8dd01fad907ffc3c, 0xd3515c2831559a83, 0x9d71ac8fada6c9b5,
  0xea9c227723ee8bcb, 0xaecc49914078536d, 0x823c12795db6ce57,
  0xc21094364dfb5637, 0x9096ea6f3848984f, 0xd77485cb25823ac7,
  0xa086cfcd97bf97f4, 0xef340a98172aace5, 0xb23867fb2a35b28e,
  0x84c8d4dfd2c63f3b, 0xc5dd44271ad3cdba, 0x936b9fcebb25c996,
  0xdbac6c247d62a584, 0xa3ab66580d5fdaf6, 0xf3e2f893dec3f126,
  0xb5b5ada8aaff80b8, 0x87625f056c7c4a8b, 0xc9bcff6034c13053,
  0x964e858c91ba2655, 0xdff9772470297ebd, 0xa6dfbd9fb8e5b88f,
  0xf8a95fcf88747d94, 0xb94470938fa89bcf, 0x8a08f0f8bf0f156b,
  0xcdb02555653131b6, 0x993fe2c6d07b7fac, 0xe45c10c42a2b3b06,
  0xaa242499697392d3, 0xfd87b5f28300ca0e, 0xbce5086492111aeb,
  0x8cbccc096f5088cc, 0xd1b71758e219652c, 0x9c40000000000000,
  0xe8d4a51000000000, 0xad78ebc5ac620000, 0x813f3978f8940984,
  0xc097ce7bc90715b3, 0x8f7e32ce7bea5c70, 0xd5d238a4abe98068,
  0x9f4f2726179a2245, 0xed63a231d4c4fb27, 0xb0de65388cc8ada8,
  0x83c7088e1aab65db, 0xc45d1df942711d9a, 0x924d692ca61be758,
  0xda01ee641a708dea, 0xa26da3999aef774a, 0xf209787bb47d6b85,
  0xb454e4a179dd1877, 0x865b86925b9bc5c2, 0xc83553c5c8965d3d,
  0x952ab45cfa97a0b3, 0xde469fbd99a05fe3, 0xa59bc234db398c25,
  0xf6c69a72a3989f5c, 0xb7dcbf5354e9bece, 0x88fcf317f22241e2,
  0xcc20ce9bd35c78a5, 0x98165af37b2153df, 0xe2a0b5dc971f303a,
  0xa8d9d1535ce3b396, 0xfb9b7cd9a4a7443c, 0xbb764c4ca7a44410,
  0x8bab8eefb6409c1a, 0xd01fef10a657842c, 0x9b10a4e5e9913129,
  0xe7109bfba19c0c9d, 0xac2820d9623bf429, 0x80444b5e7aa7cf85,
  0xbf21e44003acdd2d, 0x8e679c2f5e44ff8f, 0xd433179d9c8cb841,
  0x9e19db92b4e31ba9, 0xeb96bf6ebadf77d9, 0xaf87023b9bf0ee6b,
]);

// @ts-ignore: decorator
@inline
export function isPowerOf2<T extends number>(value: T): bool {
  return popcnt<T>(value) == 1;
}

// Count number of decimals for u32 values
// In our case input value always non-zero so we can simplify some parts
export function decimalCount32(value: u32): u32 {
  if (value < 100000) {
    if (value < 100) {
      return 1 + u32(value >= 10);
    } else {
      return 3 + u32(value >= 10000) + u32(value >= 1000);
    }
  } else {
    if (value < 10000000) {
      return 6 + u32(value >= 1000000);
    } else {
      return 8 + u32(value >= 1000000000) + u32(value >= 100000000);
    }
  }
}

// Count number of decimals for u64 values
// In our case input value always greater than 2^32-1 so we can skip some parts
export function decimalCount64High(value: u64): u32 {
  if (value < 1000000000000000) {
    if (value < 1000000000000) {
      return 10 + u32(value >= 100000000000) + u32(value >= 10000000000);
    } else {
      return 13 + u32(value >= 100000000000000) + u32(value >= 10000000000000);
    }
  } else {
    if (value < 100000000000000000) {
      return 16 + u32(value >= 10000000000000000);
    } else {
      return (
        18 +
        u32(value >= 10000000000000000000) +
        u32(value >= 1000000000000000000)
      );
    }
  }
}

function ulog_base(num: u64, base: i32): u32 {
  if (isPowerOf2(base)) {
    return (63 - <u32>clz(num)) / (31 - <u32>clz(base)) + 1;
  }
  let b64 = u64(base),
    b = b64,
    e: u32 = 1;
  while (num >= b) {
    num /= b;
    b *= b;
    e <<= 1;
  }
  while (num >= 1) {
    num /= b64;
    e++;
  }
  return e - 1;
}

function utoa32_dec_lut(buffer: usize, num: u32, offset: usize): void {
  while (num >= 10000) {
    // in most VMs i32/u32 div and modulo by constant can be shared and simplificate
    let t = num / 10000;
    let r = num % 10000;
    num = t;

    let d1 = r / 100;
    let d2 = r % 100;

    let digits1 = <u64>load<u32>(DIGITS + ((<usize>d1) << alignof<u32>()));
    let digits2 = <u64>load<u32>(DIGITS + ((<usize>d2) << alignof<u32>()));

    offset -= 4;
    store<u64>(buffer + (offset << 1), digits1 | (digits2 << 32));
  }

  if (num >= 100) {
    let t = num / 100;
    let d1 = num % 100;
    num = t;
    offset -= 2;
    let digits = load<u32>(DIGITS + ((<usize>d1) << alignof<u32>()));
    store<u32>(buffer + (offset << 1), digits);
  }

  if (num >= 10) {
    offset -= 2;
    let digits = load<u32>(DIGITS + ((<usize>num) << alignof<u32>()));
    store<u32>(buffer + (offset << 1), digits);
  } else {
    offset -= 1;
    let digit = CharCode._0 + num;
    store<u16>(buffer + (offset << 1), digit);
  }
}

function utoa64_dec_lut(buffer: usize, num: u64, offset: usize): void {
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

    let digits1 = <u64>load<u32>(DIGITS + ((<usize>c1) << alignof<u32>()));
    let digits2 = <u64>load<u32>(DIGITS + ((<usize>c2) << alignof<u32>()));

    offset -= 4;
    store<u64>(buffer + (offset << 1), digits1 | (digits2 << 32));

    digits1 = <u64>load<u32>(DIGITS + ((<usize>b1) << alignof<u32>()));
    digits2 = <u64>load<u32>(DIGITS + ((<usize>b2) << alignof<u32>()));

    offset -= 4;
    store<u64>(buffer + (offset << 1), digits1 | (digits2 << 32));
  }

  utoa32_dec_lut(buffer, <u32>num, offset);
}

function utoa_hex_lut(buffer: usize, num: u64, offset: usize): void {
  const lut = changetype<usize>(HEX_DIGITS);
  while (offset >= 2) {
    offset -= 2;
    store<u32>(
      buffer + (offset << 1),
      load<u32>(lut + (((<usize>num) & 0xff) << alignof<u32>())),
    );
    num >>= 8;
  }
  if (offset & 1) {
    store<u16>(buffer, load<u16>(lut + ((<usize>num) << 6)));
  }
}

function utoa_dec_simple<T extends number>(
  buffer: usize,
  num: T,
  offset: usize,
): void {
  do {
    let t = num / 10;
    let r = <u32>(num % 10);
    num = changetype<T>(t);
    offset--;
    store<u16>(buffer + (offset << 1), CharCode._0 + r);
  } while (num);
}

function utoa_hex_simple<T extends number>(
  buffer: usize,
  num: T,
  offset: usize,
): void {
  do {
    let d = (num & 0x0f) | CharCode._0;
    d += select<T>(<T>0x27, <T>0, d > <T>CharCode._9);
    offset--;
    store<u16>(buffer + (offset << 1), d);
    // @ts-ignore: type
    num >>= 4;
  } while (num);
}

// @ts-ignore: decorator
@inline
export function utoa32_dec_core(buffer: usize, num: u32, offset: usize): void {
  if (ASC_SHRINK_LEVEL >= 1) {
    utoa_dec_simple<u32>(buffer, num, offset);
  } else {
    utoa32_dec_lut(buffer, num, offset);
  }
}

// @ts-ignore: decorator
@inline
function utoa32_hex_core(buffer: usize, num: u32, offset: usize): void {
  if (ASC_SHRINK_LEVEL >= 1) {
    utoa_hex_simple<u32>(buffer, num, offset);
  } else {
    utoa_hex_lut(buffer, num, offset);
  }
}

// @ts-ignore: decorator
@inline
function utoa64_dec_core(buffer: usize, num: u64, offset: usize): void {
  if (ASC_SHRINK_LEVEL >= 1) {
    utoa_dec_simple<u64>(buffer, num, offset);
  } else {
    utoa64_dec_lut(buffer, num, offset);
  }
}

// @ts-ignore: decorator
@inline
function utoa64_hex_core(buffer: usize, num: u64, offset: usize): void {
  if (ASC_SHRINK_LEVEL >= 1) {
    utoa_hex_simple<u64>(buffer, num, offset);
  } else {
    utoa_hex_lut(buffer, num, offset);
  }
}

function utoa64_any_core(
  buffer: usize,
  num: u64,
  offset: usize,
  radix: i32,
): void {
  const lut = changetype<usize>(ANY_DIGITS);
  let base = u64(radix);
  if ((radix & (radix - 1)) == 0) {
    // for radix which pow of two
    let shift = u64(ctz(radix) & 7);
    let mask = base - 1;
    do {
      offset--;
      store<u16>(
        buffer + (offset << 1),
        load<u16>(lut + (usize(num & mask) << 1)),
      );
      num >>= shift;
    } while (num);
  } else {
    do {
      offset--;
      let q = num / base;
      store<u16>(
        buffer + (offset << 1),
        load<u16>(lut + (usize(num - q * base) << 1)),
      );
      num = q;
    } while (num);
  }
}

export function utoa32(value: u32, radix: i32): String {
  if (radix < 2 || radix > 36) {
    throw new RangeError("toString() radix argument must be between 2 and 36");
  }
  if (!value) return "0";
  let out: String;

  if (radix == 10) {
    let decimals = decimalCount32(value);
    out = changetype<String>(__new(decimals << 1, idof<String>()));
    utoa32_dec_core(changetype<usize>(out), value, decimals);
  } else if (radix == 16) {
    let decimals = ((31 - clz(value)) >> 2) + 1;
    out = changetype<String>(__new(decimals << 1, idof<String>()));
    utoa32_hex_core(changetype<usize>(out), value, decimals);
  } else {
    let decimals = ulog_base(value, radix);
    out = changetype<String>(__new(decimals << 1, idof<String>()));
    utoa64_any_core(changetype<usize>(out), value, decimals, radix);
  }
  return out;
}

export function itoa32(value: i32, radix: i32): String {
  if (radix < 2 || radix > 36) {
    throw new RangeError("toString() radix argument must be between 2 and 36");
  }
  if (!value) return "0";

  let sign = (value >>> 31) << 1;
  if (sign) value = -value;
  let out: String;

  if (radix == 10) {
    let decimals = decimalCount32(value);
    out = changetype<String>(__new((decimals << 1) + sign, idof<String>()));
    utoa32_dec_core(changetype<usize>(out) + sign, value, decimals);
  } else if (radix == 16) {
    let decimals = ((31 - clz(value)) >> 2) + 1;
    out = changetype<String>(__new((decimals << 1) + sign, idof<String>()));
    utoa32_hex_core(changetype<usize>(out) + sign, value, decimals);
  } else {
    let val32 = u32(value);
    let decimals = ulog_base(val32, radix);
    out = changetype<String>(__new((decimals << 1) + sign, idof<String>()));
    utoa64_any_core(changetype<usize>(out) + sign, val32, decimals, radix);
  }
  if (sign) store<u16>(changetype<usize>(out), CharCode.MINUS);
  return out;
}

export function utoa64(value: u64, radix: i32): String {
  if (radix < 2 || radix > 36) {
    throw new RangeError("toString() radix argument must be between 2 and 36");
  }
  if (!value) return "0";
  let out: String;

  if (radix == 10) {
    if (value <= u32.MAX_VALUE) {
      let val32 = <u32>value;
      let decimals = decimalCount32(val32);
      out = changetype<String>(__new(decimals << 1, idof<String>()));
      utoa32_dec_core(changetype<usize>(out), val32, decimals);
    } else {
      let decimals = decimalCount64High(value);
      out = changetype<String>(__new(decimals << 1, idof<String>()));
      utoa64_dec_core(changetype<usize>(out), value, decimals);
    }
  } else if (radix == 16) {
    let decimals = ((63 - u32(clz(value))) >> 2) + 1;
    out = changetype<String>(__new(decimals << 1, idof<String>()));
    utoa64_hex_core(changetype<usize>(out), value, decimals);
  } else {
    let decimals = ulog_base(value, radix);
    out = changetype<String>(__new(decimals << 1, idof<String>()));
    utoa64_any_core(changetype<usize>(out), value, decimals, radix);
  }
  return out;
}

export function itoa64(value: i64, radix: i32): String {
  if (radix < 2 || radix > 36) {
    throw new RangeError("toString() radix argument must be between 2 and 36");
  }
  if (!value) return "0";

  let sign = u32(value >>> 63) << 1;
  if (sign) value = -value;
  let out: String;

  if (radix == 10) {
    if (<u64>value <= <u64>u32.MAX_VALUE) {
      let val32 = <u32>value;
      let decimals = decimalCount32(val32);
      out = changetype<String>(__new((decimals << 1) + sign, idof<String>()));
      utoa32_dec_core(changetype<usize>(out) + sign, val32, decimals);
    } else {
      let decimals = decimalCount64High(value);
      out = changetype<String>(__new((decimals << 1) + sign, idof<String>()));
      utoa64_dec_core(changetype<usize>(out) + sign, value, decimals);
    }
  } else if (radix == 16) {
    let decimals = ((63 - u32(clz(value))) >> 2) + 1;
    out = changetype<String>(__new((decimals << 1) + sign, idof<String>()));
    utoa64_hex_core(changetype<usize>(out) + sign, value, decimals);
  } else {
    let decimals = ulog_base(value, radix);
    out = changetype<String>(__new((decimals << 1) + sign, idof<String>()));
    utoa64_any_core(changetype<usize>(out) + sign, value, decimals, radix);
  }
  if (sign) store<u16>(changetype<usize>(out), CharCode.MINUS);
  return out;
}

// @ts-ignore: decorator
@lazy let _K: i32 = 0;

// // @ts-ignore: decorator
// @lazy
// let _frc: u64 = 0;

// @ts-ignore: decorator
@lazy let _exp: i32 = 0;

// @ts-ignore: decorator
@lazy let _frc_minus: u64 = 0;

// @ts-ignore: decorator
@lazy let _frc_plus: u64 = 0;

// @ts-ignore: decorator
@lazy let _frc_pow: u64 = 0;

// @ts-ignore: decorator
@lazy let _exp_pow: i32 = 0;

// @ts-ignore: decorator
@inline
function umul64f(u: u64, v: u64): u64 {
  let u0 = u & 0xffffffff;
  let v0 = v & 0xffffffff;

  let u1 = u >> 32;
  let v1 = v >> 32;

  let l = u0 * v0;
  let t = u1 * v0 + (l >> 32);
  let w = u0 * v1 + (t & 0xffffffff);

  w += 0x7fffffff; // rounding

  t >>= 32;
  w >>= 32;

  return u1 * v1 + t + w;
}

// @ts-ignore: decorator
@inline
function umul64e(e1: i32, e2: i32): i32 {
  return e1 + e2 + 64; // where 64 is significand size
}

// @ts-ignore: decorator
@inline
function normalizedBoundaries(f: u64, e: i32): void {
  let frc = (f << 1) + 1;
  let exp = e - 1;
  let off = <i32>clz<u64>(frc);
  frc <<= off;
  exp -= off;

  let m = 1 + i32(f == 0x0010000000000000);

  _frc_plus = frc;
  _frc_minus = ((f << m) - 1) << (e - m - exp);
  _exp = exp;
}

// @ts-ignore: decorator
@inline
function grisuRound(
  buffer: usize,
  len: i32,
  delta: u64,
  rest: u64,
  ten_kappa: u64,
  wp_w: u64,
): void {
  let lastp = buffer + ((len - 1) << 1);
  let digit = load<u16>(lastp);
  while (
    rest < wp_w &&
    delta - rest >= ten_kappa &&
    (rest + ten_kappa < wp_w || wp_w - rest > rest + ten_kappa - wp_w)
  ) {
    --digit;
    rest += ten_kappa;
  }
  store<u16>(lastp, digit);
}

// @ts-ignore: decorator
@inline
function getCachedPower(minExp: i32): void {
  const c = reinterpret<f64>(0x3fd34413509f79fe); // 1 / lg(10) = 0.30102999566398114
  let dk = (-61 - minExp) * c + 347; // dk must be positive, so can do ceiling in positive
  let k = <i32>dk;
  k += i32(k != dk); // conversion with ceil

  let index = (k >> 3) + 1;
  _K = 348 - (index << 3); // decimal exponent no need lookup table
  _frc_pow = load<u64>(FRC_POWERS + ((<usize>index) << alignof<u64>()));
  _exp_pow = load<i16>(EXP_POWERS + ((<usize>index) << alignof<i16>()));
}

// @ts-ignore: decorator
@inline
function grisu2(value: f64, buffer: usize, sign: i32): i32 {
  // frexp routine
  let uv = reinterpret<u64>(value);
  let exp = i32((uv & 0x7ff0000000000000) >>> 52);
  let sid = uv & 0x000fffffffffffff;
  let frc = (u64(exp != 0) << 52) + sid;
  exp = select<i32>(exp, 1, exp) - (0x3ff + 52);

  normalizedBoundaries(frc, exp);
  getCachedPower(_exp);

  // normalize
  let off = <i32>clz<u64>(frc);
  frc <<= off;
  exp -= off;

  let frc_pow = _frc_pow;
  let exp_pow = _exp_pow;

  let w_frc = umul64f(frc, frc_pow);
  let w_exp = umul64e(exp, exp_pow);

  let wp_frc = umul64f(_frc_plus, frc_pow) - 1;
  let wp_exp = umul64e(_exp, exp_pow);

  let wm_frc = umul64f(_frc_minus, frc_pow) + 1;
  let delta = wp_frc - wm_frc;

  return genDigits(buffer, w_frc, w_exp, wp_frc, wp_exp, delta, sign);
}

function genDigits(
  buffer: usize,
  w_frc: u64,
  w_exp: i32,
  mp_frc: u64,
  mp_exp: i32,
  delta: u64,
  sign: i32,
): i32 {
  let one_exp = -mp_exp;
  let one_frc = (<u64>1) << one_exp;
  let mask = one_frc - 1;

  let wp_w_frc = mp_frc - w_frc;

  let p1 = u32(mp_frc >> one_exp);
  let p2 = mp_frc & mask;

  let kappa = <i32>decimalCount32(p1);
  let len = sign;

  while (kappa > 0) {
    let d: u32;
    switch (kappa) {
      case 10: {
        d = p1 / 1000000000;
        p1 %= 1000000000;
        break;
      }
      case 9: {
        d = p1 / 100000000;
        p1 %= 100000000;
        break;
      }
      case 8: {
        d = p1 / 10000000;
        p1 %= 10000000;
        break;
      }
      case 7: {
        d = p1 / 1000000;
        p1 %= 1000000;
        break;
      }
      case 6: {
        d = p1 / 100000;
        p1 %= 100000;
        break;
      }
      case 5: {
        d = p1 / 10000;
        p1 %= 10000;
        break;
      }
      case 4: {
        d = p1 / 1000;
        p1 %= 1000;
        break;
      }
      case 3: {
        d = p1 / 100;
        p1 %= 100;
        break;
      }
      case 2: {
        d = p1 / 10;
        p1 %= 10;
        break;
      }
      case 1: {
        d = p1;
        p1 = 0;
        break;
      }
      default: {
        d = 0;
        break;
      }
    }

    if (d | len) store<u16>(buffer + (len++ << 1), CharCode._0 + <u16>d);

    --kappa;
    let tmp = ((<u64>p1) << one_exp) + p2;
    if (tmp <= delta) {
      _K += kappa;
      grisuRound(
        buffer,
        len,
        delta,
        tmp,
        (<u64>load<u32>(POWERS10 + ((<usize>kappa) << alignof<u32>()))) <<
          one_exp,
        wp_w_frc,
      );
      return len;
    }
  }

  while (true) {
    p2 *= 10;
    delta *= 10;

    let d = p2 >> one_exp;
    if (d | len) store<u16>(buffer + (len++ << 1), CharCode._0 + <u16>d);

    p2 &= mask;
    --kappa;
    if (p2 < delta) {
      _K += kappa;
      wp_w_frc *= <u64>(
        load<u32>(POWERS10 + ((<usize>-kappa) << alignof<u32>()))
      );
      grisuRound(buffer, len, delta, p2, one_frc, wp_w_frc);
      return len;
    }
  }
}

// @ts-ignore: decorator
@inline
function genExponent(buffer: usize, k: i32): i32 {
  let sign = k < 0;
  if (sign) k = -k;
  let decimals = decimalCount32(k) + 1;
  utoa32_dec_core(buffer, k, decimals);
  store<u16>(buffer, <u16>select<u32>(CharCode.MINUS, CharCode.PLUS, sign));
  return decimals;
}

function prettify(buffer: usize, length: i32, k: i32): i32 {
  if (!k) {
    store<u32>(buffer + (length << 1), CharCode.DOT | (CharCode._0 << 16));
    return length + 2;
  }

  let kk = length + k;
  if (length <= kk && kk <= 21) {
    // 1234e7 -> 12340000000
    for (let i = length; i < kk; ++i) {
      store<u16>(buffer + (i << 1), CharCode._0);
    }
    store<u32>(buffer + (kk << 1), CharCode.DOT | (CharCode._0 << 16));
    return kk + 2;
  } else if (kk > 0 && kk <= 21) {
    // 1234e-2 -> 12.34
    let ptr = buffer + (kk << 1);
    memory.copy(ptr + 2, ptr, -k << 1);
    store<u16>(buffer + (kk << 1), CharCode.DOT);
    return length + 1;
  } else if (-6 < kk && kk <= 0) {
    // 1234e-6 -> 0.001234
    let offset = 2 - kk;
    memory.copy(buffer + (offset << 1), buffer, length << 1);
    store<u32>(buffer, CharCode._0 | (CharCode.DOT << 16));
    for (let i = 2; i < offset; ++i) {
      store<u16>(buffer + (i << 1), CharCode._0);
    }
    return length + offset;
  } else if (length == 1) {
    // 1e30
    store<u16>(buffer, CharCode.e, 2);
    length = genExponent(buffer + 4, kk - 1);
    return length + 2;
  } else {
    let len = length << 1;
    memory.copy(buffer + 4, buffer + 2, len - 2);
    store<u16>(buffer, CharCode.DOT, 2);
    store<u16>(buffer + len, CharCode.e, 2);
    length += genExponent(buffer + len + 4, kk - 1);
    return length + 2;
  }
}

function dtoa_core(buffer: usize, value: f64): i32 {
  let sign = i32(value < 0);
  if (sign) {
    value = -value;
    store<u16>(buffer, CharCode.MINUS);
  }
  // assert(value > 0 && value <= 1.7976931348623157e308);
  let len = grisu2(value, buffer, sign);
  len = prettify(buffer + (sign << 1), len - sign, _K);
  return len + sign;
}

// @ts-ignore: decorator
@lazy @inline const dtoa_buf = memory.data(MAX_DOUBLE_LENGTH << 1);

export function dtoa(value: f64): String {
  if (value == 0) return "0.0";
  if (!isFinite(value)) {
    if (isNaN(value)) return "NaN";
    return select<String>("-Infinity", "Infinity", value < 0);
  }
  let size = dtoa_core(dtoa_buf, value) << 1;
  let result = changetype<String>(__new(size, idof<String>()));
  memory.copy(changetype<usize>(result), dtoa_buf, size);
  return result;
}

export function itoa_buffered<T extends number>(buffer: usize, value: T): u32 {
  let sign: u32 = 0;
  if (isSigned<T>()) {
    sign = u32(value < 0);
    if (sign) {
      if (sizeof<T>() == 1) {
        if (value == -0x80) {
          // -0x80  ->  -128
          store<u64>(
            buffer,
            (<u64>CharCode.MINUS) |
              ((<u64>(CharCode._0 + 1)) << 16) |
              ((<u64>(CharCode._0 + 2)) << 32) |
              ((<u64>(CharCode._0 + 8)) << 48),
          );
          return 4;
        }
      }
      if (sizeof<T>() == 2) {
        if (value == -0x8000) {
          // -0x8000  ->  -32768
          store<u64>(
            buffer,
            (<u64>CharCode.MINUS) |
              ((<u64>(CharCode._0 + 3)) << 16) |
              ((<u64>(CharCode._0 + 2)) << 32) |
              ((<u64>(CharCode._0 + 7)) << 48),
          ); // -327
          store<u32>(
            buffer + 8,
            ((CharCode._0 + 6) << 0) | ((CharCode._0 + 8) << 16),
          ); // 68
          return 6;
        }
      }
      store<u16>(buffer, CharCode.MINUS);
      // @ts-ignore
      value = -value;
    }
  }
  let dest = buffer + (sign << 1);
  if (ASC_SHRINK_LEVEL <= 1) {
    if (isSigned<T>()) {
      if (sizeof<T>() <= 4) {
        if (<u32>value < 10) {
          store<u16>(dest, value | CharCode._0);
          return 1 + sign;
        }
      } else {
        if (<u64>value < 10) {
          store<u16>(dest, value | CharCode._0);
          return 1 + sign;
        }
      }
    } else {
      if (value < 10) {
        store<u16>(buffer, value | CharCode._0);
        return 1;
      }
    }
  }
  let decimals: u32 = 0;
  if (sizeof<T>() <= 4) {
    let val32 = <u32>value;
    decimals = decimalCount32(val32);
    utoa32_dec_core(dest, val32, decimals);
  } else {
    if (<u64>value <= <u64>u32.MAX_VALUE) {
      let val32 = <u32>value;
      decimals = decimalCount32(val32);
      utoa32_dec_core(dest, val32, decimals);
    } else {
      let val64 = <u64>value;
      decimals = decimalCount64High(val64);
      utoa64_dec_core(dest, val64, decimals);
    }
  }
  return sign + decimals;
}

export function dtoa_buffered(buffer: usize, value: f64): u32 {
  if (value == 0) {
    store<u16>(buffer, CharCode._0);
    store<u16>(buffer, CharCode.DOT, 2);
    store<u16>(buffer, CharCode._0, 4);
    return 3;
  }
  if (!isFinite(value)) {
    if (isNaN(value)) {
      store<u16>(buffer, CharCode.N);
      store<u16>(buffer, CharCode.a, 2);
      store<u16>(buffer, CharCode.N, 4);
      return 3;
    } else {
      let sign = value < 0;
      if (sign) {
        store<u16>(buffer, CharCode.MINUS); // -
        buffer += 2;
      }
      store<u64>(buffer, 0x690066006e0049, 0); // ifnI
      store<u64>(buffer, 0x7900740069006e, 8); // ytin
      return 8 + u32(sign);
    }
  }
  return dtoa_core(buffer, value);
}
