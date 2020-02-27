@global
function Map_keys<K,V>(map: Map<K,V>): K[] {
  return map.keys(); // preliminary
}

@global
function Map_values<K,V>(map: Map<K,V>): V[] {
  return map.values(); // preliminary
}

@global
function Set_values<V>(set: Set<V>): V[] {
  return set.values(); // preliminary
}
