import "wasi";

export function test(): i64 {
  return Date.now();
}
