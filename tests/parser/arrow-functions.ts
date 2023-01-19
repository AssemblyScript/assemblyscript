// array function
(x): i32 => x;
(x: i32) => x;
(x?) => x;
(x?, y?) => x;
(x?: i32) => x;
x => x;
() => {};

// not an array function
(b ? x : y);
b ? (x) : y;
b ? (x):i32=>1 : y;
(b ? f : g)();
