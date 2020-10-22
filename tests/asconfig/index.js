const asc = require("../../cli/asc");
const loader = require("../../lib/loader/umd");
const args = process.argv.slice(2);
const path = require('path');
const fs = require("fs");

/** @type {string} */
let stderr;
/** @type {Uint8Array} */
let binary;
asc.main(["assembly/index.ts", "--outFile", "output.wasm", "--explicitStart", ...args], {
  writeFile(name, contents) {
    if (name === "output.wasm") {
      binary = contents;
    } else if (name !== "output.wasm.map") {
      throw Error("Unexpected output file: " + name);
    }
  },
  stderr: {
    write(s) {
      stderr = s;
    }
  }

}, (err) => {
  if (err) {
    console.error(err);
    console.error(stderr);
    process.exit(1);
  }

  const jsonPath = path.join(process.cwd(), "expected.json");
  if (fs.existsSync(jsonPath) && stderr) {
    const actualRes = JSON.parse(stderr);
    const actual = actualRes.options;
    const expected = require(jsonPath).options;
    let errored = false;
    for (let name of Object.getOwnPropertyNames(expected)) {
      if (actual[name] !== expected[name]) {
        // If object check just first level
        if (typeof actual[name] === 'object' && typeof expected[name] === 'object') {
          let error = false;
          for (let field of Object.getOwnPropertyNames(actual[name])) {
            if (actual[name][field] !== expected[name][field]) {
              error = true;
              break;
            }
          }
          if (!error) {
            continue;
          }
        }
        console.error(name + ": " + actual[name] + " expected " + expected[name]);
        errored = true;
      }
    }
    if (errored) {
      process.exit(1);
    }
    process.exit(0);
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
    console.error(err);
    process.exit(1);
  }
  return 0;
});
