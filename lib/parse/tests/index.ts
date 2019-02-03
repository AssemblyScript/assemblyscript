import * as fs from "fs";
import {
  Type,
  SectionId,
  ExternalKind,
  parse
} from "../src";

[ "../build/test.wasm",
  // "../build/index.wasm",
  // "libm.wasm"
].forEach((filename: string): void => {
  const binary: Uint8Array = fs.readFileSync(__dirname + "/" + filename);
  console.log("Testing '" + filename + "' ...");
  
  console.log();
});
