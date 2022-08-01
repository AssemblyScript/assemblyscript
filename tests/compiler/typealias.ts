export type alias = f32;
// TODO: Without 'export' this yields 'ERROR TS2395: Individual declarations in merged declaration...'
// which differs from TypeScript, but we don't have individual element and type spaces per file and this
// just merges.

@inline
function complex<T>(): void {
  type Dummy = Set<u8>;

  type A = T;
  type B = Array<T>;
  type C = Dummy;

  type D<X> = T;
  type E<X> = Array<T>;
  type F<X> = Dummy;
  type G<X> = Map<X, T>;

  const a: Dummy | null = null;
  const b: A | null = null;
  const c: B | null = null;
  const d: C | null = null;
  const e: D<i32> | null = null;
  const f: E<i32> | null = null;
  const g: F<i32> | null = null;
  const h: G<i32> | null = null;
}

export function alias(alias: alias): f64 {
  complex<Set<isize>>();
  type alias = f64;
  return alias as alias;
}