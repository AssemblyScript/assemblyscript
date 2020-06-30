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
