import "allocator/arena";

declare function println(s: i32):void;

export class Test {
  constructor(public i: i32){
  }

  _if(i: i32): void {
    if (this.i < i) {
      this.i = i;
    }
  }
  _else(i: i32): void {
    if (this.i < i) {
      this.i = i;
    } else {
      this.i = this.i + 1;
    }
  }
  _while(i:i32): void {
    while(this.i > i) {
      this.i = this.i - 1;
    }
  }
  _doWhile(i:i32): void {
    do if(this.i < i){
      this.i = this.i + 1;
    } while(1)
  }
}
export function  MakeT(): Test {
  return new Test(2);
}
let t = MakeT();

export function getT():Array<Test> {
  let A = new Array<Test>();
  A.push(t);
  return A;
}
let a = getT();

export function getA(): Test {
  return a[0];
}
t._if(1);
t._else(3);
println(t.i);
t._while(1);
println(t.i);
