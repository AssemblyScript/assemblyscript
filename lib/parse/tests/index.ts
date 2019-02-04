import * as fs from "fs";
import * as assert from "assert";
import {
  Type,
  SectionId,
  ExternalKind,
  WasmParser
} from "../src";

type CompileError = WebAssembly.CompileError;



[ "../build/test.wasm",
  // "../build/index.wasm",
  // "libm.wasm"
].forEach((filename: string): void => {
  const binary: Uint8Array = fs.readFileSync(__dirname + "/" + filename);
  console.log("Testing '" + filename + "' ...");
  debugger;
  var parser = new WasmParser(binary);
  assert(parser.hasStart());
  console.log("Test binary has start section");
  assert(parser.hasSection(SectionId.Data))
  console.log("Test binary has data section");
  assert(parser.hasSection(SectionId.Memory))

  // console.log("\nType Section\n------------------------------");
  // console.log(parser.Type);
  // parser.printModule();

  //Remove Start Section
  var strippedBinary = parser.removeStartFunction();
  assert(WebAssembly.validate(strippedBinary));
  var parser2 = new WasmParser(strippedBinary);
  var dataSectionOnly = parser.exportDataSection();
  assert(!parser2.hasStart());
  console.log("Start section removed succesfully");

  //Export Data Section
  // new WebAssembly.Module(dataSectionOnly);
  var parser3 = new WasmParser(dataSectionOnly);
  assert(parser3.hasSection(SectionId.Data));
  assert(parser3.hasSection(SectionId.Memory))
  new WebAssembly.Module(dataSectionOnly);
  console.log("Data section exported to module successfully");
  // parser2.printModule();
});
console.log("Tests Pass!")
