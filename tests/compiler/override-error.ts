class A {
  method(): void {}
}

class B extends A {
  override method(): void {}
  // This member cannot have an 'override' modifier because it is not declared in the base class 'A'.
  override method_error(): void {}
}

export function test(): void {
  new A();
  new B();
}
