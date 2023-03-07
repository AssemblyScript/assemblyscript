import { console as binding } from "./bindings/dom";

export namespace console {
  export function assert<T>(condition: T, message: string = ""): void {
    binding.assert(!!condition, message);
  }

  export function log(message: string = ""): void {
    binding.log(message);
  }

  export function debug(message: string = ""): void {
    binding.debug(message);
  }

  export function info(message: string = ""): void {
    binding.info(message);
  }

  export function warn(message: string = ""): void {
    binding.warn(message);
  }

  export function error(message: string = ""): void {
    binding.error(message);
  }

  export function time(label: string = "default"): void {
    binding.time(label);
  }

  export function timeLog(label: string = "default"): void {
    binding.timeLog(label);
  }

  export function timeEnd(label: string = "default"): void {
    binding.timeEnd(label);
  }
}
