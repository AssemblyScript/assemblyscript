/**
 * @fileoverview Collections glue code for JavaScript.
 * @license Apache-2.0
 */

global.Map_keys = function Map_keys(map) {
  return Array.from(map.keys());
};

global.Map_values = function Map_values(map) {
  return Array.from(map.values());
};

global.Set_values = function Set_values(set) {
  return Array.from(set.values());
};
