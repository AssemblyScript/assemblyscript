import { crypto as crypto_binding } from "bindings/dom";

export namespace crypto {
  export function getRandomValues(array: Uint8Array): void {
    crypto_binding.getRandomValues(array);
  }
}
