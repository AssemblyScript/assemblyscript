import "allocator/arena";

var a = 1;
assert(a.toString() == "1");
assert(2..toString() == "2.0");
assert((3).toString() == "3");
assert((+4).toString() == "4");
assert((-5).toString() == "-5");

// TODO: this doesn't work (yet) because it semantically negates a numeric string (you know, JS)
// assert(-2..toString() == "-2.0"); // ^= -(2..toString())

// TODO: all sorts of unary and binary expressions, see src/resolver
