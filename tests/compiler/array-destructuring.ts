const x = 999;
const y = 888;
function func(): i32[] { return [x, y]; };
const [x_copy, y_copy] = func();

assert(x_copy == x);
assert(y_copy == y);
