function memmove(dest: usize, src: usize, n: usize): usize {
  var ret = dest;
  if (dest == src)
    return ret;
  // if (src + n <= dest || dest + n <= src) {
  //   memcpy(dest, src, n);
  //   return ret;
  // }
  if (dest < src) {
    if (src % 8 == dest % 8) {
      while (dest % 8) {
        if (!n)
          return ret;
        --n;
        store<u8>(dest++, load<u8>(src++));
      }
      while (n >= 8) {
        store<u64>(dest, load<u64>(src));
        n -= 8;
        dest += 8;
        src += 8;
      }
    }
    while (n) {
      store<u8>(dest++, load<u8>(src++));
      --n;
    }
  } else {
    if (src % 8 == dest % 8) {
      while ((dest + n) % 8) {
        if (!n)
          return ret;
        store<u8>(dest + --n, load<u8>(src + n));
      }
      while (n >= 8) {
        n -= 8;
        store<u64>(dest + n, load<u64>(src + n));
      }
    }
    while (n) {
      store<u8>(dest + --n, load<u8>(src + n));
    }
  }
  return ret;
}

const base: usize = 8;
store<u64>(base     , 0x1111111111111111);
store<u64>(base + 8 , 0x2222222222222222);
store<u64>(base + 16, 0x3333333333333333);
store<u64>(base + 24, 0x4444444444444444);

var dest: usize;
dest = memmove(base + 1, base + 16, 4);
assert(dest == base + 1);
assert(load<u64>(base) == 0x1111113333333311);

dest = memmove(base, base, 32);
assert(dest == base);
assert(load<u64>(base) == 0x1111113333333311);
assert(load<u64>(base + 8) == 0x2222222222222222);
assert(load<u64>(base + 16) == 0x3333333333333333);
assert(load<u64>(base + 24) == 0x4444444444444444);

dest = memmove(base + 5, base + 28, 3);
assert(load<u64>(base) == 0x4444443333333311);

dest = memmove(base + 8, base + 16, 15);
assert(load<u64>(base) == 0x4444443333333311);
assert(load<u64>(base + 8) == 0x3333333333333333);
assert(load<u64>(base + 16) == 0x3344444444444444);
assert(load<u64>(base + 24) == 0x4444444444444444);
