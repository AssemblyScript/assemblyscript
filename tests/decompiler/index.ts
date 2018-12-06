import "allocator/arena";

declare function println(s: i32):void;

type callback<T> = (self: T, x: i32) => void;

declare function asyncfn<T>(obj: T, cb: callback<T>): void;


export class Test {
  a :(x:i32) => i32 ;
  constructor(public i: i32){
    this.a = (x: i32):i32 => x*x;
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
    do {
      this.i = this.i + 1;
    } while(this.i < i)
  }

  print(i: i32): void{
    println(i);
  }

  callAsync(): void {
    asyncfn<Test>(this, (self:Test, x: i32): void => {
      self.print(x);
    })
  }
}

class Test2 extends Test{}

let t:Test;// becomes statically allocated.

// export start
export function start(): void{
  t = new Test(0);
  let t2: Test2 = new Test2(0);
  t._if(1);
  t._else(3);
  t.callAsync();
  println(t.i);
  t._while(1);
  println(t.i);
}

//The compiler will use this as the entry point to the program.
start();

//Before instantiating set the start function to null.
