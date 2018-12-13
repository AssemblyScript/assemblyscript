import "allocator/arena";

var a = 1;
assert(a.toString() == "1");
assert(2..toString() == "2.0");
assert((3).toString() == "3");

// TODO: assert(-2..toString() == "-2.0");
