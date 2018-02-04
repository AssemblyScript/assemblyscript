declare function externalFunction(): void;
declare const externalConstant: i32;

externalFunction();
assert(externalConstant == 1);

namespace my {
  export declare function externalFunction(): void;
  export declare const externalConstant: i32;
}

my.externalFunction();
assert(my.externalConstant == 2);
