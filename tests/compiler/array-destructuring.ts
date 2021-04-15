const x = 999;
const y = 888;
let funcRunCount = 0;
function func(): i32[] { funcRunCount++; return [x, y]; };
const x_copy = func()[0];
assert(x_copy == x);
// const [x_copy, y_copy] = func();
// assert(funcRunCount == 1);
// assert(x_copy + y_copy == x + y);
