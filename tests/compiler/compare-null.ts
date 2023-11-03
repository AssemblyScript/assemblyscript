class CompareNullA {}

export function compare_null_with_null(): void {
  assert(null == null);
  assert(!(null != null));
}
compare_null_with_null();

export function compare_null_with_operator_overload(): void {
  null == "aa";
  null != "aa";
  "aa" == null;
  "aa" != null;

  null === "aa";
  null !== "aa";
  "aa" === null;
  "aa" !== null;
}

export function compare_null_with_nullable_class(a: CompareNullA | null): void {
  null == a;
  null != a;
  a == null;
  a != null;

  null === a;
  null !== a;
  a === null;
  a !== null;
}

export function compare_null_with_class(a: CompareNullA): void {
  null == a;
  null != a;
  a == null;
  a != null;

  null === a;
  null !== a;
  a === null;
  a !== null;
}
