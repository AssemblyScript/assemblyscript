abstract class Abstract {
  x: i32 = 42;
  abstract abstractMethod(): i32;
  abstract get y(): i32;

}

abstract class SubAstract extends Abstract {
  constructor() {
    super();
    this.x = 21;
  }
  get y(): i32 { return 42; }
}

class AAbstract extends Abstract {
  abstractMethod(): i32 {
    return this.x;
  }

 get y(): i32 { return this.x * 2; }
}

class AAnotherAbstract extends SubAstract {
  abstractMethod(): i32 { return 21; }
}

const aastract = new AAbstract();
const aAnotherAbstract = new AAnotherAbstract();

function testAbstract(a: Abstract, expected: i32): void {
  assert(a.abstractMethod() == expected);
  assert(a.y == expected * 2);
}

testAbstract(aastract, 42);
testAbstract(aAnotherAbstract, 21);
