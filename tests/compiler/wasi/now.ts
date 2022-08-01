import "wasi";

export function test_date_now(): i64 {
  return Date.now();
}

export function test_performance_now(): f64 {
  return performance.now();
}
