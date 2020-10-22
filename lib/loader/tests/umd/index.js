const assert = require("assert");
const loader = require("../../umd");

assert(typeof loader.instantiate === "function");
