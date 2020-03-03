/**
 * @fileoverview Collections glue code for JavaScript.
 * @license Apache-2.0
 */

global.Map_keys = function(map) {
  return Array.from(map.keys());
};

global.Map_values = function(map) {
  return Array.from(map.values());
};

global.Set_values = function(set) {
  return Array.from(set.values());
};
