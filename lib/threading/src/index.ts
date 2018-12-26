
// import { Worker } from 'webworker-threads';
import {Worker as WebWorker} from "./common";
import * as loader from "../../loader";
/** Cached compiled parser. */
var compiled: WebAssembly.Module | null = null;
// type fetch = (string)=> Buffer;

type WorkerInstance = WebWorker &
                      {memory: WebAssembly.Memory, myStart:()=>void,
                       startChild:(Worker)=>void,
                       Worker:WebWorker} &
                      loader.ASUtil;

async function fork(parent: (WorkerInstance), worker: number) {
    let newWorker = new Worker("./webworker.js");
    newWorker.postMessage({command: "fork", memory: parent.memory, worker})
    return newWorker;
}

let notify = Atomics.wake;

type i32 = number;
type int = number;

type usize = number;




export default class Thread {
  instance: WorkerInstance;
  id: number;
  static thread: Thread;


  constructor(public address: string, public wasm: WebAssembly.Module) {
    Thread.thread = this;
  }


  static async create(address: string, memory = Thread.defaultMemory): Promise<Thread> {
    let buf = await fetch(address);
    let wasm = await WebAssembly.compile(await buf.arrayBuffer());
    let thread = new Thread(address, wasm);
    thread.instance = await thread.load(memory, wasm);
    return thread;
  }

  static defaultMemory(): WebAssembly.Memory {
    return new WebAssembly.Memory({
        initial: 256,
        shared: true,
        maximum: 256
    });
  }

  fork(worker: number): Worker {
      let newWorker = new Worker("./webworker.js");
      let address = this.address;
      let lastdot = address.lastIndexOf(".");
      address = address.slice(0,lastdot) + ".wasm";
      newWorker.postMessage({command: "fork", address: address, memory: this.memory, worker})
      return newWorker;
  }

  async load(memory, mod: WebAssembly.Module) {
      var wasm: WebAssembly.Module;
      let instance;
      if (typeof mod === "string") {
        let buf = await fetch(mod);
        wasm = await WebAssembly.compile(await buf.arrayBuffer());
      } else {
        wasm = mod;
      }
      // var w = new Worker('worker.js'); // Standard API
      var imports = {
          env: { memory },
          index: {
              log_str: (x:number) => { return console.log(instance.getString(x)); },
              fork: (worker: number) => {
                          console.log(`Worker is located at ${worker>>2}`);
                          return this.fork(worker); },
              log: (type, x) => console.log(x),
              wait:  (ptr: usize, value: number, timeout: number) => {
                  if (timeout === -1) { timeout = Infinity; }
                  console.log(`About to wait on location: ${ptr>>2}`);
                  let res = Atomics.wait(instance.I32, ptr >> 2, value, timeout);
                  console.log(`Woken waiting on ${ptr/4} with result: ${res}`);
              },
              notify: (ptr, numAgents) => { return notify(instance.I32, ptr >> 2, numAgents); },
              print: console.log,
              printMemory: (start:number = 0)=> console.log(instance.I32.slice(start)),
              debug:()=>{let x =1; debugger;},
              loc: (x)=>{
                console.log("getting location: " + x);
                return x;}
          }
      };
      instance = await loader.instantiate(wasm, imports);
      return instance
  }

  start(): void{
    this.instance.myStart();
  }

  startChild(id: number): void {
    this.id = id
    this.instance.startChild(id);
  }



  static onMessageReceived(e) {
    try {
        const data = e.data;
        debugger;
        switch (data.command) {
          case "start": {
            (async (address: string) =>{
            let thread = await Thread.create(address);
            thread.start();
            debugger;
          })(data.address);
            break;
          }
          case "fork": {
            (async function (address, memory, worker) {
              debugger;
                let thread =  await Thread.create(address, memory);
                thread.startChild(worker)
            })(data.address, data.memory, data.worker)
            break;
          }

        }
      }catch(e){
        console.log(e);
      }
  }

  get memory(): WebAssembly.Memory {
    return this.instance.memory;
  }
}


addEventListener("message", Thread.onMessageReceived, false);
