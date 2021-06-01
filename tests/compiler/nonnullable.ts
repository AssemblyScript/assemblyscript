

type nullableString = string | null;;

assert(nameof<NonNullable<u32>>() == nameof<u32>());
assert(nameof<NonNullable<nullableString>>() == nameof<string>());
assert(nameof<NonNullable<string[] | null>>() == nameof<string[]>());

function assertNonNull<T>(): void {
  assert(!isNullable<T>(), "T cannot be null");
}

assertNonNull<NonNullable<nullableString>>();
