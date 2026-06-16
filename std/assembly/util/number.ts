/// <reference path="../rt/index.d.ts" />

import { idof } from "../builtins";
import { CharCode } from "./string";
import { dtoa_buffered as dtoa_buffered_double } from "./xjb";
import { ftoa_buffered as ftoa_buffered_single } from "./xjb";

// @ts-ignore: decorator
@inline
// xjb-as buffered writers may overshoot the logical end by up to one 8-char
// block, so reserve >= 32 code units (>= 64 bytes) of headroom per value.
export const MAX_DOUBLE_LENGTH = 32;

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
      return 18 + u32(value >= 10000000000000000000) + u32(value >= 1000000000000000000);
    }
  }
}

function ulog_base(num: u64, base: i32): u32 {
  if (isPowerOf2(base)) {
    return (63 - <u32>clz(num)) / (31 - <u32>clz(base)) + 1;
  }
  let b64 = u64(base), b = b64, e: u32 = 1;
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

    let digits1 = <u64>load<u32>(DIGITS + (<usize>d1 << alignof<u32>()));
    let digits2 = <u64>load<u32>(DIGITS + (<usize>d2 << alignof<u32>()));

    offset -= 4;
    store<u64>(buffer + (offset << 1), digits1 | (digits2 << 32));
  }

  if (num >= 100) {
    let t  = num / 100;
    let d1 = num % 100;
    num = t;
    offset -= 2;
    let digits = load<u32>(DIGITS + (<usize>d1 << alignof<u32>()));
    store<u32>(buffer + (offset << 1), digits);
  }

  if (num >= 10) {
    offset -= 2;
    let digits = load<u32>(DIGITS + (<usize>num << alignof<u32>()));
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

    let digits1 = <u64>load<u32>(DIGITS + (<usize>c1 << alignof<u32>()));
    let digits2 = <u64>load<u32>(DIGITS + (<usize>c2 << alignof<u32>()));

    offset -= 4;
    store<u64>(buffer + (offset << 1), digits1 | (digits2 << 32));

    digits1 = <u64>load<u32>(DIGITS + (<usize>b1 << alignof<u32>()));
    digits2 = <u64>load<u32>(DIGITS + (<usize>b2 << alignof<u32>()));

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
      load<u32>(lut + ((<usize>num & 0xFF) << alignof<u32>()))
    );
    num >>= 8;
  }
  if (offset & 1) {
    store<u16>(buffer, load<u16>(lut + (<usize>num << 6)));
  }
}

function utoa_dec_simple<T extends number>(buffer: usize, num: T, offset: usize): void {
  do {
    let t = num / 10;
    let r = <u32>(num % 10);
    num = changetype<T>(t);
    offset--;
    store<u16>(buffer + (offset << 1), CharCode._0 + r);
  } while (num);
}

function utoa_hex_simple<T extends number>(buffer: usize, num: T, offset: usize): void {
  do {
    let d = num & 0x0F | CharCode._0;
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

function utoa64_any_core(buffer: usize, num: u64, offset: usize, radix: i32): void {
  const lut = changetype<usize>(ANY_DIGITS);
  let base = u64(radix);
  if ((radix & (radix - 1)) == 0) { // for radix which pow of two
    let shift = u64(ctz(radix) & 7);
    let mask = base - 1;
    do {
      offset--;
      store<u16>(buffer + (offset << 1), load<u16>(lut + (usize(num & mask) << 1)));
      num >>= shift;
    } while (num);
  } else {
    do {
      offset--;
      let q = num / base;
      store<u16>(buffer + (offset << 1), load<u16>(lut + (usize(num - q * base) << 1)));
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
    let decimals = (31 - clz(value) >> 2) + 1;
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
    let decimals = (31 - clz(value) >> 2) + 1;
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
      let val32    = <u32>value;
      let decimals = decimalCount32(val32);
      out = changetype<String>(__new(decimals << 1, idof<String>()));
      utoa32_dec_core(changetype<usize>(out), val32, decimals);
    } else {
      let decimals = decimalCount64High(value);
      out = changetype<String>(__new(decimals << 1, idof<String>()));
      utoa64_dec_core(changetype<usize>(out), value, decimals);
    }
  } else if (radix == 16) {
    let decimals = (63 - u32(clz(value)) >> 2) + 1;
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
      let val32    = <u32>value;
      let decimals = decimalCount32(val32);
      out = changetype<String>(__new((decimals << 1) + sign, idof<String>()));
      utoa32_dec_core(changetype<usize>(out) + sign, val32, decimals);
    } else {
      let decimals = decimalCount64High(value);
      out = changetype<String>(__new((decimals << 1) + sign, idof<String>()));
      utoa64_dec_core(changetype<usize>(out) + sign, value, decimals);
    }
  } else if (radix == 16) {
    let decimals = (63 - u32(clz(value)) >> 2) + 1;
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


// Scratch buffer for the String path. Sized well above any rendered length so
// xjb's in-register block stores (which can overshoot the logical end) stay
// contained, matching xjb's own internal 128-byte SCRATCH.
// @ts-ignore: decorator
@lazy @inline const dtoa_buf = memory.data(128);

// xjb produces ECMAScript-exact output. AssemblyScript renders integer-valued
// floats with a trailing ".0" (e.g. "1" -> "1.0", "0" -> "0.0"); fractional
// ("." present) and exponential ("e" present) forms, plus NaN/Infinity (which
// contain letters), are left untouched. So append ".0" iff the rendered value
// is a bare "[-]?digits" integer.
// @ts-ignore: decorator
@inline
function dtoa_dotZero(buffer: usize, len: u32): u32 {
  let p = buffer;
  let end = buffer + (<usize>len << 1);
  while (p < end) {
    let c = <i32>load<u16>(p);
    if ((c < CharCode._0 || c > CharCode._9) && c != CharCode.MINUS) return len;
    p += 2;
  }
  store<u16>(end, CharCode.DOT);
  store<u16>(end, CharCode._0, 2);
  return len + 2;
}

export function dtoa<T extends number>(value: T): String {
  let len: u32;
  if (isFloat<T>() && sizeof<T>() == 4) {
    // @ts-ignore: type
    len = ftoa_buffered_single(dtoa_buf, <f32>value);
  } else {
    // @ts-ignore: type
    len = dtoa_buffered_double(dtoa_buf, <f64>value);
  }
  len = dtoa_dotZero(dtoa_buf, len);
  let size = <usize>len << 1;
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
          store<u64>(buffer,
            <u64>CharCode.MINUS |
            <u64>(CharCode._0 + 1) << 16 |
            <u64>(CharCode._0 + 2) << 32 |
            <u64>(CharCode._0 + 8) << 48
          );
          return 4;
        }
      }
      if (sizeof<T>() == 2) {
        if (value == -0x8000) {
          // -0x8000  ->  -32768
          store<u64>(buffer,
            <u64>CharCode.MINUS |
            <u64>(CharCode._0 + 3) << 16 |
            <u64>(CharCode._0 + 2) << 32 |
            <u64>(CharCode._0 + 7) << 48
          ); // -327
          store<u32>(buffer + 8,
            (CharCode._0 + 6) << 0 |
            (CharCode._0 + 8) << 16
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

export function dtoa_buffered<T extends number>(buffer: usize, value: T): u32 {
  let len: u32;
  if (isFloat<T>() && sizeof<T>() == 4) {
    // @ts-ignore: type
    len = ftoa_buffered_single(buffer, <f32>value);
  } else {
    // @ts-ignore: type
    len = dtoa_buffered_double(buffer, <f64>value);
  }
  return dtoa_dotZero(buffer, len);
}
