class C {
  x!: i32;
  x!: i32 = 0;
  static x!: i32;
}
function f(): void {
  let x!: i32;
  let x!: i32 = 0;
}
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts(3,3+11)
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts(4,3+14)
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts(8,7+11)
