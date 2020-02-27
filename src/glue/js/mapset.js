global.Map_keys = function(map) {
  var keys = [];
  for (let key of map.keys()) {
    keys.push(key);
  }
  return keys;
};

global.Map_values = function(map) {
  var vals = [];
  for (let val of map.values()) {
    vals.push(val);
  }
  return vals;
};

global.Set_values = function(set) {
  var vals = [];
  for (let val of set.values()) {
    vals.push(val);
  }
  return vals;
};
