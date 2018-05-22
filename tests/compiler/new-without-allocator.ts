// Expect error: TS2304: Cannot find name 'allocate_memory'.
// Expect error: AS214: An allocator must be declared to allocate memory. Try importing allocator/arena or allocator/tlsf.
class A {}

export function test(): i32 {
  var a = new A();
  return 3;
}
