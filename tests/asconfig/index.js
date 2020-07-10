const asc = require("../../cli/asc");
const loader = require("../../lib/loader");
const args = process.argv.slice(2);
const fs = require("fs");
const path = require("path");

/** @type {Uint8Array} */
let binary;
asc.main(["assembly/index.ts", "--outFile", "output.wasm", "--explicitStart", ...args], {
  writeFile(name, contents) {
    if (name === "output.wasm") {
      binary = contents;
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
  const optionsPath = path.join(process.cwd(), "options.json")
  if (fs.existsSync(optionsPath)) {
    const options = require(optionsPath);
    for (let option of Object.getOwnPropertyNames(options) ){
      if (options[option] != asc.args[option]) {
        throw new Error(`Test ${path.basename(process.cwd())}: ${options[option]} != ${asc.args[option]}`);
      }
    }
  }

  const theResult = loader.instantiateSync(binary);

  theResult.exports._start();
  return 0;
});
