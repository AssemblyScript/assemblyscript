import {
  args_get,
  args_sizes_get,
  environ_get,
  environ_sizes_get,
  proc_exit,
  fd_write,
  fd_close,
  fd_read,
  clock_time_get,
  clockid,
  errnoToString
} from "bindings/wasi_snapshot_preview1";

import {
  E_INDEXOUTOFRANGE
} from "util/error";

// @ts-ignore: decorator
@lazy const iobuf = memory.data(4 * sizeof<usize>());

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
    proc_exit(code);
  }

  // @ts-ignore: decorator
  @lazy export const stdin = changetype<ReadableStream>(0);
  // @ts-ignore: decorator
  @lazy export const stdout = changetype<WritableStream>(1);
  // @ts-ignore: decorator
  @lazy export const stderr = changetype<WritableStream>(2);

  export function time(): i64 {
    var err = clock_time_get(clockid.REALTIME, 1000000, iobuf);
    if (err) throw new Error(errnoToString(err));
    return load<u64>(iobuf) / 1000000;
  }

  export function hrtime(): u64 {
    var err = clock_time_get(clockid.MONOTONIC, 0, iobuf);
    if (err) throw new Error(errnoToString(err));
    return load<u64>(iobuf);
  }
}

function lazyArgv(): string[] {
  var err = args_sizes_get(iobuf, iobuf + sizeof<usize>());
  if (err) throw new Error(errnoToString(err));
  var count = load<usize>(iobuf);
  var ptrs = heap.alloc(count * sizeof<usize>());
  var data = heap.alloc(load<usize>(iobuf, sizeof<usize>()));
  err = args_get(ptrs, data);
  if (err) throw new Error(errnoToString(err));
  var count32 = <i32>count;
  var argv = new Array<string>(count32);
  for (let i = 0; i < count32; ++i) {
    let ptr = load<usize>(ptrs + i * sizeof<usize>());
    let str = String.UTF8.decodeUnsafe(ptr, ptr - ptrs, true);
    argv[i] = str;
  }
  heap.free(ptrs);
  heap.free(data);
  return argv;
}

function lazyEnv(): Map<string,string> {
  var err = environ_sizes_get(iobuf, iobuf + 4);
  if (err) throw new Error(errnoToString(err));
  var count = load<usize>(iobuf);
  var ptrs = heap.alloc(count * sizeof<usize>());
  var data = heap.alloc(load<usize>(iobuf, sizeof<usize>()));
  err = environ_get(ptrs, data);
  if (err) throw new Error(errnoToString(err));
  var env = new Map<string,string>();
  for (let i: usize = 0; i < count; ++i) {
    let ptr = load<usize>(ptrs + i * sizeof<usize>());
    let str = String.UTF8.decodeUnsafe(ptr, ptr - ptrs, true);
    let pos = str.indexOf("=");
    if (~pos) {
      env.set(str.substring(0, pos), str.substring(pos + 1));
      // __dispose(changetype<usize>(str));
    } else {
      env.set(str, "");
    }
  }
  return env;
}

@unmanaged
abstract class Stream {
  close(): void {
    var err = fd_close(<u32>changetype<usize>(this));
    if (err) throw new Error(errnoToString(err));
  }
}

@unmanaged
abstract class WritableStream extends Stream {
  write<T>(data: T): void {
    if (isString<T>()) {
      writeString(changetype<usize>(this), changetype<string>(data));
    } else if (data instanceof ArrayBuffer) {
      writeBuffer(changetype<usize>(this), data);
    } else {
      ERROR("String or ArrayBuffer expected");
    }
  }
}

@unmanaged
abstract class ReadableStream extends Stream {
  read(buffer: ArrayBuffer, offset: isize = 0): i32 {
    var end = <usize>buffer.byteLength;
    if (offset < 0 || offset > end) {
      throw new Error(E_INDEXOUTOFRANGE);
    }
    store<usize>(iobuf, changetype<usize>(buffer) + offset);
    store<usize>(iobuf, end - offset, sizeof<usize>());
    var err = fd_read(<u32>changetype<usize>(this), iobuf, 1, iobuf + 2 * sizeof<usize>());
    if (err) throw new Error(errnoToString(err));
    return <i32>load<isize>(iobuf, 2 * sizeof<usize>());
  }
}

function writeBuffer(fd: usize, data: ArrayBuffer): void {
  store<usize>(iobuf, changetype<usize>(data));
  store<usize>(iobuf, data.byteLength, sizeof<usize>());
  var err = fd_write(<u32>fd, iobuf, 1, iobuf + 2 * sizeof<usize>());
  if (err) throw new Error(errnoToString(err));
}

function writeStringFast(fd: usize, char1: i32, char2: i32 = -1): void {
  store<usize>(iobuf, iobuf + 2 * sizeof<usize>());
  store<usize>(iobuf, 1 + i32(char2 != -1), sizeof<usize>());
  store<u16>(iobuf, char1 | ((char2 & 0xff) << 8), 2 * sizeof<usize>());
  var err = fd_write(<u32>fd, iobuf, 1, iobuf + 3 * sizeof<usize>());
  if (err) throw new Error(errnoToString(err));
}

function writeString(fd: usize, data: string): void {
  switch (data.length) {
    case 0: return;
    case 1: { // "\r", "\n"
      let charCode = data.charCodeAt(0);
      if (charCode < 0x80) {
        writeStringFast(fd, charCode);
        return;
      }
      break;
    }
    case 2: { // "\r\n"
      let charCode1 = data.charCodeAt(0);
      let charCode2 = data.charCodeAt(1);
      if ((charCode1 | charCode2) < 0x80) {
        writeStringFast(fd, charCode1, charCode2);
        return;
      }
      break;
    }
  }
  var buf = String.UTF8.encode(data);
  writeBuffer(fd, buf);
  // __dispose(changetype<usize>(buf));
}
