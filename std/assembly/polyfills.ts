export function bswap<T extends number>(value: T): T {
  if (isInteger<T>()) {
    if (sizeof<T>() == 2) {
      return <T>((value << 8) | ((value >> 8) & <T>0x00FF));
    }
    if (sizeof<T>() == 4) {
      return <T>(
        rotl<u32>(<u32>value & 0xFF00FF00, 8) |
        rotr<u32>(<u32>value & 0x00FF00FF, 8)
      );
    }
    if (sizeof<T>() == 8) {
      let a = (<u64>value >> 8) & 0x00FF00FF00FF00FF;
      let b = (<u64>value & 0x00FF00FF00FF00FF) << 8;
      let v = a | b;

      a = (v >> 16) & 0x0000FFFF0000FFFF;
      b = (v & 0x0000FFFF0000FFFF) << 16;

      return <T>rotr<u64>(a | b, 32);
    }
    return value;
  }
  assert(false);
  return value;
}

export function bswap16<T extends number>(value: T): T {
  if (isInteger<T>() && sizeof<T>() <= 4) {
    if (sizeof<T>() == 2) {
      return <T>((value << 8) | ((value >> 8) & <T>0x00FF));
    } else if (sizeof<T>() == 4) {
      return <T>(((value << 8) & <T>0xFF00) | ((value >> 8) & <T>0x00FF) | (value & <T>0xFFFF0000));
    }
    return value;
  }
  assert(false);
  return value;
}
