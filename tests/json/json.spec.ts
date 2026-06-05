// Exhaustive unit tests for std/assembly/json.ts.
//
// Runs against the toilscript compiler (so the JSON global is in scope) via
// tests/json/run.mjs. Every runtime branch of json.ts is exercised here; the
// compile-time ERROR() guards (unsupported types in of<T> / stringify<T>) are
// not runtime reachable and are noted in run.mjs.
//
// Each `assert` aborts with its source line on failure, which the runner reports.

function testFactoriesAndKinds(): void {
    assert(JSON.nul().isNull());
    assert(JSON.of<bool>(true).isBool());
    assert(JSON.of<i32>(1).isNumber());
    assert(JSON.of<string>("x").isString());
    assert(JSON.arr().isArray());
    assert(JSON.obj().isObject());
    assert(JSON.errorValue("boom").isError());

    // each predicate false branch
    assert(!JSON.of<bool>(true).isNull());
    assert(!JSON.nul().isBool());
    assert(!JSON.nul().isNumber());
    assert(!JSON.nul().isString());
    assert(!JSON.nul().isArray());
    assert(!JSON.nul().isObject());
    assert(!JSON.nul().isError());
}

function testToString(): void {
    // BOOL both
    assert(JSON.of<bool>(true).toString() == "true");
    assert(JSON.of<bool>(false).toString() == "false");
    // NUM signed / unsigned / float finite / float non-finite
    assert(JSON.of<i64>(-5).toString() == "-5");
    assert(JSON.of<u64>(u64.MAX_VALUE).toString() == "18446744073709551615");
    assert(JSON.of<f64>(3.5).toString() == "3.5");
    assert(JSON.of<f64>(NaN).toString() == "null");
    assert(JSON.of<f64>(Infinity).toString() == "null");
    // STR
    assert(JSON.of<string>("a").toString() == "\"a\"");
    // ARR empty / non-empty
    assert(JSON.arr().toString() == "[]");
    assert(JSON.arr().push(JSON.of<i32>(1)).push(JSON.of<i32>(2)).toString() == "[1,2]");
    // OBJ empty / non-empty
    assert(JSON.obj().toString() == "{}");
    assert(JSON.obj().set("k", JSON.of<i32>(7)).toString() == "{\"k\":7}");
    // default: NULL and ERR both serialize to null
    assert(JSON.nul().toString() == "null");
    assert(JSON.errorValue("x").toString() == "null");
    // array of objects
    assert(
        JSON.arr()
            .push(JSON.obj().set("id", JSON.of<i32>(1)))
            .push(JSON.obj().set("id", JSON.of<i32>(2)))
            .toString() == "[{\"id\":1},{\"id\":2}]",
    );
}

function testStringify(): void {
    assert(JSON.stringify<bool>(true) == "true");
    assert(JSON.stringify<bool>(false) == "false");
    assert(JSON.stringify<i32>(42) == "42");
    assert(JSON.stringify<u64>(u64.MAX_VALUE) == "18446744073709551615");
    assert(JSON.stringify<f64>(3.5) == "3.5");
    assert(JSON.stringify<f64>(NaN) == "null");
    assert(JSON.stringify<string>("a") == "\"a\"");
    assert(JSON.stringify<string>("") == "\"\""); // quote loop, zero iterations
    assert(JSON.stringify<string>(changetype<string>(0)) == "null");
    assert(JSON.stringify<Array<i32>>([1, 2, 3]) == "[1,2,3]");
    assert(JSON.stringify<Array<i32>>([]) == "[]");
    assert(JSON.stringify<Array<i32>>(changetype<Array<i32>>(0)) == "null");
}

function testQuoteEscapes(): void {
    assert(JSON.stringify<string>("\"") == "\"\\\"\"");
    assert(JSON.stringify<string>("\\") == "\"\\\\\"");
    assert(JSON.stringify<string>(String.fromCharCode(0x08)) == "\"\\b\"");
    assert(JSON.stringify<string>(String.fromCharCode(0x0c)) == "\"\\f\"");
    assert(JSON.stringify<string>("\n") == "\"\\n\"");
    assert(JSON.stringify<string>("\r") == "\"\\r\"");
    assert(JSON.stringify<string>("\t") == "\"\\t\"");
    // control char below 0x20: \uXXXX (exercises hex4 low + high nibbles)
    assert(JSON.stringify<string>(String.fromCharCode(0x01)) == "\"\\u0001\"");
    assert(JSON.stringify<string>(String.fromCharCode(0x1f)) == "\"\\u001f\"");
    // normal ascii and pass-through of non-ascii (>= 0x80)
    assert(JSON.stringify<string>("z") == "\"z\"");
    assert(JSON.stringify<string>(String.fromCharCode(0xe9)) == "\"" + String.fromCharCode(0xe9) + "\"");
}

function testParseValues(): void {
    assert(JSON.parse("null").isNull());
    assert(JSON.parse("true").asBool() == true);
    assert(JSON.parse("false").asBool() == false);
    // numbers: unsigned int, signed int, u64 max, float frac, float exp (+ signs)
    assert(JSON.parse("123").asU64() == 123);
    assert(JSON.parse("-123").asI64() == -123);
    assert(JSON.parse("18446744073709551615").asU64() == u64.MAX_VALUE);
    assert(JSON.parse("1.5").asF64() == 1.5);
    assert(JSON.parse("1e3").asF64() == 1000.0);
    assert(JSON.parse("1E3").asF64() == 1000.0); // uppercase exponent
    assert(JSON.parse("1e+3").asF64() == 1000.0);
    assert(JSON.parse("1500e-3").asF64() == 1.5);
    // strings + every escape + \u (lower, upper, digits)
    assert(JSON.parse("\"abc\"").asString() == "abc");
    assert(JSON.parse("\"a\\\"b\"").asString() == "a\"b");
    assert(JSON.parse("\"a\\\\b\"").asString() == "a\\b");
    assert(JSON.parse("\"a\\/b\"").asString() == "a/b");
    assert(JSON.parse("\"\\b\\f\\n\\r\\t\"").asString() == String.fromCharCode(0x08) + String.fromCharCode(0x0c) + "\n\r\t");
    assert(JSON.parse("\"\\u0041\"").asString() == "A");
    assert(JSON.parse("\"\\u00ab\"").asString() == String.fromCharCode(0xab)); // a-f hex
    assert(JSON.parse("\"\\u00CD\"").asString() == String.fromCharCode(0xcd)); // A-F hex
    // arrays + objects + whitespace + nesting + array-of-objects
    assert(JSON.parse("[]").length() == 0);
    assert(JSON.parse("{}").length() == 0);
    assert(JSON.parse("  \t\n\r [1, 2, 3] ").length() == 3);
    const o = JSON.parse("{\"a\":1,\"b\":[true,null,\"x\"],\"c\":-3.5}");
    assert(o.isObject());
    assert(o.get("a").asI64() == 1);
    assert(o.get("b").length() == 3);
    assert(o.get("b").at(0).asBool() == true);
    assert(o.get("b").at(1).isNull());
    assert(o.get("b").at(2).asString() == "x");
    assert(o.get("c").asF64() == -3.5);
    const arr = JSON.parse("[{\"id\":1},{\"id\":2}]");
    assert(arr.length() == 2);
    assert(arr.at(0).get("id").asU64() == 1);
    // round-trip stringify(parse(x)) == x
    const t = "{\"n\":7,\"s\":\"hi\",\"a\":[1,2,3]}";
    assert(JSON.parse(t).toString() == t);
}

function testParseErrors(): void {
    assert(JSON.parse("").isError()); // empty / end of input
    assert(JSON.parse("@").isError()); // unexpected char
    assert(JSON.parse("tru").isError()); // invalid literal (end mid-word)
    assert(JSON.parse("trX").isError()); // invalid literal (mismatch)
    assert(JSON.parse("\"abc").isError()); // unterminated string
    assert(JSON.parse("\"\\").isError()); // unterminated escape
    assert(JSON.parse("\"\\x\"").isError()); // invalid escape
    assert(JSON.parse("\"\\uZZZZ\"").isError()); // invalid \u hex
    assert(JSON.parse("-").isError()); // number, no digits
    assert(JSON.parse("1.").isError()); // number, empty fraction
    assert(JSON.parse("1e").isError()); // number, empty exponent
    assert(JSON.parse("[").isError()); // array, end before close or value
    assert(JSON.parse("{").isError()); // object, end before key
    assert(JSON.parse("[@]").isError()); // array element parse error
    assert(JSON.parse("[1,2").isError()); // unclosed array
    assert(JSON.parse("[1 2]").isError()); // bad array separator
    assert(JSON.parse("{1:2}").isError()); // non-string key
    assert(JSON.parse("{\"a\" 1}").isError()); // missing colon
    assert(JSON.parse("{\"a\":1 \"b\":2}").isError()); // bad object separator
    assert(JSON.parse("{\"a\":@}").isError()); // value parse error propagates
    assert(JSON.parse("{\"a:1}").isError()); // unterminated key string
    assert(JSON.parse("1 2").isError()); // trailing characters
    // error message is readable and only the first error sticks
    assert(JSON.parse("@").errorMessage().length != 0);
    assert(JSON.errorValue("msg").errorMessage() == "msg");
    assert(JSON.nul().errorMessage() == "");
}

function testAccessors(): void {
    // asBool
    assert(JSON.of<bool>(true).asBool() == true);
    assert(JSON.nul().asBool() == false);
    // asF64 across number sub-kinds + off-kind
    assert(JSON.of<i64>(5).asF64() == 5.0);
    assert(JSON.of<u64>(5).asF64() == 5.0);
    assert(JSON.of<f64>(3.5).asF64() == 3.5);
    assert(JSON.nul().asF64() == 0.0);
    // asI64
    assert(JSON.of<i64>(-5).asI64() == -5);
    assert(JSON.of<u64>(5).asI64() == 5);
    assert(JSON.of<f64>(3.0).asI64() == 3);
    assert(JSON.nul().asI64() == 0);
    // asU64
    assert(JSON.of<u64>(9).asU64() == 9);
    assert(JSON.of<i64>(9).asU64() == 9);
    assert(JSON.of<f64>(9.0).asU64() == 9);
    assert(JSON.nul().asU64() == 0);
    // asString
    assert(JSON.of<string>("y").asString() == "y");
    assert(JSON.nul().asString() == "");
    // length per kind
    assert(JSON.arr().push(JSON.nul()).length() == 1);
    assert(JSON.obj().set("a", JSON.nul()).length() == 1);
    assert(JSON.nul().length() == 0);
    // at: in range, out of range, non-array
    assert(JSON.arr().push(JSON.of<i32>(8)).at(0).asI64() == 8);
    assert(JSON.arr().push(JSON.of<i32>(8)).at(-1).isNull()); // negative index
    assert(JSON.arr().at(5).isNull());
    assert(JSON.nul().at(0).isNull());
    // has: found, not found, non-object
    const ob = JSON.obj().set("k", JSON.of<i32>(1));
    assert(ob.has("k"));
    assert(!ob.has("z"));
    assert(!JSON.nul().has("k"));
    // get: found, not found, non-object
    assert(ob.get("k").asI64() == 1);
    assert(ob.get("z").isNull());
    assert(JSON.nul().get("k").isNull());
    // objectKeys: object vs non-object
    assert(ob.objectKeys().length == 1);
    assert(JSON.nul().objectKeys().length == 0);
}

export function runAll(): void {
    testFactoriesAndKinds();
    testToString();
    testStringify();
    testQuoteEscapes();
    testParseValues();
    testParseErrors();
    testAccessors();
}
