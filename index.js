require("ts-node").register({
  project: require("path").join(__dirname, "src", "tsconfig.json"),
  compilerHost: true,
  skipIgnore: true,
  files: true,
  compilerOptions: {
    preserveConstEnums: true,
    removeComments: false
  }
});
require("./src/glue/js");
module.exports = require("./src");
