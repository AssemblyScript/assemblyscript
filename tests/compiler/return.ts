function nop(): void {}

export function testVoidReturn(cond: bool): void {
  if (cond) {
    return nop();
  }
  return nop();
}

export function testVoidReturnFunction(cond: bool, fn: () => void): void {
  if (cond) {
    return fn();
  }
  return fn();
}
testVoidReturnFunction(true, () => nop());
