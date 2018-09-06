export class MultiMap<K, V> {
  private map = new Map<K, V[]>();

  add(key: K, value: V): void {
    const all = this.map.get(key);
    if (all) {
      if (!all.includes(value)) {
        all.push(value);
      }
    } else {
      this.map.set(key, [value]);
    }
  }

  get(t: K): V[] {
    return this.map.get(t) || [];
  }

  [Symbol.iterator](): Iterator<[K, V[]]> {
    return this.map[Symbol.iterator]();
  }
}
