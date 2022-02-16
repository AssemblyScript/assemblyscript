import assert from "assert";

// Ensure it can be require'd
const loader = require("../../umd");

assert(typeof loader.instantiate === "function");
