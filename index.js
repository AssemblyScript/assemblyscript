try { require("source-map-support").install(); } catch (e) { /* nop */ }
require("ts-node").register({
  project: require("path").join(__dirname, "src", "tsconfig.json"),
  skipIgnore: true,
  files: true
});
require("./src/glue/js");
module.exports = require("./src");
