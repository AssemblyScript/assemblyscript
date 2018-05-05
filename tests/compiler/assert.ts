assert(true);
assert(1);
assert(1 > 0);
assert(0.5);
assert(0.5 > 0.4);
assert(0x100000000);
assert(0x100000000 > 1);

// can be used as an expression
if (!assert(true, "must be true")) unreachable();
