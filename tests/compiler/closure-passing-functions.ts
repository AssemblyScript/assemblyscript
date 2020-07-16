function add(x: i32, y: i32): i32 { 
  return x + y; 
}
function apply_to_pair(x: i32, y: i32, fn: (x:i32, y:i32) => i32): i32 { 
  return fn(x,y);
}

let addResult = add(1, 1);
let applyResult = apply_to_pair(1, 2, add);

assert(addResult == 2);
assert(applyResult == 3);
