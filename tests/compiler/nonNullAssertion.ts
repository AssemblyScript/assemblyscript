import "allocator/arena";

export function testVar(n: Error | null): Error {
  return n!;
}

class Foo {
  bar: Foo | null;
  baz: (() => Foo | null) | null;
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

export function testAll2(foo: Array<Foo | null> | null): Foo {
  return foo!![0]!!!.bar!!!!;
}

export function testFn(fn: (() => Foo | null) | null): Foo | null {
  return fn!();
}

export function testFn2(fn: (() => Foo | null) | null): Foo | null {
  var fn2 = fn!;
  return fn2();
}

export function testRet(fn: (() => Foo | null) | null): Foo {
  return fn!()!;
}

export function testObjFn(foo: Foo): Foo | null {
  return foo.baz!();
}

export function testObjRet(foo: Foo): Foo {
  return foo.baz!()!;
}
