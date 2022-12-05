class OuterClass {}
namespace Outer {
  export class InnerClass {}
  export namespace Inner {
    export class EvenInnerClass {}
    var a: OuterClass | null;
    var b: InnerClass | null;
    var c: EvenInnerClass | null;
    var d: Outer.InnerClass | null;
    var e: Outer.Inner.EvenInnerClass | null;
    var f: Inner.EvenInnerClass | null;
    export function evenInner(
      a: OuterClass,
      b: InnerClass,
      c: EvenInnerClass,
      d: Outer.InnerClass,
      e: Outer.Inner.EvenInnerClass,
      f: Inner.EvenInnerClass
    ): void {}
  }
  var a: OuterClass | null;
  var b: InnerClass | null;
  var c: Inner.EvenInnerClass | null;
  var d: Outer.InnerClass | null;
  var e: Outer.Inner.EvenInnerClass | null;
  export function inner(
    a: OuterClass,
    b: InnerClass,
    c: Inner.EvenInnerClass,
    d: Outer.InnerClass,
    e: Outer.Inner.EvenInnerClass
  ): void {}
}
var a: OuterClass | null;
var b: Outer.InnerClass | null;
var c: Outer.Inner.EvenInnerClass | null;
export function outer(
  a: OuterClass,
  b: Outer.InnerClass,
  c: Outer.Inner.EvenInnerClass
): void {}
