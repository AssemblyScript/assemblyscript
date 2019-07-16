/// <reference types="../../../std/types/assembly" />

export class Foo implements Fu {
  int: i32 = 0;
  float: f32 = 1.2;
  constructor(public str: string) {
    let x: i32 = 42 * 64 + str.length;
    switch(x){
      case 1:
        x++;
        break;
      case 42*64:
        x--;break
      default:
        x*=2;
    }
  }

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

// declare function virtual(methodID: usize, classID: usize): usize

export function testInterface(fu: Fu): void {
  let id = load<usize>(changetype<usize>(fu)-8);
  let i = fu instanceof Faa;
  // let fn: usize = virtual(0, id);
  // let test = fn + 0;
  // call_indirect(4, 10);
  // fu.run(10); 
}
