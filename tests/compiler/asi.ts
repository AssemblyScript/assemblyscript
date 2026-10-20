let i: i32 = 0;
let j: i32 = 7;
let k: i32 = 1;

i = j
++k

assert(i == 7);
assert(k == 2);

function b(x: () => i32): () => i32 { return x }

let value = b
(() => 42)()

assert(value == 42);