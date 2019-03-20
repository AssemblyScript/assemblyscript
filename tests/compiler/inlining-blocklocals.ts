var b: i32 = 2;

var theCall_a: i32;
var theCall_b: i32;

@inline function theCall(a: i32, b: i32): void {
  theCall_a = a;
  theCall_b = b;
}

function test(): void {
  var a = 1;
  // no blocking: t1 = a; t2 = (t1 = b) + 1, t1; theCall ✖
  //    blocking: t1 = a; t2 = (t3 = b) + 1, t3; theCall ✔
  theCall(a, b++);
  assert(theCall_a == 1);
  assert(theCall_b == 2);
}
test();
