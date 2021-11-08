const fs = require("fs");
const path = require("path");

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
