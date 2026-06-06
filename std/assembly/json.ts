/**
 * JSON for the ToilScript standard library.
 *
 * `JSON` is a zero-import global (this is a top-level library entry). It is both
 * a dynamic value tree (`JSON.obj().set(...)`, `JSON.arr().push(...)`, returned
 * from a `toJSON(): JSON` method, or produced by `JSON.parse`), and the home of
 * the typed serializer `JSON.stringify<T>`.
 *
 * Booleans, integers (signed i64 and unsigned u64), floats (NaN/±Infinity emit
 * `null`), strings, null, arrays and objects are supported. Malformed `parse`
 * input yields an error value (`isError()`), never a trap.
 */

export class JSON {
    // ---- value kinds ----
    private static readonly NULL: u8 = 0;
    private static readonly BOOL: u8 = 1;
    private static readonly NUM: u8 = 2;
    private static readonly STR: u8 = 3;
    private static readonly ARR: u8 = 4;
    private static readonly OBJ: u8 = 5;
    private static readonly ERR: u8 = 6;

    // number sub-kinds
    private static readonly N_I64: u8 = 0;
    private static readonly N_U64: u8 = 1;
    private static readonly N_F64: u8 = 2;

    kind: u8 = JSON.NULL;
    private b: bool = false;
    private inum: i64 = 0;
    private unum: u64 = 0;
    private fnum: f64 = 0;
    private numKind: u8 = JSON.N_I64;
    private str: string = "";
    private items: Array<JSON> | null = null; // ARR
    private keys: Array<string> | null = null; // OBJ
    private vals: Array<JSON> | null = null; // OBJ

    // ---- value factories ----

    static nul(): JSON {
        return new JSON();
    }

    /** Wrap a scalar (boolean, signed/unsigned integer, float or string). */
    static of<T>(value: T): JSON {
        const j = new JSON();
        if (isBoolean<T>()) {
            j.kind = JSON.BOOL;
            j.b = value;
        } else if (isInteger<T>()) {
            j.kind = JSON.NUM;
            if (isSigned<T>()) {
                j.numKind = JSON.N_I64;
                j.inum = <i64>value;
            } else {
                j.numKind = JSON.N_U64;
                j.unum = <u64>value;
            }
        } else if (isFloat<T>()) {
            j.kind = JSON.NUM;
            j.numKind = JSON.N_F64;
            j.fnum = <f64>value;
        } else if (isString<T>()) {
            j.kind = JSON.STR;
            j.str = changetype<string>(value);
        } else {
            ERROR("JSON.of: expected a boolean, number or string");
        }
        return j;
    }

    static arr(): JSON {
        const j = new JSON();
        j.kind = JSON.ARR;
        j.items = new Array<JSON>();
        return j;
    }

    static obj(): JSON {
        const j = new JSON();
        j.kind = JSON.OBJ;
        j.keys = new Array<string>();
        j.vals = new Array<JSON>();
        return j;
    }

    // ---- builders (chainable) ----

    push(value: JSON): JSON {
        this.items!.push(value);
        return this;
    }

    set(key: string, value: JSON): JSON {
        this.keys!.push(key);
        this.vals!.push(value);
        return this;
    }

    // ---- kind predicates ----
    isNull(): bool { return this.kind == JSON.NULL; }
    isBool(): bool { return this.kind == JSON.BOOL; }
    isNumber(): bool { return this.kind == JSON.NUM; }
    isString(): bool { return this.kind == JSON.STR; }
    isArray(): bool { return this.kind == JSON.ARR; }
    isObject(): bool { return this.kind == JSON.OBJ; }
    isError(): bool { return this.kind == JSON.ERR; }

    /** The message of an error value, else "". */
    errorMessage(): string {
        return this.kind == JSON.ERR ? this.str : "";
    }

    // ---- scalar accessors (0 / "" off-kind) ----
    asBool(): bool {
        return this.kind == JSON.BOOL ? this.b : false;
    }

    asF64(): f64 {
        if (this.kind != JSON.NUM) return 0;
        if (this.numKind == JSON.N_I64) return <f64>this.inum;
        if (this.numKind == JSON.N_U64) return <f64>this.unum;
        return this.fnum;
    }

    asI64(): i64 {
        if (this.kind != JSON.NUM) return 0;
        if (this.numKind == JSON.N_I64) return this.inum;
        if (this.numKind == JSON.N_U64) return <i64>this.unum;
        return <i64>this.fnum;
    }

    asU64(): u64 {
        if (this.kind != JSON.NUM) return 0;
        if (this.numKind == JSON.N_U64) return this.unum;
        if (this.numKind == JSON.N_I64) return <u64>this.inum;
        return <u64>this.fnum;
    }

    asString(): string {
        return this.kind == JSON.STR ? this.str : "";
    }

    // ---- container accessors ----
    length(): i32 {
        if (this.kind == JSON.ARR) return this.items!.length;
        if (this.kind == JSON.OBJ) return this.keys!.length;
        return 0;
    }

    /** Element of an array value, or a null value if out of range / not an array. */
    at(index: i32): JSON {
        if (this.kind == JSON.ARR) {
            const items = this.items!;
            if (index >= 0 && index < items.length) return items[index];
        }
        return JSON.nul();
    }

    has(key: string): bool {
        if (this.kind == JSON.OBJ) {
            const keys = this.keys!;
            for (let i = 0, n = keys.length; i < n; i++) {
                if (keys[i] == key) return true;
            }
        }
        return false;
    }

    /** Value of an object key, or a null value if absent / not an object. */
    get(key: string): JSON {
        if (this.kind == JSON.OBJ) {
            const keys = this.keys!;
            for (let i = 0, n = keys.length; i < n; i++) {
                if (keys[i] == key) return this.vals![i];
            }
        }
        return JSON.nul();
    }

    /** Keys of an object value, else an empty array. */
    objectKeys(): Array<string> {
        return this.kind == JSON.OBJ ? this.keys! : new Array<string>();
    }

    // ---- serialize this value to JSON text ----
    toString(): string {
        switch (this.kind) {
            case JSON.BOOL:
                return this.b ? "true" : "false";
            case JSON.NUM:
                if (this.numKind == JSON.N_I64) return this.inum.toString();
                if (this.numKind == JSON.N_U64) return this.unum.toString();
                return isFinite(this.fnum) ? this.fnum.toString() : "null";
            case JSON.STR:
                return JSON.quote(this.str);
            case JSON.ARR: {
                const items = this.items!;
                const parts = new Array<string>(items.length);
                for (let i = 0, n = items.length; i < n; i++) parts[i] = items[i].toString();
                return "[" + parts.join(",") + "]";
            }
            case JSON.OBJ: {
                const keys = this.keys!;
                const vals = this.vals!;
                const parts = new Array<string>(keys.length);
                for (let i = 0, n = keys.length; i < n; i++) {
                    parts[i] = JSON.quote(keys[i]) + ":" + vals[i].toString();
                }
                return "{" + parts.join(",") + "}";
            }
            default:
                // NULL and ERR both serialize to null.
                return "null";
        }
    }

    // ---- typed serializer: a typed value to JSON text, by compile-time type ----
    static stringify<T>(value: T): string {
        if (isBoolean<T>()) {
            return value ? "true" : "false";
        }
        if (isInteger<T>()) {
            return value.toString();
        }
        if (isFloat<T>()) {
            return isFinite(value) ? value.toString() : "null";
        }
        if (isString<T>()) {
            if (changetype<usize>(value) == 0) return "null";
            return JSON.quote(changetype<string>(value));
        }
        if (isArray<T>()) {
            if (changetype<usize>(value) == 0) return "null";
            const arr = changetype<Array<valueof<T>>>(value);
            const parts = new Array<string>(arr.length);
            for (let i = 0, n = arr.length; i < n; i++) parts[i] = JSON.stringify<valueof<T>>(arr[i]);
            return "[" + parts.join(",") + "]";
        }
        ERROR("JSON.stringify: unsupported type, booleans, numbers, strings, null and arrays only");
        return unreachable();
    }

    // ---- parse: JSON text -> value tree ----
    static parse(text: string): JSON {
        const p = new Parser(text);
        const v = p.parseValue();
        if (p.err.length != 0) return JSON.errorValue(p.err);
        p.skipWs();
        if (!p.atEnd()) return JSON.errorValue("unexpected trailing characters");
        return v;
    }

    static errorValue(message: string): JSON {
        const j = new JSON();
        j.kind = JSON.ERR;
        j.str = message;
        return j;
    }

    // internal builders used by the parser to keep number sub-kind exact
    static fromI64(value: i64): JSON {
        const j = new JSON();
        j.kind = JSON.NUM;
        j.numKind = JSON.N_I64;
        j.inum = value;
        return j;
    }

    static fromU64(value: u64): JSON {
        const j = new JSON();
        j.kind = JSON.NUM;
        j.numKind = JSON.N_U64;
        j.unum = value;
        return j;
    }

    static fromF64(value: f64): JSON {
        const j = new JSON();
        j.kind = JSON.NUM;
        j.numKind = JSON.N_F64;
        j.fnum = value;
        return j;
    }

    static fromString(value: string): JSON {
        const j = new JSON();
        j.kind = JSON.STR;
        j.str = value;
        return j;
    }

    // ---- shared string escaping ----

    private static quote(s: string): string {
        let out = "\"";
        for (let i = 0, len = s.length; i < len; i++) {
            const c = s.charCodeAt(i);
            if (c == 0x22) out += "\\\"";
            else if (c == 0x5c) out += "\\\\";
            else if (c == 0x08) out += "\\b";
            else if (c == 0x0c) out += "\\f";
            else if (c == 0x0a) out += "\\n";
            else if (c == 0x0d) out += "\\r";
            else if (c == 0x09) out += "\\t";
            else if (c < 0x20) out += "\\u" + JSON.hex4(c);
            else out += String.fromCharCode(c);
        }
        return out + "\"";
    }

    private static hex4(c: i32): string {
        const digits = "0123456789abcdef";
        let r = "";
        for (let shift = 12; shift >= 0; shift -= 4) r += digits.charAt((c >> shift) & 0xf);
        return r;
    }
}

/** Recursive-descent parser producing a `JSON` value tree. Internal. */
/**
 * Maximum array/object nesting depth. Recursive descent costs stack per level, so an
 * unbounded depth lets a small hostile input (e.g. `[[[[...`) overflow the stack and trap
 * the instance. 512 is far beyond any real-world JSON yet far below the overflow point, so
 * over-nested input fails as a normal parse error instead of crashing.
 */
const JSON_MAX_DEPTH: i32 = 512;

class Parser {
    private src: string;
    private pos: i32 = 0;
    private depth: i32 = 0;
    err: string = "";

    constructor(src: string) {
        this.src = src;
    }

    atEnd(): bool {
        return this.pos >= this.src.length;
    }

    // Always called after an atEnd() guard, so pos is in range.
    private peek(): i32 {
        return this.src.charCodeAt(this.pos);
    }

    private take(): i32 {
        return this.pos < this.src.length ? this.src.charCodeAt(this.pos++) : -1;
    }

    skipWs(): void {
        while (this.pos < this.src.length) {
            const c = this.src.charCodeAt(this.pos);
            if (c == 0x20 || c == 0x09 || c == 0x0a || c == 0x0d) this.pos++;
            else break;
        }
    }

    // Callers return as soon as err is set, so fail is only reached with err empty.
    private fail(message: string): JSON {
        this.err = message;
        return JSON.nul();
    }

    parseValue(): JSON {
        this.skipWs();
        if (this.atEnd()) return this.fail("unexpected end of input");
        const c = this.peek();
        if (c == 0x7b) return this.parseObject(); // {
        if (c == 0x5b) return this.parseArray(); // [
        if (c == 0x22) return JSON.fromString(this.readString()); // "
        if (c == 0x74) return this.parseLiteral("true", JSON.of<bool>(true)); // t
        if (c == 0x66) return this.parseLiteral("false", JSON.of<bool>(false)); // f
        if (c == 0x6e) return this.parseLiteral("null", JSON.nul()); // n
        if (c == 0x2d || (c >= 0x30 && c <= 0x39)) return this.parseNumber(); // - or digit
        return this.fail("unexpected character");
    }

    private parseLiteral(word: string, value: JSON): JSON {
        for (let i = 0, n = word.length; i < n; i++) {
            if (this.take() != word.charCodeAt(i)) return this.fail("invalid literal");
        }
        return value;
    }

    /** Read a quoted string starting at the current `"`. Sets err on failure. */
    private readString(): string {
        this.pos++; // opening "
        let out = "";
        while (true) {
            if (this.atEnd()) {
                this.fail("unterminated string");
                return "";
            }
            const c = this.take();
            if (c == 0x22) break; // closing "
            if (c == 0x5c) {
                if (this.atEnd()) {
                    this.fail("unterminated escape");
                    return "";
                }
                const e = this.take();
                if (e == 0x22) out += "\"";
                else if (e == 0x5c) out += "\\";
                else if (e == 0x2f) out += "/";
                else if (e == 0x62) out += String.fromCharCode(0x08);
                else if (e == 0x66) out += String.fromCharCode(0x0c);
                else if (e == 0x6e) out += "\n";
                else if (e == 0x72) out += "\r";
                else if (e == 0x74) out += "\t";
                else if (e == 0x75) {
                    let code = 0;
                    for (let k = 0; k < 4; k++) {
                        const d = hexVal(this.take());
                        if (d < 0) {
                            this.fail("invalid \\u escape");
                            return "";
                        }
                        code = (code << 4) | d;
                    }
                    out += String.fromCharCode(code);
                } else {
                    this.fail("invalid escape");
                    return "";
                }
            } else {
                out += String.fromCharCode(c);
            }
        }
        return out;
    }

    private parseNumber(): JSON {
        const start = this.pos;
        let isFloating = false;
        if (this.peek() == 0x2d) this.pos++; // -
        let intDigits = 0;
        while (!this.atEnd() && this.peek() >= 0x30 && this.peek() <= 0x39) {
            this.pos++;
            intDigits++;
        }
        if (intDigits == 0) return this.fail("invalid number");
        if (!this.atEnd() && this.peek() == 0x2e) {
            isFloating = true;
            this.pos++;
            let frac = 0;
            while (!this.atEnd() && this.peek() >= 0x30 && this.peek() <= 0x39) {
                this.pos++;
                frac++;
            }
            if (frac == 0) return this.fail("invalid number");
        }
        if (!this.atEnd() && (this.peek() == 0x65 || this.peek() == 0x45)) {
            isFloating = true;
            this.pos++;
            if (!this.atEnd() && (this.peek() == 0x2b || this.peek() == 0x2d)) this.pos++;
            let exp = 0;
            while (!this.atEnd() && this.peek() >= 0x30 && this.peek() <= 0x39) {
                this.pos++;
                exp++;
            }
            if (exp == 0) return this.fail("invalid number");
        }
        const slice = this.src.substring(start, this.pos);
        if (isFloating) return JSON.fromF64(parseFloat(slice));
        if (slice.charCodeAt(0) == 0x2d) {
            let v: i64 = 0;
            for (let i = 1, n = slice.length; i < n; i++) v = v * 10 - <i64>(slice.charCodeAt(i) - 0x30);
            return JSON.fromI64(v);
        }
        let v: u64 = 0;
        for (let i = 0, n = slice.length; i < n; i++) v = v * 10 + <u64>(slice.charCodeAt(i) - 0x30);
        return JSON.fromU64(v);
    }

    private parseArray(): JSON {
        if (++this.depth > JSON_MAX_DEPTH) return this.fail("maximum nesting depth exceeded");
        this.pos++; // [
        const j = JSON.arr();
        this.skipWs();
        if (!this.atEnd() && this.peek() == 0x5d) {
            this.pos++;
            this.depth--;
            return j;
        }
        while (true) {
            const v = this.parseValue();
            if (this.err.length != 0) return j;
            j.push(v);
            this.skipWs();
            const c = this.take();
            if (c == 0x5d) break; // ]
            if (c != 0x2c) return this.fail("expected ',' or ']'"); // ,
        }
        this.depth--;
        return j;
    }

    private parseObject(): JSON {
        if (++this.depth > JSON_MAX_DEPTH) return this.fail("maximum nesting depth exceeded");
        this.pos++; // {
        const j = JSON.obj();
        this.skipWs();
        if (!this.atEnd() && this.peek() == 0x7d) {
            this.pos++;
            this.depth--;
            return j;
        }
        while (true) {
            this.skipWs();
            if (this.atEnd() || this.peek() != 0x22) return this.fail("expected string key");
            const key = this.readString();
            if (this.err.length != 0) return j;
            this.skipWs();
            if (this.take() != 0x3a) return this.fail("expected ':'"); // :
            const v = this.parseValue();
            if (this.err.length != 0) return j;
            j.set(key, v);
            this.skipWs();
            const c = this.take();
            if (c == 0x7d) break; // }
            if (c != 0x2c) return this.fail("expected ',' or '}'"); // ,
        }
        this.depth--;
        return j;
    }
}

/** Hex digit value, or -1. Internal. */
function hexVal(c: i32): i32 {
    if (c >= 0x30 && c <= 0x39) return c - 0x30;
    if (c >= 0x61 && c <= 0x66) return c - 0x61 + 10;
    if (c >= 0x41 && c <= 0x46) return c - 0x41 + 10;
    return -1;
}
