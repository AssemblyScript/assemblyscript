// @ts-ignore: decorator
@inline
export function HASH<T>(key: T): u32 {
  if (isString<T>()) {
    return hashStr(changetype<string>(key));
  } else if (isReference<T>()) {
    if (sizeof<T>() == 4) return hash32(changetype<u32>(key));
    if (sizeof<T>() == 8) return hash64(changetype<u64>(key));
  } else if (isFloat<T>()) {
    if (sizeof<T>() == 4) return hash32(reinterpret<u32>(f32(key)));
    if (sizeof<T>() == 8) return hash64(reinterpret<u64>(f64(key)));
  } else {
    if (sizeof<T>() <= 4) return hash32(u32(key));
    if (sizeof<T>() == 8) return hash64(u64(key));
  }
  return unreachable();
}

// XXHash 32-bit as a starting point, see: https://cyan4973.github.io/xxHash

// primes
// @ts-ignore: decorator
@inline const XXH32_P1: u32 = 2654435761;
// @ts-ignore: decorator
@inline const XXH32_P2: u32 = 2246822519;
// @ts-ignore: decorator
@inline const XXH32_P3: u32 = 3266489917;
// @ts-ignore: decorator
@inline const XXH32_P4: u32 = 668265263;
// @ts-ignore: decorator
@inline const XXH32_P5: u32 = 374761393;
// @ts-ignore: decorator
@inline const XXH32_SEED: u32 = 0;

function hash32(key: u32): u32 {
  var h: u32 = XXH32_SEED + XXH32_P5;
  h += key * XXH32_P3;
  h  = rotl(h, 17) * XXH32_P4;
  h ^= h >> 15;
  h *= XXH32_P2;
  h ^= h >> 13;
  h *= XXH32_P3;
  h ^= h >> 16;
  return h;
}

function hash64(key: u64): u32 {
  var h: u32 = XXH32_SEED + XXH32_P5;
  h += <u32>key * XXH32_P3;
  h  = rotl(h, 17) * XXH32_P4;
  h += <u32>(key >> 32) * XXH32_P3;
  h  = rotl(h, 17) * XXH32_P4;
  h ^= h >> 15;
  h *= XXH32_P2;
  h ^= h >> 13;
  h *= XXH32_P3;
  h ^= h >> 16;
  return h;
}

// @ts-ignore: decorator
@inline
function xxhMix(h: u32, c: u32): u32 {
  h += c * XXH32_P2;
  h = rotl(h, 13);
  return h * XXH32_P1;
}

function hashStr(key: string): u32 {
  if (key === null) {
    return XXH32_SEED;
  }

  var h: u32 = XXH32_SEED + XXH32_P5;
  var len = key.length << 1;

  if (len >= 16) {
    let s1 = XXH32_SEED + XXH32_P1 + XXH32_P2;
    let s2 = XXH32_SEED + XXH32_P2;
    let s3 = XXH32_SEED;
    let s4 = XXH32_SEED - XXH32_P1;

    let i = 0;
    len -= 16;

    while (i <= len) {
      s1 = xxhMix(s1, load<u32>(changetype<usize>(key) + i));
      s2 = xxhMix(s2, load<u32>(changetype<usize>(key) + i, 4));
      s3 = xxhMix(s3, load<u32>(changetype<usize>(key) + i, 8));
      s4 = xxhMix(s4, load<u32>(changetype<usize>(key) + i, 12));
      i += 16;
    }
    h = rotl(s1, 1) + rotl(s2, 7) + rotl(s3, 12) + rotl(s4, 18);
    len -= i;
  }

  var i = 0;
  len -= 4;

  while (i <= len) {
    h += load<u32>(changetype<usize>(key) + i) * XXH32_P3;
    h  = rotl(h, 17) * XXH32_P4;
    i += 4;
  }

  while (i < len) {
    h += <u32>load<u8>(changetype<usize>(key) + i) * XXH32_P5;
    h = rotl(h, 11) * XXH32_P1;
    i++;
  }

  h ^= h >> 15;
  h *= XXH32_P2;
  h ^= h >> 13;
  h *= XXH32_P3;
  h ^= h >> 16;

  return h;
}
