export function hash<T>(key: T): u32 {
  if (isString<T>()) {
    return hashStr(changetype<string>(key));
  } else if (isReference<T>()) {
    if (sizeof<T>() == 4) return hash32(changetype<u32>(key));
    if (sizeof<T>() == 8) return hash64(changetype<u64>(key));
  } else if (isFloat<T>()) {
    if (sizeof<T>() == 4) return hash32(reinterpret<u32>(f32(key)));
    if (sizeof<T>() == 8) return hash64(reinterpret<u64>(f64(key)));
  } else {
    if (sizeof<T>() == 1) return hash8 (u32(key));
    if (sizeof<T>() == 2) return hash16(u32(key));
    if (sizeof<T>() == 4) return hash32(u32(key));
    if (sizeof<T>() == 8) return hash64(u64(key));
  }
  return unreachable();
}

// FNV-1a 32-bit as a starting point, see: http://isthe.com/chongo/tech/comp/fnv/

// @ts-ignore: decorator
@inline const FNV_OFFSET: u32 = 2166136261;

// @ts-ignore: decorator
@inline const FNV_PRIME: u32 = 16777619;


// @ts-ignore: decorator
@inline
function hash8(key: u32, seed: u32 = FNV_OFFSET): u32 {
  return (seed ^ key) * FNV_PRIME;
}

// @ts-ignore: decorator
@inline
function hash16(key: u32, seed: u32 = FNV_OFFSET): u32 {
  var v = seed;
  v = (v ^ ( key        & 0xff)) * FNV_PRIME;
  v = (v ^ ( key >>  8        )) * FNV_PRIME;
  return v;
}

// @ts-ignore: decorator
@inline
function hash32(key: u32, seed: u32 = FNV_OFFSET): u32 {
  var v = seed;
  v = (v ^ ( key        & 0xff)) * FNV_PRIME;
  v = (v ^ ((key >>  8) & 0xff)) * FNV_PRIME;
  v = (v ^ ((key >> 16) & 0xff)) * FNV_PRIME;
  v = (v ^ ( key >> 24        )) * FNV_PRIME;
  return v;
}

// @ts-ignore: decorator
@inline
function hash64(key: u64, seed: u32 = FNV_OFFSET): u32 {
  var l = <u32> key;
  var h = <u32>(key >>> 32);
  var v = seed;
  v = (v ^ ( l        & 0xff)) * FNV_PRIME;
  v = (v ^ ((l >>  8) & 0xff)) * FNV_PRIME;
  v = (v ^ ((l >> 16) & 0xff)) * FNV_PRIME;
  v = (v ^ ( l >> 24        )) * FNV_PRIME;
  v = (v ^ ( h        & 0xff)) * FNV_PRIME;
  v = (v ^ ((h >>  8) & 0xff)) * FNV_PRIME;
  v = (v ^ ((h >> 16) & 0xff)) * FNV_PRIME;
  v = (v ^ ( h >> 24        )) * FNV_PRIME;
  return v;
}

// @ts-ignore: decorator
@inline
function hashStr(key: string, seed: u32 = FNV_OFFSET): u32 {
  var v = seed;
  if (key !== null) {
    let len = key.length << 1;
    if (ASC_SHRINK_LEVEL > 1) {
      for (let i: usize = 0; i < len; ++i) {
        v = (v ^ <u32>load<u8>(changetype<usize>(key) + i)) * FNV_PRIME;
      }
    } else {
      let off: usize = 0;
      while (len >= 8) {
        v = hash64(load<u64>(changetype<usize>(key) + off), v);
        off += 8; len -= 8;
      }
      if (len >= 4) {
        v = hash32(load<u32>(changetype<usize>(key) + off), v);
        off += 4; len -= 4;
      }
      if (len >= 2) {
        v = hash16(load<u16>(changetype<usize>(key) + off), v);
      }
      // "len" always even so don't need hash8
    }
  }
  return v;
}
