import {Foo, Faa, testInterface} from "../class"

let foo = new Foo("hello");
let faa = new Faa("world", new Array<i32>());
faa.run(0);

describe("interface", ():void => {
  it("should handle foo", ():void => {
    foo.run(0);
    testInterface(foo);
    expect<i32>(foo.int).toBe(10);
  });
})

let x = 10;

switch (x){
  case 1:
    x++; break;
  case 10:
    break;
}