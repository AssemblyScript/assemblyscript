class A {}

class B extends A {
  b1(): void {}
  check(): bool {
    return true;
  }
}
class C extends B {
  c1: i32;
}
class D extends A {
  d1: i32;
}

export function condiNarrow(v0: A, v1: A): void {
  // noraml
  if (v0 instanceof B) {
    v0.b1();
    let t: B = v0;
  }

  // not
  if (!(v0 instanceof B)) {
  } else {
    v0.b1();
    let t: B = v0;
  }

  // and
  if (v0 instanceof B && v1 instanceof B) {
    v0.b1();
    v1.b1();
  }
  if (v0 instanceof B && !(v1 instanceof B)) {
    v0.b1();
  }
  if (!(v0 instanceof B) && v1 instanceof B) {
    v1.b1();
  }

  // or
  if (!(v0 instanceof B) || !(v1 instanceof B)) {
  } else {
    v0.b1;
    v1.b1;
  }
  if (v0 instanceof B || !(v1 instanceof B)) {
  } else {
    v1.b1;
  }
  if (!(v0 instanceof B) || v1 instanceof B) {
  } else {
    v0.b1;
  }

  // in condition check for logic operator
  if (v0 instanceof B && v0.check()) {
  }
  if (!(v0 instanceof B) || v0.check()) {
  }

  // compatibiltiy
  if (v0 instanceof C && v0 instanceof B) {
    v0.c1;
    v0.b1();
  }
  if (v0 instanceof B || v0 instanceof C) {
    v0.b1();
  }
  if (!(v0 instanceof B && v0 instanceof C)) {
  } else {
    v0.b1();
    v0.c1;
  }
}
