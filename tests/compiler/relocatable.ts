const staticString = "42";
const staticArray: i32[] = [42];

@external("env", "memory_base")
declare const __memory_base: usize;

assert(changetype<usize>(staticString) > __memory_base);
assert(changetype<usize>(staticArray) > __memory_base);

assert(staticString == "42");
// assert(staticArray[0] == 42);
