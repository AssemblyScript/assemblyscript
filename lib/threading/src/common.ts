type i32 = number;

declare class Mailbox<T> {
  push(t: T): void;
  pop(): T;

}
export declare class Worker {
  array: Mailbox<i32>;
  alive: boolean;
  id: i32;


  static start(worker: Worker): void;

  run(): void;

  init(): void ;

  onmessage(message: i32): void;

  postMessage(message: i32): void ;

}
