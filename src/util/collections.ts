/**
 * @fileoverview Various collections utility.
 * @license Apache-2.0
 */

/** Clone map. Typically used to track contextual type arguments. */
export function cloneMap<K, V>(map: Map<K, V> | null): Map<K, V> {
  if (!ASC_TARGET) {
    // JS
    // fast path for js target
    return new Map<K, V>(map);
  } else {
    let out = new Map<K, V>();
    if (map) {
      // TODO: for (let [k, v] of map) {
      for (let _keys = Map_keys(map), i = 0, k = _keys.length; i < k; ++i) {
        let k = unchecked(_keys[i]);
        let v = assert(map.get(k));
        out.set(k, v);
      }
    }
    return out;
  }
}

/** Merge two maps in into new one. */
export function mergeMaps<K, V>(map1: Map<K, V>, map2: Map<K, V>): Map<K, V> {
  if (!ASC_TARGET) {
    // JS
    let out = new Map<K, V>(map1);
    map2.forEach((v, k) => out.set(k, v));
    return out;
  } else {
    let out = new Map<K, V>();
    // TODO: for (let [k, v] of map1) {
    for (let _keys = Map_keys(map1), i = 0, k = _keys.length; i < k; ++i) {
      let k = unchecked(_keys[i]);
      let v = assert(map1.get(k));
      out.set(k, v);
    }
    // TODO: for (let [k, v] of map2) {
    for (let _keys = Map_keys(map2), i = 0, k = _keys.length; i < k; ++i) {
      let k = unchecked(_keys[i]);
      let v = assert(map2.get(k));
      out.set(k, v);
    }
    return out;
  }
}

/** BitSet represent growable sequence of N bits. It's faster alternative of Set<i32> when elements
 * are not too much sparsed. Also it's more memory and cache efficient than Array<bool>.
 * The best way to use it for short bit sequences (less than 32*(2**16)).
 */
export class BitSet {
  words!: Uint32Array;

  constructor() {
    this.clear();
  }

  get size(): i32 {
    let count = 0;
    let words = this.words;
    for (let i = 0, len = words.length; i < len; i++) {
      let word = unchecked(words[i]);
      if (word) count += popcnt(word);
    }
    return count;
  }

  add(index: i32): this {
    let idx = index >>> 5;
    let words = this.words;
    if (idx >= words.length) {
      // resize
      this.words = new Uint32Array(idx + 16);
      this.words.set(words);
      words = this.words;
    }
    unchecked((words[idx] |= 1 << index));
    return this;
  }

  delete(index: i32): void {
    let idx = index >>> 5;
    let words = this.words;
    if (idx >= words.length) return;
    unchecked((words[idx] &= ~(1 << index)));
  }

  has(index: i32): bool {
    let idx = index >>> 5;
    let words = this.words;
    if (idx >= words.length) return false;
    return (unchecked(words[index >>> 5]) & (1 << index)) !== 0;
  }

  clear(): void {
    this.words = new Uint32Array(16);
  }

  toArray(): i32[] {
    let res = new Array<i32>(this.size);
    for (let i = 0, p = 0, len = this.words.length; i < len; ++i) {
      let word = unchecked(this.words[i]);
      while (word) {
        let mask = word & -word;
        unchecked((res[p++] = (i << 5) + popcnt(mask - 1)));
        word ^= mask;
      }
    }
    return res;
  }

  toString(): string {
    return `BitSet { ${this.toArray()} }`;
  }
}
