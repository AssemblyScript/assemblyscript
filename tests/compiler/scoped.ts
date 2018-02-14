var aGlobal: i32 = 1;
const aConstant: i32 = 3;

let aStartFunctionLocal: i32 = 2;
for (var anotherStartFunctionLocal: i32 = 0; anotherStartFunctionLocal < 1; ++anotherStartFunctionLocal);
for (let aGlobal /* that shadows */: i32 = 0; aGlobal < 1; ++aGlobal)
  aGlobal;

{
  let /* actually not */ aConstant: i64 = 5;
  {
    let /* still not */ aConstant: f32 = 10;
  }
}

// regression test: reused local should be updated with new requested type
function fn(c: i32): void {
  {
    let a: bool = 0;
  }
  {
    let b: i32;
    b = c; // should not issue a conversion warning mentioning 'bool'
  }
}
fn(42);
