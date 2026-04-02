
let value: i32 = 0;

function logA(x: i32):void {
  value = 100;
}

function logB(x: i32):void {
  value = 200;
}

let fn = logA;

function foo(x: i32):i32 {
  fn = logB;
  return x;
}

fn(foo(42));
assert(value == 100);