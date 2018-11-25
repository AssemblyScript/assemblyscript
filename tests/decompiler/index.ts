import "allocator/arena";

// @external("Test")
export class Test {
  constructor(public i:i32){
  }
  _if(i:i32): void{
    if (this.i < i){
      this.i = i;
    } else{
      this.i = this.i + 1;
    }
  }
}

let t = new Test(2);
t._if(1);
