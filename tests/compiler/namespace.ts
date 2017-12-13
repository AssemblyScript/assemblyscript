namespace Outer {
  export namespace Inner {
    export let aVar: i32;
    export function aFunc(): void {}
    export enum anEnum { ONE = 1 }
  }
}

export function test(): void {
  Outer.Inner.aVar;
  Outer.Inner.aFunc();
  Outer.Inner.anEnum.ONE;
}
