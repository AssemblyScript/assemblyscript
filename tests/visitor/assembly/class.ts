/// <reference types="../../../std/types/assembly" />

class Foo implements Fu {
  int: i32 = 0;
  float: f32 = 1.2;
  constructor(public str: string) {
    let x: i32 = 42 * 64;
  }

  run(i: i32): void {
    this.int += i;
  }
}

class Faa extends Foo {
  constructor(str: string, public arr: Array<i32>) {
    super(str);
  }

  run(i: i32): void {
    this.float += <f32>i;
  }
}

interface Fu {
  run(i: i32): void 
}

let foo = new Foo("hello");
let faa = new Faa("world", new Array<i32>());

function testInterface(fu: Fu): void {
  fu.run(10); 
}


testInterface(foo);
testInterface(faa);