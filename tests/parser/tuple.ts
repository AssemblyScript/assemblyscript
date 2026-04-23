function tuple0(): [] { return []; }
function tuple1(): [i32, i32] { return [1, 2]; }
function tuple2(): [i32, [i32, i32]] { return [1, [2, 3]]; }
function tuple3(): [i32, string] { return [1, "a"]; }
function tuple4(): [Array<i32>, i32[]] { return [new Array<i32>(), [1, 2]]; }
function tuple5(): [i32] { return [1]; }
function tuple6(): [[i32[]]] { return [[[1, 2]]]; }
function tuple7(): [x: i32, y: i32] { return [1, 2]; }
function tuple8(): [head: i32, tail: [lo: i32, hi: i32]] { return [1, [2, 3]]; }

function func0(x: []): [] { return [];  }
function func1(x: i32, y: i32): [i32, i32] { return [y, x]; }
function func2(x: [i32, i32]): [i32, i32] { return x; }
function func3(x: [i32, [i32, i32]], y: i32): [i32, [i32, i32]] { return x; }
function func4(x: readonly [i32, string]): [void] { return [void(0)]; }
function func5(x: readonly [Array<i32>, i32[]]): readonly [i32] { return [x[1].length]; }
function func6(x: [i32, i32] | null): [i32, i32] | null { return x; }
function func7(x: readonly [[i32[]], [string]]): readonly [[i32[]], [string]] { return x; }
function func8(x: [left: i32, right: i32]): [first: i32, second: i32] { return x; }
function func9<T>(x: [T, T, i32]): [T] { return x; }
function func10(x: [string | null, i32] | null): [string | null, i32] | null { return x; }

type type0 = [];
type type1 = [i32, i32];
type type2 = [i32, [i32, i32]];
type type3 = readonly [i32, string];
type type4 = [i32, i32] | null;
type type5 = [[i32, i32], [i32, i32]];
type type6<T> = [Array<T>, T[], T];
type type7 = [start: i32, end: [lo: i32, hi: i32]];
