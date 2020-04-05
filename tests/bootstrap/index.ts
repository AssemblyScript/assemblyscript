import * as fs from "fs";
import * as binaryen from "binaryen";
import * as util from "util";
import * as loader from "../../lib/loader";
import AssemblyScript from "../../out/assemblyscript";

async function test(build: string): Promise<void> {
  await binaryen.ready;
  const { exports: asc } = await loader.instantiate<typeof AssemblyScript>(
    fs.promises.readFile(`${ __dirname }/../../out/assemblyscript.${ build }.wasm`),
    { binaryen }
  );
  console.log(util.inspect(asc, true));
  const optionsPtr = asc.newOptions();
  const programPtr = asc.newProgram(optionsPtr);
  const textPtr = asc.__allocString("export function add(a: i32, b: i32): i32 { return a + b; }\n");
  const pathPtr = asc.__allocString("index.ts");
  asc.parse(programPtr, textPtr, pathPtr, true);
  var nextFilePtr = asc.nextFile(programPtr);
  while (nextFilePtr) {
    console.log("nextFile: " + asc.__getString(nextFilePtr));
    nextFilePtr = asc.nextFile(programPtr);
  }
  // asc.compile(programPtr);
  // ^ abort: missing ArrayBuffer at src/program.ts:1015:18
  console.log("So far, so good.");
}
test("untouched");
