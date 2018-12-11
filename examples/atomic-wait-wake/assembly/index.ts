import "allocator/atomic";
import { itoa } from "internal/number";

declare function log_str(v: string): void;

var id = 1;
type int = i32;
// type int = i64;

export function setId(_id: i32): void {
  id = _id;
}

export function wait(mutexAddr: i32 = 0, value: int = 1): void {
  log_str('[WASM][' + itoa<i32>(id) + '] waiting...');
  Atomic.store<int>(mutexAddr, value);
  Atomic.wait<int>(mutexAddr, value, -1);
  log_str('[WASM][' + itoa<i32>(id) + '] waken');
}

export function wake(mutexAddr: i32 = 0, value: int = 0, numAgents: i32 = 1): void {
  log_str('[WASM][' + itoa<i32>(id) + '] waking '+ itoa<i32>(numAgents) + ' agent(s)...');
  Atomic.store<int>(mutexAddr, value);
  var count = Atomic.notify<int>(mutexAddr, numAgents);
  log_str('[WASM][' + itoa<i32>(id) + '] waken ' + itoa<i32>(count) + ' agent(s)');
}
