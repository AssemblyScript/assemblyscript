// see https://github.com/AssemblyScript/assemblyscript/issues/813
export function testInherit(b: bool): void {
  for (let i = 0; i < 10; i++) {
    if (b) {
      if (i == 5) {
        continue;
      }
      // inheritConditional
    }
    // yielding a continue block
  }
}
