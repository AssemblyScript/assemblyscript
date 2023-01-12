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
function successAfterLet(): i32 {
  let a = 0;
  return a;
}
// ERROR 1012: "Unexpected token." in asi.ts(2,13+0)
// ERROR 1012: "Unexpected token." in asi.ts(7,14+0)
// ERROR 1012: "Unexpected token." in asi.ts(11,13+0)
