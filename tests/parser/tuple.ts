function tuple1(): [i32, i32] { return [1, 2]; }
function tuple2(): [i32, [i32, i32]] { return [1, [2, 3]]; }
function tuple3(): [i32, string] { return [1, "a"]; }
function tuple4(): [Array<i32>, i32[]] { return [new Array<i32>(), [1, 2]]; }
function tuple5(): [i32] { return [1]; }
function tuple6(): [[i32[]]] { return [[[1, 2]]]; }

function func1(a: i32, b: i32): [i32, i32] { return [a, b]; }
function func2(x: [i32, i32]): [i32, i32] { return x; }
function func3(x: [i32, [i32, i32]], y: i32): [i32, [i32, i32]] { return x; }
function func4(x: readonly [i32, string]): [void] { return [void(0)]; }
function func5(x: readonly [Array<i32>, i32[]]): readonly [i32] { return [x[1].length]; }

type type1 = [i32, i32];
type type2 = [i32, [i32, i32]];
type type3 = readonly [i32, string];
