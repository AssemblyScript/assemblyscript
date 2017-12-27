declare function externalFunc(): void;
declare const externalConst: i32;

namespace external {
  export declare function externalFunc(): void;
  export declare const externalConst: i32;
}

export function test(): void {
  // cannot be interpreted
  externalFunc();
  externalConst;
  external.externalFunc();
  external.externalConst;
}
