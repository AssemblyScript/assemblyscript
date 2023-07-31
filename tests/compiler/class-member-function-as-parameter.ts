class C {
  aa: i32 = 1;
  callback(a: i32): i32 {
    return this.aa + a + 3;
  }
}

function expectCallback(c1: (arg0: i32) => i32): i32 {
  return c1(4);
}

export function fut(): i32 {
  const c1 = new C();
  return expectCallback(c1.callback);
}

fut();

class A {
  foo(): void {
    console.log("A");
  }
}

class B extends A {
  foo(): void {
    console.log("B");
  }
}

function foo(): void {
  console.log("nothing");
}

function consume(callback: (this: B) => void): void {
  const b = new B();
  callback.call(b);
}

export function testNull(): void {
  consume(foo); // This should (and does) error; this is fine.
}

export function testA(): void {
  const a = new A();
  consume(a.foo); // This shouldn't error
}

testNull();
testA();

ERROR("EOF");