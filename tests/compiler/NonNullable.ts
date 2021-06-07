type nullableString = string | null;

assert(nameof<NonNullable<u32>>() == nameof<u32>());
assert(nameof<NonNullable<nullableString>>() == nameof<string>());
assert(nameof<NonNullable<string[] | null>>() == nameof<string[]>());

function assertNonNull<T>(t: T): void {
  assert(!isNullable<T>(), "T cannot be null");
  assert(t != null);
}

function safetyCheck<A>(t: A): void {
  if (t != null) {
    assertNonNull(<NonNullable<A>>t);
  }
}

let z: nullableString = "z";

assertNonNull<nonnull<nullableString>>(z!);
safetyCheck(z);
