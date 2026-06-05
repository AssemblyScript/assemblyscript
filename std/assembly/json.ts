/**
 * JSON for the ToilScript standard library.
 *
 * `JSON` is a zero-import global (this is a top-level library entry). It is both
 * a dynamic value tree — `JSON.obj().set(...)`, `JSON.arr().push(...)`, returned
 * from a `toJSON(): JSON` method — and the home of the typed serializer
 * `JSON.stringify<T>`.
 *
 * Phase 0: typed `stringify` over booleans/numbers/strings/null/arrays, plus the
 * value tree and its serialization. `JSON.parse` (text -> tree) builds on this.
 */

export class JSON {
    // ---- value kinds ----
    static readonly NULL: u8 = 0;
    static readonly BOOL: u8 = 1;
    static readonly NUM: u8 = 2;
    static readonly STR: u8 = 3;
    static readonly ARR: u8 = 4;
    static readonly OBJ: u8 = 5;

    kind: u8 = JSON.NULL;
    private b: bool = false;
    private num: f64 = 0;
    private inum: i64 = 0;
    private numIsInt: bool = false;
    private str: string = "";
    private items: Array<JSON> | null = null; // ARR
    private keys: Array<string> | null = null; // OBJ
    private vals: Array<JSON> | null = null; // OBJ

    // ---- value factories ----

    static nul(): JSON {
        return new JSON();
    }

    /** Wrap a scalar (boolean, number or string) as a JSON value. */
    static of<T>(value: T): JSON {
        const j = new JSON();
        if (isBoolean<T>()) {
            j.kind = JSON.BOOL;
            j.b = value;
        } else if (isInteger<T>()) {
            j.kind = JSON.NUM;
            j.numIsInt = true;
            j.inum = <i64>value;
        } else if (isFloat<T>()) {
            j.kind = JSON.NUM;
            j.num = <f64>value;
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

    /** Append to an array value. */
    push(value: JSON): JSON {
        this.items!.push(value);
        return this;
    }

    /** Set a key on an object value. */
    set(key: string, value: JSON): JSON {
        this.keys!.push(key);
        this.vals!.push(value);
        return this;
    }

    // ---- serialize this value to JSON text ----
    toString(): string {
        switch (this.kind) {
            case JSON.BOOL:
                return this.b ? "true" : "false";
            case JSON.NUM:
                if (this.numIsInt) return this.inum.toString();
                return isFinite(this.num) ? this.num.toString() : "null";
            case JSON.STR:
                return JSON.quote(this.str);
            case JSON.ARR: {
                const items = this.items!;
                const parts = new Array<string>(items.length);
                for (let i = 0; i < items.length; i++) parts[i] = items[i].toString();
                return "[" + parts.join(",") + "]";
            }
            case JSON.OBJ: {
                const keys = this.keys!;
                const vals = this.vals!;
                const parts = new Array<string>(keys.length);
                for (let i = 0; i < keys.length; i++) {
                    parts[i] = JSON.quote(keys[i]) + ":" + vals[i].toString();
                }
                return "{" + parts.join(",") + "}";
            }
            default:
                return "null";
        }
    }

    // ---- typed serializer: AS value -> JSON text, by compile-time type ----
    static stringify<T>(value: T): string {
        if (isBoolean<T>()) {
            return value ? "true" : "false";
        }
        if (isInteger<T>()) {
            return value.toString();
        }
        if (isFloat<T>()) {
            // JSON has no NaN/Infinity literals; the spec maps them to null.
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
            for (let i = 0; i < arr.length; i++) parts[i] = JSON.stringify<valueof<T>>(arr[i]);
            return "[" + parts.join(",") + "]";
        }
        if (isReference<T>() && changetype<usize>(value) == 0) {
            return "null";
        }
        ERROR("JSON.stringify: unsupported type — booleans, numbers, strings, null and arrays only in phase 0");
        return unreachable();
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
