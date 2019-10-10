const staticString = "42";
const staticArray: i32[] = [ 42 ];

@external("env", "memory_base")
declare const __memory_base: usize;

// stored internal pointers are zero-based
assert(changetype<usize>(staticString) < __memory_base);
assert(changetype<usize>(staticArray) < __memory_base);

assert(staticString == "42");
assert(staticArray[0] == 42);

var normalArray: i32[] = [ 43 ];
assert(normalArray[0] == 43);
