
interface IFoo {
  foo(i: i32): i32;
}

class AFoo implements IFoo {
  i: i32 = 41;

  foo(i: i32): i32 {
    return this.i + i;
  }
}

let aFoo = new AFoo();

function passAnInterface(foo: IFoo): void {
  assert(foo.foo(1) == 42);
}

passAnInterface(aFoo);