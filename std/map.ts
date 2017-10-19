/// <reference path="../assembly.d.ts" />

@global()
class Map<K,V> {
  private keys: K[];
  private values: V[];

  constructor() {
    this.keys = [];
    this.values = [];
  }

  has(key: K): bool {
    return false;
  }

  set(key: K, value: V): void {
  }

  clear(): void {
  }
}
