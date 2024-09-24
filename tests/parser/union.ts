export function foo(a: aaa | bbb | ccc): i32 {
  return 1;
}

export function bar(a: i32 | u32 | f32): i32 {
  return 1;
}

export let a: i32 | u32 | f32 | null = 1;
