import "allocator/atomic";
import { itoa } from "internal/number";
export { memory };
declare function log_str(v: string): void;
declare function fetch(v: string, cb: int): void;

var id = 1;
type int = i32;
// type int = i64;

export function setId(_id: i32): void {
  id = _id;
}

declare function outsideWait(i: i32, v: int, t:i32): void;
declare function outsideWake(i: i32, v: int): void;


export function wait(mutexAddr: i32 = 0, value: int = 1): void {
  log_str('[WASM][' + itoa<i32>(id) + '] waiting...');
  Atomic.store<int>(mutexAddr, value);
  log_str((Atomic.load<int>(mutexAddr) == value) ? "true" : "false");
  outsideWait(mutexAddr, value, -1);
  log_str('[WASM][' + itoa<i32>(id) + '] waken');
}

export function wake(mutexAddr: i32 = 0, value: int = 0, numAgents: i32 = 1): void {
  log_str('[WASM][' + itoa<i32>(id) + '] waking '+ itoa<i32>(numAgents) + ' agent(s)...');
  Atomic.store<int>(mutexAddr, value);
  var count = Atomic.notify<int>(mutexAddr, numAgents);
  log_str('[WASM][' + itoa<i32>(id) + '] waken ' + itoa<i32>(count) + ' agent(s)');
}

export function wget(str: string = "https://google.com"): void {
  fetch(str, 0);
  wait(0, 0);
  let res: string = changetype<string>(Atomic.load<int>(0));
  log_str(res);
}
