export function doThrow(): void {
  var a = "123";
  throw new Error("doThrow");
}

function doThrowIf(cond: bool): void {
  var a = "123";
  if (cond) {
    let b = "234";
    throw new Error("doThrowIf");
  }
  var c = "345";
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
    }
    let d = "456";
  }
  var e = "567";
}
doThrowIfLoop(10);

__collect();
