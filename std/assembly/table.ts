import { E_NOTIMPLEMENTED } from "./util/error";

export namespace table {

  export function copy(dst: u32, src: u32, n: u32): void {
    throw new Error(E_NOTIMPLEMENTED);
  }

  export function init(elementIndex: u32, srcOffset: u32, dstOffset: u32, n: u32): void {
    throw new Error(E_NOTIMPLEMENTED);
  }

  export function drop(elementIndex: u32): void {
    throw new Error(E_NOTIMPLEMENTED);
  }
}
