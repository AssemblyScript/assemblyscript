// #423
namespace Outer {
  export class Inner {
  }
}
export const a: Outer.Inner = null;
export function b(): Outer.Inner { return changetype<Outer.Inner>(0); }
export function c(arg: Outer.Inner): void { }

// #127
export namespace Wrapped {
  class D {}
  export function e(c: D): void {}
  export namespace Inner {
    export class F {}
  }
  var f: Inner.F;
}
