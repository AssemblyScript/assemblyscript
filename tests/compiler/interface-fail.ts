
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

interface Properties {
  val: i32;
}

class BadProps implements Properties {
  private _val: i32 = 0;
  set val(newVal: i32) {
    this._val = newVal;
  }
}

const badProp = <Properties> new BadProps();

const val = badProp.val;
