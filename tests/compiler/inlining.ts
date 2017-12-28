const constantGlobal = 1;

export function test(): i32 {
  const constantLocal = 2;
  return constantGlobal + constantLocal;
}

assert(test() == 3);
