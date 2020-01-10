import { utoa32, itoa32, utoa64, itoa64, dtoa } from "util/number";

@external("string", "toUpperCaseFromIndex")
declare function toUpperCaseFromIndex(index: i32, codePointIndex: i32): i32;

@external("string", "toLowerCaseFromIndex")
declare function toLowerCaseFromIndex(index: i32, codePointIndex: i32): i32;

// preliminary
var str: string = "hi, I'm a string";
var nullStr: string;

// exactly once in static memory
assert(changetype<usize>(str) == changetype<usize>("hi, I'm a string"));

assert("\xDF" == "ß");
assert("\xDF\xDF" == "ßß");
assert("\xDFab" == "ßab");

assert(str.length == 16);
assert(str.charCodeAt(0) == 0x68);

assert(!!"" == false);
assert(!!"\0" == true);
assert(!!"a" == true);

assert(String.fromCharCode(0) == "\0");
assert(String.fromCharCode(54) == "6");
assert(String.fromCharCode(0x10000 + 54) == "6");
assert(String.fromCharCode(0xD800, 0xDF00) == "𐌀");

assert(String.fromCodePoint(0) == "\0");
assert(String.fromCodePoint(54) == "6");
assert(String.fromCodePoint(0x1D306) == "\uD834\uDF06");

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

assert("".localeCompare("") == 0);
assert("a".localeCompare("") == 1);
assert("".localeCompare("a") == -1);
assert("null".localeCompare("null") == 0);
assert("abc".localeCompare("abd") == -1);
assert("abd".localeCompare("abc") == 1);
assert("abcd".localeCompare("abc") == 1);
assert("abc".localeCompare("abcd") == -1);
assert("".localeCompare("   ") == -1);
assert("\0".localeCompare("") == 1);

assert("".trimStart() == "");
assert("ab c".trimStart() == "ab c");
assert(" \n\t\rabc \t\r ".trimStart() == "abc \t\r ");

assert("".trimEnd() == "");
assert("ab c".trimEnd() == "ab c");
assert(" \n\t\rabc \t\r ".trimEnd() == " \n\t\rabc");

assert("".trim() == "");
assert("ab c".trim() == "ab c");
assert(" \n\t\rabc \t\r ".trim() == "abc");

assert(parseInt("0") == 0);
assert(parseInt("000") == 0);
assert(parseInt("1") == 1);
assert(parseInt("0001") == 1);
assert(parseInt("0b101") == 0b101);
assert(parseInt("0o707") == 0o707);
assert(parseInt("0xf0f") == 0xf0f);
assert(parseInt("0xF0F") == 0xf0f);
assert(parseInt("011") == 11); // not octal
assert(parseInt("0x1g") == 1); // not valid
assert(parseInt("-123") == -123);
assert(parseInt("+123") == 123);
assert(parseInt("-12.3") == -12);

assert(parseInt(" \t\n1") == 1);
assert(parseInt(" \t\n0x02") == 2);

assert(I32.parseInt("0x7FFFFFFF") == I32.MAX_VALUE);
assert(I64.parseInt("0x7FFFFFFFFFFFFFFF") == I64.MAX_VALUE);

// quick draft tests
assert(parseFloat("0") == 0);
assert(parseFloat("1") == 1);
assert(parseFloat("1.") == 1);
assert(parseFloat("1.00") == 1);
assert(parseFloat("1e-5") == 1e-5);
assert(parseFloat("-1e-5") == -1e-5);
assert(parseFloat("-0.3e-22") == -0.3e-22);
assert(parseFloat("0.3e+22") == 0.3e+22);
assert(parseFloat("1e-1") == 0.1);
assert(parseFloat("0.1e-0") == 0.1);
assert(parseFloat("0.1") == 0.1);
assert(parseFloat(".25") == 0.25);
assert(parseFloat("1.e+3a") == 1e+3);
assert(parseFloat("1.0e-10") == 1e-10);
assert(parseFloat("1.0e-30") == 1e-30);
assert(parseFloat("1.0e-323") == 1e-323);
assert(parseFloat("1.0e-324") == 0);
assert(parseFloat("1e+308") == 1e+308);
assert(parseFloat("1e+309") == Infinity);
assert(isNaN(parseFloat("")));

// with numeric separators (from tc39/test262)
assert(parseFloat("1.0e-1_0") == 1e-1);
assert(parseFloat("1.0e-10_0") == 1e-10);
assert(parseFloat("1.0e+1_0") == 1e+1);
assert(parseFloat("1_0") == 1);
assert(parseFloat("1_1") == 1);
assert(parseFloat("10.00_01e2") == 10.00);
assert(parseFloat("123456789_4") == 123456789);
assert(parseFloat("1_0123456789") == 1);

assert(parseFloat("1e-60") == 1e-60);
assert(parseFloat("1e60") == 1e+60);

// special cases
assert(parseFloat("-.00000") == -0.0);
assert(parseFloat("1x") == 1.0);
assert(parseFloat("-11e-1string") == -1.1);
assert(parseFloat("01e1string") == 10);
assert(parseFloat("010string") == 10);
assert(parseFloat("+.22e-1") == 0.022);
assert(parseFloat("11.s1") == 11);
assert(parseFloat("0x0") == 0.0);
assert(parseFloat("0x5") == 0.0);
assert(parseFloat("0xD") == 0.0);
assert(parseFloat("\u000B1.1") == 1.1);
assert(parseFloat("\u000B\u000B-1.1") == -1.1);
assert(parseFloat("\u000C\u000C-1.1") == -1.1);
assert(parseFloat("\u2028\u2028-1.1") == -1.1);
assert(parseFloat("\u2029\u2029-1.1") == -1.1);
assert(parseFloat("00000") == 0.0);
assert(parseFloat("0000a") == 0.0);
assert(parseFloat("00001") == 1.0);
assert(parseFloat("00.00") == 0.0);
assert(parseFloat("00.0a") == 0.0);
assert(parseFloat("1e1e") == 10.0);
assert(parseFloat("1e+0001") == 10.0);
assert(parseFloat("0e+100") == 0.0);
assert(parseFloat("1.-1.") == 1.0);
assert(parseFloat("1e-1.2") == 0.1);
assert(parseFloat("1ex") == 1.0);
assert(parseFloat("1e1x") == 10);
assert(parseFloat("1e-x") == 1.0);
assert(parseFloat("1e-1x") == 0.1);
assert(parseFloat("0.1e-1x") == 0.01);
assert(parseFloat("00.") == 0.0);
assert(parseFloat(".00") == 0.0);
assert(parseFloat(".0.") == 0.0);
assert(parseFloat(".1.") == 0.1);
assert(parseFloat("0..") == 0.0);
assert(parseFloat("0.a") == 0.0);
assert(parseFloat("1..1") == 1.0);
assert(parseFloat("0.1.1") == 0.1);
assert(parseFloat("0. 1") == +0.0);
assert(parseFloat("+0.0") == +0.0);
assert(parseFloat("-0.0") == -0.0);
assert(parseFloat("+0") == +0);
assert(parseFloat("-0") == -0);
assert(isNaN(parseFloat("+")));
assert(isNaN(parseFloat("-")));
assert(isNaN(parseFloat("--0")));
assert(isNaN(parseFloat("++0")));
assert(isNaN(parseFloat(".a")));
assert(isNaN(parseFloat("..0")));
assert(isNaN(parseFloat(".")));
assert(isNaN(parseFloat("..")));
assert(isNaN(parseFloat("NaN")));
assert(isNaN(parseFloat("\u000B")));
assert(isNaN(parseFloat("\u180E")));
assert(isNaN(parseFloat("\u180E1.1")));
assert(isNaN(parseFloat("\u180E\u180E1.1")));
assert(isNaN(parseFloat("\u000C")));
assert(isNaN(parseFloat("true")));
assert(isNaN(parseFloat("false")));
assert(parseFloat("1e22") == 1e22);
assert(parseFloat("1e-22") == 1e-22);
assert(parseFloat("1e23") == 1e23);
assert(parseFloat("1e-23") == 1e-23);
assert(parseFloat("1e37") == 1e37);
assert(parseFloat("1e-37") == 1e-37);
assert(parseFloat("1e38") == 1e38);
assert(parseFloat("1e-38") == 1e-38);
assert(parseFloat("2.220446049250313e-16") == f64.EPSILON);
assert(parseFloat("1.7976931348623157e+308") == f64.MAX_VALUE);
assert(parseFloat("5e-324") == f64.MIN_VALUE);
assert(parseFloat("0.000001e+314") == 1e+308);
assert(parseFloat("0.00000000000000000000000000000000000000000000000000000001e+56") == 1.0);
assert(parseFloat("+1E-325") == 0.0);
assert(parseFloat("+1E+309") == Infinity);
assert(parseFloat("-1E-325") == 0.0);
assert(parseFloat("-1E+309") == -Infinity);
assert(parseFloat("1e-1000000") == 0.0);
assert(parseFloat("1e+1000000") == Infinity);
assert(parseFloat("1.e360") == Infinity);
assert(parseFloat(" Infinity") == Infinity);
assert(parseFloat("+Infinity") == Infinity);
assert(parseFloat("-Infinity") == -Infinity);
assert(parseFloat("Infinityx") == Infinity);
assert(parseFloat("Infinity+1") == Infinity);
assert(isNaN(parseFloat("Infi")));
assert(isNaN(parseFloat("+Infinit")));
assert(isNaN(parseFloat("infinity")));

// precision tests
// 2^-1074 * 0.5 - eps
assert(parseFloat(".2470328229206232720882843964341106861825299013071623822127928412503377536351043e-323") == 0);

// 2^-1074 * 0.5 + eps
// const Ox1p_1074 = reinterpret<f64>(0x1); // 0x1p-1074
// assert(parseFloat(".2470328229206232720882843964341106861825299013071623822127928412503377536351044e-323") == Ox1p_1074);
// FAIL! expected: 5e-324, actual: 0

// 2^-1074 * 1.5 - eps
// assert(parseFloat(".7410984687618698162648531893023320585475897039214871466383785237510132609053131e-323") == Ox1p_1074);
// FAIL! expected: 5e-324, actual: 0

// 2^-1074 * 1.5 + eps
const Ox1p_1073 = reinterpret<f64>(0x2); // 0x1p-1073
assert(parseFloat(".7410984687618698162648531893023320585475897039214871466383785237510132609053132e-323") == Ox1p_1073);

// 2^-1022 + 2^-1075 + eps
const Ox1_0000000000001p_1022 = reinterpret<f64>(0x10000000000001); // 0x1.0000000000001p-1022
assert(parseFloat(".2225073858507201630123055637955676152503612414573018013083228724049586647606760e-307") == Ox1_0000000000001p_1022);

// 2^1024 - 2^970 - eps = f64.MAX_VALUE
assert(parseFloat(
  "17976931348623158079372897140530341507993413271003782693617377898044" +
  "49682927647509466490179775872070963302864166928879109465555478519404" +
  "02630657488671505820681908902000708383676273854845817711531764475730" +
  "27006985557136695962284291481986083493647529271907416844436551070434" +
  "2711559699508093042880177904174497791.999999999999999999999999999999"
) == f64.MAX_VALUE); // 0x1.fffffffffffffp1023

// 2^1024 - 2^970
// assert(parseFloat(
//   "17976931348623158079372897140530341507993413271003782693617377898044" +
//   "49682927647509466490179775872070963302864166928879109465555478519404" +
//   "02630657488671505820681908902000708383676273854845817711531764475730" +
//   "27006985557136695962284291481986083493647529271907416844436551070434" +
//   "2711559699508093042880177904174497792"
// ) == Infinity); // FAIL expect: Infinity actual: 1.7976931348623157e+308

// tests for random values
assert(parseFloat("0.975353188879950261380713527614716440439e-103") == 9.753531888799502e-104);
assert(parseFloat(".5961860348131807091861002266453941950428e00") == 0.59618603481318067);
assert(parseFloat("1.815013169218038729887460898733526957442e-1") == 0.18150131692180388);
assert(parseFloat("42.07082357534453600681618685682257590772e-2") == 0.42070823575344535);
assert(parseFloat("665.4686306516261456328973225579833470816e-3") == 0.66546863065162609);
assert(parseFloat("6101.852922970868621786690495485449831753e-4") == 0.61018529229708685);
assert(parseFloat("76966.95208236968077849464348875471158549e-5") == 0.76966952082369677);
assert(parseFloat("250506.5322228682496132604807222923702304e-6") == 0.25050653222286823);
assert(parseFloat("2740037.230228005325852424697698331177377e-7") == 0.27400372302280052);
assert(parseFloat("20723093.50049742645941529268715428324490e-8") == 0.20723093500497428);
assert(parseFloat("0.7900280238081604956226011047460238748912e1") == 7.9002802380816046);
assert(parseFloat("0.9822860653737296848190558448760465863597e2") == 98.228606537372968);
assert(parseFloat("0.7468949723190370809405570560160405324869e3") == 746.89497231903704);
assert(parseFloat("0.1630268320282728475980459844271031751665e4") == 1630.2683202827284);
assert(parseFloat("0.4637168629719170695109918769645492022088e5") == 46371.686297191707);
assert(parseFloat("0.6537805944497711554209461686415872067523e6") == 653780.59444977110);
assert(parseFloat("0.2346324356502437045212230713960457676531e6") == 234632.43565024371);
assert(parseFloat("0.9709481716420048341897258980454298205278e8") == 97094817.164200485);
assert(parseFloat("0.4996908522051874110779982354932499499602e9") == 499690852.20518744);
assert(parseFloat("0.7925201200557245861944011267041787505149e22") == 7.9252012005572460e+21);
assert(parseFloat("0.6096564585983177408934352570213377475739e30") == 6.0965645859831775e+29);
assert(parseFloat("0.4800416117477028787874360205023549497128e67") == 4.8004161174770290e+66);
assert(parseFloat("0.8524829079817968224830337931052781641483e105") == 8.524829079817968e+104);
assert(parseFloat("0.0327123929170978211544706937274895608425e269") == 3.271239291709782e+267);

// with whitespaces
assert(isNaN(parseFloat(" \t\n")));
assert(parseFloat(" \t\n\r.1") == 0.1);

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

assert(str.substr(0) == "abcdefghijklmn");
assert(str.substr(-1) == "n");
assert(str.substr(-5) == "jklmn");
assert(str.substr(2, 7) == "cdefghi");
assert(str.substr(-11, -6) == "");
assert(str.substr(4, 3) == "efg");
assert(str.substr(0, -1) == "");
assert(str.substr(0, 100) == "abcdefghijklmn");
assert(str.substr(4, 4) == "efgh");
assert(str.substr(4, -3) == "");

assert(str.substring(0) == "abcdefghijklmn");
assert(str.substring(-1) == "abcdefghijklmn");
assert(str.substring(-5) == "abcdefghijklmn");
assert(str.substring(2, 7) == "cdefg");
assert(str.substring(-11, -6) == "");
assert(str.substring(4, 3) == "d");
assert(str.substring(0, -1) == "");
assert(str.substring(0, 100) == "abcdefghijklmn");
assert(str.substring(4, 4) == "");
assert(str.substring(4, -3) == "abcd");

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
}

assert(itoa32(0) == "0");
assert(itoa32(1) == "1");
assert(itoa32(8) == "8");
assert(itoa32(12) == "12");
assert(itoa32(123) == "123");
assert(itoa32(-1000) == "-1000");
assert(itoa32(1234) == "1234");
assert(itoa32(12345) == "12345");
assert(itoa32(123456) == "123456");
assert(itoa32(1111111) == "1111111");
assert(itoa32(1234567) == "1234567");
assert(itoa32(12345678) == "12345678");
assert(itoa32(123456789) == "123456789");
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
assert(utoa64(12) == "12");
assert(utoa64(123) == "123");
assert(utoa64(1234) == "1234");
assert(utoa64(12345) == "12345");
assert(utoa64(123456) == "123456");
assert(utoa64(1234567) == "1234567");
assert(utoa64(99999999) == "99999999");
assert(utoa64(100000000) == "100000000");
assert(utoa64(0xffffffff) == "4294967295");
assert(utoa64(4294967297) == "4294967297");
assert(utoa64(0xfffffffff) == "68719476735");
assert(utoa64(868719476735) == "868719476735");
assert(utoa64(8687194767350) == "8687194767350");
assert(utoa64(86871947673501) == "86871947673501");
assert(utoa64(999868719476735) == "999868719476735");
assert(utoa64(9999868719476735) == "9999868719476735");
assert(utoa64(19999868719476735) == "19999868719476735");
assert(utoa64(129999868719476735) == "129999868719476735");
assert(utoa64(1239999868719476735) == "1239999868719476735");
assert(utoa64(u64.MAX_VALUE)       == "18446744073709551615");

assert(itoa64(0) == "0");
assert(itoa64(-1234) == "-1234");
assert(itoa64(0xffffffff) == "4294967295");
assert(itoa64(4294967297) == "4294967297");
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

// Basic case mapping tests
assert("".toUpperCase() == "");
assert("".toLowerCase() == "");
assert("09_AZ az.!\n".toUpperCase() == "09_AZ AZ.!\n");
assert("09_AZ az.!\t".toLowerCase() == "09_az az.!\t");
assert("Der Wechsel allein ist das Beständige".toUpperCase() == "DER WECHSEL ALLEIN IST DAS BESTÄNDIGE");
assert("DER WECHSEL ALLEIN IST DAS BESTÄNDIGE".toLowerCase() == "der wechsel allein ist das beständige");
assert("@ — Друг человека!".toUpperCase() == "@ — ДРУГ ЧЕЛОВЕКА!");
assert("@ — ДРУГ ЧЕЛОВЕКА!".toLowerCase() == "@ — друг человека!");
assert("∮ E⋅da = Q, n → ∞, ∑ f(i) = ∏ g(i)".toUpperCase() == "∮ E⋅DA = Q, N → ∞, ∑ F(I) = ∏ G(I)");
assert("∮ E⋅DA = Q, N → ∞, ∑ F(I) = ∏ G(I)".toLowerCase() == "∮ e⋅da = q, n → ∞, ∑ f(i) = ∏ g(i)");
assert("ði ıntəˈnæʃənəl fəˈnɛtık əsoʊsiˈeıʃn".toUpperCase() == "ÐI INTƏˈNÆƩƏNƏL FƏˈNƐTIK ƏSOƱSIˈEIƩN");
assert("ÐI INTƏˈNÆƩƏNƏL FƏˈNƐTIK ƏSOƱSIˈEIƩN".toLowerCase() == "ði intəˈnæʃənəl fəˈnɛtik əsoʊsiˈeiʃn");
assert("Σὲ γνωρίζω ἀπὸ τὴν κόψη".toUpperCase() == "ΣῈ ΓΝΩΡΊΖΩ ἈΠῸ ΤῊΝ ΚΌΨΗ");
assert("τοῦ σπαθιοῦ τὴν τρομερή,".toUpperCase() == "ΤΟΥ͂ ΣΠΑΘΙΟΥ͂ ΤῊΝ ΤΡΟΜΕΡΉ,");
assert("σὲ γνωρίζω ἀπὸ τὴν ὄψη".toUpperCase() == "ΣῈ ΓΝΩΡΊΖΩ ἈΠῸ ΤῊΝ ὌΨΗ");
assert("ποὺ μὲ βία μετράει τὴ γῆ.".toUpperCase() == "ΠΟῪ ΜῈ ΒΊΑ ΜΕΤΡΆΕΙ ΤῊ ΓΗ͂.");
assert("Απ᾿ τὰ κόκκαλα βγαλμένη".toUpperCase() == "ΑΠ᾿ ΤᾺ ΚΌΚΚΑΛΑ ΒΓΑΛΜΈΝΗ");
assert("τῶν ῾Ελλήνων τὰ ἱερά".toUpperCase() == "ΤΩ͂Ν ῾ΕΛΛΉΝΩΝ ΤᾺ ἹΕΡΆ");
assert("καὶ σὰν πρῶτα ἀνδρειωμένη".toUpperCase() == "ΚΑῚ ΣᾺΝ ΠΡΩ͂ΤΑ ἈΝΔΡΕΙΩΜΈΝΗ");
assert("χαῖρε, ὦ χαῖρε, ᾿Ελευθεριά!".toUpperCase() == "ΧΑΙ͂ΡΕ, Ὦ ΧΑΙ͂ΡΕ, ᾿ΕΛΕΥΘΕΡΙΆ!");
assert(
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ /0123456789abcdefghijklmnopqrstuvwxyz".toUpperCase() ==
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ /0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
);
assert(
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ /0123456789abcdefghijklmnopqrstuvwxyz".toLowerCase() ==
  "abcdefghijklmnopqrstuvwxyz /0123456789abcdefghijklmnopqrstuvwxyz"
);
assert("ß".toUpperCase() == "SS");
assert("İ".toLowerCase() == "i̇"); // 0x0130
assert(
  "£©µÀÆÖÞßéöÿ–—‘“”„†•…‰™œŠŸž€ ΑΒΓΔΩαβγδω АБВГДабвгд∀∂∈ℝ∧∪≡∞ ↑↗↨↻⇣ ┐┼╔╘░►☺♀ ﬁ�⑀₂ἠḂӥẄɐː⍎אԱა".toUpperCase() ==
  "£©ΜÀÆÖÞSSÉÖŸ–—‘“”„†•…‰™ŒŠŸŽ€ ΑΒΓΔΩΑΒΓΔΩ АБВГДАБВГД∀∂∈ℝ∧∪≡∞ ↑↗↨↻⇣ ┐┼╔╘░►☺♀ FI�⑀₂ἨḂӤẄⱯː⍎אԱᲐ"
);
assert("ß".toUpperCase().toLowerCase() == "ss");
assert("ﬁ".toUpperCase().toLowerCase() == "fi");
assert(
  "𠜎 𠜱 𠝹 𠱓 𠱸 𠲖 𠳏 𠳕 𠴕 𠵼 𠵿 𠸎 𠸏 𠹷 𠺝 𠺢 𠻗 𠻹 𠻺 𠼭 𠼮 𠽌 𠾴 𠾼 𠿪 𡁜 𡁯 𡁵 𡁶 𡁻 𡃁"
  .toUpperCase().toLowerCase() ==
  "𠜎 𠜱 𠝹 𠱓 𠱸 𠲖 𠳏 𠳕 𠴕 𠵼 𠵿 𠸎 𠸏 𠹷 𠺝 𠺢 𠻗 𠻹 𠻺 𠼭 𠼮 𠽌 𠾴 𠾼 𠿪 𡁜 𡁯 𡁵 𡁶 𡁻 𡃁"
);

assert(String.fromCodePoint(0x10000).toLowerCase() == "𐀀");
assert(String.fromCodePoint(0x10000).toUpperCase() == "𐀀");

// Tests some special casing for lower case mapping
assert("\u1F88".toLowerCase() == "\u1F80");
assert("\u1F8F".toLowerCase() == "\u1F87");
assert("\u1FFC".toLowerCase() == "\u1FF3");

// Tests some special casing for upper case mapping
assert("\uFB00".toUpperCase() == "FF");
assert("\uFB01".toUpperCase() == "FI");
assert("\uFB02".toUpperCase() == "FL");
assert("\uFB03".toUpperCase() == "FFI");
assert("\uFB04".toUpperCase() == "FFL");
assert("\uFB05".toUpperCase() == "ST");
assert("\uFB06".toUpperCase() == "ST");
assert("\u01F0".toUpperCase() == "J\u030C");
assert("\u1E96".toUpperCase() == "H\u0331");
assert("\u1E97".toUpperCase() == "T\u0308");
assert("\u1E98".toUpperCase() == "W\u030A");
assert("\u1E99".toUpperCase() == "Y\u030A");
assert("\u1E9A".toUpperCase() == "A\u02BE");

// Test full unicode range `0x0 - 0x10FFFF` and asserting with v8 engine.
for (let i = 0; i <= 0x10FFFF; i++) {
  let source = String.fromCodePoint(i);
  let origLower = source.toLowerCase();
  let origUpper = source.toUpperCase();
  let code1: u64, code2: u64;

  // collect all code points for lower case on AssemblyScript side
  let origLowerCode = <u64>origLower.codePointAt(0);
  if ((code1 = origLower.codePointAt(1)) >= 0) origLowerCode += <u64>code1 << 16;
  if ((code2 = origLower.codePointAt(2)) >= 0) origLowerCode += <u64>code2 << 32;

  // collect all code points for upper case on AssemblyScript side
  let origUpperCode = <u64>origUpper.codePointAt(0);
  if ((code1 = origUpper.codePointAt(1)) >= 0) origUpperCode += <u64>code1 << 16;
  if ((code2 = origUpper.codePointAt(2)) >= 0) origUpperCode += <u64>code2 << 32;

  // collect all code points for lower case on JavaScript side
  let expectLowerCode = <u64>toLowerCaseFromIndex(i, 0);
  if ((code1 = <i64>toLowerCaseFromIndex(i, 1)) >= 0) expectLowerCode += <u64>code1 << 16;
  if ((code2 = <i64>toLowerCaseFromIndex(i, 2)) >= 0) expectLowerCode += <u64>code2 << 32;

  // collect all code points for upper case on JavaScript side
  let expectUpperCode = <u64>toUpperCaseFromIndex(i, 0);
  if ((code1 = <i64>toUpperCaseFromIndex(i, 1)) >= 0) expectUpperCode += <u64>code1 << 16;
  if ((code2 = <i64>toUpperCaseFromIndex(i, 2)) >= 0) expectUpperCode += <u64>code2 << 32;

  if (origLowerCode != expectLowerCode) {
    trace("origLowerCode != expectLowerCode", 3, i, <f64>origLowerCode, <f64>expectLowerCode);
  }

  if (origUpperCode != expectUpperCode) {
    trace("origUpperCode != expectUpperCode", 3, i, <f64>origUpperCode, <f64>expectUpperCode);
 }

  assert(origLowerCode == expectLowerCode);
  assert(origUpperCode == expectUpperCode);
}

export function getString(): string {
  return str;
}

// Unleak globals

__release(changetype<usize>(str));
