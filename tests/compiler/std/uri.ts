// not escaped

assert(encodeURIComponent("") == "");
assert(encodeURIComponent("a") == "a");
assert(encodeURIComponent("a1") == "a1");
assert(encodeURIComponent("ab_") == "ab_");
assert(encodeURIComponent("ABCDXYZafgklmnyzz0123456789-_.!~*'()") == "ABCDXYZafgklmnyzz0123456789-_.!~*'()");

// escaped

assert(encodeURIComponent("+") == "%2B");
assert(encodeURIComponent("?+") == "%3F%2B");
assert(encodeURIComponent("-?1.-") == "-%3F1.-");
// assert(encodeURIComponent("안녕하세요") == "%EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94");
// assert(encodeURIComponent("\uD800\uDFFF") == "%F0%90%8F%BF");

// assert(encodeURIComponent("\uD800")); // malformed URI sequence
// assert(encodeURIComponent("\uDFFF")); // malformed URI sequence

__stack_pointer = __heap_base;
__collect();
