// case 1
function testfunc2166<T>(): void {
  let a = new Test2166Ref1<string>();
  // class generic should override non-related function generic(testfunc2166): T in fn is string
  a.fn("11", 1);
}
class Test2166Ref1<T> {
  fn<U>(a1: T, a2: U): void {
    assert(nameof<T>() == nameof<string>());
    assert(nameof<U>() == nameof(1));
  }
}
testfunc2166<i64>();

// case 2
class Test2166Ref2<T> {
  constructor() {
    assert(nameof<T>() == nameof<i32>());
  }
  bar<T>(i: T): void {
    // function generic should override class generic, T in bar is string
    assert(nameof<T>() == nameof<string>());
  }
}
new Test2166Ref2<i32>().bar("test-2166");
