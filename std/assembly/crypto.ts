// Web Crypto for ToilScript — a synchronous SubtleCrypto plus ergonomic
// helpers, backed by metered host functions (see `bindings/webcrypto.ts` and
// the toil-backend `crypto` host module).
//
// Deviations from the web spec (ToilScript has no Promises): every method is
// synchronous and returns its value directly. Algorithm parameters are small
// classes (e.g. `AesGcmParams`) rather than object literals, and key usages are
// an i32 bitmask. RSA, on-host key generation, and the `jwk` format are not
// provided (RSA was dropped for an unfixable timing side-channel in the only
// pure-Rust implementation; keys are imported, never generated on-host).

import { webcrypto } from "bindings/webcrypto";
import { SubtleCrypto } from "crypto/subtle";
import { HmacImportParams, HmacParams, ALG_SHA_256, USAGE_SIGN } from "crypto/algorithms";
import { Encoding } from "encoding";

// Re-export the public surface so guests can import everything from "crypto".
export { SubtleCrypto } from "./crypto/subtle";
export { CryptoKey, CryptoKeyPair } from "./crypto/key";
export {
  AlgorithmParams,
  AesGcmParams,
  AesCbcParams,
  AesCtrParams,
  HmacImportParams,
  HmacParams,
  Pbkdf2Params,
  HkdfParams,
  EcdsaParams,
  EcKeyImportParams,
  Ed25519Params,
  X25519ImportParams,
  EcdhParams,
  algId,
  algName,
  formatId,
  curveId,
  cryptoError,
  ALG_SHA_1,
  ALG_SHA_256,
  ALG_SHA_384,
  ALG_SHA_512,
  ALG_AES_GCM,
  ALG_AES_CBC,
  ALG_AES_CTR,
  ALG_AES_KW,
  ALG_HMAC,
  ALG_ECDSA,
  ALG_ED25519,
  ALG_ECDH,
  ALG_X25519,
  ALG_HKDF,
  ALG_PBKDF2,
  CURVE_P256,
  CURVE_P384,
  USAGE_ENCRYPT,
  USAGE_DECRYPT,
  USAGE_SIGN,
  USAGE_VERIFY,
  USAGE_DERIVE_KEY,
  USAGE_DERIVE_BITS,
  USAGE_WRAP_KEY,
  USAGE_UNWRAP_KEY,
} from "./crypto/algorithms";

function utf8Bytes(s: string): Uint8Array {
  return Uint8Array.wrap(String.UTF8.encode(s));
}

export namespace crypto {
  /// The synchronous SubtleCrypto singleton. `@lazy` defers initialization to
  /// first use so accessing `crypto.subtle` from global scope (without an
  /// explicit import of "crypto") doesn't hit a cross-module init-order error.
  // @ts-ignore: decorator
  @lazy export const subtle: SubtleCrypto = new SubtleCrypto();

  /// Fill `array` with cryptographically strong random bytes.
  export function getRandomValues(array: Uint8Array): void {
    webcrypto.fillRandom(array.dataStart, array.byteLength);
  }

  /// An RFC 4122 version-4 UUID string.
  export function randomUUID(): string {
    let b = new Uint8Array(16);
    webcrypto.randomUuid(b.dataStart);
    b[6] = (b[6] & 0x0f) | 0x40; // version 4
    b[8] = (b[8] & 0x3f) | 0x80; // variant 10
    let h = toHex(b);
    return (
      h.substring(0, 8) +
      "-" +
      h.substring(8, 12) +
      "-" +
      h.substring(12, 16) +
      "-" +
      h.substring(16, 20) +
      "-" +
      h.substring(20, 32)
    );
  }

  // --- Ergonomic digest helpers (thin wrappers over subtle.digest) ----------
  export function sha1(data: Uint8Array): Uint8Array {
    return subtle.digest("SHA-1", data);
  }
  export function sha256(data: Uint8Array): Uint8Array {
    return subtle.digest("SHA-256", data);
  }
  export function sha384(data: Uint8Array): Uint8Array {
    return subtle.digest("SHA-384", data);
  }
  export function sha512(data: Uint8Array): Uint8Array {
    return subtle.digest("SHA-512", data);
  }

  // String-input variants (UTF-8 encode, then hash).
  export function sha1Text(s: string): Uint8Array {
    return sha1(utf8Bytes(s));
  }
  export function sha256Text(s: string): Uint8Array {
    return sha256(utf8Bytes(s));
  }
  export function sha384Text(s: string): Uint8Array {
    return sha384(utf8Bytes(s));
  }
  export function sha512Text(s: string): Uint8Array {
    return sha512(utf8Bytes(s));
  }

  /// One-shot HMAC-SHA-256 over raw key + message bytes.
  export function hmacSha256(key: Uint8Array, msg: Uint8Array): Uint8Array {
    let k = subtle.importKey("raw", key, new HmacImportParams(ALG_SHA_256), false, USAGE_SIGN);
    return subtle.sign(new HmacParams(), k, msg);
  }
  export function hmacSha256Text(key: Uint8Array, msg: string): Uint8Array {
    return hmacSha256(key, utf8Bytes(msg));
  }

  /// Lowercase hex string of `bytes` (handy for displaying digests).
  export function toHex(bytes: Uint8Array): string {
    let hexLen = bytes.length * 2;
    if (hexLen == 0) return "";
    let dst = new Uint8Array(hexLen);
    Encoding.Hex.encode(bytes.dataStart, bytes.length, dst.dataStart);
    return String.UTF8.decode(dst.buffer);
  }
}
