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
    for (let v of original) cloned.add(v);
    return cloned;
  }
  return new Set<V>();
}

export function makeMap<K,V>(original: Map<K,V> | null = null, overrides: Map<K,V> | null = null): Map<K,V> {
  var cloned = new Map<K,V>();
  if (original) {
    for (let [k, v] of original) cloned.set(k, v);
    if (overrides) for (let [k, v] of overrides) cloned.set(k, v);
  } else if (overrides) {
    for (let [k, v] of overrides) cloned.set(k, v);
  }
  return cloned;
}

export function filter<T>(iter: Iterable<T>, func: (t: T) => bool): T[] {
  const res: T[] = [];
  for (let i of iter) {
    if (func(i)) {
      res.push(i);
    }
  }
  return res;
}
export function map<T, R = T>(iter: Iterable<T>, func: (t: T) => R): R[] {
  const res: R[] = [];
  for (let i of iter) {
      res.push(func(i));
  }
  return res;
}

export function notNull<T>(t: T): bool {
  return t != null;
}
