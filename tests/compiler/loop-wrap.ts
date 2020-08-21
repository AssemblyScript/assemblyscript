export function testAlwaysWrapped(): void {
  var i: u8 = 0; // <--
  do {
    if (i == 10) break; // no need to wrap
  } while (i = (i + 1) & 0xff); // <--
}

export function testFirstWrapped(): void {
  var i: u8 = 0;
  do {
    if (i == 10) break; // must wrap
  } while (++i); // <--
}

export function testSubsequentWrapped(a: i32): void {
  var i = <u8>a; // <--
  do {
    if (i == 10) break; // must wrap
  } while (i = (i + 1) & 0xff);
}
