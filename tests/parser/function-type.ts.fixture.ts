var a: () => void;
var b: (a: i32, b: i32) => void;
var c: (a: i32, b: i32) => (a: i32, b: i32) => void;
var d: (a: i32, a: i32) => void;
var e: (a) => void;
// ERROR 1110: "Type expected." in function-type.ts(5,10+0)
