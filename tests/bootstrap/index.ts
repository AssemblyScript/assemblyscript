import * as fs from "fs";
import * as binaryen from "binaryen";
import * as loader from "../../lib/loader";
import AssemblyScript from "../../out/assemblyscript";

async function test(build: string): Promise<void> {
  await binaryen.ready;
  const assemblyscript = await loader.instantiate<typeof AssemblyScript>(fs.promises.readFile(__dirname + "/../../out/assemblyscript." + build + ".wasm"), { binaryen });
  console.log(assemblyscript);
  const optionsPtr = assemblyscript.newOptions();
  const programPtr = assemblyscript.newProgram(optionsPtr);
  const textPtr = assemblyscript.__allocString("export function add(a: i32, b: i32): i32 { return a + b; }\n");
  const pathPtr = assemblyscript.__allocString("index.ts");
  assemblyscript.parse(programPtr, textPtr, pathPtr, true);
  var nextFilePtr = assemblyscript.nextFile(programPtr);
  while (nextFilePtr) {
    console.log("nextFile: " + assemblyscript.__getString(nextFilePtr));
    nextFilePtr = assemblyscript.nextFile(programPtr);
  }
  // assemblyscript.compile(programPtr);
  // ^ abort: missing ArrayBuffer at src/program.ts:1015:18
  console.log("So far, so good.");
}
test("untouched");
