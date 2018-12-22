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
    print(100000001);

    Lock.acquire(changetype<usize>(this));
  }
  release(): void {
    print(111111111);
    Lock.release(changetype<usize>(this));
  }
  /** Wait until lock is acquired, e.i. the ptr is set to 0.  */
  static acquire(ptr: usize): void {
    // log_str("about to wait... -------- " + itoa<i32>(ptr));
    // print(Atomic.load<i32>(ptr));
    // print(Atomic.load<i32>(this.ptr));
    // print(Lock.load(ptr));
    // return
    let count = 0;
    while (!Atomic.cmpxchg<i32>(ptr, 1, 0)){
      // log_str("waiting for lock");
      // print(lock);
      wait(ptr, 0, -1);
      if (count++ > 5){
        break;
      }
    }
    // log_str("aquired Lock");
  }

  static release(ptr: i32): void {
    // log_str("releasing Lock")
    Lock.store(ptr, 1);
    notify(ptr, 1);
    // log_str("released Lock - " + itoa<i32>(ptr));
  }


}

export class Mailbox<T> {
  array: Array<T> = [];
  lock: Lock;
  write: Lock;

  constructor(){
    log_str("creating Mailbox");
    this.lock = 1
    this.write = 0; //Initially locked.
    log_str("Creating locks. Read: " + itoa<i32>(this.lock)+" "+
             "\nWrite: "+ itoa<i32>(this.write));
  }

  push(item: T): void {
    log_str("Pushing----");
    log_str("Read lock as Writer"+ this.lock);

    // this.lock.acquire(this.lock);
    log_str("Read lock acquired for writer");

    this.array.push(item);
    log_str("Pushed item");

    // this.lock.release(this.lock.ptr);
    // this.write.release(this.write.ptr);
    log_str("both writing locks released.");
    print(changetype<i32>(item));

    print(changetype<Array<i32>>(this.array)[0]);
  }

  pop(): T {
    log_str("Popping----");
    while (this.array.length == 0) {
      // log_str("write lock "+ this.write.toString());
      // this.write.acquire(this.write.ptr);
    }
    // this.lock.acquire(this.lock.ptr);
    log_str("aquired read lock as reader");
    let i: T = this.array.pop();
    // this.lock.release(this.lock.ptr);
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
  lock: Lock;
  array: Array<i32>;
  // mailbox: Mailbox<i32>;
  alive: boolean = true;
  id: i32;

  constructor() {
     // this.mailbox = mailbox;
     // this.id = changetype<i32>(this);
     this.array = [];
     log<Array<i32>>(this.array);
     this.lock = new Lock();
     // log<i32>(this.id);
     // log<i32>(this.id + changetype<i32>(this.array));
     this.init();
  }

  start(): void {
    let ptr = changetype<i32>(this.lock);
    let array = this.array;
    let count = 0;
    while(this.alive) {
      // log_str("start of loop. array has length: " + itoa<i32>(a.length));
      this.lock.acquire();
      while (this.array.length == 0) {
        count++;
        if (count > 100){
          print(1010101010);
          break;
        }
        this.lock.release();
        log<i32>(Atomic.load<i32>(ptr));
        wait(ptr, 1 ,-1);
        Lock.acquire(ptr);
      }
      // lock.acquire(ptr);
      debug();
      let x = this.array[0];
      let i: i32 = array.pop();
      debug();
      log<i32>(i);
      log<i32>(x);
      log<i32>(array.length);
      this.lock.release();
      this.onmessage(i);
      if (count>100){
        break;
      }
    }
  }

  init(): void {
    this.id = changetype<i32>(this);
    fork(this.clone());
  }

  onmessage(message: i32): void {
    // log_str("printing message: ");
    print(message);
  }

  postMessage(message: i32): void {
    this.lock.acquire();
    this.array.push(message);
    log_str("putting message in array");
    log<Array<i32>>(this.array);
    log<i32>(this.array.length);
    log<i32>(this.array[0]);
    // log<i32>(this.array[1]);
    log<Worker>(this);
    this.lock.release();
  }

  clone(): Worker {
    // let worker = changetype<Worker>(__memory_allocate(sizeof<Worker>()));
    // log_str("creating worker from: ");
    // print(changetype<i32>(this));
    // log_str("now");
    // print(changetype<i32>(worker));

    // worker.mailbox = this.mailbox;
    // // worker.mailbox.lock = this.mailbox.lock;
    // print(worker.mailbox.array.length)
    // print(changetype<Array<i32>>(this.mailbox)[0])
    //
    // print(changetype<i32>(this.mailbox));
    // print(changetype<i32>(worker.mailbox));
    // print(changetype<i32>(this.mailbox.lock));
    // print(changetype<i32>(worker.mailbox.lock));
    // let x = this.mailbox.lock.ptr;
    // print(this.mailbox.lock.ptr);
    // print(x);
    // worker.mailbox.lock.ptr = x;
    // print(worker.mailbox.lock.ptr);
    // log_str("copying " + itoa<i32>(this.mailbox.lock.ptr));
    // log_str("now " + itoa<i32>(worker.mailbox.lock.ptr));

    // worker.alive = this.alive;
    // worker.array = this.array;
    // log<Array<i32>>(worker.array);
    // worker.lock = this.lock;
    // worker.lock.ptr = this.lock.ptr;
    // print(worker.lock.ptr);
    // print(this.lock.ptr);
    // print(Lock.load(this.lock.ptr));
    // worker.id = changetype<i32>(worker);
    return this;
  }
}

export function cloneWorker(worker: Worker): Worker{
  return worker.clone();

}

export function startWorker(worker: Worker): void{
  worker.start();
}
