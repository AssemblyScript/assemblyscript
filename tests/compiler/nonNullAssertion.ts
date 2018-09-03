export function test(n: Error | null): Error {
  return n!;
}

class Foo {
  boo: i32;
  arr: Array<i32 | null>;
}
export function test2(foo: Foo | null): i32 {
  return foo!.boo + foo!.arr![0]!;
}
