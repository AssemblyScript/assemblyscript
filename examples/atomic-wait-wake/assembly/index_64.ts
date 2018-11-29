// import "allocator/atomic";
// import { itoa } from "internal/number";

declare function log(v: i32): void;
declare function logi64(v: i64): void;
declare function log_str(v: string): void;

var id = 1;

export function setId(_id: i32): void {
  id = _id;
}

export function wait_i64(mutexAddr: i32 = 0, value: i64 = 1): void {
  // log_str('[WASM][' + itoa<i32>(id) + '] waiting...');
  Atomic.store<i64>(mutexAddr, value);
  Atomic.wait<i64>(mutexAddr, value, -1);
  // logi64(result);
  // log_str('[WASM][' + itoa<i32>(id) + '] waken');
}

export function wake_i64(mutexAddr: i32 = 0, value: i64 = 0, numAgents: i32 = 1): void {
  // log_str('[WASM][' + itoa<i32>(id) + '] waking '+ itoa<i32>(numAgents) + ' agent(s)...');
  // Atomic.store<i64>(mutexAddr, value);
  // var count = Atomic.wake<i64>(mutexAddr, numAgents);
  // log_str('[WASM][' + itoa<i32>(id) + '] waken ' + itoa<i32>(count) + ' agent(s)');
}
