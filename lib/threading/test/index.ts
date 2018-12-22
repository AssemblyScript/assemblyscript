import * as fs from "fs";
// import {WebWorker} from "..";
import * as loader from "../../loader";
var Worker = require('webworker-threads').Worker;

type ThreadLoader = loader.ASUtil & {memory:WebAssembly.Memory};

const memory = new WebAssembly.Memory({
    initial: 256,
    shared: true,
    maximum: 256,
});

const memoryView = new DataView(memory.buffer);

var workers: number[] = [];
let wasm = fs.readFileSync('./build/index.wasm');

function fork(parentInstance: ThreadLoader, worker: number){
  let instance: (ThreadLoader & {startChild:(number)=>void});
  workers.push(new Worker(() => {
    instance = loader.instantiateBuffer(wasm,
      {
        env: {memory:parentInstance.memory},
        index: {
          log_str:(x) => console.log(instance.getString(x)),
          fork: (worker) => fork(instance, worker),
          log:console.log,
          wait: (ptr, value, timeout = -1) => {
            Atomics.wait(ptr,value, timeout);
          },
          notify: (ptr, numAgents) => Atomics.notify(ptr,numAgents),
          print:console.log
        }
      }
    );
    instance.startChild(worker);
  }))

}
async function main(){
  let instance: ThreadLoader & {start:()=>void};

  // var w = new Worker('worker.js'); // Standard API
  let imports: loader.ImportsObject = {
    env: {memory},
    index: {
      log_str:(x) => console.log(instance.getString(x)),
      fork: (worker) => fork(instance, worker),
      log:console.log,
      wait: (ptr, value, timeout = -1) => {
        Atomics.wait(ptr,value, timeout);
      },
      notify: (ptr, numAgents) => Atomics.notify(ptr, numAgents),
      print:console.log
    }
  }

   instance = loader.instantiateBuffer(wasm, imports);
   instance.start();
}

main();
