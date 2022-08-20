import {
  Date as Date_binding,
  performance as performance_binding
} from "bindings/dom";

import {
  process as process_binding
} from "bindings/node";

export namespace process {

  // @ts-ignore: decorator
  @lazy export const arch = sizeof<usize>() == 4 ? "wasm32" : "wasm64";

  // @ts-ignore: decorator
  @lazy export const platform = "wasm";

  // @ts-ignore: decorator
  @lazy export const argv = lazyArgv();

  // @ts-ignore: decorator
  @lazy export const env = lazyEnv();

  // @ts-ignore: decorator
  @lazy export var exitCode = 0;

  export function exit(code: i32 = exitCode): void {
    process_binding.exit(code);
  }

  // @ts-ignore: decorator
  @lazy export const stdin = changetype<ReadableStream>(0);
  // @ts-ignore: decorator
  @lazy export const stdout = changetype<WritableStream>(1);
  // @ts-ignore: decorator
  @lazy export const stderr = changetype<WritableStream>(2);

  export function time(): i64 {
    return Date_binding.now();
  }

  export function hrtime(): u64 {
    let now = performance_binding.now();
    let millis = <u64>now;
    let fraction = now - <f64>millis;
    return millis * 1000000 + <u64>(fraction * 1000000);
  }
}

function lazyArgv(): string[] {
  return process_binding.argv;
}

function lazyEnv(): Map<string,string> {
  // TODO: What about Node?
  return new Map();
}
