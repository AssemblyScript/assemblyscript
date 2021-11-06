try { require("source-map-support").install(); } catch (e) { /* nop */ }
require("ts-node").register({
  project: require("path").join(__dirname, "src", "tsconfig.json"),
  typeCheck: false,
  skipIgnore: true
});
require("./src/glue/js");
module.exports = require("./src");
