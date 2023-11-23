export type alias = i32;
// TODO: Without 'export' this yields 'ERROR TS2395: Individual declarations in merged declaration...'
// which differs from TypeScript, but we don't have individual element and type spaces per file and this
// just merges.

export function alias(a: alias): alias {
  return a;
}

function outer_function(): void {
  type alias = i64;
  let alias: alias = 1;
  assert(nameof(alias) == nameof<i64>());
  function inner_function(): void {
    type alias = f64;
    let alias: alias = 1;
    assert(nameof(alias) == nameof<f64>());
  }
  inner_function();
}
outer_function();

function generic_type_alias(): void {
  type V<T> = Array<T>;
  assert(idof<V<i32>>() == idof<Array<i32>>());
}
generic_type_alias();


function alias_in_type_arguments(): void {
  type alias = i64;
  assert(idof<Array<alias>>() == idof<Array<i64>>());
}
alias_in_type_arguments();
