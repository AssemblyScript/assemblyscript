// Duplicate named function declarations in the same scope should
// produce a diagnostic instead of crashing the compiler.

export function test(): void {
  function inner(): void {}
  function inner(): void {}
  inner();
}

ERROR("EOF");
