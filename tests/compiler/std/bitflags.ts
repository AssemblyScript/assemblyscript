import { BitFlags } from "bitflags";

// Test has
assert(BitFlags.has<u32>(0b1111, 0b0101) == true);
assert(BitFlags.has<u32>(0b1010, 0b0101) == false);
assert(BitFlags.has<u32>(0b1111, 0b0000) == true); // 0 is always "has"

// Test hasAny
assert(BitFlags.hasAny<u32>(0b1010, 0b0010) == true);
assert(BitFlags.hasAny<u32>(0b1000, 0b0101) == false);

// Test test (single bit)
assert(BitFlags.test<u32>(0b1010, 1) == true);
assert(BitFlags.test<u32>(0b1010, 0) == false);
assert(BitFlags.test<u32>(0b1010, 3) == true);

// Test set
assert(BitFlags.set<u32>(0b1000, 0b0001) == 0b1001);
assert(BitFlags.set<u32>(0b1010, 0b0100) == 0b1110);

// Test clear
assert(BitFlags.clear<u32>(0b1111, 0b0101) == 0b1010);
assert(BitFlags.clear<u32>(0b1010, 0b0010) == 0b1000);

// Test toggle
assert(BitFlags.toggle<u32>(0b1010, 0b0110) == 0b1100);
assert(BitFlags.toggle<u32>(0b1111, 0b1111) == 0b0000);

// Test popcount
assert(BitFlags.popcount<u32>(0) == 0);
assert(BitFlags.popcount<u32>(1) == 1);
assert(BitFlags.popcount<u32>(0b1010) == 2);
assert(BitFlags.popcount<u32>(0xFFFFFFFF) == 32);

// Test isEmpty
assert(BitFlags.isEmpty<u32>(0) == true);
assert(BitFlags.isEmpty<u32>(1) == false);

// Test with u64
assert(BitFlags.has<u64>(0xFFFFFFFFFFFFFFFF, 0x8000000000000000) == true);
assert(BitFlags.test<u64>(0x8000000000000000, 63) == true);
assert(BitFlags.test<u64>(0x8000000000000000, 0) == false);
assert(BitFlags.popcount<u64>(0xFFFFFFFFFFFFFFFF) == 64);
assert(BitFlags.set<u64>(0, 0x8000000000000000) == 0x8000000000000000);
assert(BitFlags.clear<u64>(0xFFFFFFFFFFFFFFFF, 0x8000000000000000) == 0x7FFFFFFFFFFFFFFF);
assert(BitFlags.toggle<u64>(0, 0xAAAAAAAAAAAAAAAA) == 0xAAAAAAAAAAAAAAAA);
assert(BitFlags.isEmpty<u64>(0) == true);
assert(BitFlags.isEmpty<u64>(1) == false);
