import "../src/glue/js";
import { Compiler } from "../src/compiler";
import { Parser } from "../src/parser";

const files: Map<string,string> = new Map([
  ["main", `import { Test } from "./a"; export { TestAlias } from "./d";`],
  ["a", `export { Test } from "./b";`],
  ["b", `export { Test } from "./c";`],
  ["c", `export enum Test { ONE = 1 }`],
  ["d", `export { Test as TestAlias } from "./b";`]
]);

const parser = new Parser();
parser.parseFile(<string>files.get("main"), "main", true);
do {
  let nextFile = parser.nextFile();
  if (!nextFile)
    break;
  if (!files.has(nextFile))
    throw new Error("file not found: " + nextFile);
  parser.parseFile(<string>files.get(nextFile), nextFile, false);
} while(true);
const program = parser.finish();
const compiler = new Compiler(program);
const module = compiler.compile();

console.log("names", program.names);
console.log("exports", program.exports);

// module.optimize();
// module.validate(); // global initializers can't use i32.add etc. yet
/* _BinaryenModulePrint(module.ref);

console.log("--- statements ---");
compiler.statements.forEach(stmt => {
  _BinaryenExpressionPrint(stmt);
}); */