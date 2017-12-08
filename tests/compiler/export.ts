export function add(a: i32, b: i32): i32 {
  return a + b;
}

function sub(a: i32, b: i32): i32 {
  return a - b;
}

export { sub as renamed_sub };

export const a: i32 = 1;

const b: i32 = 2;

export { b as renamed_b };

/* export namespace ns {
  function one(): void {}
  export function two(): void {}
} */
