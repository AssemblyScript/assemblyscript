import {
  errnoToString,
  random_get
} from "bindings/wasi_snapshot_preview1";

export namespace crypto {
  export function getRandomValues(array: Uint8Array): void {
    var err = random_get(changetype<usize>(array.buffer) + <usize>array.byteOffset, <usize>array.byteLength);
    if (err) throw new Error(errnoToString(err));
  }
}
