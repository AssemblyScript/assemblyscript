function memset(dest: usize, c: u8, n: usize): usize {
  var ret = dest;

  // fill head and tail wwith minimal branching
  if (!n)
    return ret;
  store<u8>(dest, c);
  store<u8>(dest + n - 1, c);
  if (n <= 2)
    return ret;

  store<u8>(dest + 1, c);
  store<u8>(dest + 2, c);
  store<u8>(dest + n - 2, c);
  store<u8>(dest + n - 3, c);
  if (n <= 6)
    return ret;
  store<u8>(dest + 3, c);
  store<u8>(dest + n - 4, c);
  if (n <= 8)
    return ret;

  // advance pointer to align it at 4-byte boundary
  var k: usize = -dest & 3;
  dest += k;
  n -= k;
  n &= -4;

  var c32: u32 = <u32>-1 / 255 * c;

  // fill head/tail up to 28 bytes each in preparation
  store<u32>(dest, c32);
  store<u32>(dest + n - 4, c32);
  if (n <= 8)
    return ret;
  store<u32>(dest + 4, c32);
  store<u32>(dest + 8, c32);
  store<u32>(dest + n - 12, c32);
  store<u32>(dest + n - 8, c32);
  if (n <= 24)
    return ret;
  store<u32>(dest + 12, c32);
  store<u32>(dest + 16, c32);
  store<u32>(dest + 20, c32);
  store<u32>(dest + 24, c32);
  store<u32>(dest + n - 28, c32);
  store<u32>(dest + n - 24, c32);
  store<u32>(dest + n - 20, c32);
  store<u32>(dest + n - 16, c32);

  // align to a multiple of 8
  k = 24 + (dest & 4);
  dest += k;
  n -= k;

  // copy 32 bytes each
  var c64: u64 = <u64>c32 | (<u64>c32 << 32);
  while (n >= 32) {
    store<u64>(dest, c64);
    store<u64>(dest + 8, c64);
    store<u64>(dest + 16, c64);
    store<u64>(dest + 24, c64);
    n -= 32;
    dest += 32;
  }
  return ret;
}

var dest = HEAP_BASE;
memset(dest, 1, 16);

assert(load<u8>(dest) == 1);
assert(load<u8>(dest + 15) == 1);

memset(dest + 1, 2, 14);

assert(load<u8>(dest) == 1);
assert(load<u8>(dest + 1) == 2);
assert(load<u8>(dest + 14) == 2);
assert(load<u8>(dest + 15) == 1);
