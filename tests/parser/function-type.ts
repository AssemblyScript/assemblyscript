var a: () => void;
var b: (a: i32, b: i32) => void;
var c: (a: i32, b: i32) => (a: i32, b: i32) => void;
var d: (a: i32, a: i32) => void; // NOTE: duplicates in type signatures doesn't in TypeScript
var e: (a) => void; // TS1110
