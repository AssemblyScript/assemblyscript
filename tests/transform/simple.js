import assert from "assert";

console.log("Simple transform loaded");

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
