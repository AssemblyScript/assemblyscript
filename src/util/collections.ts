/**
 * @fileoverview Various collections utility.
 * @license Apache-2.0
 */

export function makeArray<V>(original: Array<V> | null = null): Array<V> {
  if (original) {
    let len = original.length;
    let cloned = new Array<V>(len);
    for (let i = 0; i < len; ++i) unchecked(cloned[i] = original[i]);
    return cloned;
  }
  return new Array<V>();
}

export function makeSet<V>(original: Set<V> | null = null): Set<V> {
  if (original) {
    let cloned = new Set<V>();
    // TODO: for (let v of original) {
    for (let _values = Set_values(original), i = 0, k = _values.length; i < k; ++i) {
      let v = unchecked(_values[i]);
      cloned.add(v);
    }
    return cloned;
  }
  return new Set<V>();
}

export function makeMap<K,V>(original: Map<K,V> | null = null, overrides: Map<K,V> | null = null): Map<K,V> {
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
