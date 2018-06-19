
import { CharCode } from "./string";

const powers_0_10: i32[] = [
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

const digits_00_99: string[] = [
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
];

@inline
function decimalDigitsCount(value: i32): i32 {
  // var s = value >> 31;
  // var v = (value ^ s) - s;
  var l = 32 - clz(value);  // log2
  var t = l * 1233 >>> 12;  // log10
      t = t - <i32>(value < powers_0_10[t]);
  return t + 1;
}

export function itoa32(num: i32): string {
  if (!num) return "0";

  var res = "";
  var r: i32, t: i32, d1: i32, d2: i32;

  var isneg = num < 0;
  if (isneg) num = -num;

  while (num >= 10000) {
    t = num / 10000;
    r = num % 10000;
    num = t;

    d1 = r / 100;
    d2 = r % 100;

    res = digits_00_99[d1] + digits_00_99[d2] + res;
  }

  if (num >= 100) {
    t   = num / 100;
    d1  = num % 100;
    num = t;
    res = digits_00_99[d1] + res;
  }

  if (num < 10) {
    res = String.fromCharCode(CharCode._0 + num) + res;
  } else {
    res = digits_00_99[num] + res;
  }

  if (isneg) res = "-" + res;
  return res;
}

export function itoa64(num: i64): string {
  if (!num) return "0";

  var isneg = num < 0;
  if (isneg) num = -num;

  if (num >= 1844674407) {
    let hi: u32 = num / 10000000000;
    let lo: u32 = num - hi * 10000000000;

    let res = itoa32(hi) + itoa32(lo);
    if (isneg) res = "-" + res;
    return res;
  }

  return itoa32(isneg ? -(<i32>num) : <i32>num);
}
