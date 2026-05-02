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

function invoke(fn: (x: i32) => i32, x: i32): i32 {
  return fn(x);
}

export function indirect(x: i32): i32 {
  return invoke(inc, x);
}

export function converted(x: i32): i64 {
  return inc(x);
}

function widenInvoke(fn: (x: i32) => i32, x: i32): i64 {
  return fn(x);
}

export function convertedIndirect(x: i32): i64 {
  return widenInvoke(inc, x);
}

class Box {}

function maybeBox(x: i32): Box | null {
  return x ? new Box() : null;
}

function maybeInvoke(fn: (x: i32) => Box | null, x: i32): Box | null {
  return fn(x);
}

export function nullable(x: i32): Box | null {
  return maybeBox(x);
}

export function nullableIndirect(x: i32): Box | null {
  return maybeInvoke(maybeBox, x);
}
