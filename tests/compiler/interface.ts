
interface IFoo {
  foo(i: i32): i32;
  faa(i: i32, i2: i32): i32;
  x: bool;
}

class AFoo implements IFoo {
  i: i32 = 41;
  _x: bool = true;
  get x(): bool { return this._x; }
  set x(b: bool){ this._x = b; }

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
  foo.x = x;
  assert(foo.x == x);
}

expectX(aFoo, false);
expectX(sFoo, true);

const iFoo = <IFoo> aFoo;
const ibool = iFoo.x;
assert(!ibool);
