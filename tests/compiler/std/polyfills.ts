// bswap / bswap16 tests

// check bswap<T> for i8/u8
assert(bswap<u8>(<u8>0xaa) == <u8>0xaa);
assert(bswap<i8>(<i8>0xaa) == <i8>0xaa);

// check bswap<T> for i16/u16
assert(bswap<u16>(<u16>0xaabb) == <u16>0xbbaa);
assert(bswap<i16>(<i16>0xaabb) == <i16>0xbbaa);

// check bswap<T> for i32/u32
assert(bswap<u32>(<u32>0xaabbccdd) == <u32>0xddccbbaa);
assert(bswap<i32>(<i32>0xaabbccdd) == <i32>0xddccbbaa);

// check bswap<T> for i64/u64
assert(bswap<u64>(<u64>0x00112233aabbccdd) == <u64>0xddccbbaa33221100);
assert(bswap<i64>(<i64>0x00112233aabbccdd) == <i64>0xddccbbaa33221100);

// check bswap<T> for i32/u32
assert(bswap<usize>(<usize>0xaabbccdd) == <usize>0xddccbbaa);
assert(bswap<isize>(<isize>0xaabbccdd) == <isize>0xddccbbaa);

// check bswap16<T> for i8/u8
assert(bswap16<u8>(<u8>0xaa) == <u8>0xaa);
assert(bswap16<i8>(<i8>0xaa) == <i8>0xaa);

// check bswap16<T> for i16/u16
assert(bswap16<u16>(<u16>0xaabb) == <u16>0xbbaa);
assert(bswap16<i16>(<i16>0xaabb) == <i16>0xbbaa);

// check bswap16<T> for i32/u32
assert(bswap16<u32>(<u32>0xff88aabb) == <u32>0xff88bbaa);
assert(bswap16<i32>(<i32>0xff88aabb) == <i32>0xff88bbaa);

// bitrev tests

assert(bitrev<u8>(<u8>0) == <u8>0);
assert(bitrev<i8>(<i8>0) == <i8>0);
assert(bitrev<u8>(<u8>1) == <u8>0x80);
assert(bitrev<i8>(<i8>1) == <i8>0x80);
assert(bitrev<u8>(<u8>2) == <u8>0x40);
assert(bitrev<i8>(<i8>2) == <i8>0x40);
assert(bitrev<u8>(<u8>0x33) == <u8>0xCC);
assert(bitrev<i8>(<i8>0x33) == <i8>0xCC);
assert(bitrev<u8>(<u8>0x7F) == <u8>0xFE);
assert(bitrev<i8>(<i8>0x7F) == <i8>0xFE);
assert(bitrev<u8>(<u8>0x81) == <u8>0x81);
assert(bitrev<i8>(<i8>0x81) == <i8>0x81);
assert(bitrev<u8>(<u8>0xFF) == <u8>0xFF);
assert(bitrev<i8>(<i8>0xFF) == <i8>0xFF);

assert(bitrev<u16>(<u16>0) == <u16>0);
assert(bitrev<i16>(<i16>0) == <i16>0);
assert(bitrev<u16>(<u16>1) == <u16>0x8000);
assert(bitrev<i16>(<i16>1) == <i16>0x8000);
assert(bitrev<u16>(<u16>2) == <u16>0x4000);
assert(bitrev<i16>(<i16>2) == <i16>0x4000);
assert(bitrev<u16>(<u16>0x3333) == <u16>0xCCCC);
assert(bitrev<i16>(<i16>0x3333) == <i16>0xCCCC);
assert(bitrev<u16>(<u16>0x7FFF) == <u16>0xFFFE);
assert(bitrev<i16>(<i16>0x7FFF) == <i16>0xFFFE);
assert(bitrev<u16>(<u16>0x8531) == <u16>0x8CA1);
assert(bitrev<i16>(<i16>0x8531) == <i16>0x8CA1);
assert(bitrev<u16>(<u16>0xFFFF) == <u16>0xFFFF);
assert(bitrev<i16>(<i16>0xFFFF) == <i16>0xFFFF);

assert(bitrev<u32>(<u32>0) == <u32>0);
assert(bitrev<i32>(<i32>0) == <i32>0);
assert(bitrev<u32>(<u32>1) == <u32>0x80000000);
assert(bitrev<i32>(<i32>1) == <i32>0x80000000);
assert(bitrev<u32>(<u32>2) == <u32>0x40000000);
assert(bitrev<i32>(<i32>2) == <i32>0x40000000);
assert(bitrev<i32>(<u32>0x00000080) == <u32>0x01000000);
assert(bitrev<i32>(<i32>0x00000080) == <i32>0x01000000);
assert(bitrev<u32>(<u32>0x33333333) == <u32>0xCCCCCCCC);
assert(bitrev<i32>(<i32>0x33333333) == <i32>0xCCCCCCCC);
assert(bitrev<u32>(<u32>0x7FFFFFFF) == <u32>0xFFFFFFFE);
assert(bitrev<i32>(<i32>0x7FFFFFFF) == <i32>0xFFFFFFFE);
assert(bitrev<u32>(<u32>0x87654321) == <u32>0x84C2A6E1);
assert(bitrev<i32>(<i32>0x87654321) == <i32>0x84C2A6E1);
assert(bitrev<u32>(<u32>0xFFFFFFFF) == <u32>0xFFFFFFFF);
assert(bitrev<i32>(<i32>0xFFFFFFFF) == <i32>0xFFFFFFFF);
