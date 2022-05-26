(x): i32 => x;
(x: i32) => x;
(x?) => x;
(x?, y?) => x;
(x?: i32) => x;
x => x;
(b ? x : y);
(b ? f : g)();
// ERROR 1005: "':' expected." in arrow-functions.ts(13,10+1)
