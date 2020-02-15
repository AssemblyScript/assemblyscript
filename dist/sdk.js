const BINARYEN_VERSION = "90.0.0-nightly.20200214";
const LONG_VERSION = "4.0.0";
const ASSEMBLYSCRIPT_VERSION = "0.9.2";

// AMD/require.js (browser)
if (typeof define === "function" && define.amd) {
  const paths = {
    "binaryen": "https://cdn.jsdelivr.net/npm/binaryen@" + BINARYEN_VERSION + "/index",
    "long": "https://cdn.jsdelivr.net/npm/long@" + LONG_VERSION + "/dist/long",
    "assemblyscript": "https://cdn.jsdelivr.net/npm/assemblyscript@" + ASSEMBLYSCRIPT_VERSION + "/dist/assemblyscript",
    "assemblyscript/cli/asc": "https://cdn.jsdelivr.net/npm/assemblyscript@" + ASSEMBLYSCRIPT_VERSION + "/dist/asc",
  };
  require.config({ paths });
  define(Object.keys(paths), (binaryen, long, assemblyscript, asc) => ({
    BINARYEN_VERSION,
    LONG_VERSION,
    ASSEMBLYSCRIPT_VERSION,
    binaryen,
    long,
    assemblyscript,
    asc
  }));

// CommonJS fallback (node)
} else if (typeof module === "object" && module.exports) {
  module.exports = {
    BINARYEN_VERSION,
    LONG_VERSION,
    ASSEMBLYSCRIPT_VERSION,
    binaryen: require("binaryen"),
    long: require("long"),
    assemblyscript: require("assemblyscript"),
    asc: require("assemblyscript/cli/asc")
  };
}
