export function HASH<T>(key: T): u64 {
  if (isString<T>()) {
    return hashStr(changetype<string>(key));
  } else if (isReference<T>()) {
    if (sizeof<T>() == 4) return hash32(changetype<u32>(key));
    if (sizeof<T>() == 8) return hash64(changetype<u64>(key));
  } else if (isFloat<T>()) {
    if (sizeof<T>() == 4) return hash32(reinterpret<u32>(f32(key)));
    if (sizeof<T>() == 8) return hash64(reinterpret<u64>(f64(key)));
  } else {
    if (sizeof<T>() <= 4) return hash32(u32(key), sizeof<T>());
    if (sizeof<T>() == 8) return hash64(u64(key));
  }
  return unreachable();
}

// XXHash 64-bit, see: https://cyan4973.github.io/xxHash

// primes
// @ts-ignore: decorator
@inline const XXH64_P1: u64 = 11400714785074694791;
// @ts-ignore: decorator
@inline const XXH64_P2: u64 = 14029467366897019727;
// @ts-ignore: decorator
@inline const XXH64_P3: u64 = 1609587929392839161;
// @ts-ignore: decorator
@inline const XXH64_P4: u64 = 9650029242287828579;
// @ts-ignore: decorator
@inline const XXH64_P5: u64 = 2870177450012600261;
// @ts-ignore: decorator
@inline const XXH64_SEED: u64 = 0;

// @ts-ignore: decorator
@inline
function hash32(key: u32, len: u64 = 4): u64 {
  var h: u64 = XXH64_SEED + XXH64_P5 + len;
  h ^= u64(key) * XXH64_P1;
  h  = rotl(h, 23) * XXH64_P2 + XXH64_P3;
  h ^= h >> 33;
  h *= XXH64_P2;
  h ^= h >> 29;
  h *= XXH64_P3;
  h ^= h >> 32;
  return h;
}

// @ts-ignore: decorator
@inline
function hash64(key: u64): u64 {
  var h: u64 = XXH64_SEED + XXH64_P5 + 8;
  h ^= rotl(key * XXH64_P2, 31) * XXH64_P1;
  h  = rotl(h, 27) * XXH64_P1 + XXH64_P4;
  h ^= h >> 33;
  h *= XXH64_P2;
  h ^= h >> 29;
  h *= XXH64_P3;
  h ^= h >> 32;
  return h;
}

// @ts-ignore: decorator
@inline
function mix1(h: u64, key: u64): u64 {
  return rotl(h + key * XXH64_P2, 31) * XXH64_P1;
}

// @ts-ignore: decorator
@inline
function mix2(h: u64, s: u64): u64 {
  return (h ^ (rotl(s, 31) * XXH64_P1)) * XXH64_P1 + XXH64_P4;
}

// @ts-ignore: decorator
@inline
function hashStr(key: string): u64 {
  if (key === null) {
    return XXH64_SEED;
  }
  var len = key.length << 1;
  var h: u64 = 0;

  if (len >= 32) {
    let s1 = XXH64_SEED + XXH64_P1 + XXH64_P2;
    let s2 = XXH64_SEED + XXH64_P2;
    let s3 = XXH64_SEED;
    let s4 = XXH64_SEED - XXH64_P1;
    let ln = len;

    let i = 0;
    let n = len - 32;

    while (i <= n) {
      s1 = mix1(s1, load<u64>(changetype<usize>(key) + i    ));
      s2 = mix1(s2, load<u64>(changetype<usize>(key) + i,  8));
      s3 = mix1(s3, load<u64>(changetype<usize>(key) + i, 16));
      s4 = mix1(s4, load<u64>(changetype<usize>(key) + i, 24));
      i += 32;
    }
    h = rotl(s1, 1) + rotl(s2, 7) + rotl(s3, 12) + rotl(s4, 18);

    s1 *= XXH64_P2;
    s2 *= XXH64_P2;
    s3 *= XXH64_P2;
    s4 *= XXH64_P2;

    h = mix2(h, s1);
    h = mix2(h, s2);
    h = mix2(h, s3);
    h = mix2(h, s4);
    h += <u64>ln;

    len -= i;
  } else {
    h = <u64>len + XXH64_SEED + XXH64_P5;
  }

  var i = 0;
  var n = len - 8;

  while (i <= n) {
    h ^= rotl(load<u64>(changetype<usize>(key) + i) * XXH64_P2, 31) * XXH64_P1;
    h  = rotl(h, 27) * XXH64_P1 + XXH64_P4;
    i += 8;
  }

  if (i + 4 <= len) {
    h ^= <u64>load<u32>(changetype<usize>(key) + i) * XXH64_P1;
    h  = rotl(h, 23) * XXH64_P2 + XXH64_P3;
    i += 4;
  }

  while (i < len) {
    h += <u64>load<u8>(changetype<usize>(key) + i) * XXH64_P5;
    h = rotl(h, 11) * XXH64_P1;
    i++;
  }

  h ^= h >> 33;
  h *= XXH64_P2;
  h ^= h >> 29;
  h *= XXH64_P3;
  h ^= h >> 32;
  return h;
}
