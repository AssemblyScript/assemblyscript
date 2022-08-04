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

export function testlocal(): void {
  let value = new A();
  let condi = true;

  // noraml
  if (value instanceof B) {
    value.b1();
    let t: B = value;
  }

  // not
  if (!(value instanceof B)) {
  } else {
    value.b1();
    let t: B = value;
  }

  // and
  if (value instanceof B && condi) {
    value.b1();
    let t: B = value;
  }
  if (condi && value instanceof B) {
    value.b1();
    let t: B = value;
  }

  // or
  if (condi || !(value instanceof B)) {
  } else {
    value.b1;
    let t: B = value;
  }

  if (!(value instanceof B) || condi) {
  } else {
    value.b1;
    let t: B = value;
  }

  // in condition check for logic operator
  if (value instanceof B && value.check()) {
  }
  if (!(value instanceof B) || value.check()) {
  }

  // compatibiltiy
  if (value instanceof C && value instanceof B) {
    value.c1;
    value.b1();
  }

  if (value instanceof B || value instanceof C) {
    value.b1();
  }

  if (!(value instanceof B && value instanceof C)) {
  } else {
    value.b1();
  }
}
