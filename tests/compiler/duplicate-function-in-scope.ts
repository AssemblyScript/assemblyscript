// Duplicate named function declarations in the same scope should
// produce a diagnostic instead of crashing the compiler.

export function test(): void {
  function inner(): i32 {
    let x: i32 = 0;
    return x;
  }
  function inner(): i32 {
    let x: i32 = 0;
    return x + 1;
  }
  inner();
}

ERROR("EOF");
