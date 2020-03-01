const fs = require("fs");
const binaryen = require("binaryen");
const loader = require("../../lib/loader");

async function test(build) {
  await binaryen.ready;
  const assemblyscript = await loader.instantiate(fs.promises.readFile(__dirname + "/../../out/assemblyscript." + build + ".wasm"), { binaryen });
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
  // ^ fails, most likely due to confused virtual overloads
  console.log("So far, so good.");
}
test("untouched");
