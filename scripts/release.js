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

console.log("Copying index.release.js -> index.js ...");
fs.copyFileSync(
  path.join(__dirname, "..", "index.release.js"),
  path.join(__dirname, "..", "index.js")
);

console.log("Copying index.release.d.ts -> index.d.ts ...");
fs.copyFileSync(
  path.join(__dirname, "..", "index.release.d.ts"),
  path.join(__dirname, "..", "index.d.ts")
);

// We are going to use these immediately, so, to be sure:
setTimeout(() => console.log("OK"), 2000);
