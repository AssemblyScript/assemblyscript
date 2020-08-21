class OuterClass {}
export namespace Outer {
  export class InnerClass {}
  export namespace Inner {
    export class EvenInnerClass {}
    var a: OuterClass;
    var b: InnerClass;
    var c: EvenInnerClass;
    var d: Outer.InnerClass;
    var e: Outer.Inner.EvenInnerClass;
    var f: Inner.EvenInnerClass;
    export function evenInner(
      a: OuterClass,
      b: InnerClass,
      c: EvenInnerClass,
      d: Outer.InnerClass,
      e: Outer.Inner.EvenInnerClass,
      f: Inner.EvenInnerClass
    ): void {}
  }
  var a: OuterClass;
  var b: InnerClass;
  var c: Inner.EvenInnerClass;
  var d: Outer.InnerClass;
  var e: Outer.Inner.EvenInnerClass;
  export function inner(
    a: OuterClass,
    b: InnerClass,
    c: Inner.EvenInnerClass,
    d: Outer.InnerClass,
    e: Outer.Inner.EvenInnerClass
  ): void {}
}
var a: OuterClass;
var b: Outer.InnerClass;
var c: Outer.Inner.EvenInnerClass;
export function outer(
  a: OuterClass,
  b: Outer.InnerClass,
  c: Outer.Inner.EvenInnerClass
): void {}
