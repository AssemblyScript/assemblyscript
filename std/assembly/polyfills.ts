export function bswap<T>(value: T): T {
  assert(sizeof<T>() == 1 || sizeof<T>() == 2 || sizeof<T>() == 4 || sizeof<T>() == 8);

  if (sizeof<T>() == 2) {
    return bswap16<T>(value);
  }
  if (sizeof<T>() == 4) {
    return <T>(
      rotl<u32>(<u32>value & 0xFF00FF00, 8) |
      rotr<u32>(<u32>value & 0x00FF00FF, 8)
    );
  }
  if (sizeof<T>() == 8) {
    let a: u64 = (<u64>value >> 8) & 0x00FF00FF00FF00FF;
    let b: u64 = (<u64>value & 0x00FF00FF00FF00FF) << 8;
    let v: u64 = a | b;

    a = (v >> 16) & 0x0000FFFF0000FFFF;
    b = (v & 0x0000FFFF0000FFFF) << 16;

    return <T>rotr<u64>(a | b, 32);
  }
  return value;
}

export function bswap16<T>(value: T): T {
  assert(sizeof<T>() == 1 || sizeof<T>() == 2 || sizeof<T>() == 4);

  if (sizeof<T>() == 2 || sizeof<T>() == 4) {
    return <T>(((value << 8) & <T>0xFF00) | ((value >> 8) & <T>0x00FF) | (value & <T>0xFFFF0000));
  }
  return value;
}
