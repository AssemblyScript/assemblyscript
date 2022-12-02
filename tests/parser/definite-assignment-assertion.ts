let x!: i32;
let x!: i32 = 0; // invalid
function f(): void {
  let x!: i32;
  let x!: i32 = 0; // invalid
}
class C {
  x!: i32;
  x!: i32 = 0; // invalid
  static x!: i32;
  static x!: i32 = 0; // invalid
}
interface I {
  x!: i32; // not permitted
  x!: i32 = 0; // invalid, not permitted
}
declare class C2 {
  x!: i32; // not permitted
  x!: i32 = 0; // invalid, not permitted, initializer generally not allowed
}
