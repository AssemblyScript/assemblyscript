var fnVoid = function(): void {};
fnVoid.call(null);

var faVoid = (): void => {};
faVoid.call(null);

var fnRet = function(a: i32, b: i32): i32 {
  return a + b;
};
assert(fnRet.call(null, 1, 2) == 3);

var faRet = (a: i32, b: i32): i32 => {
  return a + b;
};
assert(faRet.call(null, 2, 3) == 5);

var fnThis = function fn2(this: i32): i32 {
  return this;
};
assert(fnThis.call(1) == 1);

class Foo {
  fnVoid(): void {}
  fnThis(this: i32): i32 {
    return this;
  }
  fnRet(a: i32, b: i32): i32 {
    return a + b;
  }
}
var foo = new Foo();
foo.fnVoid.call(foo);
assert(foo.fnThis.call(1) == 1);
assert(foo.fnRet.call(foo, 1, 2) == 3);
