class A {
  boolValue: bool;
}

export function test(): bool {
  let a: A;
  a.boolValue = true;
  return a.boolValue;
}
