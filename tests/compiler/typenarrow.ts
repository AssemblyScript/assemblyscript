class A {}
class B extends A {
  foo(): void {}
}

let t = new A();
if (t instanceof B) {
  t.foo();
}

if (t instanceof B && true) {
  t.foo;
}
if (true && t instanceof B) {
  t.foo;
}
if (!(t instanceof B)) {
} else {
  t.foo;
}

export function test(): void {
  let t = new A();
  if (t instanceof B) {
    t.foo();
  }
}
