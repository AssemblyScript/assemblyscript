export function memcpy(dest: usize, src: usize, n: usize): usize {
  // the following is based on musl's implementation of memcpy
  let d: usize = dest, s: usize = src;
  let w: u32, x: u32;

  // copy 1 byte each until src is aligned to 4 bytes
  while (n != 0 && s % 4 != 0) {
    store<u8>(d++, load<u8>(s++));
    n--;
  }

  // if dst is aligned to 4 bytes as well, copy 4 bytes each
  if (d % 4 == 0) {
    while (n >= 16) {
      store<u32>(d     , load<u32>(s     ));
      store<u32>(d +  4, load<u32>(s +  4));
      store<u32>(d +  8, load<u32>(s +  8));
      store<u32>(d + 12, load<u32>(s + 12));
      s += 16; d += 16; n -= 16;
    }
    if (n & 8) {
      store<u32>(d    , load<u32>(s    ));
      store<u32>(d + 4, load<u32>(s + 4));
      d += 8; s += 8;
    }
    if (n & 4) {
      store<u32>(d, load<u32>(s));
      d += 4; s += 4;
    }
    if (n & 2) { // drop to 2 bytes each
      store<u16>(d, load<u16>(s));
      d += 2; s += 2;
    }
    if (n & 1) { // drop to 1 byte
      store<u8>(d++, load<u8>(s++));
    }
    return dest;
  }

  // if dst is not aligned to 4 bytes, use alternating shifts to copy 4 bytes each
  // doing shifts if faster when copying enough bytes (here: 32 or more)
  if (n >= 32) {
    switch (d % 4) {
      // known to be != 0
      case 1:
        w = load<u32>(s);
        store<u8>(d++, load<u8>(s++));
        store<u8>(d++, load<u8>(s++));
        store<u8>(d++, load<u8>(s++));
        n -= 3;
        while (n >= 17) {
          x = load<u32>(s + 1);
          store<u32>(d, w >> 24 | x << 8);
          w = load<u32>(s + 5);
          store<u32>(d + 4, x >> 24 | w << 8);
          x = load<u32>(s + 9);
          store<u32>(d + 8, w >> 24 | x << 8);
          w = load<u32>(s + 13);
          store<u32>(d + 12, x >> 24 | w << 8);
          s += 16; d += 16; n -= 16;
        }
        break;
      case 2:
        w = load<u32>(s);
        store<u8>(d++, load<u8>(s++));
        store<u8>(d++, load<u8>(s++));
        n -= 2;
        while (n >= 18) {
          x = load<u32>(s + 2);
          store<u32>(d, w >> 16 | x << 16);
          w = load<u32>(s + 6);
          store<u32>(d + 4, x >> 16 | w << 16);
          x = load<u32>(s + 10);
          store<u32>(d + 8, w >> 16 | x << 16);
          w = load<u32>(s + 14);
          store<u32>(d + 12, x >> 16 | w << 16);
          s += 16; d += 16; n -= 16;
        }
        break;
      case 3:
        w = load<u32>(s);
        store<u8>(d++, load<u8>(s++));
        n -= 1;
        while (n >= 19) {
          x = load<u32>(s + 3);
          store<u32>(d, w >> 8 | x << 24);
          w = load<u32>(s + 7);
          store<u32>(d + 4, x >> 8 | w << 24);
          x = load<u32>(s + 11);
          store<u32>(d + 8, w >> 8 | x << 24);
          w = load<u32>(s + 15);
          store<u32>(d + 12, x >> 8 | w << 24);
          s += 16; d += 16; n -= 16;
        }
        break;
    }
  }

  // copy remaining bytes one by one
  if (n & 16) {
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
  }
  if (n & 8) {
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
  }
  if (n & 4) {
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
  }
  if (n & 2) {
    store<u8>(d++, load<u8>(s++));
    store<u8>(d++, load<u8>(s++));
  }
  if (n & 1) {
    store<u8>(d++, load<u8>(s++));
  }
  return dest;
}

const base: usize = 8;
store<u64>(base     , 0x1111111111111111);
store<u64>(base + 8 , 0x2222222222222222);
store<u64>(base + 16, 0x3333333333333333);
store<u64>(base + 24, 0x4444444444444444);

let dst: usize;
dst = memcpy(base + 1, base + 16, 4);
assert(dst == base + 1);
assert(load<u64>(base) == 0x1111113333333311);

dst = memcpy(base, base, 32);
assert(dst == base);
assert(load<u64>(base) == 0x1111113333333311);
assert(load<u64>(base + 8) == 0x2222222222222222);
assert(load<u64>(base + 16) == 0x3333333333333333);
assert(load<u64>(base + 24) == 0x4444444444444444);

dst = memcpy(base + 5, base + 28, 3);
assert(load<u64>(base) == 0x4444443333333311);

dst = memcpy(base + 8, base + 16, 15);
assert(load<u64>(base) == 0x4444443333333311);
assert(load<u64>(base + 8) == 0x3333333333333333);
assert(load<u64>(base + 16) == 0x3344444444444444);
assert(load<u64>(base + 24) == 0x4444444444444444);
