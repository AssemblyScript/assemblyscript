class C {
  x!: i32;
  y!: i32 = 0;
  static z!: i32;
}
function f(): void {/* {x,y} */
  let x!: i32;
  let y!: i32 = 0;
}
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts:3:3
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts:4:3
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts:8:7
