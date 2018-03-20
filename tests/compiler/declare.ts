declare function externalFunction(): void;
declare const externalConstant: i32;

externalFunction();
assert(externalConstant == 1);

declare namespace my {
  function externalFunction(): void;
  const externalConstant: i32;
}

my.externalFunction();
assert(my.externalConstant == 2);
