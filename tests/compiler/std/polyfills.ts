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
