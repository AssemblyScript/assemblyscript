export type alias = f32;
// TODO: Without 'export' this yields 'ERROR TS2395: Individual declarations in merged declaration...'
// which differs from TypeScript, but we don't have individual element and type spaces per file and this
// just merges.

export function alias(alias: alias): f64 {
  type alias = f64;
  return alias as alias;
}