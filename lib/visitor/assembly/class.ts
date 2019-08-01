/// <reference types="../../../std/types/assembly" />

export class Foo implements Fu {
  int: i32 = 0;
  float: f32 = 1.2;

  run(i: i32): void {
    this.int += i;
  }
}

export class Faa extends Foo {
  constructor(str: string, public arr: Array<i32>) {
    super(str);
  }

  run(i: i32): void {
    this.float += <f32>i;
  }
}

interface Fu {
  run(i: i32): void; 
}

let x: i32 = 25;
// declare function virtual(methodID: usize, classID: usize): usize

export function testInterface(fu: Fu): void {
  fu.run(10);
  // let id = load<usize>(changetype<usize>(fu)-8);
  // let i = fu instanceof Faa;
  // let fn: usize = virtual(0, id);
  // let test = fn + 0;
  // call_indirect(4, 10);
  // fu.run(10); 
}
