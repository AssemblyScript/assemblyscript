class A {}
class B extends A {
  b1: i32;
  b2: i32;
  b3: i32;
}
class C extends A {
  c1: i32;
}

let value = new A();
let condi = true;

// or
if (condi || value instanceof B) {
  // TS2339: Property 'b1' does not exist on type 'typenarrow-error/A'.
  value.b1;
}

if (value instanceof B) {
  value = new A();
  // TS2339: Property 'b2' does not exist on type 'typenarrow-error/A
  value.b2;
}

if (value instanceof B || true) {
  // TS2339: Property 'b3' does not exist on type 'typenarrow-error/A
  value.b3;
}

// incompatibility
if (value instanceof B && value instanceof C) {
  // TS2339: Property 'c1' does not exist on type 'typenarrow-error/A
  value.c1;
}

ERROR("EOF");
