export function bswap<T>(value: T): T {
  if (sizeof<T>() == 1) {
    return value;
  } else if (sizeof<T>() == 2) {
    return bswap16<T>(value);
  } else if (sizeof<T>() == 4) {
    return <T>(
      rotl<u32>(<u32>value & 0xFF00FF00, 8) |
      rotr<u32>(<u32>value & 0x00FF00FF, 8)
    );
  } else if (sizeof<T>() == 8) {
    var a: u64 = (<u64>value >> 8) & 0x00FF00FF00FF00FF;
    var b: u64 = (<u64>value & 0x00FF00FF00FF00FF) << 8;
    var v: u64 = a | b;

    a = (v >> 16) & 0x0000FFFF0000FFFF;
    b = (v & 0x0000FFFF0000FFFF) << 16;

    return <T>rotr<u64>(a | b, 32);
  }
  unreachable();
  return <T>0;
}

export function bswap16<T>(value: T): T {
  if (sizeof<T>() == 1) {
    return value;
  } else if (
    sizeof<T>() == 2 ||
    sizeof<T>() == 4 ||
    sizeof<T>() == 8
  ) {
    return rotr<T>(value, 8);
  }
  unreachable();
  return <T>0;
}
