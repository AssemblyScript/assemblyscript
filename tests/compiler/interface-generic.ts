
interface GFoo<T,B> {
  foo(i: T): T;
  faa(i: i32, i2: i32): i32;
  readonly x: B;
}

class AGFoo implements GFoo<i32, bool> {
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

class StructurallyImplementsGFoo {
  i: i32 = 41;
  x: bool = false;
  
  foo(i: i32): i32 {
    return this.i + i;
  }

  faa(i: i32, i2: i32): i32 {
    return i + i2;
  }
}

const aGFoo = new AGFoo();
const sGFoo = new StructurallyImplementsGFoo();


function passAnGInterface(foo: GFoo<i32, bool>): void {
  assert(foo.foo(1) == 42);
  assert(foo.faa(1,3) == 4);
}

passAnGInterface(aGFoo);
passAnGInterface(sGFoo);

function expectGX(foo: GFoo<i32, bool>, x: bool): void {
  assert(foo.x == x);
}

expectGX(aGFoo, true);
expectGX(sGFoo, false);

const gFoo = <GFoo<i32, bool>> aGFoo;
const igbool = gFoo.x;
assert(igbool)