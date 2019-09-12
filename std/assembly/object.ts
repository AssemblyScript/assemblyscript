export class Object {
  static is<T>(value1: T, value2: T): bool {
    if (isFloat<T>()) {
      if (value1 == value2) {
        // 0 === -0, but they are not identical
        // @ts-ignore: typecast
        return value1 != <T>0.0 || <T>1.0 / value1 == <T>1.0 / value2;
      }
      // NaN !== NaN, but they are identical.
      // @ts-ignore: typecast
      return isNaN(value1) && isNaN(value2);
    }
    // For references, strings, integers and booleans
    return value1 == value2;
  }
}
