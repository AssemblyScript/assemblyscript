
interface IFoo {
  foo(i: i32): i32;
}

class BadFoo implements IFoo {
  i: i32 = 41;

  foo(i: i32): string {
    return "hello";
  }

  faa(i: i32, i2: i32): i32 {
    return i + i2;
  }

}


const aFoo: IFoo =  new BadFoo();


