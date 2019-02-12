import {Host,ASImport, Env} from "../src";
import * as loader from "../../loader/src";
import * as fs from "fs";
import ASModule from "./build";
type testMod = typeof ASModule;


var wasm = fs.readFileSync(`${__dirname}/build/untouched.wasm`);

// let env = new Env({initial:50})
let imports = ASImport.createImport(Host, Env);
var instance = loader.instantiateBuffer<testMod>(wasm, imports);
instance.runTest();
let car: ASModule.Car = new instance.Car(10);
let car2 = car.createAnother(32);
let car3 = car.combine(car2);
console.log(`1:${car.weight} 2:${car2.weight}  3:${car3.weight}`);
