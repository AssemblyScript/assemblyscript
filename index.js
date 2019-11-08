require("ts-node").register({ project: path.join(__dirname, "src", "tsconfig.json") });
require("./src/glue/js");
module.exports = require("./src");
