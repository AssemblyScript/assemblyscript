import "allocator/arena";

var str = "𐐷hi𤭢"; // -> f0 90 90 b7 68 69 f0 a4 ad a2 00

var len = str.lengthUTF8;

assert(len == 11);

var ptr = str.toUTF8();

assert(load<u8>(ptr, 0) == 0xf0);
assert(load<u8>(ptr, 1) == 0x90);
assert(load<u8>(ptr, 2) == 0x90);
assert(load<u8>(ptr, 3) == 0xb7);
assert(load<u8>(ptr, 4) == 0x68);
assert(load<u8>(ptr, 5) == 0x69);
assert(load<u8>(ptr, 6) == 0xf0);
assert(load<u8>(ptr, 7) == 0xa4);
assert(load<u8>(ptr, 8) == 0xad);
assert(load<u8>(ptr, 9) == 0xa2);
assert(load<u8>(ptr, 10) == 0);

memory.free(ptr);

var ptr2 = str.toUTF8(4);

assert(load<u8>(ptr2, 0) == 0xf0);
assert(load<u8>(ptr2, 1) == 0x90);
assert(load<u8>(ptr2, 2) == 0x90);
assert(load<u8>(ptr2, 3) == 0xb7);
assert(load<u8>(ptr2, 4) == 0);

memory.free(ptr2);

var ptr3 = str.toUTF8(12);

assert(load<u8>(ptr, 0) == 0xf0);
assert(load<u8>(ptr, 1) == 0x90);
assert(load<u8>(ptr, 2) == 0x90);
assert(load<u8>(ptr, 3) == 0xb7);
assert(load<u8>(ptr, 4) == 0x68);
assert(load<u8>(ptr, 5) == 0x69);
assert(load<u8>(ptr, 6) == 0xf0);
assert(load<u8>(ptr, 7) == 0xa4);
assert(load<u8>(ptr, 8) == 0xad);
assert(load<u8>(ptr, 9) == 0xa2);
assert(load<u8>(ptr, 10) == 0);
assert(load<u8>(ptr, 11) == 0);
assert(load<u8>(ptr, 12) == 0);

memory.free(ptr3);
