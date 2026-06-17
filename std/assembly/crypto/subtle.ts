// Synchronous SubtleCrypto. Mirrors the Web Crypto method names but, because
// ToilScript has no Promises, every method returns its value directly rather
// than a Promise. Variable-length results use the two-step pull (op returns
// the length, then `take_result` copies the bytes out).

import { webcrypto } from "bindings/webcrypto";
import { CryptoKey } from "crypto/key";
import {
  AlgorithmParams,
  cryptoError,
  FMT_RAW,
  FMT_PKCS8,
  FMT_SPKI,
  FMT_JWK,
  ALG_AES_GCM,
  ALG_AES_CBC,
  ALG_AES_CTR,
  ALG_AES_KW,
  ALG_HMAC,
  ALG_PBKDF2,
  ALG_HKDF,
} from "crypto/algorithms";

/// Pull a stashed variable-length result out of the host, or throw on error.
function drain(len: i32): Uint8Array {
  if (len < 0) throw new Error(cryptoError(len));
  let out = new Uint8Array(len);
  if (len > 0) webcrypto.takeResult(out.dataStart, len);
  return out;
}

function isSymmetricAlg(alg: i32): bool {
  return (
    alg == ALG_AES_GCM ||
    alg == ALG_AES_CBC ||
    alg == ALG_AES_CTR ||
    alg == ALG_AES_KW ||
    alg == ALG_HMAC ||
    alg == ALG_PBKDF2 ||
    alg == ALG_HKDF
  );
}

export class SubtleCrypto {
  // `algorithm` is a hash-id selector: an `ALG_SHA_*` const (NOT a magic string).
  digest(algorithm: i32, data: Uint8Array): Uint8Array {
    return drain(webcrypto.digest(algorithm, data.dataStart, data.byteLength));
  }

  // `format` is an `FMT_*` selector const (FMT_RAW / FMT_PKCS8 / FMT_SPKI).
  importKey(
    format: i32,
    keyData: Uint8Array,
    algorithm: AlgorithmParams,
    extractable: bool,
    usages: i32
  ): CryptoKey {
    if (format == FMT_JWK) throw new Error("jwk key format is not supported");
    let p = algorithm.pack();
    let alg = load<i32>(p.dataStart); // first packed field is the alg id
    let handle = webcrypto.importKey(
      format,
      keyData.dataStart,
      keyData.byteLength,
      p.dataStart,
      p.byteLength,
      extractable ? 1 : 0,
      usages
    );
    if (handle < 0) throw new Error(cryptoError(handle));

    let type: string;
    if (format == FMT_PKCS8) type = "private";
    else if (format == FMT_SPKI) type = "public";
    else type = isSymmetricAlg(alg) ? "secret" : "public";

    return new CryptoKey(handle, type, extractable, alg, usages);
  }

  // `format` is an `FMT_*` selector const (FMT_RAW / FMT_PKCS8 / FMT_SPKI).
  exportKey(format: i32, key: CryptoKey): Uint8Array {
    if (format == FMT_JWK) throw new Error("jwk key format is not supported");
    return drain(webcrypto.exportKey(format, key.handle));
  }

  encrypt(algorithm: AlgorithmParams, key: CryptoKey, data: Uint8Array): Uint8Array {
    let p = algorithm.pack();
    return drain(
      webcrypto.encrypt(key.handle, p.dataStart, p.byteLength, data.dataStart, data.byteLength)
    );
  }

  decrypt(algorithm: AlgorithmParams, key: CryptoKey, data: Uint8Array): Uint8Array {
    let p = algorithm.pack();
    return drain(
      webcrypto.decrypt(key.handle, p.dataStart, p.byteLength, data.dataStart, data.byteLength)
    );
  }

  sign(algorithm: AlgorithmParams, key: CryptoKey, data: Uint8Array): Uint8Array {
    let p = algorithm.pack();
    return drain(
      webcrypto.sign(key.handle, p.dataStart, p.byteLength, data.dataStart, data.byteLength)
    );
  }

  verify(
    algorithm: AlgorithmParams,
    key: CryptoKey,
    signature: Uint8Array,
    data: Uint8Array
  ): bool {
    let p = algorithm.pack();
    let r = webcrypto.verify(
      key.handle,
      p.dataStart,
      p.byteLength,
      signature.dataStart,
      signature.byteLength,
      data.dataStart,
      data.byteLength
    );
    if (r < 0) throw new Error(cryptoError(r));
    return r == 1;
  }

  /// Derive `length` bits from `baseKey` (PBKDF2/HKDF/ECDH/X25519).
  deriveBits(algorithm: AlgorithmParams, baseKey: CryptoKey, length: i32): Uint8Array {
    let p = algorithm.pack();
    return drain(webcrypto.deriveBits(baseKey.handle, p.dataStart, p.byteLength, length));
  }

  /// Composed from deriveBits + importKey. Unlike the web API, the derived bit
  /// length is passed explicitly (`lengthBits`) since ToilScript can't infer
  /// it from `derivedKeyAlgorithm` the way the spec does.
  deriveKey(
    algorithm: AlgorithmParams,
    baseKey: CryptoKey,
    lengthBits: i32,
    derivedKeyAlgorithm: AlgorithmParams,
    extractable: bool,
    usages: i32
  ): CryptoKey {
    let bits = this.deriveBits(algorithm, baseKey, lengthBits);
    return this.importKey(FMT_RAW, bits, derivedKeyAlgorithm, extractable, usages);
  }
}
