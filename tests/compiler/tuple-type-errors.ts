export type TupleTypeUnimplemented1 = [];
export type TupleTypeUnimplemented2 = [i32];
export type TupleTypeUnimplemented3 = [i32, []];
export type TupleTypeUnimplemented4 = [i32, TupleTypeUnimplemented1];
export type TupleTypeUnimplemented5 = [string, i32];
export type TupleTypeUnimplemented6 = [i32[], [i32]];
export type TupleTypeUnimplemented7 = [i32, i32];

export function TupleParamUnimplemented1(x: []): void { }
export function TupleParamUnimplemented2(x: [i32]): void { }
export function TupleParamUnimplemented3(x: [i32, []]): void { }
export function TupleParamUnimplemented4(x: [i32, TupleTypeUnimplemented1]): void { }
export function TupleParamUnimplemented5(x: [string, i32]): void { }
export function TupleParamUnimplemented6(x: [i32[], [i32]]): void { }
export function TupleParamUnimplemented7(x: [i32, i32]): void { }

export function TupleReturnUnimplemented1(): [] {
  return [];
}
export function TupleReturnUnimplemented2(): [i32] {
  return [0];
}
export function TupleReturnUnimplemented3(): [i32, []] {
  return [0, []];
}
export function TupleReturnUnimplemented4(): [i32, TupleTypeUnimplemented1] {
  return [0, []];
}
export function TupleReturnUnimplemented5(): [string, i32] {
  return ["foo", 0];
}
export function TupleReturnUnimplemented6(): [i32[], [i32]] {
  return [new Array<i32>(), [0]];
}
export function TupleReturnUnimplemented7(): [i32, i32] {
  return [0, 1];
}
