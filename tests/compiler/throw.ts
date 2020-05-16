export function doThrow(): void {
  var a = "123";
  throw new Error("doThrow");
  // __release(a) - DCE'd
}

function doThrowIf(cond: bool): void {
  var a = "123";
  if (cond) {
    let b = "234";
    throw new Error("doThrowIf");
    // __release(a+b) - DCE'd
  }
  var c = "345";
  // __release(a+c)
}
doThrowIf(false);

function doThrowIfLoop(max: i32): void {
  var a = "123";
  var i = 0;
  while (++i < max) {
    let b = "234";
    if (i > max) { // never
      let c = "345";
      throw new Error("doThrowIfLoop");
      // __release(a+b+c) - DCE'd
    }
    let d = "456";
    // __release(b+d)
  }
  var e = "567";
  // __release(a+e)
}
doThrowIfLoop(10);
