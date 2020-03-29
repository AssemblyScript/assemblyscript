class C {
  x!: i32;
  y!: i32 = 0; // invalid
  static z!: i32; // invlaid
}
function f(): void {
  let x!: i32;
  let y!: i32 = 0; // invalid
}
