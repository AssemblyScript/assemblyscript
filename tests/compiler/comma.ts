var a = 0, b = 0;

b = a++, a; // lower precedence (like separate expressions)
assert(a == 1);
assert(b == 0);

a++, b = a;
assert(a == 2);
assert(b == 2);

a = b = 0;

b = (a++, a); // higher precedence
assert(a == 1);
assert(b == 1);

a = (a++, b = a);
assert(a == 2);
assert(b == 2);

for (var c = 0; c < a; a--, c++);
assert(c == 1);

1, 2, 3; // tsc doesn't allow this
