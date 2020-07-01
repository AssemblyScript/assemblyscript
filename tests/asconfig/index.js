const asc = require("../../cli/asc");
const loader = require("../../lib/loader");
const args = process.argv.slice(2);

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

  const theResult = loader.instantiateSync(binary);

  theResult.exports._start();
  return 0;
});
