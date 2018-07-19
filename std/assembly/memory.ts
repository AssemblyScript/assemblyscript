export namespace memory {

  @builtin export declare function size(): i32; // tslint:disable-line

  @builtin export declare function grow(pages: i32): i32; // tslint:disable-line

  export function fill(dest: usize, c: u8, n: usize): void { // see: musl/src/string/memset
    if (isDefined(__memory_fill)) { __memory_fill(dest, c, n); return; } // tslint:disable-line
    memset(dest, c, n);
  }

  export function copy(dest: usize, src: usize, n: usize): void { // see: musl/src/string/memmove.c
    if (isDefined(__memory_copy)) { __memory_copy(dest, src, n); return; } // tslint:disable-line
    memmove(dest, src, n);
  }

  export function compare(vl: usize, vr: usize, n: usize): i32 { // see: musl/src/string/memcmp.c
    if (isDefined(__memory_compare)) return __memory_compare(vl, vr, n); // tslint:disable-line
    return memcmp(vl, vr, n);
  }

  // Passive segments

  // export function init(segmentIndex: u32, srcOffset: usize, dstOffset: usize, n: usize): void {
  //   __memory_init(segmentIndex, srcOffset, dstOffset);
  // }

  // export function drop(segmentIndex: u32): void {
  //   __memory_drop(segmentIndex);
  // }

  // Allocator

  export function allocate(size: usize): usize {
    if (isDefined(__memory_allocate)) return __memory_allocate(size); // tslint:disable-line
    WARNING("Calling 'memory.allocate' requires a memory manager to be present.");
    return <usize>unreachable();
  }

  export function free(ptr: usize): void {
    if (isDefined(__memory_free)) { __memory_free(ptr); return; } // tslint:disable-line
    WARNING("Calling 'memory.free' requires a memory manager to be present.");
    unreachable();
  }

  export function reset(): void {
    if (isDefined(__memory_reset)) { __memory_reset(); return; } // tslint:disable-line
    unreachable();
  }
}

// this function will go away once `memory.copy` becomes an intrinsic
function memcpy(dest: usize, src: usize, n: usize): void { // see: musl/src/string/memcpy.c
  var w: u32, x: u32;

  // copy 1 byte each until src is aligned to 4 bytes
  while (n && (src & 3)) {
    store<u8>(dest++, load<u8>(src++));
    n--;
  }

  // if dst is aligned to 4 bytes as well, copy 4 bytes each
  if ((dest & 3) == 0) {
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
    return;
  }

  // if dst is not aligned to 4 bytes, use alternating shifts to copy 4 bytes each
  // doing shifts if faster when copying enough bytes (here: 32 or more)
  if (n >= 32) {
    switch (dest & 3) {
      // known to be != 0
      case 1: {
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
      }
      case 2: {
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
      }
      case 3: {
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
}

// this function will go away once `memory.copy` becomes an intrinsic
function memmove(dest: usize, src: usize, n: usize): void { // see: musl/src/string/memmove.c
  if (dest == src) return;
  if (src + n <= dest || dest + n <= src) {
    memcpy(dest, src, n);
    return;
  }
  if (dest < src) {
    if ((src & 7) == (dest & 7)) {
      while (dest & 7) {
        if (!n) return;
        --n;
        store<u8>(dest++, load<u8>(src++));
      }
      while (n >= 8) {
        store<u64>(dest, load<u64>(src));
        n    -= 8;
        dest += 8;
        src  += 8;
      }
    }
    while (n) {
      store<u8>(dest++, load<u8>(src++));
      --n;
    }
  } else {
    if ((src & 7) == (dest & 7)) {
      while ((dest + n) & 7) {
        if (!n) return;
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
}

// this function will go away once `memory.fill` becomes an intrinsic
function memset(dest: usize, c: u8, n: usize): void { // see: musl/src/string/memset

  // fill head and tail with minimal branching
  if (!n) return;
  store<u8>(dest, c);
  store<u8>(dest + n - 1, c);
  if (n <= 2) return;

  store<u8>(dest + 1, c);
  store<u8>(dest + 2, c);
  store<u8>(dest + n - 2, c);
  store<u8>(dest + n - 3, c);
  if (n <= 6) return;
  store<u8>(dest + 3, c);
  store<u8>(dest + n - 4, c);
  if (n <= 8) return;

  // advance pointer to align it at 4-byte boundary
  var k: usize = -dest & 3;
  dest += k;
  n -= k;
  n &= -4;

  var c32: u32 = <u32>-1 / 255 * c;

  // fill head/tail up to 28 bytes each in preparation
  store<u32>(dest, c32);
  store<u32>(dest + n - 4, c32);
  if (n <= 8) return;
  store<u32>(dest + 4, c32);
  store<u32>(dest + 8, c32);
  store<u32>(dest + n - 12, c32);
  store<u32>(dest + n - 8, c32);
  if (n <= 24) return;
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
}

function memcmp(vl: usize, vr: usize, n: usize): i32 { // see: musl/src/string/memcmp.c
  if (vl == vr) return 0;
  while (n != 0 && load<u8>(vl) == load<u8>(vr)) {
    n--; vl++; vr++;
  }
  return n ? <i32>load<u8>(vl) - <i32>load<u8>(vr) : 0;
}
