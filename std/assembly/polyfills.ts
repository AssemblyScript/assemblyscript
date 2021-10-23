export function bswap<T extends number>(value: T): T {
  if (isInteger<T>()) {
    if (sizeof<T>() == 1) {
      return value;
    }
    if (sizeof<T>() == 2) {
      return <T>(<u16>value << 8 | (<u16>value >> 8));
    }
    if (sizeof<T>() == 4) {
      return <T>(
        rotl(<u32>value & 0xFF00FF00, 8) |
        rotr(<u32>value & 0x00FF00FF, 8)
      );
    }
    if (sizeof<T>() == 8) {
      let a = (<u64>value >> 8) & 0x00FF00FF00FF00FF;
      let b = (<u64>value & 0x00FF00FF00FF00FF) << 8;
      let v = a | b;

      a = (v >>> 16) & 0x0000FFFF0000FFFF;
      b = (v & 0x0000FFFF0000FFFF) << 16;

      return <T>rotr(a | b, 32);
    }
  }
  ERROR("Unsupported generic type");
}

export function bswap16<T extends number>(value: T): T {
  if (isInteger<T>()) {
    if (sizeof<T>() == 1) {
      return value;
    }
    if (sizeof<T>() == 2) {
      return <T>(<u16>value << 8 | (<u16>value >> 8));
    }
    if (sizeof<T>() == 4) {
      return <T>(
        (((<u32>value & 0xFF) << 8)) |
        ((<u32>value >> 8) & 0xFF)  |
        (<u32>value & 0xFFFF0000)
      );
    }
  }
  ERROR("Unsupported generic type");
}
