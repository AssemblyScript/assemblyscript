export const enum Implicit {
  ZERO,
  ONE,
  TWO,
  THREE
}

export const enum Explicit {
  ZERO = 0,
  ONE = 0 + 1,
  TWO = 1 + 1,
  THREE = 3
}

export const enum Mixed {
  ZERO,
  ONE,
  THREE = 3,
  FOUR
}

function getZero(): i32 {
  return 0;
}

enum NonConstant {
  ZERO = getZero(),
  ONE = getZero() + 1
}

NonConstant.ZERO;
NonConstant.ONE;

export const enum SelfReference {
  ZERO,
  ONE = ZERO + 1
}

var enumType: SelfReference;
