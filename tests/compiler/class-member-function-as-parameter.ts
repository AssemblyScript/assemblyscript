class A {
  foo(): void { }
}

class B extends A {
  foo(): void { }
}

function foo(): void { }

function consumeA(callback: (this: A) => void): void { }
function consumeB(callback: (this: B) => void): void { }

const a = new A();
const b = new B();

consumeB(a.foo); // shouldn't error
consumeA(foo);   // should error
consumeA(b.foo); // should error
ERROR("EOF");