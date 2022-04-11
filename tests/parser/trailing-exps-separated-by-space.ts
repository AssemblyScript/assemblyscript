function failLet(y: i32): i32 {
  let x = y 234;
  return x + y;
}

function failReturn(): i32 {
  return 123 456;
}

function failThrow(): i32 {
  throw 123 456;
}

function successCloseBrace(): i32 {
  return 123 }

function successCloseParen(): i32 {
  return ( 123 )
}