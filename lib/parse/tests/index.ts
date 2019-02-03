import * as fs from "fs";
import * as assert from "assert";
import {
  Type,
  SectionId,
  ExternalKind,
  WasmParser
} from "../src";

[ "../build/test.wasm",
  // "../build/index.wasm",
  // "libm.wasm"
].forEach((filename: string): void => {
  const binary: Uint8Array = fs.readFileSync(__dirname + "/" + filename);
  console.log("Testing '" + filename + "' ...");
  debugger;
  var parser = new WasmParser(binary);
  assert(parser.hasStart());
  console.log("\nType Section\n------------------------------");
  console.log(parser.Type);
  // parser.printModule();
  var strippedBinary = parser.removeStartFunction();
  var parser2 = new WasmParser(strippedBinary);
  assert(!parser2.hasStart());
  // parser2.printModule();
});
console.log("Tests Pass!")
