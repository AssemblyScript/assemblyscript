export enum Implicit {
  ZERO,
  ONE,
  TWO,
  THREE
}

export enum Explicit {
  ZERO = 0,
  ONE = 0 + 1,
  TWO = 1 + 1,
  THREE = 3
}

export enum Mixed {
  ZERO,
  ONE,
  THREE = 3,
  FOUR
}

function getZero(): i32 {
  return 0;
}

export enum NonConstant {
  ZERO = getZero(),
  ONE
}
