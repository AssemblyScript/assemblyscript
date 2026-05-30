import { Encoding } from "encoding";
import { Pointer } from "pointer";

// Use high addresses to avoid overlap with heap/static data
const BASE: usize = 8192;

// --- Hex encoding ---

// encodeByte
Encoding.Hex.encodeByte(0x00, BASE);
assert(load<u8>(BASE) == 48); // '0'
assert(load<u8>(BASE + 1) == 48); // '0'

Encoding.Hex.encodeByte(0xFF, BASE + 4);
assert(load<u8>(BASE + 4) == 102); // 'f'
assert(load<u8>(BASE + 5) == 102); // 'f'

Encoding.Hex.encodeByte(0xAB, BASE + 8);
assert(load<u8>(BASE + 8) == 97);  // 'a'
assert(load<u8>(BASE + 9) == 98);  // 'b'

Encoding.Hex.encodeByte(0x1F, BASE + 12);
assert(load<u8>(BASE + 12) == 49);  // '1'
assert(load<u8>(BASE + 13) == 102); // 'f'

// decodeByte
const DB: usize = BASE + 256;
store<u8>(DB, 48); store<u8>(DB + 1, 48); // "00"
assert(Encoding.Hex.decodeByte(DB) == 0x00);

store<u8>(DB + 2, 102); store<u8>(DB + 3, 102); // "ff"
assert(Encoding.Hex.decodeByte(DB + 2) == 0xFF);

store<u8>(DB + 4, 65); store<u8>(DB + 5, 66); // "AB" (uppercase)
assert(Encoding.Hex.decodeByte(DB + 4) == 0xAB);

// Invalid hex
store<u8>(DB + 8, 103); store<u8>(DB + 9, 48); // "g0"
assert(Encoding.Hex.decodeByte(DB + 8) == -1);

// encode / decode multi-byte
const SRC: usize = BASE + 344;
const HEX: usize = BASE + 444;
const DEC: usize = BASE + 544;
store<u8>(SRC, 0xDE);
store<u8>(SRC + 1, 0xAD);
store<u8>(SRC + 2, 0xBE);
store<u8>(SRC + 3, 0xEF);
let hexLen = Encoding.Hex.encode(SRC, 4, HEX);
assert(hexLen == 8);

let decLen = Encoding.Hex.decode(HEX, 8, DEC);
assert(decLen == 4);
assert(load<u8>(DEC) == 0xDE);
assert(load<u8>(DEC + 1) == 0xAD);
assert(load<u8>(DEC + 2) == 0xBE);
assert(load<u8>(DEC + 3) == 0xEF);

// Odd-length decode returns -1
assert(Encoding.Hex.decode(HEX, 7, DEC + 100) == -1);

// --- LEB128 Varint ---

const BR: usize = BASE + 768; // bytesRead location
const VB: usize = BASE + 844; // varint buffer

let bytesRead = new Pointer<i32>(BR);

// encodeU32 / decodeU32

// Single-byte encoding (0-127)
let written = Encoding.Varint.encodeU32(0, VB);
assert(written == 1);
assert(load<u8>(VB) == 0);

written = Encoding.Varint.encodeU32(127, VB);
assert(written == 1);
assert(load<u8>(VB) == 127);

// Multi-byte encoding
written = Encoding.Varint.encodeU32(128, VB);
assert(written == 2);
let decoded = Encoding.Varint.decodeU32(VB, bytesRead);
assert(decoded == 128);
assert(bytesRead.value == 2);

written = Encoding.Varint.encodeU32(300, VB);
let decoded2 = Encoding.Varint.decodeU32(VB, bytesRead);
assert(decoded2 == 300);

// Large value
written = Encoding.Varint.encodeU32(0xFFFFFFFF, VB);
assert(written == 5);
let decoded3 = Encoding.Varint.decodeU32(VB, bytesRead);
assert(decoded3 == 0xFFFFFFFF);
assert(bytesRead.value == 5);

// encodeU64 / decodeU64
const VB64: usize = BASE + 944;
written = Encoding.Varint.encodeU64(0x0102030405060708, VB64);
let decoded64 = Encoding.Varint.decodeU64(VB64, bytesRead);
assert(decoded64 == 0x0102030405060708);

// --- Bitcoin CompactSize ---

const CB: usize = BASE + 1044;

// Single byte (< 0xFD)
written = Encoding.Varint.encodeCompact(0xFC, CB);
assert(written == 1);
let compactDecoded = Encoding.Varint.decodeCompact(CB, bytesRead);
assert(compactDecoded == 0xFC);
assert(bytesRead.value == 1);

// 2-byte (0xFD prefix)
written = Encoding.Varint.encodeCompact(0xFD, CB);
assert(written == 3);
compactDecoded = Encoding.Varint.decodeCompact(CB, bytesRead);
assert(compactDecoded == 0xFD);
assert(bytesRead.value == 3);

written = Encoding.Varint.encodeCompact(0xFFFF, CB);
assert(written == 3);
compactDecoded = Encoding.Varint.decodeCompact(CB, bytesRead);
assert(compactDecoded == 0xFFFF);
assert(bytesRead.value == 3);

// 4-byte (0xFE prefix)
written = Encoding.Varint.encodeCompact(0x10000, CB);
assert(written == 5);
compactDecoded = Encoding.Varint.decodeCompact(CB, bytesRead);
assert(compactDecoded == 0x10000);
assert(bytesRead.value == 5);

// 8-byte (0xFF prefix)
written = Encoding.Varint.encodeCompact(0x100000000, CB);
assert(written == 9);
compactDecoded = Encoding.Varint.decodeCompact(CB, bytesRead);
assert(compactDecoded == 0x100000000);
assert(bytesRead.value == 9);
