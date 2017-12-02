export function add(a: i32, b: i32): i32 {
  return a + b;
}

function sub(a: i32, b: i32): i32 {
  return a - b;
}

export { sub as renamed_sub };

export let a: i32 = 1;

let b: i32 = 2;

export { b as renamed_b };
