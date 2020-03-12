import {
  proc_exit,
  fd_write,
  iovec
} from "./wasi_snapshot_preview1";

import {
  decimalCount32
} from "util/number";

export * from "./wasi_snapshot_preview1";

/** A WASI-aware abort implementation. */
// @ts-ignore: decorator
export function abort(
  message: string = "",
  fileName: string = "",
  lineNumber: u32 = 0,
  columnNumber: u32 = 0
): void {
  // 0: iovec.buf
  // 4: iovec.buf_len
  // 8: nwritten
  // 12: buf...
  const iovPtr: usize = 0;
  const bufPtr: usize = iovPtr + offsetof<iovec>() + sizeof<usize>();
  changetype<iovec>(iovPtr).buf = bufPtr;
  var ptr = bufPtr;
  store<u64>(ptr, 0x203A74726F6241); ptr += 7; // Abort:
  ptr += String.UTF8.encodeUnsafe(message, ptr);
  store<u32>(ptr, 0x206E690A); ptr += 4; // \nin
  ptr += String.UTF8.encodeUnsafe(fileName, ptr);
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
  store<u8>(ptr++, 0x29); // )
  changetype<iovec>(iovPtr).buf_len = ptr - bufPtr;
  fd_write(2, iovPtr, 1, offsetof<iovec>());
  proc_exit(255);
}
