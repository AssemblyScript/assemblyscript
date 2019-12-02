
interface IFoo {
  foo(i: i32): i32;
  faa(i: i32, i2: i32): i32;
  readonly x: bool;
}

class AFoo implements IFoo {
  i: i32 = 41;
  get x(): bool{ return true; }
  set x(b: bool){}

  foo(i: i32): i32 {
    return this.i + i;
  }

  faa(i: i32, i2: i32): i32 {
    return i + i2;
  }

}

class StructurallyImplementsIFoo {
  i: i32 = 41;
  x: bool = false;
  
  foo(i: i32): i32 {
    return this.i + i;
  }

  faa(i: i32, i2: i32): i32 {
    return i + i2;
  }
}

const aFoo = new AFoo();
const sFoo = new StructurallyImplementsIFoo();


function passAnInterface(foo: IFoo): void {
  assert(foo.foo(1) == 42);
  assert(foo.faa(1,3) == 4);
}

passAnInterface(aFoo);
passAnInterface(sFoo);

function expectX(foo: IFoo, x: bool): void {
  assert(foo.x == x);
}

expectX(aFoo, true);
expectX(sFoo, false);
