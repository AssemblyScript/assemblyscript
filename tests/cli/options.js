const assert = require("assert");
const optionsUtil = require("../../cli/util/options");

const config = {
  "enable": {
    "type": "S",
    "mutuallyExclusive": "disable"
  },
  "disable": {
    "type": "S",
    "mutuallyExclusive": "enable"
  },
  "other": {
    "type": "S",
    "default": ["x"]
  }
};

// Present in both should concat
var merged = optionsUtil.merge(config, { enable: ["a"] }, { enable: ["b"] });
assert.deepEqual(merged.enable, ["a", "b"]);

merged = optionsUtil.merge(config, { enable: ["a"] }, { enable: ["a", "b"] });
assert.deepEqual(merged.enable, ["a", "b"]);

// Mutually exclusive should exclude
merged = optionsUtil.merge(config, { enable: ["a", "b"] }, { disable: ["a", "c"] });
assert.deepEqual(merged.enable, ["a", "b"]);
assert.deepEqual(merged.disable, ["c"]);

merged = optionsUtil.merge(config, { disable: ["a", "b"] }, { enable: ["a", "c"] });
assert.deepEqual(merged.enable, ["c"]);
assert.deepEqual(merged.disable, ["a", "b"]);

// Populating defaults should work after the fact
merged = optionsUtil.addDefaults(config, {});
assert.deepEqual(merged.other, ["x"]);

merged = optionsUtil.addDefaults(config, { other: ["y"] });
assert.deepEqual(merged.other, ["y"]);

// Complete usage test
var result = optionsUtil.parse(["--enable", "a", "--disable", "b"], config, false);
merged = optionsUtil.merge(config, result.options, { enable: ["b", "c"] });
merged = optionsUtil.merge(config, merged, { disable: ["a", "d"] });
optionsUtil.addDefaults(config, merged);
assert.deepEqual(merged.enable, ["a", "c"]);
assert.deepEqual(merged.disable, ["b", "d"]);
assert.deepEqual(merged.other, ["x"]);
