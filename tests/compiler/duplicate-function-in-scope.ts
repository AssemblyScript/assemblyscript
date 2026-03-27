// Duplicate named function declarations in the same scope should
// produce a diagnostic instead of crashing the compiler.

export function testMixed1(): void {
  const inner = function (): void {};
  function inner(): void {}
  inner();
}

export function test(): void {
  function inner(): void {}
  function inner(): void {}
  inner();
}

ERROR("EOF");
