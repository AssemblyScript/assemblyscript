export abstract class Object {
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

  // TODO: Wrapper classes like `Function<T>` override the `this` type of
  // `toString`, which is covariant and hence fails to overload. Wrapper classes
  // might need a different mechanism to indicate such special `this` types.
  // toString(): string {
  //   return "[object Object]";
  // }
}

// TODO: The types `Object` and `object` differ in TypeScript, in that the
// latter indicates any non-primitive type, not including `string` for example.
// The `object` type hence remains reserved for now, also to potentially address
// the above `toString` TODO in alternative ways.
// @ts-ignore: nolib
// export type object = Object;
