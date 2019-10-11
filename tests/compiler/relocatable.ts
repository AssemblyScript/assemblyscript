const staticString = "42";
const staticArray: i32[] = [ 42 ];
const staticFunction = (): i32 => { return 42; };

@external("env", "memory_base")
declare const __memory_base: usize;
@external("env", "table_base")
declare const __table_base: usize;

// stored internal pointers are zero-based
assert(changetype<usize>(staticString) < __memory_base);
assert(changetype<usize>(staticArray) < __memory_base);
assert(changetype<u32>(staticFunction) < __table_base);

assert(staticString == "42");
assert(staticArray[0] == 42);
assert(staticFunction() == 42);

var normalArray: i32[] = [ 43 ];
assert(normalArray[0] == 43);
