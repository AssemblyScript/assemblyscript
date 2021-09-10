import {
  proc_exit,
  fd_write,
  iovec,
  random_get,
  tempbuf
} from "bindings/wasi";

import {
  MAX_DOUBLE_LENGTH,
  decimalCount32,
  dtoa_buffered
} from "util/number";

// @ts-ignore: decorator
@global @inline const ASC_WASI = true; // eslint-disable-line @typescript-eslint/no-unused-vars

function abort( // eslint-disable-line @typescript-eslint/no-unused-vars
  message: string | null = null,
  fileName: string | null = null,
  lineNumber: u32 = 0,
  columnNumber: u32 = 0
): void {
  // 0: iov.buf
  // 4: iov.buf_len
  // 8: len
  // 12: buf...
  const iovPtr: usize = 0;
  const lenPtr: usize = iovPtr + offsetof<iovec>();
  const bufPtr: usize = lenPtr + sizeof<usize>();
  changetype<iovec>(iovPtr).buf = bufPtr;
  var ptr = bufPtr;
  store<u64>(ptr, 0x203A74726F6261); ptr += 7; // 'abort: '
  if (message !== null) {
    ptr += String.UTF8.encodeUnsafe(changetype<usize>(message), message.length, ptr);
  }
  store<u32>(ptr, 0x206E6920); ptr += 4; // ' in '
  if (fileName !== null) {
    ptr += String.UTF8.encodeUnsafe(changetype<usize>(fileName), fileName.length, ptr);
  }
  store<u8>(ptr++, 0x28); // (
  var len = decimalCount32(lineNumber); ptr += len;
  do {
    let t = lineNumber / 10;
    store<u8>(--ptr, 0x30 + lineNumber % 10);
    lineNumber = t;
  } while (lineNumber); ptr += len;
  store<u8>(ptr++, 0x3A); // :
  len = decimalCount32(columnNumber); ptr += len;
  do {
    let t = columnNumber / 10;
    store<u8>(--ptr, 0x30 + columnNumber % 10);
    columnNumber = t;
  } while (columnNumber); ptr += len;
  store<u16>(ptr, 0x0A29); ptr += 2; // )\n
  changetype<iovec>(iovPtr).buf_len = ptr - bufPtr;
  fd_write(2, iovPtr, 1, lenPtr);
  proc_exit(255);
}

function trace( // eslint-disable-line @typescript-eslint/no-unused-vars
  message: string,
  n: i32 = 0,
  a0: f64 = 0,
  a1: f64 = 0,
  a2: f64 = 0,
  a3: f64 = 0,
  a4: f64 = 0
): void {
  // 0: iov.buf
  // 4: iov.buf_len
  // 8: len
  // 12: buf...
  var iovPtr = __alloc(offsetof<iovec>() + sizeof<usize>() + 1 + <usize>(max(String.UTF8.byteLength(message), MAX_DOUBLE_LENGTH << 1)));
  var lenPtr = iovPtr + offsetof<iovec>();
  var bufPtr = lenPtr + sizeof<usize>();
  changetype<iovec>(iovPtr).buf = bufPtr;
  store<u64>(bufPtr, 0x203A6563617274); // 'trace: '
  changetype<iovec>(iovPtr).buf_len = 7;
  fd_write(2, iovPtr, 1, lenPtr);
  changetype<iovec>(iovPtr).buf_len = String.UTF8.encodeUnsafe(changetype<usize>(message), message.length, bufPtr);
  fd_write(2, iovPtr, 1, lenPtr);
  if (n) {
    store<u8>(bufPtr++, 0x20); // space
    changetype<iovec>(iovPtr).buf_len = 1 + String.UTF8.encodeUnsafe(bufPtr, dtoa_buffered(bufPtr, a0), bufPtr);
    fd_write(2, iovPtr, 1, lenPtr);
    if (n > 1) {
      changetype<iovec>(iovPtr).buf_len = 1 + String.UTF8.encodeUnsafe(bufPtr, dtoa_buffered(bufPtr, a1), bufPtr);
      fd_write(2, iovPtr, 1, lenPtr);
      if (n > 2) {
        changetype<iovec>(iovPtr).buf_len = 1 + String.UTF8.encodeUnsafe(bufPtr, dtoa_buffered(bufPtr, a2), bufPtr);
        fd_write(2, iovPtr, 1, lenPtr);
        if (n > 3) {
          changetype<iovec>(iovPtr).buf_len = 1 + String.UTF8.encodeUnsafe(bufPtr, dtoa_buffered(bufPtr, a3), bufPtr);
          fd_write(2, iovPtr, 1, lenPtr);
          if (n > 4) {
            changetype<iovec>(iovPtr).buf_len = 1 + String.UTF8.encodeUnsafe(bufPtr, dtoa_buffered(bufPtr, a4), bufPtr);
            fd_write(2, iovPtr, 1, lenPtr);
          }
        }
      }
    }
    --bufPtr;
  }
  store<u8>(bufPtr, 0x0A); // \n
  changetype<iovec>(iovPtr).buf_len = 1;
  fd_write(2, iovPtr, 1, lenPtr);
  __free(iovPtr);
}

function seed(): f64 { // eslint-disable-line @typescript-eslint/no-unused-vars
  var rand: u64;
  do {
    random_get(tempbuf, 8);
    rand = load<u64>(tempbuf);
  } while (!rand);
  return reinterpret<f64>(rand);
}

export * from "bindings/wasi";
