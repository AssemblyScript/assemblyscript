// import "allocator/atomic";
import { itoa } from "internal/number";
export { memory };
declare function log_str(v: string): void;
declare function log<T>(t:T):void;
// declare function fetch(v: string, cb: int): void;

import {Worker, startWorker, Lock, Mailbox } from "../../assembly";


export function myStart(): void{
  let worker1 = new Worker();
  log<Worker>(worker1);
  worker1.postMessage(424242);
}

export function startChild(worker: Worker): void{
  worker.start();
}

export {Worker, Mailbox, Lock}


export function postMessage(worker: Worker, x: i32): void {
  worker.postMessage(x);
}

export {startWorker};


export function getLock(l: usize): void {
  Lock.acquire(l);
}

export function releaseLock(l: usize): void {
  Lock.release(l);
}
