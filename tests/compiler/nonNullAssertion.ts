import "allocator/arena";

export function testVar(n: Error | null): Error {
  return n!;
}

class Foo {
  bar: Foo | null;
}

export function testObj(foo: Foo | null): Foo | null {
  return foo!.bar;
}

export function testProp(foo: Foo): Foo {
  return foo.bar!;
}

export function testArr(foo: Array<Foo> | null): Foo {
  return foo![0];
}

export function testElem(foo: Array<Foo | null>): Foo {
  return foo[0]!;
}

export function testAll(foo: Array<Foo | null> | null): Foo {
  return foo![0]!.bar!;
}
