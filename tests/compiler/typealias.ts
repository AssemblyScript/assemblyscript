type A = f32;
// TODO: Without 'export' this yields 'ERROR TS2395: Individual declarations in merged declaration...'
// which differs from TypeScript, but we don't have individual element and type spaces per file and this
// just merges.

export function alias(a: A): f64 {
  type B = f64;
  return a as B;
}