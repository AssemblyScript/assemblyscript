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
  // 0: iovec.buf / nwritten
  // 4: iovec.buf_len
  // 8: buf...
  var off = offsetof<iovec>();
  changetype<iovec>(0).buf = off;
  store<u64>(off, 0x203A74726F6241); off += 7; // Abort:
  for (let i = 0, k = message.length; i < k; ++i) {
    let c = message.charCodeAt(i);
    store<u8>(off++, c >= 32 && c <= 126 ? <u8>c : 0x3F);
  }
  store<u32>(off, 0x206E690A); off += 4; // \nin
  for (let i = 0, k = fileName.length; i < k; ++i) {
    let c = fileName.charCodeAt(i);
    store<u8>(off++, c >= 32 && c <= 126 ? <u8>c : 0x3F);
  }
  store<u8>(off++, 0x28); // (
  var len = decimalCount32(lineNumber); off += len;
  do {
    let t = lineNumber / 10;
    store<u8>(--off, 0x30 + lineNumber % 10);
    lineNumber = t;
  } while (lineNumber); off += len;
  store<u8>(off++, 0x3A); // :
  len = decimalCount32(columnNumber); off += len;
  do {
    let t = columnNumber / 10;
    store<u8>(--off, 0x30 + columnNumber % 10);
    columnNumber = t;
  } while (columnNumber); off += len;
  store<u8>(off++, 0x29); // )
  changetype<iovec>(0).buf_len = off - 8;
  fd_write(/* fd */ 2, 0, 1, 0);
  proc_exit(255);
}
