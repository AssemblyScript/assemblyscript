var a: i32;
var b: i32;
const c: i32 = 0;
var d = 2;

// 1110: Type expected.
var e;

// 1155: 'const' declarations must be initialized.
const f: i32;

const t: bool = <u32>10 < (u32.MAX_VALUE / 10);
