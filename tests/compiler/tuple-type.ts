export function pair(a: i32, b: i64): readonly [i32, i64] {
  return [a, b];
}

export function floats(a: f32, b: f64): readonly [f32, f64] {
  return [a, b];
}

export function forward(a: i32, b: i64): readonly [i32, i64] {
  return pair(a, b);
}

export function named(a: i32, b: i64): readonly [lo: i32, hi: i64] {
  return [a, b];
}

type PairFn = (a: i32, b: i64) => readonly [i32, i64];

export function indirect(fn: PairFn, a: i32, b: i64): readonly [i32, i64] {
  return fn(a, b);
}

export function dropCall(a: i32, b: i64): void {
  pair(a, b);
}

// The callee must be evaluated before side-effecting arguments, while the
// enclosing block must preserve both results of the indirect call.
let order: i32 = 0;

function choosePair(): PairFn {
  order = order * 10 + 1;
  return pair;
}

function argument(): i32 {
  order = order * 10 + 2;
  return 7;
}

export function indirectOrder(): readonly [i32, i64] {
  order = 0;
  return choosePair()(argument(), 9);
}

export function evaluationOrder(): i32 {
  return order;
}

export function stackPointer(): usize {
  return __stack_pointer;
}
