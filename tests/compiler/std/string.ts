import { utoa32, itoa32, utoa64, itoa64, dtoa } from "util/number";

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

assert(parseInt("0") == 0);
assert(parseInt("1") == 1);
assert(parseInt("0b101") == 0b101);
assert(parseInt("0o707") == 0o707);
assert(parseInt("0xf0f") == 0xf0f);
assert(parseInt("0xF0F") == 0xf0f);
assert(parseInt("011") == 11); // not octal
assert(parseInt("0x1g") == 1); // not valid

assert(parseInt(" \t\n1") == 1);
assert(parseInt(" \t\n0x02") == 2);

assert(I32.parseInt("0x7FFFFFFF") == I32.MAX_VALUE);
assert(I64.parseInt("0x7FFFFFFFFFFFFFFF") == I64.MAX_VALUE);

assert(parseFloat("0") == 0);
assert(parseFloat("1") == 1);
assert(parseFloat("0.1") == 0.1);
assert(parseFloat(".25") == 0.25);
assert(parseFloat(".1foobar") == 0.1);

assert(parseFloat(" \t\n.1") == 0.1);

{
  let c = "a" + "b";
  assert(c == "ab");
  assert(c != "a");
}
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

{
  let a = String.fromCodePoint(0xFF61);
  let b = String.fromCodePoint(0xD800) + String.fromCodePoint(0xDC02);
  assert(a > b);
}

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

assert("".replace("", "") == "");
assert("".replace("", "+") == "+");
assert("+".replace("+", "") == "");
assert("+".replace("", "") == "+");
assert("abc".replace("-", "+") == "abc");
assert("abc".replace("abc", "+") == "+");
assert("abc".replace("abcd", "+") == "abc");
assert("abc".replace("ab", "ab") == "abc");
assert("a-b-c".replace("-", "+") == "a+b-c");
assert("abc".replace("", "+") == "+abc");
assert("\nabc".replace("\n", "+") == "+abc");
assert("abc".replace("c", "++") == "ab++");
assert("abc".replace("c", "") == "ab");

assert("".replaceAll("", "abc") == "abc");
assert("abc".replaceAll("-", "+") == "abc");

assert("abcabc".replaceAll("abc", "+") == "++");
assert("abcabcabc".replaceAll("abc", "+") == "+++");
assert("abcabc".replaceAll("ab", "ab") == "abcabc");
assert("abcabca".replaceAll("a", "+++") == "+++bc+++bc+++");
assert("abcabc".replaceAll("ab", "++") == "++c++c");
assert("cccc".replaceAll("cc", "++") == "++++");
assert("abc".replaceAll("abcd", "+") == "abc");
assert("abcd".replaceAll("e", "++") == "abcd");
assert("abc".replaceAll("bc", "+") == "a+");
assert("ab".replaceAll("ab", "+") == "+");
assert("a-b-c".replaceAll("-", "+") == "a+b+c");
// cpecial cases
assert("".replaceAll("", "") == "");
assert("".replaceAll("", "+") == "+");
assert("+".replaceAll("+", "") == "");
assert("+".replaceAll("", "") == "+");
assert("abc".replaceAll("abc", "-") == "-");
assert("abc".replaceAll("abd", "-") == "abc");
assert("abc".replaceAll("", "+") == "+a+b+c+");
assert("abc".replaceAll("", "") == "abc");

// test cases for slice method
str = "abcdefghijklmn";
assert(str.slice(0) == "abcdefghijklmn");
assert(str.slice(-1) == "n");
assert(str.slice(-5) == "jklmn");
assert(str.slice(2, 7) == "cdefg");
assert(str.slice(-11, -6) == "defgh");
assert(str.slice(4, 3) == "");
assert(str.slice(0, -1) == "abcdefghijklm");

{
  let sa: string[];

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
  /*sa = "a, b, c".split(", ");
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
  */
}

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


// toUpperCase
assert("abcdefghijklmnopqrstuvwxyz".toUpperCase() == "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "-1");
assert("aBcDeFgHiJkLmNoPqRsTuVwXyZ".toUpperCase() == "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "-2");
assert("AbCdEfGhIjKlMnOpQrStUvWxYz".toUpperCase() == "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "-3");

assert("09_AZ az.!".toUpperCase() == "09_AZ AZ.!", "1");
assert("Der Wechsel allein ist das Beständige".toUpperCase() == "DER WECHSEL ALLEIN IST DAS BESTÄNDIGE", "2");
assert("@ — Друг человека!".toUpperCase() == "@ — ДРУГ ЧЕЛОВЕКА!", "3");
assert("∮ E⋅da = Q, n → ∞, ∑ f(i) = ∏ g(i)".toUpperCase() == "∮ E⋅DA = Q, N → ∞, ∑ F(I) = ∏ G(I)", "4");
assert("ði ıntəˈnæʃənəl fəˈnɛtık əsoʊsiˈeıʃn".toUpperCase() == "ÐI INTƏˈNÆƩƏNƏL FƏˈNƐTIK ƏSOƱSIˈEIƩN", "5");
assert("Σὲ γνωρίζω ἀπὸ τὴν κόψη".toUpperCase() == "ΣῈ ΓΝΩΡΊΖΩ ἈΠῸ ΤῊΝ ΚΌΨΗ", "6");
assert("τοῦ σπαθιοῦ τὴν τρομερή,".toUpperCase() == "ΤΟΥ͂ ΣΠΑΘΙΟΥ͂ ΤῊΝ ΤΡΟΜΕΡΉ,", "7");
assert("σὲ γνωρίζω ἀπὸ τὴν ὄψη".toUpperCase() == "ΣῈ ΓΝΩΡΊΖΩ ἈΠῸ ΤῊΝ ὌΨΗ", "8");
assert("ποὺ μὲ βία μετράει τὴ γῆ.".toUpperCase() == "ΠΟῪ ΜῈ ΒΊΑ ΜΕΤΡΆΕΙ ΤῊ ΓΗ͂.", "9");
assert("Απ᾿ τὰ κόκκαλα βγαλμένη".toUpperCase() == "ΑΠ᾿ ΤᾺ ΚΌΚΚΑΛΑ ΒΓΑΛΜΈΝΗ", "10");
assert("τῶν ῾Ελλήνων τὰ ἱερά".toUpperCase() == "ΤΩ͂Ν ῾ΕΛΛΉΝΩΝ ΤᾺ ἹΕΡΆ", "11");
assert("καὶ σὰν πρῶτα ἀνδρειωμένη".toUpperCase() == "ΚΑῚ ΣᾺΝ ΠΡΩ͂ΤΑ ἈΝΔΡΕΙΩΜΈΝΗ", "12");
assert("χαῖρε, ὦ χαῖρε, ᾿Ελευθεριά!".toUpperCase() == "ΧΑΙ͂ΡΕ, Ὦ ΧΑΙ͂ΡΕ, ᾿ΕΛΕΥΘΕΡΙΆ!", "13");
assert("ῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦῦ".toUpperCase() == 'Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂Υ͂', "14");

// examples from https://github.com/tc39/test262/blob/ee3715ee56744ccc8aeb22a921f442e98090b3c1/test/built-ins/String/prototype/toUpperCase/special_casing.js
assert("\u00DF".toUpperCase() == "\u0053\u0053", "LATIN SMALL LETTER SHARP S");

assert("\u0130".toUpperCase() == "\u0130", "LATIN CAPITAL LETTER I WITH DOT ABOVE");

assert("\uFB00".toUpperCase() == "\u0046\u0046", "LATIN SMALL LIGATURE FF");
assert("\uFB01".toUpperCase() == "\u0046\u0049", "LATIN SMALL LIGATURE FI");
assert("\uFB02".toUpperCase() == "\u0046\u004C", "LATIN SMALL LIGATURE FL");
assert("\uFB03".toUpperCase() == "\u0046\u0046\u0049", "LATIN SMALL LIGATURE FFI");
assert("\uFB04".toUpperCase() == "\u0046\u0046\u004C", "LATIN SMALL LIGATURE FFL");
assert("\uFB05".toUpperCase() == "\u0053\u0054", "LATIN SMALL LIGATURE LONG S T");
assert("\uFB06".toUpperCase() == "\u0053\u0054", "LATIN SMALL LIGATURE ST");

assert("\u0587".toUpperCase() ==  "\u0535\u0552",  "ARMENIAN SMALL LIGATURE ECH YIWN");
assert("\uFB13".toUpperCase() ==  "\u0544\u0546",  "ARMENIAN SMALL LIGATURE MEN NOW");
assert("\uFB14".toUpperCase() ==  "\u0544\u0535",  "ARMENIAN SMALL LIGATURE MEN ECH");
assert("\uFB15".toUpperCase() ==  "\u0544\u053B",  "ARMENIAN SMALL LIGATURE MEN INI");
assert("\uFB16".toUpperCase() ==  "\u054E\u0546",  "ARMENIAN SMALL LIGATURE VEW NOW");
assert("\uFB17".toUpperCase() ==  "\u0544\u053D",  "ARMENIAN SMALL LIGATURE MEN XEH");

assert("\u0149".toUpperCase() ==  "\u02BC\u004E",  "LATIN SMALL LETTER N PRECEDED BY APOSTROPHE");

assert("\u0390".toUpperCase() ==  "\u0399\u0308\u0301",  "GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS");
assert("\u03B0".toUpperCase() ==  "\u03A5\u0308\u0301",  "GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS");

assert("\u01F0".toUpperCase() ==  "\u004A\u030C",  "LATIN SMALL LETTER J WITH CARON");
assert("\u1E96".toUpperCase() ==  "\u0048\u0331",  "LATIN SMALL LETTER H WITH LINE BELOW");
assert("\u1E97".toUpperCase() ==  "\u0054\u0308",  "LATIN SMALL LETTER T WITH DIAERESIS");
assert("\u1E98".toUpperCase() ==  "\u0057\u030A",  "LATIN SMALL LETTER W WITH RING ABOVE");
assert("\u1E99".toUpperCase() ==  "\u0059\u030A",  "LATIN SMALL LETTER Y WITH RING ABOVE");
assert("\u1E9A".toUpperCase() ==  "\u0041\u02BE",  "LATIN SMALL LETTER A WITH RIGHT HALF RING");

assert("\u1F50".toUpperCase() ==  "\u03A5\u0313",  "GREEK SMALL LETTER UPSILON WITH PSILI");
assert("\u1F52".toUpperCase() ==  "\u03A5\u0313\u0300",  "GREEK SMALL LETTER UPSILON WITH PSILI AND VARIA");
assert("\u1F54".toUpperCase() ==  "\u03A5\u0313\u0301",  "GREEK SMALL LETTER UPSILON WITH PSILI AND OXIA");
assert("\u1F56".toUpperCase() ==  "\u03A5\u0313\u0342",  "GREEK SMALL LETTER UPSILON WITH PSILI AND PERISPOMENI");
assert("\u1FB6".toUpperCase() ==  "\u0391\u0342",  "GREEK SMALL LETTER ALPHA WITH PERISPOMENI");
assert("\u1FC6".toUpperCase() ==  "\u0397\u0342",  "GREEK SMALL LETTER ETA WITH PERISPOMENI");
assert("\u1FD2".toUpperCase() ==  "\u0399\u0308\u0300",  "GREEK SMALL LETTER IOTA WITH DIALYTIKA AND VARIA");
assert("\u1FD3".toUpperCase() ==  "\u0399\u0308\u0301",  "GREEK SMALL LETTER IOTA WITH DIALYTIKA AND OXIA");
assert("\u1FD6".toUpperCase() ==  "\u0399\u0342",  "GREEK SMALL LETTER IOTA WITH PERISPOMENI");
assert("\u1FD7".toUpperCase() ==  "\u0399\u0308\u0342",  "GREEK SMALL LETTER IOTA WITH DIALYTIKA AND PERISPOMENI");
assert("\u1FE2".toUpperCase() ==  "\u03A5\u0308\u0300",  "GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND VARIA");
assert("\u1FE3".toUpperCase() ==  "\u03A5\u0308\u0301",  "GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND OXIA");
assert("\u1FE4".toUpperCase() ==  "\u03A1\u0313",  "GREEK SMALL LETTER RHO WITH PSILI");
assert("\u1FE6".toUpperCase() ==  "\u03A5\u0342",  "GREEK SMALL LETTER UPSILON WITH PERISPOMENI");
assert("\u1FE7".toUpperCase() ==  "\u03A5\u0308\u0342",  "GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND PERISPOMENI");
assert("\u1FF6".toUpperCase() ==  "\u03A9\u0342",  "GREEK SMALL LETTER OMEGA WITH PERISPOMENI");

assert("\u1F80".toUpperCase() ==  "\u1F08\u0399",  "GREEK SMALL LETTER ALPHA WITH PSILI AND YPOGEGRAMMENI");
assert("\u1F81".toUpperCase() ==  "\u1F09\u0399",  "GREEK SMALL LETTER ALPHA WITH DASIA AND YPOGEGRAMMENI");
assert("\u1F82".toUpperCase() ==  "\u1F0A\u0399",  "GREEK SMALL LETTER ALPHA WITH PSILI AND VARIA AND YPOGEGRAMMENI");
assert("\u1F83".toUpperCase() ==  "\u1F0B\u0399",  "GREEK SMALL LETTER ALPHA WITH DASIA AND VARIA AND YPOGEGRAMMENI");
assert("\u1F84".toUpperCase() ==  "\u1F0C\u0399",  "GREEK SMALL LETTER ALPHA WITH PSILI AND OXIA AND YPOGEGRAMMENI");
assert("\u1F85".toUpperCase() ==  "\u1F0D\u0399",  "GREEK SMALL LETTER ALPHA WITH DASIA AND OXIA AND YPOGEGRAMMENI");
assert("\u1F86".toUpperCase() ==  "\u1F0E\u0399",  "GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI");
assert("\u1F87".toUpperCase() ==  "\u1F0F\u0399",  "GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI");

assert("\u1F88".toUpperCase() ==  "\u1F08\u0399",  "GREEK CAPITAL LETTER ALPHA WITH PSILI AND PROSGEGRAMMENI");
assert("\u1F89".toUpperCase() ==  "\u1F09\u0399",  "GREEK CAPITAL LETTER ALPHA WITH DASIA AND PROSGEGRAMMENI");
assert("\u1F8A".toUpperCase() ==  "\u1F0A\u0399",  "GREEK CAPITAL LETTER ALPHA WITH PSILI AND VARIA AND PROSGEGRAMMENI");
assert("\u1F8B".toUpperCase() ==  "\u1F0B\u0399",  "GREEK CAPITAL LETTER ALPHA WITH DASIA AND VARIA AND PROSGEGRAMMENI");
assert("\u1F8C".toUpperCase() ==  "\u1F0C\u0399",  "GREEK CAPITAL LETTER ALPHA WITH PSILI AND OXIA AND PROSGEGRAMMENI");
assert("\u1F8D".toUpperCase() ==  "\u1F0D\u0399",  "GREEK CAPITAL LETTER ALPHA WITH DASIA AND OXIA AND PROSGEGRAMMENI");
assert("\u1F8E".toUpperCase() ==  "\u1F0E\u0399",  "GREEK CAPITAL LETTER ALPHA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI");
assert("\u1F8F".toUpperCase() ==  "\u1F0F\u0399",  "GREEK CAPITAL LETTER ALPHA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI");

assert("\u1F90".toUpperCase() ==  "\u1F28\u0399",  "GREEK SMALL LETTER ETA WITH PSILI AND YPOGEGRAMMENI");
assert("\u1F91".toUpperCase() ==  "\u1F29\u0399",  "GREEK SMALL LETTER ETA WITH DASIA AND YPOGEGRAMMENI");
assert("\u1F92".toUpperCase() ==  "\u1F2A\u0399",  "GREEK SMALL LETTER ETA WITH PSILI AND VARIA AND YPOGEGRAMMENI");
assert("\u1F93".toUpperCase() ==  "\u1F2B\u0399",  "GREEK SMALL LETTER ETA WITH DASIA AND VARIA AND YPOGEGRAMMENI");
assert("\u1F94".toUpperCase() ==  "\u1F2C\u0399",  "GREEK SMALL LETTER ETA WITH PSILI AND OXIA AND YPOGEGRAMMENI");
assert("\u1F95".toUpperCase() ==  "\u1F2D\u0399",  "GREEK SMALL LETTER ETA WITH DASIA AND OXIA AND YPOGEGRAMMENI");
assert("\u1F96".toUpperCase() ==  "\u1F2E\u0399",  "GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI");
assert("\u1F97".toUpperCase() ==  "\u1F2F\u0399",  "GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI");

assert("\u1F98".toUpperCase() ==  "\u1F28\u0399",  "GREEK CAPITAL LETTER ETA WITH PSILI AND PROSGEGRAMMENI");
assert("\u1F99".toUpperCase() ==  "\u1F29\u0399",  "GREEK CAPITAL LETTER ETA WITH DASIA AND PROSGEGRAMMENI");
assert("\u1F9A".toUpperCase() ==  "\u1F2A\u0399",  "GREEK CAPITAL LETTER ETA WITH PSILI AND VARIA AND PROSGEGRAMMENI");
assert("\u1F9B".toUpperCase() ==  "\u1F2B\u0399",  "GREEK CAPITAL LETTER ETA WITH DASIA AND VARIA AND PROSGEGRAMMENI");
assert("\u1F9C".toUpperCase() ==  "\u1F2C\u0399",  "GREEK CAPITAL LETTER ETA WITH PSILI AND OXIA AND PROSGEGRAMMENI");
assert("\u1F9D".toUpperCase() ==  "\u1F2D\u0399",  "GREEK CAPITAL LETTER ETA WITH DASIA AND OXIA AND PROSGEGRAMMENI");
assert("\u1F9E".toUpperCase() ==  "\u1F2E\u0399",  "GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI");
assert("\u1F9F".toUpperCase() ==  "\u1F2F\u0399",  "GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI");

assert("\u1FA0".toUpperCase() ==  "\u1F68\u0399",  "GREEK SMALL LETTER OMEGA WITH PSILI AND YPOGEGRAMMENI");
assert("\u1FA1".toUpperCase() ==  "\u1F69\u0399",  "GREEK SMALL LETTER OMEGA WITH DASIA AND YPOGEGRAMMENI");
assert("\u1FA2".toUpperCase() ==  "\u1F6A\u0399",  "GREEK SMALL LETTER OMEGA WITH PSILI AND VARIA AND YPOGEGRAMMENI");
assert("\u1FA3".toUpperCase() ==  "\u1F6B\u0399",  "GREEK SMALL LETTER OMEGA WITH DASIA AND VARIA AND YPOGEGRAMMENI");
assert("\u1FA4".toUpperCase() ==  "\u1F6C\u0399",  "GREEK SMALL LETTER OMEGA WITH PSILI AND OXIA AND YPOGEGRAMMENI");
assert("\u1FA5".toUpperCase() ==  "\u1F6D\u0399",  "GREEK SMALL LETTER OMEGA WITH DASIA AND OXIA AND YPOGEGRAMMENI");
assert("\u1FA6".toUpperCase() ==  "\u1F6E\u0399",  "GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI");
assert("\u1FA7".toUpperCase() ==  "\u1F6F\u0399",  "GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI");

assert("\u1FA8".toUpperCase() ==  "\u1F68\u0399",  "GREEK CAPITAL LETTER OMEGA WITH PSILI AND PROSGEGRAMMENI");
assert("\u1FA9".toUpperCase() ==  "\u1F69\u0399",  "GREEK CAPITAL LETTER OMEGA WITH DASIA AND PROSGEGRAMMENI");
assert("\u1FAA".toUpperCase() ==  "\u1F6A\u0399",  "GREEK CAPITAL LETTER OMEGA WITH PSILI AND VARIA AND PROSGEGRAMMENI");
assert("\u1FAB".toUpperCase() ==  "\u1F6B\u0399",  "GREEK CAPITAL LETTER OMEGA WITH DASIA AND VARIA AND PROSGEGRAMMENI");
assert("\u1FAC".toUpperCase() ==  "\u1F6C\u0399",  "GREEK CAPITAL LETTER OMEGA WITH PSILI AND OXIA AND PROSGEGRAMMENI");
assert("\u1FAD".toUpperCase() ==  "\u1F6D\u0399",  "GREEK CAPITAL LETTER OMEGA WITH DASIA AND OXIA AND PROSGEGRAMMENI");
assert("\u1FAE".toUpperCase() ==  "\u1F6E\u0399",  "GREEK CAPITAL LETTER OMEGA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI");
assert("\u1FAF".toUpperCase() ==  "\u1F6F\u0399",  "GREEK CAPITAL LETTER OMEGA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI");

assert("\u1FB3".toUpperCase() ==  "\u0391\u0399",  "GREEK SMALL LETTER ALPHA WITH YPOGEGRAMMENI");
assert("\u1FBC".toUpperCase() ==  "\u0391\u0399",  "GREEK CAPITAL LETTER ALPHA WITH PROSGEGRAMMENI");
assert("\u1FC3".toUpperCase() ==  "\u0397\u0399",  "GREEK SMALL LETTER ETA WITH YPOGEGRAMMENI");
assert("\u1FCC".toUpperCase() ==  "\u0397\u0399",  "GREEK CAPITAL LETTER ETA WITH PROSGEGRAMMENI");
assert("\u1FF3".toUpperCase() ==  "\u03A9\u0399",  "GREEK SMALL LETTER OMEGA WITH YPOGEGRAMMENI");
assert("\u1FFC".toUpperCase() ==  "\u03A9\u0399",  "GREEK CAPITAL LETTER OMEGA WITH PROSGEGRAMMENI");

assert("\u1FB2".toUpperCase() ==  "\u1FBA\u0399",  "GREEK SMALL LETTER ALPHA WITH VARIA AND YPOGEGRAMMENI");
assert("\u1FB4".toUpperCase() ==  "\u0386\u0399",  "GREEK SMALL LETTER ALPHA WITH OXIA AND YPOGEGRAMMENI");
assert("\u1FC2".toUpperCase() ==  "\u1FCA\u0399",  "GREEK SMALL LETTER ETA WITH VARIA AND YPOGEGRAMMENI");
assert("\u1FC4".toUpperCase() ==  "\u0389\u0399",  "GREEK SMALL LETTER ETA WITH OXIA AND YPOGEGRAMMENI");
assert("\u1FF2".toUpperCase() ==  "\u1FFA\u0399",  "GREEK SMALL LETTER OMEGA WITH VARIA AND YPOGEGRAMMENI");
assert("\u1FF4".toUpperCase() ==  "\u038F\u0399",  "GREEK SMALL LETTER OMEGA WITH OXIA AND YPOGEGRAMMENI");

assert("\u1FB7".toUpperCase() ==  "\u0391\u0342\u0399",  "GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI");
assert("\u1FC7".toUpperCase() ==  "\u0397\u0342\u0399",  "GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI");
assert("\u1FF7".toUpperCase() ==  "\u03A9\u0342\u0399",  "GREEK SMALL LETTER OMEGA WITH PERISPOMENI AND YPOGEGRAMMENI");

assert("\uD801\uDC28".toUpperCase() ==  "\uD801\uDC00",  "DESERET SMALL LETTER LONG I");
assert("\uD801\uDC29".toUpperCase() ==  "\uD801\uDC01",  "DESERET SMALL LETTER LONG E");
assert("\uD801\uDC2A".toUpperCase() ==  "\uD801\uDC02",  "DESERET SMALL LETTER LONG A");
assert("\uD801\uDC2B".toUpperCase() ==  "\uD801\uDC03",  "DESERET SMALL LETTER LONG AH");
assert("\uD801\uDC2C".toUpperCase() ==  "\uD801\uDC04",  "DESERET SMALL LETTER LONG O");
assert("\uD801\uDC2D".toUpperCase() ==  "\uD801\uDC05",  "DESERET SMALL LETTER LONG OO");
assert("\uD801\uDC2E".toUpperCase() ==  "\uD801\uDC06",  "DESERET SMALL LETTER SHORT I");
assert("\uD801\uDC2F".toUpperCase() ==  "\uD801\uDC07",  "DESERET SMALL LETTER SHORT E");
assert("\uD801\uDC30".toUpperCase() ==  "\uD801\uDC08",  "DESERET SMALL LETTER SHORT A");
assert("\uD801\uDC31".toUpperCase() ==  "\uD801\uDC09",  "DESERET SMALL LETTER SHORT AH");
assert("\uD801\uDC32".toUpperCase() ==  "\uD801\uDC0A",  "DESERET SMALL LETTER SHORT O");
assert("\uD801\uDC33".toUpperCase() ==  "\uD801\uDC0B",  "DESERET SMALL LETTER SHORT OO");
assert("\uD801\uDC34".toUpperCase() ==  "\uD801\uDC0C",  "DESERET SMALL LETTER AY");
assert("\uD801\uDC35".toUpperCase() ==  "\uD801\uDC0D",  "DESERET SMALL LETTER OW");
assert("\uD801\uDC36".toUpperCase() ==  "\uD801\uDC0E",  "DESERET SMALL LETTER WU");
assert("\uD801\uDC37".toUpperCase() ==  "\uD801\uDC0F",  "DESERET SMALL LETTER YEE");
assert("\uD801\uDC38".toUpperCase() ==  "\uD801\uDC10",  "DESERET SMALL LETTER H");
assert("\uD801\uDC39".toUpperCase() ==  "\uD801\uDC11",  "DESERET SMALL LETTER PEE");
assert("\uD801\uDC3A".toUpperCase() ==  "\uD801\uDC12",  "DESERET SMALL LETTER BEE");
assert("\uD801\uDC3B".toUpperCase() ==  "\uD801\uDC13",  "DESERET SMALL LETTER TEE");
assert("\uD801\uDC3C".toUpperCase() ==  "\uD801\uDC14",  "DESERET SMALL LETTER DEE");
assert("\uD801\uDC3D".toUpperCase() ==  "\uD801\uDC15",  "DESERET SMALL LETTER CHEE");
assert("\uD801\uDC3E".toUpperCase() ==  "\uD801\uDC16",  "DESERET SMALL LETTER JEE");
assert("\uD801\uDC3F".toUpperCase() ==  "\uD801\uDC17",  "DESERET SMALL LETTER KAY");
assert("\uD801\uDC40".toUpperCase() ==  "\uD801\uDC18",  "DESERET SMALL LETTER GAY");
assert("\uD801\uDC41".toUpperCase() ==  "\uD801\uDC19",  "DESERET SMALL LETTER EF");
assert("\uD801\uDC42".toUpperCase() ==  "\uD801\uDC1A",  "DESERET SMALL LETTER VEE");
assert("\uD801\uDC43".toUpperCase() ==  "\uD801\uDC1B",  "DESERET SMALL LETTER ETH");
assert("\uD801\uDC44".toUpperCase() ==  "\uD801\uDC1C",  "DESERET SMALL LETTER THEE");
assert("\uD801\uDC45".toUpperCase() ==  "\uD801\uDC1D",  "DESERET SMALL LETTER ES");
assert("\uD801\uDC46".toUpperCase() ==  "\uD801\uDC1E",  "DESERET SMALL LETTER ZEE");
assert("\uD801\uDC47".toUpperCase() ==  "\uD801\uDC1F",  "DESERET SMALL LETTER ESH");
assert("\uD801\uDC48".toUpperCase() ==  "\uD801\uDC20",  "DESERET SMALL LETTER ZHEE");
assert("\uD801\uDC49".toUpperCase() ==  "\uD801\uDC21",  "DESERET SMALL LETTER ER");
assert("\uD801\uDC4A".toUpperCase() ==  "\uD801\uDC22",  "DESERET SMALL LETTER EL");
assert("\uD801\uDC4B".toUpperCase() ==  "\uD801\uDC23",  "DESERET SMALL LETTER EM");
assert("\uD801\uDC4C".toUpperCase() ==  "\uD801\uDC24",  "DESERET SMALL LETTER EN");
assert("\uD801\uDC4D".toUpperCase() ==  "\uD801\uDC25",  "DESERET SMALL LETTER ENG");
assert("\uD801\uDC4E".toUpperCase() ==  "\uD801\uDC26",  "DESERET SMALL LETTER OI");
assert("\uD801\uDC4F".toUpperCase() ==  "\uD801\uDC27",  "DESERET SMALL LETTER EW");


export function getString(): string {
  return str;
}

// Unleak globals

__release(changetype<usize>(str));
