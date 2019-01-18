import {host, log} from "../../assembly";
//import the host


let message = "Does the string printing work?";

class Car {
  weight: i32 = 10121;
  length: i64 = 200002;
}

log(message);
log(42);

log(new Car());
