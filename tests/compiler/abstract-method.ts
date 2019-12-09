abstract class Abstract {
  x: i32 = 42;
  abstract abstractMethod(): i32;
  abstract get y(): i32;

}

class AAbstract extends Abstract {
  abstractMethod(): i32 {
    return this.x;
  }

 get y(): i32 { return this.x * 2 }
}

const aastract = new AAbstract();

function testAbstract(a: Abstract, expected: i32): void {
  assert(a.abstractMethod() == expected);
  assert(a.y == expected * 2);
}

testAbstract(aastract, 42);