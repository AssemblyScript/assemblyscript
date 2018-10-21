import "allocator/arena";

var str = "𐐷hi𤭢"; // -> f0 90 90 b7 68 69 f0 a4 ad a2 00

var len = str.lengthUTF8;

assert(len == 11);

var ptr = str.toUTF8(); // toUTF8 is zero-terminated

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

assert(String.fromUTF8(ptr, 0) == ""); // fromUTF8 is not zero-terminated
assert(String.fromUTF8(ptr, len - 1) == str);
assert(String.fromUTF8(ptr, 4) == "𐐷");
assert(String.fromUTF8(ptr + 4, 2) == "hi");
assert(String.fromUTF8(ptr + 6, 4) == "𤭢");
assert(String.fromUTF8(ptr + 10, 1) == "\0");

memory.free(ptr);
