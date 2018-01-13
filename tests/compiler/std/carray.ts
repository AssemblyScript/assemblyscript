// TBD: While this is useful as long as the pointer is just a local or global,
// things go haywire, compared to C, as soon as the CArray is a member of a
// class. Also, multi dimensional arrays cannot be implemented C-like because
// their length isn't known at compile time.

var arr: CArray<i32> = changetype<CArray<i32>>(HEAP_BASE);

assert(load<i32>(HEAP_BASE) == 0);
assert(load<i32>(HEAP_BASE + 4) == 0);

assert(arr[0] == 0);
assert(arr[1] == 0);

arr[0] = 42;
arr[1] = 24;

assert(load<i32>(HEAP_BASE) == 42);
assert(load<i32>(HEAP_BASE + 4) == 24);

assert(arr[0] == 42);
assert(arr[1] == 24);

assert((arr[3] = 9000) == 9000);

assert(load<i32>(HEAP_BASE + 12) == 9000);
assert(arr[3] == 9000);
