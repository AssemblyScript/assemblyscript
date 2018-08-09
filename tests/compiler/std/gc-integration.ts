// declare classes to test with
class A {}
class B {
  static readonly c: B = changetype<B>(8);  // static root, readonly
  static d: A = changetype<A>(16);          // static root, writable
}

// make sure static properties are compiled
B.c;
B.d;

// declare roots
var no_ref: usize = 64;                     // NOT a root, basic value
var a_ref: A | null = changetype<A>(24);    // global root, nullable
var b_ref: B = changetype<B>(32);           // global root, non-nullable

var i: i32 = 0;
iterateRoots((ref: usize): void => { assert(<u32>ref == ++i << 3); });
assert(i == 4);
