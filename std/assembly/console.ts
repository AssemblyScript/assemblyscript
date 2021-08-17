import {
  process
} from "./process";

// @ts-ignore: decorator
@lazy var timers = new Map<string,u64>();

export namespace console {

  export function assert<T>(condition: T, message: string | null = null): void {
    if (!condition) {
      let stderr = process.stderr;
      stderr.write("Assertion failed: ");
      stderr.writeLn(message !== null ? message : "console.assert");
    }
  }

  export function log(message: string = ""): void {
    process.stdout.writeLn(message);
  }

  export function debug(message: string = ""): void {
    var stdout = process.stdout;
    stdout.write("Debug: ");
    stdout.writeLn(message);
  }

  export function info(message: string = ""): void {
    var stdout = process.stdout;
    stdout.write("Info: ");
    stdout.writeLn(message);
  }

  export function warn(message: string = ""): void {
    var stdout = process.stdout;
    stdout.write("Warning: ");
    stdout.writeLn(message);
  }

  export function error(message: string = ""): void {
    var stdout = process.stdout;
    stdout.write("Error: ");
    stdout.writeLn(message);
  }

  export function time(label: string): void {
    var stdout = process.stdout;
    if (timers.has(label)) {
      stdout.write("Warning: Label '");
      stdout.write(label);
      stdout.write("' already exists for console.time()\n");
      return;
    }
    timers.set(label, process.hrtime());
  }

  export function timeLog(label: string): void {
    var stdout = process.stdout;
    if (!timers.has(label)) {
      stdout.write("Warning: No such label '");
      stdout.write(label);
      stdout.write("' for console.timeLog()\n");
      return;
    }
    timeLogImpl(label);
  }

  export function timeEnd(label: string): void {
    var stdout = process.stdout;
    if (!timers.has(label)) {
      stdout.write("Warning: No such label '");
      stdout.write(label);
      stdout.write("' for console.timeEnd()\n");
      return;
    }
    timeLogImpl(label);
    timers.delete(label);
  }
}

function timeLogImpl(label: string): void {
  var start = changetype<u64>(timers.get(label));
  var end = process.hrtime();
  var nanos = end - start;
  var millis = nanos / 1000000;
  var millisStr = millis.toString();
  var stdout = process.stdout;
  stdout.write(label);
  stdout.write(": ");
  stdout.write(millisStr);
  stdout.write("ms\n");
  // __dispose(changetype<usize>(millisStr));
}
