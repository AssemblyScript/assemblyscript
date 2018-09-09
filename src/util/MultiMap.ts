export function multiMapAdd<K, V>(map: Map<K, V[]>, key: K, value: V) : void {
  const values = map.get(key);
  if (values) {
    if (!values.includes(value)) {
      values.push(value);
    }
  } else {
    map.set(key, [value]);
  }
}
