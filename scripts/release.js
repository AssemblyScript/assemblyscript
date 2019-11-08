// Reconfigures the repository before publishing a release

const fs = require("fs");
const path = require("path");
const pkg = require("../package.json");

console.log("Updating package.json ...");
delete pkg.dependencies["ts-node"]; // doesn't need ts-node
delete pkg.devDependencies;         // or development dependencies
delete pkg.scripts;                 // or scripts
pkg.files = pkg["files.release"];   // but specifies files
delete pkg["files.release"];        //
fs.writeFileSync(path.join(__dirname, "..", "package.json"), [
  JSON.stringify(pkg, null, 2), '\n'
].join(""));

console.log("Updating index.js ...");
fs.writeFileSync(path.join(__dirname, "..", "index.js"), [
  'module.exports = require("./dist/assemblyscript");\n'
].join(""));

console.log("Updating index.d.ts ...");
fs.writeFileSync(path.join(__dirname, "..", "index.d.ts"), [
  '/// <reference path="./dist/assemblyscript.d.ts" />\n',
  'export * from "assemblyscript";\n'
].join(""));

console.log("OK");
