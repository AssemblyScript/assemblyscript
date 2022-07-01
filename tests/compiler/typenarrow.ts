class A {}
class B extends A {
  foo(): void {}
}

let t = new A();
if (t instanceof B) {
  t.foo();
}

export function test(): void {
  let t = new A();
  if (t instanceof B) {
    t.foo();
  }
}
