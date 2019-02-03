import * as fs from "fs";
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
  let parser = new WasmParser(binary);
  console.log(parser.Type);
  parser.printModule();
  let strippedBinary = parser.removeStartFunction();
  let parser2 = new WasmParser(strippedBinary);
  parser2.printModule();
});
