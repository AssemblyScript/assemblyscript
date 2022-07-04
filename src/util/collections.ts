/**
 * @fileoverview Various collections utility.
 * @license Apache-2.0
 */

/** Makes a unique map. Typically used to track contextual type arguemnts. */
export function uniqueMap<K,V>(original: Map<K,V> | null = null, overrides: Map<K,V> | null = null): Map<K,V> {
  var cloned = new Map<K,V>();
  if (original) {
    // TODO: for (let [k, v] of original) {
    for (let _keys = Map_keys(original), i = 0, k = _keys.length; i < k; ++i) {
      let k = unchecked(_keys[i]);
      let v = assert(original.get(k));
      cloned.set(k, v);
    }
  }
  if (overrides) {
    // TODO: for (let [k, v] of overrides) {
    for (let _keys = Map_keys(overrides), i = 0, k = _keys.length; i < k; ++i) {
      let k = unchecked(_keys[i]);
      let v = assert(overrides.get(k));
      cloned.set(k, v);
    }
  }
  return cloned;
}

export class BitSet {
  words!: Uint32Array;

  constructor() {
    this.clear();
  }

  get size(): i32 {
    var count = 0;
    var words = this.words;
    for (let i = 0, len = words.length; i < len; i++) {
      count += popcnt(unchecked(words[i]));
    }
    return count;
  }

  add(index: i32): this {
    var idx = index >>> 5;
    if (idx > this.words.length) {
      this.resize(index);
    }
    unchecked(this.words[idx] |= 1 << index);
    return this;
  }

  delete(index: i32): void {
    var idx = index >>> 5;
    var words = this.words;
    if (idx >= words.length) return;
    unchecked(words[idx] &= ~(1 << index));
  }

  has(index: i32): bool {
    var idx = index >>> 5;
    var words = this.words;
    if (idx >= words.length) return false;
    return (unchecked(words[index >>> 5]) & (1 << index)) !== 0;
  }

  clear(): void {
    this.words = new Uint32Array(8);
  }

  private resize(index: i32): void {
    var newWords = new Uint32Array((index + 64) >>> 5);
    newWords.set(this.words);
    this.words = newWords;
  }

  toArray(): i32[] {
    var res = new Array<i32>(this.size);
    for (let i = 0, p = 0, len = this.words.length; i < len; ++i) {
      let word = unchecked(this.words[i]);
      while (word) {
        let mask = word & -word;
        res[p++] = (i << 5) + popcnt(mask - 1);
        word ^= mask;
      }
    }
    return res;
  }

  toString(): string {
    return `BitSet { ${this.toArray()} }`;
  }
}
