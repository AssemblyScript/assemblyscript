namespace Outer {
  export namespace Inner {
    export var aVar: i32 = 0;
    export function aFunc(): i32 { return aVar; }
    export enum anEnum { ONE = 1, TWO = 2 }
  }
}

Outer.Inner.aVar;
Outer.Inner.aFunc();
Outer.Inner.anEnum.ONE;

enum Joined {
  THREE = 3
}
namespace Joined {
  export function anotherFunc(): i32 { return Joined.THREE; }
}

Joined.anotherFunc();
