/** A WebAssembly module that provides threading features. */
import "allocator/atomic"
import { itoa } from "internal/number";

type int = i32

declare function wait(i: i32, v: int, t:i32): void;
declare function notify(i: i32, v: int): void;
declare function print(i: i32): void;
declare function fork(worker: Worker): void
declare function log_str(s: string): void
declare function log<T>(i:T): void
declare function loc(i:Lock):i32;
declare function debug():void;


// function loc (x: Lock):i32 {
//   return changetype<i32>(x);
// }

type handler<T> = (message: T) => void;

/*
  Uses atomic instructions to implement a lock that waits until the lock is acquired.
*/
export class Lock {
  constructor(public ptr: i32 = 1){}
  static store(ptr: usize, x: i32): void {
    // log_str("Storing " + itoa<i32>(x) + " to " + itoa<i32>(ptr));
    Atomic.store<i32>(ptr, x);
  }

  static load(ptr: usize): i32 {
    print(ptr);
    let x = ptr;
    print(x);
    return Atomic.load<i32>(ptr);
  }
  acquire(): void {
    log_str("aquiring Lock");
    Lock.acquire(changetype<usize>(this));
    log_str("lock is acquired");
  }
  release(): void {
    log_str("Releasing Lock");
    Lock.release(changetype<usize>(this));
    log_str("Lock is Released");
  }
  /** Wait until lock is acquired, e.i. the ptr is set to 0.  */
  static acquire(ptr: usize): void {
    let count = 0;
    while (!Atomic.cmpxchg<i32>(ptr, 1, 0)){
      wait(ptr, 0, -1);
      if (count++ > 5){
        break;
      }
    }
  }

  static release(ptr: i32): void {
    Lock.store(ptr, 1);
    notify(ptr, 1);
  }


}

export class Mailbox<T> {
  array: Array<T> = [];
  lock: Lock;

  constructor(){
    this.lock = new Lock();
  }

  push(item: T): void {
    log_str("Pushing----");
    this.lock.acquire();
    log_str("Read lock acquired for writer");
    this.array.push(item);
    log_str("Pushed item");
    this.lock.release();
  }

  pop(): T {
    log_str("Popping----");
    let ptr = changetype<i32>(this.lock);
    let count = 0;
    while (this.array.length == 0) {
      this.lock.acquire();
      count++;
      if (count > 100){
        break;
      }
      this.lock.release();
      wait(ptr, 1 , -1);
      Lock.acquire(ptr);
    }
    // this.lock.acquire(this.lock.ptr);
    let i: T = this.array.pop();
    this.lock.release();
    return i;
  }

  // clone(): Mailbox<T> {
  //   let m = changetype<Mailbox<T>>(__memory_allocate(sizeof<Mailbox<T>>()));
  //   m.array= this.array;
  //   m.lock = this.lock.clone();
  //   m.write = this.write.clone();
  //   return m;
  // }
}



export class Worker {
  array: Mailbox<i32>;
  // mailbox: Mailbox<i32>;
  alive: boolean = true;
  id: i32;

  constructor() {
     this.array = new Mailbox<i32>();
     this.init();
  }

  start(): void {
    let array = this.array;
    let count = 0;
    while(this.alive) {
      let i: i32 = array.pop();
      this.onmessage(i);
      if (count>100){
        break;
      }
    }
  }

  init(): void {
    this.id = changetype<i32>(this);
    fork(this);
  }

  onmessage(message: i32): void {
    // log_str("printing message: ");
    print(message);
  }

  postMessage(message: i32): void {
    // this.lock.acquire();
    this.array.push(message);
    // this.lock.release();
  }

}


export function startWorker(worker: Worker): void{
  worker.start();
}
