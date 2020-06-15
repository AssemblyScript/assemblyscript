/**
 * @fileoverview Collections glue code for JavaScript.
 * @license Apache-2.0
 */

global.Map_keys = function Map_keys(map) {
  const arr = new Array(map.size);
  let i = 0;
  for (let key of map.keys()) {
    arr[i++] = key;
  }
  return arr;
};

global.Map_values = function Map_values(map) {
  const arr = new Array(map.size);
  let i = 0;
  for (let value of map.values()) {
    arr[i++] = value;
  }
  return arr;
};

global.Set_values = function Set_values(set) {
  const arr = new Array(set.size);
  let i = 0;
  for (let value of set.values()) {
    arr[i++] = value;
  }
  return arr;
};
