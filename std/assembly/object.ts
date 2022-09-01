export class Object {
  static is<T>(x: T, y: T): bool {
    if (isFloat<T>()) {
      // Float pointing is special we shoulr presere following identities:
      // 0.0 !=-0.0
      // NaN == NaN
      if (sizeof<T>() == 8) {
        return (
          bool(u32(x != x) & u32(y != y) |
          u32(reinterpret<u64>(f64(x)) == reinterpret<u64>(f64(y))))
        );
      } else {
        return (
          bool(u32(x != x) & u32(y != y) |
          u32(reinterpret<u32>(f32(x)) == reinterpret<u32>(f32(y))))
        );
      }
    }
    // For references, strings, integers and booleans
    return x == y;
  }
}
