export class Object {
  static is<T>(value1: T, value2: T): bool {
    if (isFloat<T>()) {
      if (value1 == value2) {
        // 0 == -0, but they are not identical
        if (sizeof<T>() == 8) {
          // @ts-ignore: typecast
          return reinterpret<u64>(value1) == reinterpret<u64>(value2);
        } else {
          // @ts-ignore: typecast
          return reinterpret<u32>(value1) == reinterpret<u32>(value2);
        }
      }
      // NaN != NaN, but they are identical.
      // @ts-ignore: typecast
      return bool(i32(isNaN(value1)) & i32(isNaN(value2)));
    }
    // For references, strings, integers and booleans
    return value1 == value2;
  }
}
