let x!: i32;
let x!: i32 = 0;
function f(): void {
  let x!: i32;
  let x!: i32 = 0;
}
class C {
  x!: i32;
  x!: i32 = 0;
  static x!: i32;
  static x!: i32 = 0;
}
interface I {
  x!: i32;
  x!: i32 = 0;
}
declare class C2 {
  x!: i32;
  x!: i32 = 0;
}
// ERROR 1263: "Declarations with initializers cannot also have definite assignment assertions." in definite-assignment-assertion.ts(2,15+1)
// ERROR 1263: "Declarations with initializers cannot also have definite assignment assertions." in definite-assignment-assertion.ts(5,17+1)
// ERROR 1263: "Declarations with initializers cannot also have definite assignment assertions." in definite-assignment-assertion.ts(9,3+1)
// ERROR 1263: "Declarations with initializers cannot also have definite assignment assertions." in definite-assignment-assertion.ts(11,10+1)
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts(14,3+7)
// ERROR 1263: "Declarations with initializers cannot also have definite assignment assertions." in definite-assignment-assertion.ts(15,3+1)
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts(15,3+11)
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts(18,3+7)
// ERROR 1039: "Initializers are not allowed in ambient contexts." in definite-assignment-assertion.ts(19,11+1)
// ERROR 1263: "Declarations with initializers cannot also have definite assignment assertions." in definite-assignment-assertion.ts(19,3+1)
// ERROR 1255: "A definite assignment assertion '!' is not permitted in this context." in definite-assignment-assertion.ts(19,3+11)
