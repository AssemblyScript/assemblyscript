/**
 * Binary buffers for the `@data` tagged codec.
 *
 * `DataWriter` is a growable little-endian byte buffer written through direct
 * linear-memory stores (wasm `store`/`load` are little-endian, so scalar writes
 * are near native, no `DataView`). `DataReader` reads them back, tracking an
 * `ok` flag so malformed input yields safe defaults instead of a trap.
 *
 * Both are zero-import globals (this is a top-level library entry), so the
 * compiler-generated `encode`/`decode` reference them with no imports. The
 * 128/256-bit integer types are the native std ones.
 *
 * Wire layout: fixed-width little-endian scalars; `bool` is one byte; strings
 * and raw byte blobs are a `u32` byte-length prefix followed by the bytes;
 * `u128`/`i128` are two 64-bit limbs (lo then hi), `u256`/`i256` are four.
 */

export class DataWriter {
    private buf: Uint8Array;
    private off: i32 = 0;

    constructor(capacity: i32 = 64) {
        this.buf = new Uint8Array(capacity > 0 ? capacity : 1);
    }

    /** Reserve `extra` bytes, growing if needed, and return the write pointer. */
    private reserve(extra: i32): usize {
        const need = this.off + extra;
        const cap = this.buf.length;
        if (need > cap) {
            let n = cap;
            while (n < need) n = n << 1;
            const bigger = new Uint8Array(n);
            memory.copy(bigger.dataStart, this.buf.dataStart, <usize>this.off);
            this.buf = bigger;
        }
        const ptr = this.buf.dataStart + <usize>this.off;
        this.off += extra;
        return ptr;
    }

    writeU8(value: u8): DataWriter { store<u8>(this.reserve(1), value); return this; }
    writeU16(value: u16): DataWriter { store<u16>(this.reserve(2), value); return this; }
    writeU32(value: u32): DataWriter { store<u32>(this.reserve(4), value); return this; }
    writeU64(value: u64): DataWriter { store<u64>(this.reserve(8), value); return this; }
    writeI8(value: i8): DataWriter { store<i8>(this.reserve(1), value); return this; }
    writeI16(value: i16): DataWriter { store<i16>(this.reserve(2), value); return this; }
    writeI32(value: i32): DataWriter { store<i32>(this.reserve(4), value); return this; }
    writeI64(value: i64): DataWriter { store<i64>(this.reserve(8), value); return this; }
    writeF32(value: f32): DataWriter { store<f32>(this.reserve(4), value); return this; }
    writeF64(value: f64): DataWriter { store<f64>(this.reserve(8), value); return this; }
    writeBool(value: bool): DataWriter { return this.writeU8(value ? 1 : 0); }

    writeBytes(bytes: Uint8Array): DataWriter {
        const len = bytes.length;
        this.writeU32(<u32>len);
        if (len > 0) memory.copy(this.reserve(len), bytes.dataStart, <usize>len);
        return this;
    }

    writeString(value: string): DataWriter {
        const utf8 = String.UTF8.encode(value);
        const len = <i32>utf8.byteLength;
        this.writeU32(<u32>len);
        if (len > 0) memory.copy(this.reserve(len), changetype<usize>(utf8), <usize>len);
        return this;
    }

    writeU128(value: u128): DataWriter { return this.writeU64(value.lo).writeU64(value.hi); }
    writeI128(value: i128): DataWriter { return this.writeU64(value.lo).writeI64(value.hi); }

    writeU256(value: u256): DataWriter {
        return this.writeU64(value.lo1).writeU64(value.lo2).writeU64(value.hi1).writeU64(value.hi2);
    }

    writeI256(value: i256): DataWriter {
        return this.writeI64(value.lo1).writeI64(value.lo2).writeI64(value.hi1).writeI64(value.hi2);
    }

    /** Number of bytes written so far. */
    length(): i32 { return this.off; }

    /** A copy of exactly the bytes written. */
    toBytes(): Uint8Array {
        const out = new Uint8Array(this.off);
        if (this.off > 0) memory.copy(out.dataStart, this.buf.dataStart, <usize>this.off);
        return out;
    }
}

export class DataReader {
    private buf: Uint8Array;
    private off: i32 = 0;
    /** Cleared to false if any read ran past the end of the buffer. */
    ok: bool = true;

    constructor(bytes: Uint8Array) {
        this.buf = bytes;
    }

    private has(n: i32): bool {
        if (n < 0 || this.off + n > this.buf.length) {
            this.ok = false;
            return false;
        }
        return true;
    }

    private at(n: i32): usize {
        const ptr = this.buf.dataStart + <usize>this.off;
        this.off += n;
        return ptr;
    }

    readU8(): u8 { return this.has(1) ? load<u8>(this.at(1)) : 0; }
    readU16(): u16 { return this.has(2) ? load<u16>(this.at(2)) : 0; }
    readU32(): u32 { return this.has(4) ? load<u32>(this.at(4)) : 0; }
    readU64(): u64 { return this.has(8) ? load<u64>(this.at(8)) : 0; }
    readI8(): i8 { return this.has(1) ? load<i8>(this.at(1)) : 0; }
    readI16(): i16 { return this.has(2) ? load<i16>(this.at(2)) : 0; }
    readI32(): i32 { return this.has(4) ? load<i32>(this.at(4)) : 0; }
    readI64(): i64 { return this.has(8) ? load<i64>(this.at(8)) : 0; }
    readF32(): f32 { return this.has(4) ? load<f32>(this.at(4)) : 0; }
    readF64(): f64 { return this.has(8) ? load<f64>(this.at(8)) : 0; }
    readBool(): bool { return this.readU8() != 0; }

    readBytes(): Uint8Array {
        const len = <i32>this.readU32();
        if (!this.has(len)) return new Uint8Array(0);
        const out = new Uint8Array(len);
        if (len > 0) memory.copy(out.dataStart, this.at(len), <usize>len);
        return out;
    }

    readString(): string {
        const len = <i32>this.readU32();
        if (!this.has(len)) return "";
        return String.UTF8.decodeUnsafe(this.at(len), <usize>len);
    }

    readU128(): u128 {
        const lo = this.readU64();
        return new u128(lo, this.readU64());
    }

    readI128(): i128 {
        const lo = this.readU64();
        return new i128(lo, this.readI64());
    }

    readU256(): u256 {
        const lo1 = this.readU64();
        const lo2 = this.readU64();
        const hi1 = this.readU64();
        return new u256(lo1, lo2, hi1, this.readU64());
    }

    readI256(): i256 {
        const lo1 = this.readI64();
        const lo2 = this.readI64();
        const hi1 = this.readI64();
        return new i256(lo1, lo2, hi1, this.readI64());
    }

    /** Bytes left to read. */
    remaining(): i32 { return this.buf.length - this.off; }
}
