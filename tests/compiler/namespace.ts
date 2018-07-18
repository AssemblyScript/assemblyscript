namespace Outer {
  export namespace Inner {
    export var aVar: i32 = 0;
    export function aFunc(): i32 { return aVar; }
    export const enum anEnum { ONE = 1, TWO = 2 }
  }
}

Outer.Inner.aVar;
Outer.Inner.aFunc();
Outer.Inner.anEnum.ONE;

const enum Joined { // FIXME: tsc doesn't accept this when 'const'?
  THREE = 3
}
namespace Joined {
  export function anotherFunc(): i32 { return Joined.THREE; }
}

Joined.anotherFunc();
