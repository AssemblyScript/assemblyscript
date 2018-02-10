var asc = require("../dist/asc.js");

console.log(Object.keys(asc));

var stdout = asc.createMemoryStream();
var stderr = asc.createMemoryStream();
var stats  = asc.createStats();

process.exitCode = asc.main([
  "test.ts",
  "--validate",
  "--optimize",
  "--measure",
  "--textFile", // -> stdout
  "--binaryFile", "test.wasm",
  "--sourceMap"
], {
  stdout: stdout,
  stderr: stderr,
  stats: stats,
  readFile: function(filename) {
    console.log("<< readFile: " + filename);
    if (filename === "/test.ts") { // sic: browser path
      return "export function foo(): void {}";
    }
    throw Error("File not found: " + filename);
  },
  writeFile: function(filename, contents) {
    console.log(">> writeFile: " + filename + " (" + contents.length + " bytes)");
  },
  listFiles: function(dirname) {
    console.log("<< listFiles: " + dirname);
    return [];
  }
});

console.log(">> stdout >>");
console.log(stdout.toString());

console.log(">> stderr >>");
console.error(stderr.toString());

console.log(">> stats >>", stats);
