import {log} from "../../assembly/index";
//import the host
import "allocator/arena";
export { memory };

export class Car {
  constructor(public weight: i32){};

  createAnother(weight: i32): Car {
    return new Car(weight);
  }

  combine(c: Car): Car {
    return new Car(this.weight + c.weight);
  }

}

export function runTest(): void{
    log<String>("Does the string printing work??");
    log(42);
    log(new Car(42));
}
