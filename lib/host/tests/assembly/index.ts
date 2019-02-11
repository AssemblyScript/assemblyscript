import {log} from "../../assembly/index";
//import the host
import "allocator/arena";
export { memory };

export class Car {
  weight: i32 = 10121;
  length: i32 = 200002;
  constructor(){};

  private static _i: i32 = 10;

  createAnother(): Car {
    return new Car();
  }

  static i(): i32 { return Car._i;}
}

export function runTest(): void{
    log<String>("Does the string printing work??");
    log(42);
    log(new Car());
}
