class C {
  x!: i32;
  x!: i32 = 0; // invalid
  static x!: i32; // invlaid
}
function f(): void {
  let x!: i32;
  let x!: i32 = 0; // invalid
}
