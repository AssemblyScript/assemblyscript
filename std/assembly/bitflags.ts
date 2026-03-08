// Type-safe bit manipulation utilities.
// Pure @inline functions — each compiles to 1-2 wasm instructions.

export namespace BitFlags {

  /** Check if all bits in `bit` are set in `flags`. */
  @inline export function has<T>(flags: T, bit: T): bool {
    return (flags & bit) == bit;
  }

  /** Check if any bits in `mask` are set in `flags`. */
  @inline export function hasAny<T>(flags: T, mask: T): bool {
    return (flags & mask) != <T>0;
  }

  /** Test whether bit at `index` is set. */
  @inline export function test<T>(flags: T, index: i32): bool {
    return (flags & (<T>1 << index)) != <T>0;
  }

  /** Set bits from `bit` in `flags`. */
  @inline export function set<T>(flags: T, bit: T): T {
    return flags | bit;
  }

  /** Clear bits from `bit` in `flags`. */
  @inline export function clear<T>(flags: T, bit: T): T {
    return flags & ~bit;
  }

  /** Toggle bits from `bit` in `flags`. */
  @inline export function toggle<T>(flags: T, bit: T): T {
    return flags ^ bit;
  }

  /** Count number of set bits (population count). */
  @inline export function popcount<T>(flags: T): i32 {
    return <i32>popcnt(flags);
  }

  /** Check if no bits are set. */
  @inline export function isEmpty<T>(flags: T): bool {
    return flags == <T>0;
  }
}
