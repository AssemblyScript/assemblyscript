const path = require("path");
const assert = require("assert");

require("ts-node").register({ project: path.join(__dirname, "..", "src", "tsconfig.json") });
require("../src/glue/js");

const { normalize, resolve } = require("../src/util/path");

var test = "./Y/./N/./N/../../././../Y/./.";
assert.strictEqual(normalize(test), path.posix.normalize(test));

assert.strictEqual(resolve("../../..", "lib/util/i64.ts"), "..");
