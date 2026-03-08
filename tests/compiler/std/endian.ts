import { Endian } from "endian";

// Use high addresses to avoid overlap with heap/static data
const BASE: usize = 8192;

// Test toBE / fromBE (bswap)
assert(Endian.toBE<u16>(0x0102) == 0x0201);
assert(Endian.toBE<u32>(0x01020304) == 0x04030201);
assert(Endian.toBE<u64>(0x0102030405060708) == 0x0807060504030201);
assert(Endian.fromBE<u16>(0x0201) == 0x0102);
assert(Endian.fromBE<u32>(0x04030201) == 0x01020304);
assert(Endian.fromBE<u64>(0x0807060504030201) == 0x0102030405060708);

// Test toLE / fromLE (identity)
assert(Endian.toLE<u32>(0xDEADBEEF) == 0xDEADBEEF);
assert(Endian.fromLE<u64>(0x1234567890ABCDEF) == 0x1234567890ABCDEF);

// Test loadBE / storeBE with memory
store<u32>(BASE, 0x01020304);
assert(Endian.loadBE<u32>(BASE) == 0x04030201);
assert(Endian.loadLE<u32>(BASE) == 0x01020304);

Endian.storeBE<u32>(BASE + 8, 0x01020304);
assert(load<u32>(BASE + 8) == 0x04030201);

Endian.storeLE<u32>(BASE + 16, 0xAABBCCDD);
assert(load<u32>(BASE + 16) == 0xAABBCCDD);

// Test with offsets
Endian.storeBE<u16>(BASE + 32, 0x0102);
assert(load<u16>(BASE + 32) == 0x0201);
assert(Endian.loadBE<u16>(BASE + 32) == 0x0102);

// Test 64-bit
Endian.storeBE<u64>(BASE + 48, 0x0102030405060708);
assert(Endian.loadBE<u64>(BASE + 48) == 0x0102030405060708);
assert(load<u64>(BASE + 48) == 0x0807060504030201);

// Test signed types
assert(Endian.toBE<i32>(<i32>0x01020304) == <i32>0x04030201);
assert(Endian.toBE<i16>(<i16>0x0102) == <i16>0x0201);

// Test offset parameter
Endian.storeBE<u32>(BASE + 64, 0xDEADBEEF);
assert(Endian.loadBE<u32>(BASE + 60, 4) == 0xDEADBEEF);
