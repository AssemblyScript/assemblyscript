export class Map<K,V> {

  private __keys: K[] = [];
  private __values: V[] = [];

  // FIXME: not a proper map implementation, just a filler

  get size(): i32 {
    return this.__keys.length;
  }

  get(key: K): V | null {
    var keys = this.__keys;
    for (let i = 0, k = keys.length; i < k; ++i) {
      if (keys[i] == key) {
        return this.__values[i];
      }
    }
    return null;
  }

  has(key: K): bool {
    var keys = this.__keys;
    for (let i = 0, k = keys.length; i < k; ++i) {
      if (keys[i] == key) {
        return true;
      }
    }
    return false;
  }

  set(key: K, value: V): void {
    this.__keys.push(key);
    this.__values.push(value);
  }

  clear(): void {
    this.__keys.length = 0;
    this.__values.length = 0;
  }
}
