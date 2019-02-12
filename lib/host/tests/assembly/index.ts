import {log} from "../../assembly/index";
//import the host
import "allocator/arena";
export { memory };

export class Car {
  length: i32 = 200002;
  constructor(public weight: i32){};

  private static _i: i32 = 10;

  createAnother(weight: i32): Car {
    return new Car(weight);
  }

  combine(c: Car): Car {
    return new Car(this.weight + c.weight);
  }

  static i(): i32 { return Car._i;}
}

export function runTest(): void{
    log<String>("Does the string printing work??");
    log(42);
    log(new Car(42));
}
