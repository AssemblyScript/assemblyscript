import "allocator/arena";
import {
  utoa32,
  itoa32,
  utoa64,
  itoa64,
  dtoa
} from "internal/number";

// preliminary

var str: string = "hi, I'm a string";
var nullStr: string;

// exactly once in static memory
assert(changetype<usize>(str) == changetype<usize>("hi, I'm a string"));

assert(str.length == 16);
assert(str.charCodeAt(0) == 0x68);

assert(!!"" == false);
assert(!!"\0" == true);
assert(!!"a" == true);

assert(String.fromCharCode(0) == "\0");
assert(String.fromCharCode(54) == "6");
assert(String.fromCharCode(0x10000 + 54) == "6");

assert(String.fromCodePoint(0) == "\0");
assert(String.fromCodePoint(54) == "6");
assert(String.fromCodePoint(0x1D306), "\uD834\uDF06");

assert(str.startsWith("hi"));
assert(str.endsWith("string"));
assert(str.includes("I'm"));

assert(str.padStart(0) == str);
assert(str.padStart(15) == str);
assert("".padStart(3) == "   ");
assert("".padStart(10, "") == "");
assert("a".padStart(100, "") == "a");
assert("abc".padStart(5) == "  abc");
assert("abc".padStart(6, "123") == "123abc");
assert("abc".padStart(8, "123") == "12312abc");

assert(str.padEnd(0) == str);
assert(str.padEnd(15) == str);
assert("".padEnd(3) == "   ");
assert("".padEnd(10, "") == "");
assert("a".padEnd(100, "") == "a");
assert("abc".padEnd(5) == "abc  ");
assert("abc".padEnd(6, "abc") == "abcabc");
assert("abc".padEnd(8, "abc") == "abcabcab");

assert("".indexOf("") == 0);
assert("".indexOf("hi") == -1);
assert("a".indexOf("a") == 0);
assert(str.indexOf(str) == 0);
assert(str.indexOf("") == 0);
assert(str.indexOf(",") == 2);
assert(str.indexOf("x") == -1);
assert(str.indexOf(",", 2) == 2);
assert(str.indexOf(",", 3) == -1);
assert(str.indexOf(", I", -1) == 2);

assert("".lastIndexOf("") == 0);
assert("".lastIndexOf("hi") == -1);
assert(str.lastIndexOf("") == str.length);
assert(str.lastIndexOf(",") == 2);
assert(str.lastIndexOf("x") == -1);
assert(str.lastIndexOf("g") == 15);
assert(str.lastIndexOf(",", 2) == 2);
assert(str.lastIndexOf(",", 3) == 2);
assert(str.lastIndexOf(", I", -1) == -1);
assert(str.lastIndexOf("i", 0) == -1);
assert(str.lastIndexOf("hi", 0) == 0);

export function getString(): string {
  return str;
}

assert(parseInt("0") == 0);
assert(parseInt("1") == 1);
assert(parseInt("0b101") == 0b101);
assert(parseInt("0o707") == 0o707);
assert(parseInt("0xf0f") == 0xf0f);
assert(parseInt("0xF0F") == 0xf0f);
assert(parseInt("011") == 11); // not octal
assert(parseInt("0x1g") == 1); // not valid

assert(parseFloat("0") == 0);
assert(parseFloat("1") == 1);
assert(parseFloat("0.1") == 0.1);
assert(parseFloat(".25") == 0.25);
assert(parseFloat(".1foobar") == 0.1);

var c = "a" + "b";
assert(c == "ab");
assert(c != "a");
assert("" == "");
assert("" != nullStr);
assert(nullStr != "");
assert("a" != "b");
assert("a" == "a");
assert("key1" != "key2");
assert("key1" == "key1");
assert("ke1" != "ke2");
assert("key12" != "key11");
assert("イロハニホヘト" == "イロハニホヘト");
assert("イロハニホヘト" != "ウヰノオクヤマ");
assert("D’fhuascail" != "D’ḟuascail");

assert("b" > "a");
assert("ba" > "a");
assert("ba" >= "aa");
assert("ba" > "ab");
assert(!("ba" < "ab"));

assert(!("b" < nullStr));
assert(!(nullStr < "b"));

assert("abc" > "");
assert("" < "abc");
assert("abc" >= "");
assert("" <= "abc");
assert(!("abc" < ""));
assert(!("" > "abc"));
assert(!("" < ""));
assert(!("" > ""));
assert("" >= "");
assert("" <= "");

var a = String.fromCodePoint(0xFF61);
var b = String.fromCodePoint(0xD800) + String.fromCodePoint(0xDC02);
assert(a > b);

assert("123".length == 3);

assert("".repeat(100) == "");
assert("a".repeat() == "");
assert("a".repeat(1) == "a");
assert("a".repeat(2) == "aa");
assert("a".repeat(3) == "aaa");
assert("ab".repeat(4) == "abababab");
assert("a".repeat(5) == "aaaaa");
assert("a".repeat(6) == "aaaaaa");
assert("a".repeat(7) == "aaaaaaa");

// test cases for slice method
str = "abcdefghijklmn";
assert(str.slice(0) == "abcdefghijklmn");
assert(str.slice(-1) == "n");
assert(str.slice(-5) == "jklmn");
assert(str.slice(2, 7) == "cdefg");
assert(str.slice(-11, -6) == "defgh");
assert(str.slice(4, 3) == "");
assert(str.slice(0, -1) == "abcdefghijklm");

var sa: string[];

sa = "".split();
assert(sa.length == 1 && sa[0] == "");
sa = "".split("");
assert(sa.length == 0);
sa = "".split(",");
assert(sa.length == 1 && sa[0] == "");
sa = "a,b,c".split(".");
assert(sa.length == 1 && sa[0] == "a,b,c");
sa = "a,b,c".split(",");
assert(sa.length == 3 && sa[0] == "a" && sa[1] == "b" && sa[2] == "c");
sa = "a, b, c".split(", ");
assert(sa.length == 3 && sa[0] == "a" && sa[1] == "b" && sa[2] == "c");
sa = "a,b,,c".split(",");
assert(sa.length == 4 && sa[0] == "a" && sa[1] == "b" && sa[2] == "" && sa[3] == "c");
sa = ",a,b,c".split(",");
assert(sa.length == 4 && sa[0] == "" && sa[1] == "a" && sa[2] == "b" && sa[3] == "c");
sa = "a,b,c,".split(",");
assert(sa.length == 4 && sa[0] == "a" && sa[1] == "b" && sa[2] == "c" && sa[3] == "");
sa = "abc".split("");
assert(sa.length == 3 && sa[0] == "a" && sa[1] == "b" && sa[2] == "c");
sa = "abc".split("", 0);
assert(sa.length == 0);
sa = "abc".split("", 1);
assert(sa.length == 1 && sa[0] == "a");
sa = "a,b,c".split(",", 1);
assert(sa.length == 1 && sa[0] == "a");
sa = "abc".split("", 4);
assert(sa.length == 3 && sa[0] == "a" && sa[1] == "b" && sa[2] == "c");
sa = "abc".split("", -1);
assert(sa.length == 3 && sa[0] == "a" && sa[1] == "b" && sa[2] == "c");
sa = "a,b,c".split(",", -1);
assert(sa.length == 3 && sa[0] == "a" && sa[1] == "b" && sa[2] == "c");

assert(itoa32(0) == "0");
assert(itoa32(1) == "1");
assert(itoa32(8) == "8");
assert(itoa32(123) == "123");
assert(itoa32(-1000) == "-1000");
assert(itoa32(1234) == "1234");
assert(itoa32(12345) == "12345");
assert(itoa32(123456) == "123456");
assert(itoa32(1111111) == "1111111");
assert(itoa32(1234567) == "1234567");
assert(itoa32(0x7ffffffe) == "2147483646");
assert(itoa32(0x7fffffff) == "2147483647");
assert(itoa32(0x80000000) == "-2147483648");
assert(itoa32(0xffffffff) == "-1");

assert(utoa32(0) == "0");
assert(utoa32(1000) == "1000");
assert(utoa32(0x7fffffff) == "2147483647");
assert(utoa32(0x80000000) == "2147483648");
assert(utoa32(u32.MAX_VALUE) == "4294967295");

assert(utoa64(0) == "0");
assert(utoa64(1234) == "1234");
assert(utoa64(99999999) == "99999999");
assert(utoa64(100000000) == "100000000");
assert(utoa64(0xffffffff) == "4294967295");
assert(utoa64(0xfffffffff) == "68719476735");
assert(utoa64(868719476735) == "868719476735");
assert(utoa64(999868719476735) == "999868719476735");
assert(utoa64(9999868719476735) == "9999868719476735");
assert(utoa64(19999868719476735) == "19999868719476735");
assert(utoa64(u64.MAX_VALUE) == "18446744073709551615");

assert(itoa64(0) == "0");
assert(itoa64(-1234) == "-1234");
assert(itoa64(0xffffffff) == "4294967295");
assert(itoa64(-0xffffffff) == "-4294967295");
assert(itoa64(68719476735) == "68719476735");
assert(itoa64(-68719476735) == "-68719476735");
assert(itoa64(-868719476735) == "-868719476735");
assert(itoa64(-999868719476735) == "-999868719476735");
assert(itoa64(-19999868719476735) == "-19999868719476735");
assert(itoa64(i64.MAX_VALUE) == "9223372036854775807");
assert(itoa64(i64.MIN_VALUE) == "-9223372036854775808");

// special cases
assert(dtoa(0.0) == "0.0");
assert(dtoa(-0.0) == "0.0");
assert(dtoa(NaN) == "NaN");
assert(dtoa(+Infinity) == "Infinity");
assert(dtoa(-Infinity) == "-Infinity");
assert(dtoa(+f64.EPSILON) == "2.220446049250313e-16");
assert(dtoa(-f64.EPSILON) == "-2.220446049250313e-16");
assert(dtoa(+f64.MAX_VALUE) == "1.7976931348623157e+308");
assert(dtoa(-f64.MAX_VALUE) == "-1.7976931348623157e+308");
assert(dtoa(4.185580496821357e+298) == "4.185580496821357e+298");
assert(dtoa(2.2250738585072014e-308) == "2.2250738585072014e-308");
// assert(dtoa(2.98023223876953125e-8) == "2.9802322387695312e-8"); // FIXME
// assert(dtoa(-2.109808898695963e+16) == "-21098088986959630.0"); // FIXME
assert(dtoa(4.940656E-318) == "4.940656e-318");
assert(dtoa(9.0608011534336e+15) == "9060801153433600.0");
assert(dtoa(4.708356024711512e+18) == "4708356024711512000.0");
assert(dtoa(9.409340012568248e+18) == "9409340012568248000.0");
assert(dtoa(5e-324) == "5e-324");
// Known imprecise issue for Grisu alghoritm. Need workaround
// Expeced: 1.2345e+21
// Actual:  1.2344999999999999e+21
// assert(dtoa(1.2345e+21) == "1.2345e+21");

assert(dtoa(1.0) == "1.0");
assert(dtoa(0.1) == "0.1");
assert(dtoa(-1.0) == "-1.0");
assert(dtoa(-0.1) == "-0.1");

assert(dtoa(1e+6) == "1000000.0");
assert(dtoa(1e-6) == "0.000001");
assert(dtoa(-1e+6) == "-1000000.0");
assert(dtoa(-1e-6) == "-0.000001");
assert(dtoa(1e+7) == "10000000.0");
assert(dtoa(1e-7) == "1e-7");

assert(dtoa(1e+308) == "1e+308");
assert(dtoa(-1e+308) == "-1e+308");
assert(dtoa(1e+309) == "Infinity");
assert(dtoa(-1e+309) == "-Infinity");
assert(dtoa(1e-308) == "1e-308");
assert(dtoa(-1e-308) == "-1e-308");
assert(dtoa(1e-323) == "1e-323");
assert(dtoa(-1e-323) == "-1e-323");
assert(dtoa(1e-324) == "0.0");

assert(dtoa(4294967272) == "4294967272.0");
assert(dtoa(1.23121456734562345678e-8) == "1.2312145673456234e-8");
// assert(dtoa(-0.0000010471975511965976) == "-0.0000010471975511965976"); // FIXME
assert(dtoa(555555555.55555555) == "555555555.5555556");
assert(dtoa(0.9999999999999999) == "0.9999999999999999");
assert(dtoa(0.99999999999999995) == "1.0");
assert(dtoa(1234e-2) == "12.34");
// assert(dtoa(0.1 + 0.2)   == "0.30000000000000004"); // FIXME
assert(dtoa(1.0 / 3.0) == "0.3333333333333333");
assert(dtoa(1.234e+20) == "123400000000000000000.0");
assert(dtoa(1.234e+21) == "1.234e+21");
assert(dtoa(2.71828) == "2.71828");
assert(dtoa(2.71828e-2) == "0.0271828");
assert(dtoa(2.71828e+2) == "271.828");
assert(dtoa(1.1e+128) == "1.1e+128");
assert(dtoa(1.1e-64) == "1.1e-64");
assert(dtoa(0.000035689) == "0.000035689");

// assert(dtoa(f32.MAX_VALUE) == "3.4028234663852886e+38"); // FIXME
// assert(dtoa(f32.EPSILON) == "1.1920928955078125e-7"); // FIXME
