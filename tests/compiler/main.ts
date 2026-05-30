// Tests the toil-native `@main` decorator: the decorated top-level function is
// exported as the WebAssembly export "main" without an `export` keyword.
@main
function add(a: i32, b: i32): i32 {
  return a + b;
}
