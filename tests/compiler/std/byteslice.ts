import { ByteSlice } from "byteslice";

// Use high addresses to avoid overlap with heap/static data
const BASE: usize = 8192;

// --- Basic read/write ---

// Write some data to memory for testing
store<u8>(BASE, 0x01);
store<u8>(BASE + 1, 0x02);
store<u8>(BASE + 2, 0x03);
store<u8>(BASE + 3, 0x04);
store<u8>(BASE + 4, 0x05);
store<u8>(BASE + 5, 0x06);
store<u8>(BASE + 6, 0x07);
store<u8>(BASE + 7, 0x08);

let s = new ByteSlice(BASE, 16);

// Single-byte read
assert(s.getU8(0) == 0x01);
assert(s.getU8(1) == 0x02);

// Byte indexing operators
assert(s[0] == 0x01);
assert(s[1] == 0x02);

// 16-bit big-endian read (default)
assert(s.getU16(0) == 0x0102);
// 16-bit little-endian read
assert(s.getU16(0, false) == 0x0201);

// 32-bit big-endian read (default)
assert(s.getU32(0) == 0x01020304);
// 32-bit little-endian read
assert(s.getU32(0, false) == 0x04030201);

// 64-bit big-endian read (default)
assert(s.getU64(0) == 0x0102030405060708);
// 64-bit little-endian read
assert(s.getU64(0, false) == 0x0807060504030201);

// Signed reads
assert(s.getI8(0) == 0x01);

// --- Write tests ---
const WBASE: usize = BASE + 256;
let w = new ByteSlice(WBASE, 32);

w.setU8(0, 0xAA);
assert(w.getU8(0) == 0xAA);

w.setU16(2, 0x0102); // big-endian default
assert(w.getU16(2) == 0x0102);
assert(load<u16>(WBASE + 2) == 0x0201); // raw memory is byte-swapped

w.setU32(4, 0x01020304);
assert(w.getU32(4) == 0x01020304);

w.setU64(8, 0x0102030405060708);
assert(w.getU64(8) == 0x0102030405060708);

// LE write
w.setU32(16, 0xAABBCCDD, false);
assert(load<u32>(WBASE + 16) == 0xAABBCCDD); // no swap

// Byte indexing write
w[0] = 0xBB;
assert(w[0] == 0xBB);

// --- Slice ---
let sub = s.slice(2, 6);
assert(sub.length == 4);
assert(sub.getU8(0) == 0x03);
assert(sub.getU8(3) == 0x06);

// --- Fill ---
const FBASE: usize = BASE + 512;
let f = new ByteSlice(FBASE, 16);
f.fill(0xFF, 0, 8);
assert(f.getU8(0) == 0xFF);
assert(f.getU8(7) == 0xFF);

// --- Equals ---
let a = new ByteSlice(BASE, 4);
let b = new ByteSlice(BASE, 4);
assert(a.equals(b) == true);

// Copy data to a different location and compare
const CBASE: usize = BASE + 768;
memory.copy(CBASE, BASE, 4);
let c = new ByteSlice(CBASE, 4);
assert(a.equals(c) == true);

// Modify one byte
store<u8>(CBASE, 0xFF);
let d = new ByteSlice(CBASE, 4);
assert(a.equals(d) == false);

// --- CopyTo ---
const DBASE: usize = BASE + 1024;
let src = new ByteSlice(BASE, 8);
let dst = new ByteSlice(DBASE, 16);
dst.fill(0, 0, 16);
src.copyTo(dst);
assert(dst.getU8(0) == 0x01);
assert(dst.getU8(7) == 0x08);

// --- toPointer ---
let p = s.toPointer<u8>();
assert(p.offset == BASE);
assert(p.value == 0x01);
