namespace Outer {
  export namespace Inner {
    export let aVar: i32 = 0;
    export function aFunc(): i32 { return aVar; }
    export enum anEnum { ONE = 1, TWO = 2 }
  }
}

Outer.Inner.aVar;
Outer.Inner.aFunc();
Outer.Inner.anEnum.ONE;
