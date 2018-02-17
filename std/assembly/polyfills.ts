export function bswap<T>(value: T): T {
  switch (sizeof<T>()) {
    case 4:
      return rotl<u32>(value & 0xFF00FF00, 8) |
             rotr<u32>(value & 0x00FF00FF, 8);
    case 8: {
      var a: u64 = (value >> 8) & 0x00FF00FF00FF00FF;
      var b: u64 = (value & 0x00FF00FF00FF00FF) << 8;
      value = a | b;

      a = (value >> 16) & 0x0000FFFF0000FFFF;
      b = (value & 0x0000FFFF0000FFFF) << 16;

      return rotr<T>(a | b, 32);
    }
    default:
      unreachable();
      break;
  }
}

export function bswap16<T>(value: T): T {
  switch (sizeof<T>()) {
    case 2:
    case 4:
    case 8:
      return rotr<T>(value, 8);
    default:
      unreachable();
      break;
  }
}
