function failLet(y: i32): i32 {
  let x = y;
  234;
  return x + y;
}
function failReturn(): i32 {
  return 123;
  456;
}
function failThrow(): i32 {
  throw 123;
  456;
}
function successCloseBrace(): i32 {
  return 123;
}
function successCloseParen(): i32 {
  return (123);
}
// ERROR 1012: "Unexpected token." in trailing-exps-separated-by-space.ts(2,13+0)
// ERROR 1012: "Unexpected token." in trailing-exps-separated-by-space.ts(7,14+0)
// ERROR 1012: "Unexpected token." in trailing-exps-separated-by-space.ts(11,13+0)
