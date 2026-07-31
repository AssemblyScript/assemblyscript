class Foo {
  static bar: i32 = 2; // errors in TS
  static baz: i32 = 2; // does not error in TS
  private static qux: i32 = 2; // errors in TS
}

namespace Foo {
  export let bar: i32 = 1;
  let baz: string = "baz";
  export let qux: i32 = 1;
  let hi: i32 = 1;
}
