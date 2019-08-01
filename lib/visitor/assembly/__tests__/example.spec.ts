
export class Foo implements Fu {
  int: i32 = 0;
  float: f32 = 1.2;

  runTwo(i: i32, i2: i32): i32 {
    return this.int + i + i2;
  }

  run(i: i32): void {
    this.int += i;
  }
}
interface Fu {
  run(i: i32): void;
  runTwo(i: i32, i2: i32): i32;
}

function testInterface(fu: Fu): void {
  fu.run(10);
}

function testRun2(fu: Fu): i32 {
  return fu.runTwo(5, 5);
}

const foo = new Foo();

describe("interface", ():void => {
  it("should handle foo", ():void => {
    foo.run(0);
    testInterface(foo);
    expect<i32>(foo.int).toBe(10);
    expect<i32>((<Fu>foo).runTwo(5, 5)).toBe(20);
  });
})
