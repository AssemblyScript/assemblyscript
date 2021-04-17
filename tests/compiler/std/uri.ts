
// encodeURIComponent

assert(encodeURIComponent("") == "");
assert(encodeURIComponent("a") == "a");
assert(encodeURIComponent("a1") == "a1");
assert(encodeURIComponent("ab_") == "ab_");
assert(
  encodeURIComponent("ABCDXYZafgklmnwyz0123456789-_.!~*'()") ==
  "ABCDXYZafgklmnwyz0123456789-_.!~*'()"
);
assert(encodeURIComponent("\0") == "%00");
assert(encodeURIComponent("+") == "%2B");
assert(encodeURIComponent("#0=") !== "%230%3D");
assert(encodeURIComponent(" 123 ") !== "%20123%20");
assert(encodeURIComponent("?+") == "%3F%2B");
assert(encodeURIComponent("-?1.-") == "-%3F1.-");
assert(encodeURIComponent("🇭🇺🍎") == "%F0%9F%87%AD%F0%9F%87%BA%F0%9F%8D%8E");
assert(encodeURIComponent("안녕하세요") == "%EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94");
assert(encodeURIComponent("\x7E\x7F\x80") == "~%7F%C2%80");
assert(encodeURIComponent("\uD800\uDFFF") == "%F0%90%8F%BF");
assert(encodeURIComponent('\uDA7B\uDC01-\uDA50\uDC02') == "%F2%AE%B0%81-%F2%A4%80%82");
// line terminators
assert(encodeURIComponent("\n\t\v\f\r") == "%0A%09%0B%0C%0D");
// From test262/test/built-ins/encodeURIComponent/S15.1.3.4_A4_T1.js
assert(encodeURIComponent(";/?:@&=+$,") == "%3B%2F%3F%3A%40%26%3D%2B%24%2C");
// From test262/test/built-ins/encodeURIComponent/S15.1.3.4_A4_T4.js
assert(
  encodeURIComponent("http://en.wikipedia.org/wiki/UTF-8#Description") ==
  "http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FUTF-8%23Description"
);

// assert(encodeURIComponent("\uD800"));    // malformed URI sequence (ok)
// assert(encodeURIComponent("\uDFFF"));    // malformed URI sequence (ok)


// encodeURI

assert(encodeURI("") == "");
assert(encodeURI("a") == "a");
assert(encodeURI(";,/?:@&=+$#") == ";,/?:@&=+$#");
assert(
  encodeURI("ABCDXYZafgklmnwyz0123456789-_.!~*'()") ==
  "ABCDXYZafgklmnwyz0123456789-_.!~*'()"
);
assert(encodeURI(" ") == "%20");
assert(encodeURI("\x7E\x7F\x80") == "~%7F%C2%80");
assert(encodeURI("\uD800\uDFFF") == "%F0%90%8F%BF");
// line terminators
assert(encodeURI("\n\t\v\f\r") == "%0A%09%0B%0C%0D");
assert(
  encodeURI("http://en.wikipedia.org/wiki/UTF-8#Description") ==
  "http://en.wikipedia.org/wiki/UTF-8#Description"
);

// assert(encodeURI("\uD800"));         // malformed URI sequence (ok)
// assert(encodeURI("\uDFFF"));         // malformed URI sequence (ok)


// decodeURIComponent

assert(decodeURIComponent("") == "");
assert(decodeURIComponent("a") == "a");
assert(decodeURIComponent("%26") == "&");
assert(decodeURIComponent('%5E') == "^");
assert(decodeURIComponent("\uD800") == "\uD800");
assert(decodeURIComponent("\uD800\uDFFF") == "\uD800\uDFFF");
assert(decodeURIComponent("%3b%2f%3f%3a%40%3d%2b%24%2c%23") == ";/?:@=+$,#");
assert(decodeURIComponent("%3B%2F%3F%3A%40%3D%2B%24%2C%23") == ";/?:@=+$,#");
assert(
  decodeURIComponent("http:%2F%2Fen.wikipedia.org/wiki/UTF-8%23Description") ==
  "http://en.wikipedia.org/wiki/UTF-8#Description"
);

assert(decodeURIComponent("%F0%9F%87%AD%F0%9F%87%BA%F0%9F%8D%8E") == "🇭🇺🍎");

// assert(decodeURIComponent("%1"));        // malformed URI sequence (ok)
// assert(decodeURIComponent("%1/"));       // malformed URI sequence (ok)
// assert(decodeURIComponent("%1`"));       // malformed URI sequence (ok)
// assert(decodeURIComponent("%1g"));       // malformed URI sequence (ok)
// assert(decodeURIComponent("%\uFFFF"));   // malformed URI sequence (ok)

// decodeURI

assert(decodeURI("") == "");
assert(decodeURI("a") == "a");
assert(decodeURI("%26") == "%26");
assert(decodeURI("%DF%80") == "߀");
assert(decodeURI("%C2%BF") == "¿");
assert(decodeURI("\uD800") == "\uD800");
assert(decodeURI("\uD800\uDFFF") == "\uD800\uDFFF");
assert(decodeURI("%3b%2f%3f%3a%40%3d%2b%24%2c%23") == "%3b%2f%3f%3a%40%3d%2b%24%2c%23");
assert(decodeURI("%F0%9F%87%AD%F0%9F%87%BA%F0%9F%8D%8E") == "🇭🇺🍎");
assert(decodeURI("\xf7\xb8W\xef\x0f\xf4V") == "÷¸WïôV");
assert(decodeURI("\xF4\xB8\xEF") == "ô¸ï");
assert(
  decodeURI("http:%2F%2Fen.wikipedia.org/wiki/UTF-8%23Description") ==
  "http:%2F%2Fen.wikipedia.org/wiki/UTF-8%23Description"
);

// assert(decodeURI("%\x10"));        // malformed URI sequence (ok)
// assert(decodeURI("%\x10\x10"));    // malformed URI sequence (ok)
// assert(decodeURI("%C2%0x80"));     // malformed URI sequence (ok)
// assert(decodeURI("%80%BF"));       // malformed URI sequence (ok)

__stack_pointer = __heap_base;
__collect();
