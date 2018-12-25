// var fs = require("fs");
// import {WebWorker} from "..";
// var loader = require("../../loader");
// var Worker = require('webworker-threads').Worker;

var memory = new WebAssembly.Memory({
    initial: 256,
    shared: true,
    maximum: 256
});
var memoryView = new DataView(memory.buffer);
let worker;
// let instance;

async function start(){
  worker = new Worker("./webworker.js");
  let address = "./build/index.memory";
  // let wasm = await fetch("./build/memory.wasm");
  // wasm = await WebAssembly.compile(await wasm.arrayBuffer());
  // instance = await WebAssembly.instantiate(wasm,  {env: memory});
  worker.postMessage({command:"start", address})

}
start();
