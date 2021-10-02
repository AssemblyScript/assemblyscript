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
  errnoToString,
  fd,
  tempbuf
} from "bindings/wasi";

import {
  E_INDEXOUTOFRANGE
} from "util/error";

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
    var err = clock_time_get(clockid.REALTIME, 1000000, tempbuf);
    if (err) throw new Error(errnoToString(err));
    return load<u64>(tempbuf) / 1000000;
  }

  export function hrtime(): u64 {
    var err = clock_time_get(clockid.MONOTONIC, 0, tempbuf);
    if (err) throw new Error(errnoToString(err));
    return load<u64>(tempbuf);
  }
}

function lazyArgv(): string[] {
  var err = args_sizes_get(tempbuf, tempbuf + sizeof<usize>());
  if (err) throw new Error(errnoToString(err));
  var count = load<usize>(tempbuf);
  var ptrsSize = count * sizeof<usize>();
  var dataSize = load<usize>(tempbuf, sizeof<usize>());
  var bufSize = ptrsSize + dataSize;
  var buf = __alloc(bufSize);
  err = args_get(buf, buf + ptrsSize);
  if (err) throw new Error(errnoToString(err));
  var count32 = <i32>count;
  var argv = new Array<string>(count32);
  for (let i = 0; i < count32; ++i) {
    let ptr = load<usize>(buf + i * sizeof<usize>());
    let str = String.UTF8.decodeUnsafe(ptr, ptr + bufSize - buf, true);
    argv[i] = str;
  }
  __free(buf);
  return argv;
}

function lazyEnv(): Map<string,string> {
  var err = environ_sizes_get(tempbuf, tempbuf + 4);
  if (err) throw new Error(errnoToString(err));
  var count = load<usize>(tempbuf);
  var ptrsSize = count * sizeof<usize>();
  var dataSize = load<usize>(tempbuf, sizeof<usize>());
  var bufSize = ptrsSize + dataSize;
  var buf = __alloc(bufSize);
  err = environ_get(buf, buf + ptrsSize);
  if (err) throw new Error(errnoToString(err));
  var env = new Map<string,string>();
  for (let i: usize = 0; i < count; ++i) {
    let ptr = load<usize>(buf + i * sizeof<usize>());
    let str = String.UTF8.decodeUnsafe(ptr, ptr + bufSize - buf, true);
    let pos = str.indexOf("=");
    if (~pos) {
      env.set(str.substring(0, pos), str.substring(pos + 1));
      // __dispose(changetype<usize>(str));
    } else {
      env.set(str, "");
    }
  }
  __free(buf);
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
      writeString(<u32>changetype<usize>(this), changetype<string>(data));
    } else if (data instanceof ArrayBuffer) {
      writeBuffer(<u32>changetype<usize>(this), data);
    } else {
      ERROR("String or ArrayBuffer expected");
    }
  }
}

@unmanaged
abstract class ReadableStream extends Stream {
  read(buffer: ArrayBuffer, offset: isize = 0): i32 {
    var end = <usize>buffer.byteLength;
    if (offset < 0 || <usize>offset > end) {
      throw new Error(E_INDEXOUTOFRANGE);
    }
    store<usize>(tempbuf, changetype<usize>(buffer) + offset);
    store<usize>(tempbuf, end - offset, sizeof<usize>());
    var err = fd_read(<u32>changetype<usize>(this), tempbuf, 1, tempbuf + 2 * sizeof<usize>());
    if (err) throw new Error(errnoToString(err));
    return <i32>load<isize>(tempbuf, 2 * sizeof<usize>());
  }
}

function writeBuffer(fd: fd, data: ArrayBuffer): void {
  store<usize>(tempbuf, changetype<usize>(data));
  store<usize>(tempbuf, data.byteLength, sizeof<usize>());
  var err = fd_write(<u32>fd, tempbuf, 1, tempbuf + 2 * sizeof<usize>());
  if (err) throw new Error(errnoToString(err));
}

function writeString(fd: fd, data: string): void {
  var len = data.length;
  var
    char2: u32 = 0,
    char3: u32 = 0,
    char4: u32 = 0;
  switch (len) {
    case 4: { // "null"
      char4 = <u32>load<u16>(changetype<usize>(data), 6);
      if (char4 >= 0x80) break;
    }
    case 3: { // "ms\n"
      char3 = <u32>load<u16>(changetype<usize>(data), 4);
      if (char3 >= 0x80) break;
    }
    case 2: { // "\r\n"
      char2 = <u32>load<u16>(changetype<usize>(data), 2);
      if (char2 >= 0x80) break;
    }
    case 1: { // "\n"
      let char1 = <u32>load<u16>(changetype<usize>(data));
      if (char1 >= 0x80) break;
      store<usize>(tempbuf, tempbuf + 2 * sizeof<usize>());
      store<usize>(tempbuf, len, sizeof<usize>());
      store<u32>(tempbuf, char1 | char2 << 8 | char3 << 16 | char4 << 24, 2 * sizeof<usize>());
      let err = fd_write(<u32>fd, tempbuf, 1, tempbuf + 3 * sizeof<usize>());
      if (err) throw new Error(errnoToString(err));
    }
    case 0: return;
  }
  var utf8len = <usize>String.UTF8.byteLength(data);
  var utf8buf = __alloc(utf8len);
  assert(String.UTF8.encodeUnsafe(changetype<usize>(data), len, utf8buf) == utf8len);
  store<usize>(tempbuf, utf8buf);
  store<usize>(tempbuf, utf8len, sizeof<usize>());
  var err = fd_write(<u32>fd, tempbuf, 1, tempbuf + 2 * sizeof<usize>());
  __free(utf8buf);
  if (err) throw new Error(errnoToString(err));
}
