export type TupleTypeUnimplemented1 = [];
export type TupleTypeUnimplemented2 = [i32];
export type TupleTypeUnimplemented3 = [i32, []];
export type TupleTypeUnimplemented4 = [i32, TupleTypeUnimplemented1];
export type TupleTypeUnimplemented5 = [string, i32];
export type TupleTypeUnimplemented6 = [i32[], [i32]];
export type TupleTypeUnimplemented7 = [i32, i32];
export type TupleTypeUnimplemented8 = [x: i32, y: i32];

export function TupleParamUnimplemented1(x: []): void { }
export function TupleParamUnimplemented2(x: [i32]): void { }
export function TupleParamUnimplemented3(x: [i32, []]): void { }
export function TupleParamUnimplemented4(x: [i32, TupleTypeUnimplemented1]): void { }
export function TupleParamUnimplemented5(x: [string, i32]): void { }
export function TupleParamUnimplemented6(x: [i32[], [i32]]): void { }
export function TupleParamUnimplemented7(x: [i32, i32]): void { }
export function TupleParamUnimplemented8(x: [left: i32, right: i32]): void { }

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
export function TupleReturnUnimplemented8(): [first: i32, second: i32] {
  return [0, 1];
}

type Box<T> = [T, i32];

export function TupleGeneric1(x: Box<i32>): Box<i32> {
  return x;
}
export function TupleGeneric2<T>(x: [i32, T]): [i32, T] {
  return x;
}

export function TupleNullable1(x: [i32, i32] | null): [i32, i32] | null {
  return x;
}
export function TupleNullable2(x: [] | null): [] | null {
  return x;
}

export function TupleTypeMismatch1(x: [i32, f32]): [f32, i32] {
  return x;
}
export function TupleTypeMismatch2(x: [f64, f32]): [f32, f64] {
  return x;
}
