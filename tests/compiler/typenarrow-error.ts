class A {}
class B extends A {
  b1: i32;
  b2: i32;
  b3: i32;
  b4: i32;
  b5: i32;
  b6: i32;
}
class C extends B {
  c1: i32;
}

export function testAssign(v0: A): void {
  // TS2339: Property 'b1' does not exist on type 'typenarrow-error/A
  if (v0 instanceof B) {
    v0 = new A();
    v0.b1;
  }
}

export function testOr(v0: A, v1: A): void {
  // TS2339: Property 'b2' does not exist on type 'typenarrow-error/A'.
  if (v0 instanceof B || v1 instanceof B) {
    v0.b2;
    v1.b2;
  } else {
    v0.b2;
    v1.b2;
  }
  if (!(v0 instanceof B) || !(v1 instanceof B)) {
    v0.b2;
    v1.b2;
  }
  if (v0 instanceof B || !(v1 instanceof B)) {
    v0.b2;
    v1.b2;
  } else {
    v0.b2;
  }
  if (!(v0 instanceof B) || v1 instanceof B) {
    v0.b2;
    v1.b2;
  } else {
    v1.b2;
  }
}

export function testAnd(v0: A, v1: A): void {
  // TS2339: Property 'b3' does not exist on type 'typenarrow-error/A'.
  if (v0 instanceof B && v1 instanceof B) {
  } else {
    v0.b3;
    v1.b3;
  }
  if (!(v0 instanceof B) && !(v1 instanceof B)) {
    v0.b3;
    v1.b3;
  } else {
    v0.b3;
    v1.b3;
  }
  if (v0 instanceof B && !(v1 instanceof B)) {
    v1.b3;
  } else {
    v0.b3;
    v1.b3;
  }
  if (!(v0 instanceof B) && v1 instanceof B) {
    v0.b3;
  } else {
    v0.b3;
    v1.b3;
  }
}

export function testAssignOr(v0: A, v1: A): void {
  // TS2339: Property 'b4' does not exist on type 'typenarrow-error/A
  if (v0 instanceof B || (v0 = v1)) {
    v0.b4;
  } else {
    v0.b4;
  }
}
export function testAssignAnd(v0: A, v1: A): void {
  // TS2339: Property 'b4' does not exist on type 'typenarrow-error/A
  if (v0 instanceof B && (v0 = v1)) {
    v0.b4;
  } else {
    v0.b4;
  }
}

export function testLogicOr(v0: A): void {
  // TS2339: Property 'c1' does not exist on type 'typenarrow-error/A
  if (v0 instanceof B || v0 instanceof C) {
    v0.c1;
  }
}
