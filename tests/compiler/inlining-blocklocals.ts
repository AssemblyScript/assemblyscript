var b: i32 = 2;

var theCall_a: i32;
var theCall_b: i32;
var theCall_c: i32;

@inline function theCall(a: i32, b: i32, c: i32): void {
  theCall_a = a;
  theCall_b = b;
  theCall_c = c;
}

function test(): void {
  var a = 1;
  // see comment in Compiler#makeCallInlinePrechecked
  // theCall($3, $2=[except $3], $1=[except $3,$2])
  theCall(a++, b++, ++a);
  assert(theCall_a == 1);
  assert(theCall_b == 2);
  assert(theCall_c == 3);
  assert(a == 3);
}
test();
