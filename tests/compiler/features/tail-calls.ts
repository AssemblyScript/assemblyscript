function inc(x: i32): i32 {
  return x + 1;
}

function noop(): void {}

export function direct(x: i32): i32 {
  return inc(x);
}

export function directVoid(): void {
  return noop();
}

export function converted(x: i32): i64 {
  return inc(x);
}

class Box {}

function maybeBox(x: i32): Box | null {
  return x ? new Box() : null;
}

export function nullable(x: i32): Box | null {
  return maybeBox(x);
}
