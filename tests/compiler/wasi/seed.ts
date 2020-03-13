import "wasi";

export function test(): f64 {
  return Math.random();
}
