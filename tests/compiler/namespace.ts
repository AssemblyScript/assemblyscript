namespace Outer {
  export var outerVar: i32 = 1;
  export namespace Inner {
    export var aVar: i32 = 0;
    export var anotherVar: i32 = aVar;
    export var evenAnotherVar: i32 = outerVar;
    export function aFunc(): i32 { return aVar; }
    export enum anEnum { ONE = 1, TWO = 2 }
    export const enum aConstEnum { ONE = 1, TWO = 2 }
  }
}

Outer.Inner.aVar;
Outer.Inner.aFunc();
Outer.Inner.anEnum.ONE;
Outer.Inner.aConstEnum.TWO;

const enum Joined { // FIXME: tsc doesn't accept this when 'const'?
  THREE = 3
}
namespace Joined {
  export function anotherFunc(): i32 { return Joined.THREE; }
}

Joined.anotherFunc();
