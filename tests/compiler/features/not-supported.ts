var a: v128; // type not enabled
var b = v128.splat<i32>(1); // instruction not enabled
var c: Array<v128>; // type not enabled

function test1(): void {
  var a: v128; // type not enabled
  var b = v128.splat<i32>(1); // instruction not enabled
}
test1();

function test2(): void {
  {
    let a: v128; // type not enabled
    let b = v128.splat<i32>(1); // instruction not enabled
  }
}
test2();

function test3(
  a: v128 // type not enabled
): v128 { // type not enabled
  return unreachable();
}
test3(v128.splat<i32>(1)); // instruction not enabled

class Foo {
  a: v128; // type not enabled
  b: Array<v128>; // type not enabled
  get c(): v128 { // type not enabled
    return this.a;
  }
}
(new Foo()).c;

ERROR("EOF");
