import {Host,ASImport, Env} from "../src";
import * as loader from "../../loader/src";
import * as fs from "fs";
import ASModule from "./build";
type testMod = typeof ASModule;


var wasm = fs.readFileSync(`${__dirname}/build/untouched.wasm`);

let env = new Env({initial:50})
let imports = ASImport.createImport(Host, env);
console.log(imports);

var instance = loader.instantiateBuffer<testMod>(wasm, imports);
instance.runTest();
