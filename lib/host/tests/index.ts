import {Host} from "../src";
import * as loader from "../../loader/src";
import * as fs from "fs";
import ASModule from "./build";
import * as asc from "../../../cli/asc"
type testMod = typeof ASModule;


var wasm = fs.readFileSync(`${__dirname}/build/untouched.wasm`);
let imports = (new Host()).getImports<testMod>();
var instance = loader.instantiateBuffer<testMod>(wasm.buffer, imports);
instance.runTest();
