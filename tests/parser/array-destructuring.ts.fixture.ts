function test1() {
  const arr: Array<i32> = [1, 2, 3, 4];
}
// ERROR 1110: "Type expected." in array-destructuring.ts(1,17+0)
// ERROR 1003: "Identifier expected." in array-destructuring.ts(3,3+5)
// ERROR 1003: "Identifier expected." in array-destructuring.ts(4,3+5)
