(x): i32 => x;
(x: i32) => x;
(x?) => x;
(x?, y?) => x;
(x?: i32) => x;
(b ? x : y);
(b ? f : g)();
// ERROR 1110: "Type expected." in arrow-functions.ts:3:8
// ERROR 1110: "Type expected." in arrow-functions.ts:4:4
// ERROR 1110: "Type expected." in arrow-functions.ts:5:8
// ERROR 1110: "Type expected." in arrow-functions.ts:6:9
