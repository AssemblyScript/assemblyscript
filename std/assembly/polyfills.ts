export function bswap64(value: u64): u64 {
  var a: u64 = (value >> 8) & 0x00FF00FF00FF00FF;
  var b: u64 = (value & 0x00FF00FF00FF00FF) << 8;
  value = a | b;

  a = (value >> 16) & 0x0000FFFF0000FFFF;
  b = (value & 0x0000FFFF0000FFFF) << 16;

  return rotr<u64>(a | b, 32);
}

export function bswap32(value: u32): u32 {
  return rotl<u32>(value & 0xFF00FF00, 8) |
         rotr<u32>(value & 0x00FF00FF, 8);
}

export function bswap16(value: u16): u16 {
  return rotr<u16>(value, 8);
}
