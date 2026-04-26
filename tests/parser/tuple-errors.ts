export type Loop = [Loop, i32];
export type BadTuple = [i32, ];
export function badReadonly(x: readonly): void {}
