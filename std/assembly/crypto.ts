import {
  errnoToString,
  random_get
} from "bindings/wasi_snapshot_preview1";

import {
  crypto as crypto_binding
} from "bindings/dom";

export namespace crypto {
  export function getRandomValues(array: Uint8Array): void {
    if (isDefined(ASC_WASI)) {
      let err = random_get(changetype<usize>(array.buffer) + <usize>array.byteOffset, <usize>array.byteLength);
      if (err) throw new Error(errnoToString(err));
    } else {
      crypto_binding.getRandomValues(array);
    }
  }
}
