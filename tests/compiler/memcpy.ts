export function memcpy(dest: usize, src: usize, n: usize): usize {
  var ret = dest;
  var w: u32, x: u32;

  // copy 1 byte each until src is aligned to 4 bytes
  while (n && src % 4) {
    store<u8>(dest++, load<u8>(src++));
    n--;
  }

  // if dst is aligned to 4 bytes as well, copy 4 bytes each
  if (dest % 4 == 0) {
    while (n >= 16) {
      store<u32>(dest     , load<u32>(src     ));
      store<u32>(dest +  4, load<u32>(src +  4));
      store<u32>(dest +  8, load<u32>(src +  8));
      store<u32>(dest + 12, load<u32>(src + 12));
      src += 16; dest += 16; n -= 16;
    }
    if (n & 8) {
      store<u32>(dest    , load<u32>(src    ));
      store<u32>(dest + 4, load<u32>(src + 4));
      dest += 8; src += 8;
    }
    if (n & 4) {
      store<u32>(dest, load<u32>(src));
      dest += 4; src += 4;
    }
    if (n & 2) { // drop to 2 bytes each
      store<u16>(dest, load<u16>(src));
      dest += 2; src += 2;
    }
    if (n & 1) { // drop to 1 byte
      store<u8>(dest++, load<u8>(src++));
    }
    return ret;
  }

  // if dst is not aligned to 4 bytes, use alternating shifts to copy 4 bytes each
  // doing shifts if faster when copying enough bytes (here: 32 or more)
  if (n >= 32) {
    switch (dest % 4) {
      // known to be != 0
      case 1:
        w = load<u32>(src);
        store<u8>(dest++, load<u8>(src++));
        store<u8>(dest++, load<u8>(src++));
        store<u8>(dest++, load<u8>(src++));
        n -= 3;
        while (n >= 17) {
          x = load<u32>(src + 1);
          store<u32>(dest, w >> 24 | x << 8);
          w = load<u32>(src + 5);
          store<u32>(dest + 4, x >> 24 | w << 8);
          x = load<u32>(src + 9);
          store<u32>(dest + 8, w >> 24 | x << 8);
          w = load<u32>(src + 13);
          store<u32>(dest + 12, x >> 24 | w << 8);
          src += 16; dest += 16; n -= 16;
        }
        break;
      case 2:
        w = load<u32>(src);
        store<u8>(dest++, load<u8>(src++));
        store<u8>(dest++, load<u8>(src++));
        n -= 2;
        while (n >= 18) {
          x = load<u32>(src + 2);
          store<u32>(dest, w >> 16 | x << 16);
          w = load<u32>(src + 6);
          store<u32>(dest + 4, x >> 16 | w << 16);
          x = load<u32>(src + 10);
          store<u32>(dest + 8, w >> 16 | x << 16);
          w = load<u32>(src + 14);
          store<u32>(dest + 12, x >> 16 | w << 16);
          src += 16; dest += 16; n -= 16;
        }
        break;
      case 3:
        w = load<u32>(src);
        store<u8>(dest++, load<u8>(src++));
        n -= 1;
        while (n >= 19) {
          x = load<u32>(src + 3);
          store<u32>(dest, w >> 8 | x << 24);
          w = load<u32>(src + 7);
          store<u32>(dest + 4, x >> 8 | w << 24);
          x = load<u32>(src + 11);
          store<u32>(dest + 8, w >> 8 | x << 24);
          w = load<u32>(src + 15);
          store<u32>(dest + 12, x >> 8 | w << 24);
          src += 16; dest += 16; n -= 16;
        }
        break;
    }
  }

  // copy remaining bytes one by one
  if (n & 16) {
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
  }
  if (n & 8) {
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
  }
  if (n & 4) {
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
  }
  if (n & 2) {
    store<u8>(dest++, load<u8>(src++));
    store<u8>(dest++, load<u8>(src++));
  }
  if (n & 1) {
    store<u8>(dest++, load<u8>(src++));
  }
  return ret;
}

const base: usize = 8;
store<u64>(base     , 0x1111111111111111);
store<u64>(base + 8 , 0x2222222222222222);
store<u64>(base + 16, 0x3333333333333333);
store<u64>(base + 24, 0x4444444444444444);

var dest: usize;
dest = memcpy(base + 1, base + 16, 4);
assert(dest == base + 1);
assert(load<u64>(base) == 0x1111113333333311);

dest = memcpy(base, base, 32);
assert(dest == base);
assert(load<u64>(base) == 0x1111113333333311);
assert(load<u64>(base + 8) == 0x2222222222222222);
assert(load<u64>(base + 16) == 0x3333333333333333);
assert(load<u64>(base + 24) == 0x4444444444444444);

dest = memcpy(base + 5, base + 28, 3);
assert(load<u64>(base) == 0x4444443333333311);

dest = memcpy(base + 8, base + 16, 15);
assert(load<u64>(base) == 0x4444443333333311);
assert(load<u64>(base + 8) == 0x3333333333333333);
assert(load<u64>(base + 16) == 0x3344444444444444);
assert(load<u64>(base + 24) == 0x4444444444444444);
