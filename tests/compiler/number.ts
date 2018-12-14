import "allocator/arena";

// variable
var a = 1;
assert(a.toString() == "1");

// literal
assert(2..toString() == "2.0");
assert((3).toString() == "3");

// unary prefix
assert((-5).toString() == "-5");
assert((+4).toString() == "4");
assert((++a).toString() == "2");
assert((--a).toString() == "1");
assert((!0).toString() == "true");
assert((!1).toString() == "false");
// assert((~a).toString() == "-2");

// unary postfix
assert((a++).toString() == "1");
assert((a--).toString() == "2");
