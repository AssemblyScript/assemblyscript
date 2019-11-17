/** Filler implementations. */
@sealed @unmanaged
export declare abstract class ref {
  @lazy @external("ref", "null")
  static readonly null: anyref;
  @external("ref", "is_null")
  static is_null(ref: anyref): bool;
  @external("ref", "eq")
  static eq(a: anyref, b: anyref): bool;
}

/** Host reference abstraction. */
@sealed @unmanaged
export abstract class Anyref {
}
