import {log} from "../../assembly/index";
//import the host
import "allocator/arena";
export { memory };

class Car {
  weight: i32 = 10121;
  length: i64 = 200002;
}

export function runTest(): void{
    log("Does the string printing work?");
    log(42);
    log(new Car());
}
