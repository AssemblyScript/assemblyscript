const asc = require("../../cli/asc");
const loader = require("../../lib/loader");
const args = process.argv.slice(2);
const fs = require("fs");
const path = require("path");

/** @type {Uint8Array} */
let binary;
/** @type {Uint8Array} */
let wat;
asc.main(["assembly/index.ts", "--outFile", "output.wasm", "--explicitStart", ...args], {
  writeFile(name, contents) {
    if (name === "output.wasm") {
      binary = contents;
    }
    if (name === "output.wat") {
      wat = contents;
    }
  }
}, (err) => {
  if (err) {
    console.error(err);
    process.exit(1);
  }

  if (!binary) {
    console.error("No binary was generated for the asconfig test in " + process.cwd());
    process.exit(1);
  }

  const theModule = loader.instantiateSync(binary);

  try {
    theModule.exports._start();
  } catch (err) {
    console.error("The wasm module _start() function failed in " + process.cwd());
    process.exit(1);
  }
  return 0;
});
