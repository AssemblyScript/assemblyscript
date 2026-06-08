// Opaque CryptoKey wrapping a per-request host keystore handle. Handles are
// only valid within the request that created them (the host keystore is reset
// between requests), so a CryptoKey must not be cached across dispatches.

import { algName } from "crypto/algorithms";

export class CryptoKey {
  readonly handle: i32;
  readonly type: string; // "secret" | "public" | "private"
  readonly extractable: bool;
  readonly algorithm: i32; // ALG_*
  readonly usages: i32; // USAGE_* bitmask

  constructor(handle: i32, type: string, extractable: bool, algorithm: i32, usages: i32) {
    this.handle = handle;
    this.type = type;
    this.extractable = extractable;
    this.algorithm = algorithm;
    this.usages = usages;
  }

  algorithmName(): string {
    return algName(this.algorithm);
  }

  hasUsage(u: i32): bool {
    return (this.usages & u) != 0;
  }
}

export class CryptoKeyPair {
  readonly publicKey: CryptoKey;
  readonly privateKey: CryptoKey;
  constructor(publicKey: CryptoKey, privateKey: CryptoKey) {
    this.publicKey = publicKey;
    this.privateKey = privateKey;
  }
}
