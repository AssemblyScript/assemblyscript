import "allocator/arena";

import { utoa32, itoa32, utoa64, itoa64 } from "internal/itoa";

// declare function logi(i: i32): void;

// preliminary

var str: string = "hi, I'm a string";
var nullStr: string;

// exactly once in static memory
assert(changetype<usize>(str) == changetype<usize>("hi, I'm a string"));

assert(str.length == 16);
assert(str.charCodeAt(0) == 0x68);
assert(str.startsWith("hi"));
assert(str.endsWith("string"));
assert(str.includes("I'm"));

assert("".indexOf("") == 0);
assert("".indexOf("hi") == -1);
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
assert(itoa64(0xffffffff)  == "4294967295");
assert(itoa64(-0xffffffff)  == "-4294967295");
assert(itoa64(68719476735) == "68719476735");
assert(itoa64(-68719476735) == "-68719476735");
assert(itoa64(-868719476735) == "-868719476735");
assert(itoa64(-999868719476735) == "-999868719476735");
assert(itoa64(-19999868719476735) == "-19999868719476735");
assert(itoa64(i64.MAX_VALUE) == "9223372036854775807");
assert(itoa64(i64.MIN_VALUE) == "-9223372036854775808");
