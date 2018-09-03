export function test(n: Error | null): Error {
  return n!;
}

class Foo {
  boo: i32;
  arr: Array<i32 | null>;
  f: (() => i32 | null) | null;
}
export function test2(foo: Foo | null): i32 {
  let f = foo!.f; // Test as lone call expression in addition to member access call expression
  let arr = foo!.arr;
  return foo!.boo + foo!.arr![0]! + foo!.f!()! + f!()! + arr![0]!;
}

// Without this there is a compiler error, see GH#237
export function useTest2(): void {
  let foo = new Foo();
  foo.boo = 0;
  foo.arr = [];
  foo.f = (): i32 => 1;
}
