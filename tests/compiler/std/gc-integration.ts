class A {}
class B {
  static readonly c: B = changetype<B>(8);
  static d: A = changetype<A>(16);
}
B.c;
B.d;

var no_ref: usize = 64;
var a_ref: A | null = changetype<A>(24);
var b_ref: B = changetype<B>(32);

var i: i32 = 0;
iterateRoots((ref: usize): void => { assert(<u32>ref == ++i << 3); });
assert(i == 4);
