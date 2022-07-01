import assert from "assert";

console.log("Simple transform loaded");

export function afterRead(file) {
  assert(typeof file === "object" && file !== null);
  assert(typeof file.sourceText === "string" && typeof file.sourcePath === "string");
  console.log("- afterRead");
}

export function afterParse(parser) {
  assert(typeof parser === "object" && parser !== null);
  console.log("- afterParse");
}

export function afterInitialize(program) {
  assert(typeof program === "object" && program !== null);
  console.log("- afterInitialize");
}

export function afterCompile(module) {
  assert(typeof module === "object" && module !== null);
  console.log("- afterCompile");
}
