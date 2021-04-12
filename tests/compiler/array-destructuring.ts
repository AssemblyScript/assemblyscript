const x = 999;
const y = 888;
let funcRunCount = 0;
function func(): i32[] { funcRunCount++; return [x, y]; };
const [x_copy, y_copy] = func();
assert(x_copy == x);
assert(y_copy == y);
assert(funcRunCount == 1);
