// The Web Crypto ABI contract: algorithm / format / curve ids, usage flags,
// error codes, and the packed-parameter classes. This is the single source of
// truth that the toil-backend Rust host and the toiljs dev mock mirror.
//
// Parameterized algorithms can't ride in plain scalars (AssemblyScript has no
// object literals across the host boundary), so each `*Params` class serializes
// itself into one little-endian buffer via `DataWriter` (whose `writeBytes`
// emits a u32 length prefix + bytes — the blob format the host reads).

import { DataWriter } from "data";

// --- Algorithm ids (also used as the inner-hash id for HMAC/ECDSA/KDF) ------
export const ALG_SHA_1: i32 = 1;
export const ALG_SHA_256: i32 = 2;
export const ALG_SHA_384: i32 = 3;
export const ALG_SHA_512: i32 = 4;
export const ALG_SHA3_256: i32 = 5;
export const ALG_SHA3_384: i32 = 6;
export const ALG_SHA3_512: i32 = 7;
export const ALG_AES_GCM: i32 = 10;
export const ALG_AES_CBC: i32 = 11;
export const ALG_AES_CTR: i32 = 12;
export const ALG_AES_KW: i32 = 13;
export const ALG_HMAC: i32 = 20;
export const ALG_ECDSA: i32 = 32;
export const ALG_ED25519: i32 = 33;
export const ALG_ECDH: i32 = 50;
export const ALG_X25519: i32 = 51;
export const ALG_HKDF: i32 = 52;
export const ALG_PBKDF2: i32 = 53;

// --- Key formats ------------------------------------------------------------
export const FMT_RAW: i32 = 0;
export const FMT_PKCS8: i32 = 1;
export const FMT_SPKI: i32 = 2;
export const FMT_JWK: i32 = 3; // not supported (throws guest-side)

// --- Named curves -----------------------------------------------------------
export const CURVE_P256: i32 = 1;
export const CURVE_P384: i32 = 2;
export const CURVE_P521: i32 = 3; // not supported

// --- Key-usage bit flags (OR together) --------------------------------------
export const USAGE_ENCRYPT: i32 = 0x01;
export const USAGE_DECRYPT: i32 = 0x02;
export const USAGE_SIGN: i32 = 0x04;
export const USAGE_VERIFY: i32 = 0x08;
export const USAGE_DERIVE_KEY: i32 = 0x10;
export const USAGE_DERIVE_BITS: i32 = 0x20;
export const USAGE_WRAP_KEY: i32 = 0x40;
export const USAGE_UNWRAP_KEY: i32 = 0x80;

function asciiUpper(s: string): string {
  let out = "";
  for (let i = 0; i < s.length; i++) {
    let c = s.charCodeAt(i);
    if (c >= 97 && c <= 122) c -= 32;
    out += String.fromCharCode(c);
  }
  return out;
}

/// Map a Web Crypto algorithm name (case-insensitive) to its id, or 0.
export function algId(name: string): i32 {
  let n = asciiUpper(name);
  if (n == "SHA-1") return ALG_SHA_1;
  if (n == "SHA-256") return ALG_SHA_256;
  if (n == "SHA-384") return ALG_SHA_384;
  if (n == "SHA-512") return ALG_SHA_512;
  if (n == "SHA3-256") return ALG_SHA3_256;
  if (n == "SHA3-384") return ALG_SHA3_384;
  if (n == "SHA3-512") return ALG_SHA3_512;
  if (n == "AES-GCM") return ALG_AES_GCM;
  if (n == "AES-CBC") return ALG_AES_CBC;
  if (n == "AES-CTR") return ALG_AES_CTR;
  if (n == "AES-KW") return ALG_AES_KW;
  if (n == "HMAC") return ALG_HMAC;
  if (n == "ECDSA") return ALG_ECDSA;
  if (n == "ED25519") return ALG_ED25519;
  if (n == "ECDH") return ALG_ECDH;
  if (n == "X25519") return ALG_X25519;
  if (n == "HKDF") return ALG_HKDF;
  if (n == "PBKDF2") return ALG_PBKDF2;
  return 0;
}

/// Reverse of {@link algId}, for `CryptoKey.algorithmName`.
export function algName(id: i32): string {
  if (id == ALG_SHA_1) return "SHA-1";
  if (id == ALG_SHA_256) return "SHA-256";
  if (id == ALG_SHA_384) return "SHA-384";
  if (id == ALG_SHA_512) return "SHA-512";
  if (id == ALG_AES_GCM) return "AES-GCM";
  if (id == ALG_AES_CBC) return "AES-CBC";
  if (id == ALG_AES_CTR) return "AES-CTR";
  if (id == ALG_AES_KW) return "AES-KW";
  if (id == ALG_HMAC) return "HMAC";
  if (id == ALG_ECDSA) return "ECDSA";
  if (id == ALG_ED25519) return "Ed25519";
  if (id == ALG_ECDH) return "ECDH";
  if (id == ALG_X25519) return "X25519";
  if (id == ALG_HKDF) return "HKDF";
  if (id == ALG_PBKDF2) return "PBKDF2";
  return "unknown";
}

/// Map a key-format name to its id, or -1.
export function formatId(name: string): i32 {
  let n = asciiUpper(name);
  if (n == "RAW") return FMT_RAW;
  if (n == "PKCS8") return FMT_PKCS8;
  if (n == "SPKI") return FMT_SPKI;
  if (n == "JWK") return FMT_JWK;
  return -1;
}

/// Map a named-curve string to its id, or 0.
export function curveId(name: string): i32 {
  let n = asciiUpper(name);
  if (n == "P-256") return CURVE_P256;
  if (n == "P-384") return CURVE_P384;
  if (n == "P-521") return CURVE_P521;
  return 0;
}

/// Decode a negative host error code into a human-readable message.
export function cryptoError(code: i32): string {
  if (code == -1) return "crypto: operation failed";
  if (code == -2) return "crypto: invalid key handle";
  if (code == -3) return "crypto: unsupported algorithm";
  if (code == -4) return "crypto: invalid parameters";
  if (code == -5) return "crypto: operation failed (bad tag, padding, or key)";
  if (code == -6) return "crypto: key usage not permitted";
  if (code == -7) return "crypto: key is not extractable";
  return "crypto: error " + code.toString();
}

const EMPTY: Uint8Array = new Uint8Array(0);

// --- Parameter classes ------------------------------------------------------

/// Base for every algorithm-parameter object. Subclasses write a fixed
/// `(algId, hash)` header followed by their tail.
export abstract class AlgorithmParams {
  abstract serialize(w: DataWriter): void;
  /// Pack into a standalone little-endian buffer for the host.
  pack(): Uint8Array {
    let w = new DataWriter();
    this.serialize(w);
    return w.toBytes();
  }
}

export class AesGcmParams extends AlgorithmParams {
  iv: Uint8Array;
  additionalData: Uint8Array;
  tagLength: i32;
  constructor(iv: Uint8Array, additionalData: Uint8Array = EMPTY, tagLength: i32 = 128) {
    super();
    this.iv = iv;
    this.additionalData = additionalData;
    this.tagLength = tagLength;
  }
  serialize(w: DataWriter): void {
    w.writeI32(ALG_AES_GCM);
    w.writeI32(0);
    w.writeBytes(this.iv);
    w.writeI32(this.tagLength);
    w.writeBytes(this.additionalData);
  }
}

export class AesCbcParams extends AlgorithmParams {
  iv: Uint8Array;
  constructor(iv: Uint8Array) {
    super();
    this.iv = iv;
  }
  serialize(w: DataWriter): void {
    w.writeI32(ALG_AES_CBC);
    w.writeI32(0);
    w.writeBytes(this.iv);
  }
}

export class AesCtrParams extends AlgorithmParams {
  counter: Uint8Array;
  length: i32; // counter length in bits (must be 128)
  constructor(counter: Uint8Array, length: i32 = 128) {
    super();
    this.counter = counter;
    this.length = length;
  }
  serialize(w: DataWriter): void {
    w.writeI32(ALG_AES_CTR);
    w.writeI32(0);
    w.writeBytes(this.counter);
    w.writeI32(this.length);
  }
}

/// HMAC key import: carries the inner hash id.
export class HmacImportParams extends AlgorithmParams {
  hash: i32;
  constructor(hash: i32) {
    super();
    this.hash = hash;
  }
  serialize(w: DataWriter): void {
    w.writeI32(ALG_HMAC);
    w.writeI32(this.hash);
  }
}

/// HMAC sign/verify: the hash is taken from the key.
export class HmacParams extends AlgorithmParams {
  serialize(w: DataWriter): void {
    w.writeI32(ALG_HMAC);
    w.writeI32(0);
  }
}

export class Pbkdf2Params extends AlgorithmParams {
  hash: i32;
  salt: Uint8Array;
  iterations: u32;
  constructor(hash: i32, salt: Uint8Array, iterations: u32) {
    super();
    this.hash = hash;
    this.salt = salt;
    this.iterations = iterations;
  }
  serialize(w: DataWriter): void {
    w.writeI32(ALG_PBKDF2);
    w.writeI32(this.hash);
    w.writeU32(this.iterations);
    w.writeBytes(this.salt);
  }
}

export class HkdfParams extends AlgorithmParams {
  hash: i32;
  salt: Uint8Array;
  info: Uint8Array;
  constructor(hash: i32, salt: Uint8Array, info: Uint8Array = EMPTY) {
    super();
    this.hash = hash;
    this.salt = salt;
    this.info = info;
  }
  serialize(w: DataWriter): void {
    w.writeI32(ALG_HKDF);
    w.writeI32(this.hash);
    w.writeBytes(this.salt);
    w.writeBytes(this.info);
  }
}

/// ECDSA sign/verify: carries the hash (P-256↔SHA-256, P-384↔SHA-384).
export class EcdsaParams extends AlgorithmParams {
  hash: i32;
  constructor(hash: i32) {
    super();
    this.hash = hash;
  }
  serialize(w: DataWriter): void {
    w.writeI32(ALG_ECDSA);
    w.writeI32(this.hash);
  }
}

/// EC key import (ECDSA or ECDH): carries the named curve.
export class EcKeyImportParams extends AlgorithmParams {
  alg: i32; // ALG_ECDSA or ALG_ECDH
  namedCurve: i32;
  constructor(alg: i32, namedCurve: i32) {
    super();
    this.alg = alg;
    this.namedCurve = namedCurve;
  }
  serialize(w: DataWriter): void {
    w.writeI32(this.alg);
    w.writeI32(0);
    w.writeI32(this.namedCurve);
  }
}

export class Ed25519Params extends AlgorithmParams {
  serialize(w: DataWriter): void {
    w.writeI32(ALG_ED25519);
    w.writeI32(0);
  }
}

export class X25519ImportParams extends AlgorithmParams {
  serialize(w: DataWriter): void {
    w.writeI32(ALG_X25519);
    w.writeI32(0);
  }
}

/// ECDH / X25519 deriveBits: carries the peer public key handle.
export class EcdhParams extends AlgorithmParams {
  alg: i32; // ALG_ECDH or ALG_X25519
  publicKeyHandle: i32;
  constructor(alg: i32, publicKeyHandle: i32) {
    super();
    this.alg = alg;
    this.publicKeyHandle = publicKeyHandle;
  }
  serialize(w: DataWriter): void {
    w.writeI32(this.alg);
    w.writeI32(0);
    w.writeI32(this.publicKeyHandle);
  }
}
