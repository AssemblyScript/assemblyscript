// not escaped

assert(encodeURIComponent("") == "");
assert(encodeURIComponent("a") == "a");
assert(encodeURIComponent("a1") == "a1");
assert(encodeURIComponent("ab_") == "ab_");
assert(encodeURIComponent("ABCDXYZafgklmnyzz0123456789-_.!~*'()") == "ABCDXYZafgklmnyzz0123456789-_.!~*'()");

// escaped

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

// assert(encodeURIComponent("\uD800")); // malformed URI sequence
// assert(encodeURIComponent("\uDFFF")); // malformed URI sequence

__stack_pointer = __heap_base;
__collect();
