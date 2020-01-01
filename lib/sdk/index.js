const BINARYEN_VERSION = "nightly";
const ASSEMBLYSCRIPT_VERSION = "nightly";

// AMD/require.js (browser)
if (typeof define === "function" && define.amd) {
  require.config({
    paths: {
      "binaryen": "https://cdn.jsdelivr.net/npm/binaryen@" + BINARYEN_VERSION + "/index",
      "assemblyscript": "https://cdn.jsdelivr.net/npm/assemblyscript@" + ASSEMBLYSCRIPT_VERSION + "/dist/assemblyscript",
      "assemblyscript/cli/asc": "https://cdn.jsdelivr.net/npm/assemblyscript@" + ASSEMBLYSCRIPT_VERSION + "/dist/asc",
    }
  });
  define(["binaryen", "assemblyscript", "assemblyscript/cli/asc"], function(binaryen, assemblyscript, asc) {
    return { binaryen, assemblyscript, asc };
  });

// CommonJS fallback (node)
} else if (typeof module === "object" && module.exports) {
  exports.binaryen = require("binaryen");
  exports.assemblyscript = require("assemblyscript");
  exports.asc = require("assemblyscript/cli/asc");
}
