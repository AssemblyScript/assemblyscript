import {
  HEADER_SIZE as HEADER_SIZE_STR
} from "./string";

// FNV-1a 32-bit as a starting point, see: http://isthe.com/chongo/tech/comp/fnv/

const FNV_OFFSET: u32 = 2166136261;
const FNV_PRIME: u32 = 16777619;

export function hash<T>(key: T): u32 {
  var hash: u32 = FNV_OFFSET;
  if (isString(key)) {
    for (let i: usize = 0, k: usize = key.length << 1; i < k; ++i) {
      hash = (hash ^ <u32>load<u8>(changetype<usize>(key) + i, HEADER_SIZE_STR)) * FNV_PRIME;
    }
  } else if (isFloat(key)) {
    if (sizeof<T>() == 4) { // f32
      let u = reinterpret<u32>(key);
      hash = (hash ^ ( u         & 0xff)) * FNV_PRIME;
      hash = (hash ^ ((u >>>  8) & 0xff)) * FNV_PRIME;
      hash = (hash ^ ((u >>> 16) & 0xff)) * FNV_PRIME;
      hash = (hash ^ ( u >>> 24        )) * FNV_PRIME;
    } else if (sizeof<T>() == 8) { // f64
      let u = reinterpret<u64>(key);
      let l = <u32> u;
      let h = <u32>(u >>> 32);
      hash = (hash ^ ( l         & 0xff)) * FNV_PRIME;
      hash = (hash ^ ((l >>>  8) & 0xff)) * FNV_PRIME;
      hash = (hash ^ ((l >>> 16) & 0xff)) * FNV_PRIME;
      hash = (hash ^ ( l >>> 24        )) * FNV_PRIME;
      hash = (hash ^ ( h         & 0xff)) * FNV_PRIME;
      hash = (hash ^ ((h >>>  8) & 0xff)) * FNV_PRIME;
      hash = (hash ^ ((h >>> 16) & 0xff)) * FNV_PRIME;
      hash = (hash ^ ( h >>> 24        )) * FNV_PRIME;
    } else unreachable();
  } else if (sizeof<T>() == 1) { // bool, i8, u8
    hash = (hash ^ (<u32>key & 0xff)) * FNV_PRIME;
  } else if (sizeof<T>() == 2) { // i16, u16
    let u = <u32>key;
    hash = (hash ^ ( u         & 0xff)) * FNV_PRIME;
    hash = (hash ^ ( u >>>  8        )) * FNV_PRIME;
  } else if (sizeof<T>() == 4) { // i32, u32
    let u = <u32>key;
    hash = (hash ^ ( u         & 0xff)) * FNV_PRIME;
    hash = (hash ^ ((u >>>  8) & 0xff)) * FNV_PRIME;
    hash = (hash ^ ((u >>> 16) & 0xff)) * FNV_PRIME;
    hash = (hash ^ ( u >>> 24        )) * FNV_PRIME;
  } else if (sizeof<T>() == 8) { // i64, u64
    let l = <u32> <u64>key;
    let h = <u32>(<u64>key >>> 32);
    hash = (hash ^ ( l         & 0xff)) * FNV_PRIME;
    hash = (hash ^ ((l >>>  8) & 0xff)) * FNV_PRIME;
    hash = (hash ^ ((l >>> 16) & 0xff)) * FNV_PRIME;
    hash = (hash ^ ( l >>> 24        )) * FNV_PRIME;
    hash = (hash ^ ( h         & 0xff)) * FNV_PRIME;
    hash = (hash ^ ((h >>>  8) & 0xff)) * FNV_PRIME;
    hash = (hash ^ ((h >>> 16) & 0xff)) * FNV_PRIME;
    hash = (hash ^ ( h >>> 24        )) * FNV_PRIME;
  } else unreachable();
  return hash;
}
