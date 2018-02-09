var asc = require("../dist/asc.js");

var stdout = asc.createMemoryStream();
var stderr = asc.createMemoryStream();

process.exitCode = asc.main([
  "test.ts"
], {
  stdout: stdout,
  stderr: stderr,
  readFile: function(filename) {
    console.log("readFile: " + filename);
    if (filename === "/test.ts") { // sic: browser path
      return "export function foo(): void {}";
    }
    throw Error("File not found: " + filename);
  },
  writeFile: function(filename, contents) {
    console.log("writeFile: " + filename);
  },
  listFiles: function(dirname) {
    console.log("listFiles: " + dirname);
    return [];
  }
});

console.log("stdout >>>");
console.log(stdout.toString());

console.log("stderr >>>");
console.error(stderr.toString());
