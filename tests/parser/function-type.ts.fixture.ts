var a: () => void;
var b: (a: i32, b: i32) => void;
var c: (a: i32, b: i32) => (a: i32, b: i32) => void;
var d: (a) => void;
var g: (a: i32, a: i32) => void;
// ERROR 1110: "Type expected." in function-type.ts(4,10+0)
// ERROR 2300: "Duplicate identifier 'a'." in function-type.ts(6,17+1)
