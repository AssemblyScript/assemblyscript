@lazy export const lazyGlobalUnused: i32[] = [1,2,3];

@lazy export const lazyGlobalUsed: i32[] = [1,2,3];
lazyGlobalUsed;

@lazy export function lazyFuncUnused(): void {}

@lazy export function lazyFuncUsed(): void {}
lazyFuncUsed();
