import assert from "assert";
import * as optionsUtil from "../../util/options.js";

const config = {
  enable: {
    type: "S",
    mutuallyExclusive: "disable",
  },
  disable: {
    type: "S",
    mutuallyExclusive: "enable",
  },
  other: {
    type: "S",
    default: ["x"],
  },
  bool_input_for_string: {
    type: "s",
  },
};

// Present in both should concat
let merged = optionsUtil.merge(config, { enable: ["a"] }, { enable: ["b"] });
assert.deepStrictEqual(merged.enable, ["a", "b"]);

merged = optionsUtil.merge(config, { enable: ["a"] }, { enable: ["a", "b"] });
assert.deepStrictEqual(merged.enable, ["a", "b"]);

// Mutually exclusive should exclude
merged = optionsUtil.merge(config, { enable: ["a", "b"] }, { disable: ["a", "c"] });
assert.deepStrictEqual(merged.enable, ["a", "b"]);
assert.deepStrictEqual(merged.disable, ["c"]);

merged = optionsUtil.merge(config, { disable: ["a", "b"] }, { enable: ["a", "c"] });
assert.deepStrictEqual(merged.enable, ["c"]);
assert.deepStrictEqual(merged.disable, ["a", "b"]);

// Populating defaults should work after the fact
optionsUtil.addDefaults(config, (merged = {}));
assert.deepStrictEqual(merged.other, ["x"]);

optionsUtil.addDefaults(config, (merged = { other: ["y"] }));
assert.deepStrictEqual(merged.other, ["y"]);

// String test
assert.deepStrictEqual(merged.bool_input_for_string, undefined);
merged = optionsUtil.merge(config, {}, { bool_input_for_string: false });
assert.deepStrictEqual(merged.bool_input_for_string, undefined);
merged = optionsUtil.merge(config, {}, { bool_input_for_string: true });
assert.deepStrictEqual(merged.bool_input_for_string, "");

// Complete usage test
let result = optionsUtil.parse(["--enable", "a", "--disable", "b"], config, false);

merged = optionsUtil.merge(config, result.options, { enable: ["b", "c"] });
merged = optionsUtil.merge(config, merged, { disable: ["a", "d"] });
optionsUtil.addDefaults(config, merged);

assert.deepStrictEqual(merged.enable, ["a", "c"]);
assert.deepStrictEqual(merged.disable, ["b", "d"]);
assert.deepStrictEqual(merged.other, ["x"]);
