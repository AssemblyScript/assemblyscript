import path from "path";
import assert from "assert";
import { util } from "../index.js";

const { normalizePath, resolvePath } = util;

var test = "./Y/./N/./N/../../././../Y/./.";
assert.strictEqual(normalizePath(test), path.posix.normalize(test));

assert.strictEqual(resolvePath("../../..", "lib/util/i64.ts"), "..");
