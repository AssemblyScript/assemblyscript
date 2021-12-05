require("ts-node").register({
  project: require("path").join(__dirname, "src", "tsconfig.json"),
  compilerHost: true,
  skipIgnore: true,
  files: true,
  compilerOptions: {
    removeComments: false
  }
});
require("./src/glue/js");
module.exports = require("./src");
