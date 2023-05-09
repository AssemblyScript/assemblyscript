const value: i16 = -32768;

// [ 128 0 ]
assert(value == <i16>0x8000);

// [ 0 128 ], asserts in both <=0.19 and >=0.20
assert(bswap<i16>(value) == <i16>0x0080);

// [ 0 128 ], asserts in <=0.19, fails in >=0.20
assert(bswap(value) == <i16>0x0080);

// [ 255 128 ], fails in >=0.20, asserts in <=0.19
assert(bswap(value) != <i16>0xff80);
