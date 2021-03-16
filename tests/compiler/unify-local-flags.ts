// Test that locals depending on each other don't break recompilation of loops
// when local flags must be unified. In the test cases below, x depends on i's
// wrapped state, so triggers recompilation twice, in this order:
//
// * i WRAPPED, x WRAPPED
//   -> recompile with i not WRAPPED due to ++i
// * i not WRAPPED, x WRAPPED
//   -> recompile with x not WRAPPED due to x=i
// * i not WRAPPED, x not WRAPPED
//   -> success

export function testFor(): void {
  let x: u8 = 0;
  for (let i: u8 = 0; i < 255; ++i) {
    x = i;
  }
}

export function testWhile(): void {
  let x: u8 = 0;
  let i: u8 = 0;
  while (i < 255) {
    x = i;
    ++i;
  }
}

export function testDo(): void {
  let x: u8 = 0;
  let i: u8 = 0;
  do {
    x = i;
  } while (++i < 255);
}
