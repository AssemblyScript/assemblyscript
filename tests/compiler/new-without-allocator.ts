// Expect errors: AS214
class A {}

export function test(): i32 {
  var a = new A();
  return 3;
}
