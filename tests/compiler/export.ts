export function add(a: i32, b: i32): i32 {
  return a + b;
}

function sub(a: i32, b: i32): i32 {
  return a - b;
}

export { sub };

function mul(a: i32, b: i32): i32 { // not exported as "mul"
  return a * b;
}

export { mul as renamed_mul };

export const a: i32 = 1;

const b: i32 = 2;

export { b };

const c: i32 = 3; // not exported as "c"

export { c as renamed_c };

export namespace ns {
  function one(): void {}
  export function two(): void {}
}
