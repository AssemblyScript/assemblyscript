import "allocator/arena";

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
assert(str.indexOf(",") == 2);
assert(str.indexOf("x") == -1);

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

assert("09_AZ az.!".toUpperCase() == "09_AZ AZ.!");
assert("09_AZ az.!".toLowerCase() == "09_az az.!");
assert("Der Wechsel allein ist das Beständige".toUpperCase() == "DER WECHSEL ALLEIN IST DAS BESTÄNDIGE");
assert("DER WECHSEL ALLEIN IST DAS BESTÄNDIGE".toLowerCase() == "der wechsel allein ist das beständige");
assert("@ — Друг человека!".toUpperCase() == "@ — ДРУГ ЧЕЛОВЕКА!");
assert("@ — ДРУГ ЧЕЛОВЕКА!".toLowerCase() == "@ — друг человека!");
assert("∮ E⋅da = Q, n → ∞, ∑ f(i) = ∏ g(i)".toUpperCase() == "∮ E⋅DA = Q, N → ∞, ∑ F(I) = ∏ G(I)");
assert("∮ E⋅DA = Q, N → ∞, ∑ F(I) = ∏ G(I)".toLowerCase() == "∮ e⋅da = q, n → ∞, ∑ f(i) = ∏ g(i)");
assert("ði ıntəˈnæʃənəl fəˈnɛtık əsoʊsiˈeıʃn".toUpperCase() == "ÐI INTƏˈNÆƩƏNƏL FƏˈNƐTIK ƏSOƱSIˈEIƩN");
assert("ÐI INTƏˈNÆƩƏNƏL FƏˈNƐTIK ƏSOƱSIˈEIƩN".toLowerCase() == "ði intəˈnæʃənəl fəˈnɛtik əsoʊsiˈeiʃn");

assert("Σὲ γνωρίζω ἀπὸ τὴν κόψη".toUpperCase() == "ΣῈ ΓΝΩΡΊΖΩ ἈΠῸ ΤῊΝ ΚΌΨΗ");
// assert("τοῦ σπαθιοῦ τὴν τρομερή,".toUpperCase() == "ΤΟΥ͂ ΣΠΑΘΙΟΥ͂ ΤῊΝ ΤΡΟΜΕΡΉ,"); fail!
assert("σὲ γνωρίζω ἀπὸ τὴν ὄψη".toUpperCase() == "ΣῈ ΓΝΩΡΊΖΩ ἈΠῸ ΤῊΝ ὌΨΗ");
// assert("ποὺ μὲ βία μετράει τὴ γῆ.".toUpperCase() == "ΠΟῪ ΜῈ ΒΊΑ ΜΕΤΡΆΕΙ ΤῊ ΓΗ͂."); fail!
assert("Απ᾿ τὰ κόκκαλα βγαλμένη".toUpperCase() == "ΑΠ᾿ ΤᾺ ΚΌΚΚΑΛΑ ΒΓΑΛΜΈΝΗ");
// assert("τῶν ῾Ελλήνων τὰ ἱερά".toUpperCase() == "ΤΩ͂Ν ῾ΕΛΛΉΝΩΝ ΤᾺ ἹΕΡΆ"); fail!
// assert("καὶ σὰν πρῶτα ἀνδρειωμένη".toUpperCase() == "ΚΑῚ ΣᾺΝ ΠΡΩ͂ΤΑ ἈΝΔΡΕΙΩΜΈΝΗ"); fail!
// assert("χαῖρε, ὦ χαῖρε, ᾿Ελευθεριά!".toUpperCase() == "ΧΑΙ͂ΡΕ, Ὦ ΧΑΙ͂ΡΕ, ᾿ΕΛΕΥΘΕΡΙΆ!"); fail!
