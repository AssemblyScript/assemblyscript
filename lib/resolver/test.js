const { resolve, SourceType } = require("./index");

console.log("resolving from C:/path/to/module.ts to @as-pect/assembly");
const result = resolve("C:\\path\\to\\module.ts", "@as-pect/assembly", {
  path: ["packages", "bower_components"]
});
console.log(result);

