
interface IFooBad {
  foo(i: i32): i32;
  faa(i: i32, i2: i32): string;
}

class BadFoo implements IFooBad {
  /**
    Property 'faa' in type 'BadFoo' is not assignable to the same property in base type 'IFooBad'.
    Type '(i: number, i2: number) => number' is not assignable to type '(i: number, i2: number) => string'.
    Type 'number' is not assignable to type 'string'.
  */
  //@ts-ignore 
  faa(i: i32, i2: i32): i32 {
    return i + i2;
  }

}

class AnotherBadFoo {}
/**
  Property 'foo' is missing in type 'BadFoo' but required in type 'IFooBad'.
 */
//@ts-ignore
const aBadFoo: IFooBad =  new BadFoo();
/*
  Type 'AnotherBadFoo' is missing the following properties from type 'IFooBad': foo, faa
*/
//@ts-ignore
const anotherBadFoo: IFooBad = new AnotherBadFoo();
/*
  Type 'number' is not assignable to type 'IFooBad'.
*/
//@ts-ignore
const intFoo: IFooBad = <i32>5;

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

const badVal = badProp.val;
function badFunc(prop: Properties): void {
  const val = prop.val;
}

badFunc(badProp);