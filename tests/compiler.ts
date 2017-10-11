import "../src/glue/js";
import { Compiler } from "../src/compiler";
import { Parser } from "../src/parser";

/* const files: Map<string,string> = new Map([
  ["main", `import { Test as TestAlias } from "./a"; export { TestAlias } from "./d"; if (1) {} export const a: i32 = 123;`],
  ["a", `export { Test } from "./b";`],
  ["b", `export { Test } from "./c";`],
  ["c", `export enum Test { ONE = 1, TWO = 1 + 1 }`],
  ["d", `export { Test as TestAlias } from "./b";`]
]); */

const files: Map<string,string> = new Map([
  ["main",
`
  function add(a: i32, b: i32): i32 { return a + b; };
  export { add };
  export { sub as notadd } from "../other";
  2+3;
  export function switchMe(n: i32): i32 {
    switch (n) {
      case 0:
        return 0;
      default:
        return 2;
      case 1:
        return 1;
      case -1:
        break;
    }
    return -1;
  }
`],

  ["../other",
`
  export function sub(a: i32, b: i32): i32 { return a - b + c; };
  let c: i32 = 42 >> 31;
  1+2;
`]
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

// module.optimize();
module.validate();
if (!module.noEmit)
  _BinaryenModulePrint(module.ref);
