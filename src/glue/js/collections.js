/**
 * @fileoverview Collections glue code for JavaScript.
 * @license Apache-2.0
 */

globalThis.Map_keys = function Map_keys(map) {
  return Array.from(map.keys());
};

globalThis.Map_values = function Map_values(map) {
  return Array.from(map.values());
};

globalThis.Set_values = function Set_values(set) {
  return Array.from(set.values());
};
