@external("string_casemapping", "toUpperCaseFromIndex")
declare function toUpperCaseFromIndex(index: i32, codePointIndex: i32): i32;

@external("string_casemapping", "toLowerCaseFromIndex")
declare function toLowerCaseFromIndex(index: i32, codePointIndex: i32): i32;

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
  "𠜎 𠜱 𠝹 𠱓 𠱸 𠲖 𠳏 𠳕 𠴕 𠵼 𠵿 𠸎 𠸏 𠹷 𠺝 𠺢 𠻗 𠻹 𠻺 𠼭 𠼮 𠽌 𠾴 𠾼 𠿪 𡁜 𡁯 𡁵 𡁶 𡁻 𡃁".toUpperCase().toLowerCase()
  ==
  "𠜎 𠜱 𠝹 𠱓 𠱸 𠲖 𠳏 𠳕 𠴕 𠵼 𠵿 𠸎 𠸏 𠹷 𠺝 𠺢 𠻗 𠻹 𠻺 𠼭 𠼮 𠽌 𠾴 𠾼 𠿪 𡁜 𡁯 𡁵 𡁶 𡁻 𡃁"
);

assert(String.fromCodePoint(0x10000).toLowerCase() == "𐀀");
assert(String.fromCodePoint(0x10000).toUpperCase() == "𐀀");

// Tests some special casing for lower case mapping
assert("\u1F88".toLowerCase() == "\u1F80");
assert("\u1F8F".toLowerCase() == "\u1F87");
assert("\u1FFC".toLowerCase() == "\u1FF3");

// Tests sigma 'Σ' special cases
assert("Σ".toLowerCase() == "σ");
assert(" Σ".toLowerCase() == " σ");
assert("Σ ".toLowerCase() == "σ ");
assert(" Σ ".toLowerCase() == " σ ");
assert("aΣ ".toLowerCase() == "aς ");
assert("aΣ\n".toLowerCase() == "aς\n");
assert("aΣ".toLowerCase() == "aς");
assert("aΣb".toLowerCase() == "aσb");
assert("ΣΣ ".toLowerCase() == "σς ");
assert("1Σ ".toLowerCase() == "1σ ");
assert(";Σ ".toLowerCase() == ";σ ");
assert("\u0301Σ ".toLowerCase() == "\u0301σ ");

assert("Σ\u0301Σ\u0301 ".toLowerCase() == "σ́ς́ ");
assert("ΣΣ-".toLowerCase() == "σς-");
assert("Σ\u0301Σ\u0301-".toLowerCase() == "σ́ς́-");
assert("Σ\u0301Σ\u0301猪".toLowerCase() == "σ́ς́猪");

// sigma tests from Test262
assert("\uD835\uDCA2\u03A3".toLowerCase() == "\uD835\uDCA2\u03C2");
assert("A.\u03A3".toLowerCase() == "a.\u03C2");
assert("A\u00AD\u03A3".toLowerCase() == "a\u00AD\u03C2");
assert("A\uD834\uDE42\u03A3".toLowerCase() == "a\uD834\uDE42\u03C2");
assert("\u0345\u03A3".toLowerCase() == "\u0345\u03C3");
assert("\u0391\u0345\u03A3".toLowerCase() == "\u03B1\u0345\u03C2");
assert("A\u03A3B".toLowerCase() == "a\u03C3b");
assert("A\u03A3\uD835\uDCA2".toLowerCase() == "a\u03C3\uD835\uDCA2");
assert("A\u03A3.b".toLowerCase() == "a\u03C3.b");
assert("A\u03A3\u00ADB".toLowerCase() == "a\u03C3\u00ADb");
assert("A\u03A3\uD834\uDE42B".toLowerCase() == "a\u03C3\uD834\uDE42b");
assert("A\u03A3\u0345".toLowerCase() == "a\u03C2\u0345");
assert("A\u03A3\u0345\u0391".toLowerCase() == "a\u03C3\u0345\u03B1");
assert("A\u180E\u03A3".toLowerCase() == "a\u180E\u03C2");
assert("A\u180E\u03A3B".toLowerCase() == "a\u180E\u03C3b");
assert("A\u03A3\u180E".toLowerCase() == "a\u03C2\u180E");
assert("A\u03A3\u180EB".toLowerCase() == "a\u03C3\u180Eb");
assert("A\u180E\u03A3\u180E".toLowerCase() == "a\u180E\u03C2\u180E");
assert("A\u180E\u03A3\u180EB".toLowerCase() == "a\u180E\u03C3\u180Eb");

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
  let code1: i64, code2: i64;

  // collect all code points for lower case on AssemblyScript side
  let origLowerCode = <i64>origLower.codePointAt(0);
  if ((code1 = origLower.codePointAt(1)) >= 0) origLowerCode += <i64>code1 << 16;
  if ((code2 = origLower.codePointAt(2)) >= 0) origLowerCode += <i64>code2 << 32;

  // collect all code points for upper case on AssemblyScript side
  let origUpperCode = <i64>origUpper.codePointAt(0);
  if ((code1 = origUpper.codePointAt(1)) >= 0) origUpperCode += <i64>code1 << 16;
  if ((code2 = origUpper.codePointAt(2)) >= 0) origUpperCode += <i64>code2 << 32;

  // collect all code points for lower case on JavaScript side
  let expectLowerCode = <i64>toLowerCaseFromIndex(i, 0);
  if ((code1 = <i64>toLowerCaseFromIndex(i, 1)) >= 0) expectLowerCode += <i64>code1 << 16;
  if ((code2 = <i64>toLowerCaseFromIndex(i, 2)) >= 0) expectLowerCode += <i64>code2 << 32;

  // collect all code points for upper case on JavaScript side
  let expectUpperCode = <i64>toUpperCaseFromIndex(i, 0);
  if ((code1 = <i64>toUpperCaseFromIndex(i, 1)) >= 0) expectUpperCode += <i64>code1 << 16;
  if ((code2 = <i64>toUpperCaseFromIndex(i, 2)) >= 0) expectUpperCode += <i64>code2 << 32;

  if (origLowerCode != expectLowerCode) {
    trace("origLowerCode != expectLowerCode", 1, i);
    trace(" origLowerCode = " + origLowerCode.toString());
    trace(" expectLowerCode = " + expectLowerCode.toString());
  }

  if (origUpperCode != expectUpperCode) {
    trace("origUpperCode != expectUpperCode", 1, i);
    trace(" origUpperCode = " + origUpperCode.toString());
    trace(" expectUpperCode = " + expectUpperCode.toString());
  }

  // FIXME: enable these again once issue #1195 has been solved
  // assert(origLowerCode == expectLowerCode);
  // assert(origUpperCode == expectUpperCode);
}
