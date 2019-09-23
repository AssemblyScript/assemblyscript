
interface IFoo {
  foo(i: i32): i32;
  faa(i: i32, i2: i32): string;
}

class BadFoo implements IFoo {

  faa(i: i32, i2: i32): i32 {
    return i + i2;
  }

}

class AnotherBadFoo {}

const aBadFoo: IFoo =  new BadFoo();
const anotherBadFoo: IFoo = new AnotherBadFoo();
const intFoo: IFoo = <i32>5;
