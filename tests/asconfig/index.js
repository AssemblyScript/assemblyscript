import path from "path";
import fs from "fs";
import asc from "../../dist/asc.js";
import loader from "../../lib/loader/index.js";

const args = process.argv.slice(2);

/** @type {Uint8Array} */
let binary;

const { error, stderr } = await asc.main(["assembly/index.ts", "--outFile", "output.wasm", "--exportStart", "_start", ...args], {
  writeFile(name, contents) {
    if (name === "output.wasm") {
      binary = contents;
    } else if (name !== "output.wasm.map") {
      throw Error("Unexpected output file: " + name);
    }
  }
});

if (error) {
  console.error(error);
  console.error(stderr.toString());
  process.exit(1);
}

const jsonPath = path.join(process.cwd(), "expected.json");
const stderrString = stderr.toString();
if (fs.existsSync(jsonPath) && stderrString) {
  const actualRes = JSON.parse(stderrString);
  const actual = actualRes.options;
  const expected = JSON.parse((await fs.promises.readFile(jsonPath)).toString()).options;
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
