function inc(x: i32): i32 { return x + 1; }

export function direct(x: i32): i32 { return inc(x); }

export function indirect(fn: (x: i32) => i32, x: i32): i32 { return fn(x); }

export function ternary(x: i32): i32 { return x ? inc(x) : inc(0); }

assert(direct(40) == 41);
assert(indirect(inc, 40) == 41);
assert(ternary(0) == 1);
assert(ternary(40) == 41);
