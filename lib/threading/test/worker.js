var workers = [];
let exports = {};
importScripts("./loader.js")
let loader = exports;
function fork(wasm, parentInstance, worker) {
  // var wasm = await fetch('./build/index.wasm');
  // wasm = await wasm.arrayBuffer();
    let instance;
    workers.push(new Worker("./worker.js"));
    workers[workers.length-1].postMessage({command: "fork", wasm, memory: parentInstance.memory, worker})
}
var instance;

async function load(memory, mod) {
    var wasm;
    if (!mod){
      wasm = await fetch('./build/index.wasm');
      wasm = await WebAssembly.compile(await wasm.arrayBuffer());
    }else{
      wasm = mod;
    }
    // var w = new Worker('worker.js'); // Standard API
    var imports = {
        env: { memory },
        index: {
            log_str: function (x) { return console.log(instance.getString(x)); },
            fork: function (worker) {
                        console.log(`Worker is located at ${worker/4}`);
                        return fork(wasm, instance, worker); },
            log: (x) => console.log(x),
            wait: function (ptr, value, timeout) {
                if (timeout === -1) { timeout = Infinity; }
                console.log(`About to wait on location: ${ptr/4}`);
                let res = Atomics.wait(instance.I32, ptr/4, value, timeout);
                console.log(`Woken waiting on ${ptr/4} with result: ${res}`);
            },
            notify: function (ptr, numAgents) { return Atomics.notify(instance.I32, ptr/4, numAgents); },
            print: console.log,
            debug:()=>{let x =1; debugger;},
            loc: (x)=>{
              console.log("getting location: " + x);
              return x;},
            printMemory: () => {
              console.log(instance.I32);
            }
        }
    };
    instance = await instantiate(wasm, imports);
    return instance
}

addEventListener("message", onMessageReceived, false);

function onMessageReceived(e){
  try {
      const data = e.data;
      switch (data.command) {
        case "start": {
          (async () =>{
          wasm = await fetch('./build/index.memory');
          wasm = await WebAssembly.compile(await wasm.arrayBuffer());
          instance = await load(data.memory, wasm);
          instance.myStart();
          debugger;

        })()
          break;
        }
        case "fork": {
          (async function (wasm, memory, worker) {
              instance = await load(memory);
              instance.startChild(worker);
          })(data.wasm, data.memory, data.worker)
          break;
        }

      }
    }catch(e){
      console.log(e);
    }
}
