const siphashptr = memory.data(sizeof<u64>());

export namespace SipHash {
  export function hash(key: ArrayBuffer, m: usize, offset: usize): u64 {
    let keyPtr = changetype<usize>(key);
    let k0 = load<u64>(keyPtr);
    let k1 = load<u64>(keyPtr + 8);
    let v0 = k0;
    let v2 = k0;
    let v1 = k1;
    let v3 = k1;
    let ml = offset;
    let m17: isize = <isize>ml - 7;
    let buf = siphashptr;

    v0 ^= 0x736f6d6570736575;
    v1 ^= 0x646f72616e646f6d;
    v2 ^= 0x6c7967656e657261;
    v3 ^= 0x7465646279746573;

    let mp: isize = 0;
    while (mp < m17) {
      let mi = load<u64>(m + <usize>mp);
      v3 ^= mi;

      // compression algorithm
      v0 += v1;
      v2 += v3;
      v1 = rotl<u64>(v1, 13);
      v3 = rotl<u64>(v3, 16);
      v1 ^= v0;
      v3 ^= v2;
      v0 = rotl<u64>(v0, 32);
      v2 += v1;
      v0 += v3;
      v1 = rotl<u64>(v1, 17);
      v3 = rotl<u64>(v3, 21);
      v1 ^= v2;
      v3 ^= v0;
      v2 = rotl<u64>(v2, 32);

      // compression algorithm
      v0 += v1;
      v2 += v3;
      v1 = rotl<u64>(v1, 13);
      v3 = rotl<u64>(v3, 16);
      v1 ^= v0;
      v3 ^= v2;
      v0 = rotl<u64>(v0, 32);
      v2 += v1;
      v0 += v3;
      v1 = rotl<u64>(v1, 17);
      v3 = rotl<u64>(v3, 21);
      v1 ^= v2;
      v3 ^= v0;
      v2 = rotl<u64>(v2, 32);

      v0 ^= mi;

      mp += 8;
    }

    store<u8>(buf, ml, 7);

    let ic: usize = 0;
    while (<usize>mp < ml) {
      store<u8>(buf + (ic++), load<u8>(m + (mp++)));
    }

    while (ic < 7) {
      store<u8>(buf + (ic++), 0);
    }
    let mil = load<u64>(buf);

    v3 ^= mil;

    // compression algorithm
    v0 += v1;
    v2 += v3;
    v1 = rotl<u64>(v1, 13);
    v3 = rotl<u64>(v3, 16);
    v1 ^= v0;
    v3 ^= v2;
    v0 = rotl<u64>(v0, 32);
    v2 += v1;
    v0 += v3;
    v1 = rotl<u64>(v1, 17);
    v3 = rotl<u64>(v3, 21);
    v1 ^= v2;
    v3 ^= v0;
    v2 = rotl<u64>(v2, 32);

    // compression algorithm
    v0 += v1;
    v2 += v3;
    v1 = rotl<u64>(v1, 13);
    v3 = rotl<u64>(v3, 16);
    v1 ^= v0;
    v3 ^= v2;
    v0 = rotl<u64>(v0, 32);
    v2 += v1;
    v0 += v3;
    v1 = rotl<u64>(v1, 17);
    v3 = rotl<u64>(v3, 21);
    v1 ^= v2;
    v3 ^= v0;
    v2 = rotl<u64>(v2, 32);

    v0 ^= mil;
    v2 ^= 0xff;

    // compression algorithm
    v0 += v1;
    v2 += v3;
    v1 = rotl<u64>(v1, 13);
    v3 = rotl<u64>(v3, 16);
    v1 ^= v0;
    v3 ^= v2;
    v0 = rotl<u64>(v0, 32);
    v2 += v1;
    v0 += v3;
    v1 = rotl<u64>(v1, 17);
    v3 = rotl<u64>(v3, 21);
    v1 ^= v2;
    v3 ^= v0;
    v2 = rotl<u64>(v2, 32);

    // compression algorithm
    v0 += v1;
    v2 += v3;
    v1 = rotl<u64>(v1, 13);
    v3 = rotl<u64>(v3, 16);
    v1 ^= v0;
    v3 ^= v2;
    v0 = rotl<u64>(v0, 32);
    v2 += v1;
    v0 += v3;
    v1 = rotl<u64>(v1, 17);
    v3 = rotl<u64>(v3, 21);
    v1 ^= v2;
    v3 ^= v0;
    v2 = rotl<u64>(v2, 32);

    // compression algorithm
    v0 += v1;
    v2 += v3;
    v1 = rotl<u64>(v1, 13);
    v3 = rotl<u64>(v3, 16);
    v1 ^= v0;
    v3 ^= v2;
    v0 = rotl<u64>(v0, 32);
    v2 += v1;
    v0 += v3;
    v1 = rotl<u64>(v1, 17);
    v3 = rotl<u64>(v3, 21);
    v1 ^= v2;
    v3 ^= v0;
    v2 = rotl<u64>(v2, 32);

    // compression algorithm
    v0 += v1;
    v2 += v3;
    v1 = rotl<u64>(v1, 13);
    v3 = rotl<u64>(v3, 16);
    v1 ^= v0;
    v3 ^= v2;
    v0 = rotl<u64>(v0, 32);
    v2 += v1;
    v0 += v3;
    v1 = rotl<u64>(v1, 17);
    v3 = rotl<u64>(v3, 21);
    v1 ^= v2;
    v3 ^= v0;
    v2 = rotl<u64>(v2, 32);

    return v0 ^ v1 ^ v2 ^ v3;
  }
}