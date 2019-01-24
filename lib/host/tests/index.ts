import {Host} from "../src";
import * as loader from "../../loader";
import * as fs from "fs";
import ASModule from "./build";
import * as asc from "../../../cli/asc"
type testMod = typeof ASModule;
let host = new Host();
var wasm = fs.readFileSync(`${__dirname}/build/untouched.wasm`);
var instance = loader.instantiateBuffer<testMod>(wasm.buffer, {host});
host.bootstrap(instance)
instance.runTest();
