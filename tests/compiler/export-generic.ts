export function testFunction<T>(): void {}

export class TestClass<T> {}

export class Foo {
  public testMethod<T>(): void {}
}

export namespace test {
  export function testNamespacedFunction<T>(): void {}
  export class TestNamespacedClass<T> {}
}

ERROR("EOF");
