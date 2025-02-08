assert((<f32>1.1).toString() == "1.1");
assert((<f64>1.1).toString() == "1.1");

const f32arr: f32[] = [1.1, 2.2, 3.3];
assert(f32arr.join() == "1.1,2.2,3.3");

const f64arr: f64[] = [1.1, 2.2, 3.3];
assert(f64arr.join() == "1.1,2.2,3.3");
