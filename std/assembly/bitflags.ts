// Type-safe bit manipulation utilities.
// Pure @inline functions — each compiles to 1-2 wasm instructions.

export namespace BitFlags {

  /** Check if all bits in `bit` are set in `flags`. */
  @inline export function has<T extends number>(flags: T, bit: T): bool {
    if (!isInteger<T>()) ERROR("BitFlags requires an integer type");
    return (flags & bit) == bit;
  }

  /** Check if any bits in `mask` are set in `flags`. */
  @inline export function hasAny<T extends number>(flags: T, mask: T): bool {
    if (!isInteger<T>()) ERROR("BitFlags requires an integer type");
    return (flags & mask) != <T>0;
  }

  /** Test whether bit at `index` is set. */
  @inline export function test<T extends number>(flags: T, index: i32): bool {
    if (!isInteger<T>()) ERROR("BitFlags requires an integer type");
    return (flags & (<T>1 << index)) != <T>0;
  }

  /** Set bits from `bit` in `flags`. */
  @inline export function set<T extends number>(flags: T, bit: T): T {
    if (!isInteger<T>()) ERROR("BitFlags requires an integer type");
    return flags | bit;
  }

  /** Clear bits from `bit` in `flags`. */
  @inline export function clear<T extends number>(flags: T, bit: T): T {
    if (!isInteger<T>()) ERROR("BitFlags requires an integer type");
    return flags & ~bit;
  }

  /** Toggle bits from `bit` in `flags`. */
  @inline export function toggle<T extends number>(flags: T, bit: T): T {
    if (!isInteger<T>()) ERROR("BitFlags requires an integer type");
    return flags ^ bit;
  }

  /** Count number of set bits (population count). */
  @inline export function popcount<T extends number>(flags: T): i32 {
    if (!isInteger<T>()) ERROR("BitFlags requires an integer type");
    return <i32>popcnt(flags);
  }

  /** Check if no bits are set. */
  @inline export function isEmpty<T extends number>(flags: T): bool {
    if (!isInteger<T>()) ERROR("BitFlags requires an integer type");
    return flags == <T>0;
  }
}
