/** @module util *//***/

/** Tests if the bit at the specified index is set within a 64-bit map. */
export function bitsetIs(map: I64, index: i32): bool {
  assert(index >= 0 && index < 64);
  return i64_ne(
    i64_and(
      map,
      i64_shl(
        i64_one,
        i64_new(index)
      )
    ),
    i64_zero
  );
}

/** Sets or unsets the bit at the specified index within a 64-bit map and returns the new map. */
export function bitsetSet(map: I64, index: i32, isSet: bool): I64 {
  assert(index >= 0 && index < 64);
  return isSet
    ? i64_or(
        map,
        i64_shl(
          i64_one,
          i64_new(index)
        )
      )
    : i64_and(
        map,
        i64_not(
          i64_shl(
            i64_one,
            i64_new(index)
          )
        )
      );
}
