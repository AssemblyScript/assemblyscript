const asc = require("../../cli/asc");
const loader = require("../../lib/loader");
const args = process.argv.slice(2);

/** @type {Uint8Array} */
let binary;
// Output watfile to reduce stdout output
asc.main(["assembly/index.ts", "--textFile", "output.wat", "--outFile", "output.wasm", "--explicitStart", ...args], {
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

  const theModule = loader.instantiateSync(binary);

  try {
    theModule.exports._start();
  } catch (err) {
    console.error("The wasm module _start() function failed in " + process.cwd());
    process.exit(1);
  }
  return 0;
});
