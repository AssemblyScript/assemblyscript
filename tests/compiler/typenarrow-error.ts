class A {}
class B extends A {
  value: i32;
  foo(): void {}
}

let t = new A();
if (t instanceof B) {
  t = new A();
  // TS2339: Property 'value' does not exist on type 'typenarrow-error/A
  t.value;
}

if (t instanceof B || true) {
  // TS2339: Property 'foo' does not exist on type 'typenarrow-error/A
  t.foo();
}

ERROR("EOF");
