export function pairI32(a: i32, b: i32): readonly [i32, i32] {
  return [a, b];
}

export function swap(a: i32, b: i32): readonly [i32, i32] {
  return [b, a];
}

export function foo(a: i32, b: i32): readonly [i32, i32] {
  return swap(a, b);
}

export function pairI64(a: i64, b: i64): readonly [i64, i64] {
  return [a, b];
}

export function mixI32I64(a: i32, b: i64): readonly [i32, i64] {
  return [a + 1, b + 2];
}

export function forward(a: i32, b: i32): readonly [i32, i32] {
  return pairI32(a + 10, b + 20);
}
