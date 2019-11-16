function testNullable(b: boolean): (() => void) | null {
  if (b) {
    return (): void => { };
  } else {
    return null;
  }
}

export function testNullFunction(): void {
  var fn = testNullable(false) as () => void;
  fn();
}
