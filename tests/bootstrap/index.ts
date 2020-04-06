import * as fs from "fs";
import * as path from "path";
import * as binaryen from "binaryen";
import * as util from "util";
import * as loader from "../../lib/loader";
import * as find from "../../cli/util/find";
import AssemblyScript from "../../out/assemblyscript";

Error.stackTraceLimit = Infinity;

// Load stdlib
const libDir = path.join(__dirname, "..", "..", "std", "assembly");
const libraryFiles = {};
find.files(libDir, find.TS_EXCEPT_DTS).forEach((file: string) => {
  libraryFiles[file.replace(/\.ts$/, "")] = fs.readFileSync(path.join(libDir, file), "utf8" );
});

async function test(build: string): Promise<void> {
  await binaryen.ready;

  const { exports: asc } = await loader.instantiate<typeof AssemblyScript>(
    fs.promises.readFile(`${ __dirname }/../../out/assemblyscript.${ build }.wasm`),
    { binaryen }
  );
  console.log(util.inspect(asc, true));

  const cachedStrings = new Map<string,number>();
  function allocString(text: string): number {
    if (cachedStrings.has(text)) return cachedStrings.get(text);
    var ptr = asc.__retain(asc.__allocString(text));
    cachedStrings.set(text, ptr);
    return ptr;
  }

  const optionsPtr = asc.newOptions();
  const programPtr = asc.newProgram(optionsPtr);

  console.log("\nParsing standard library ...");
  Object.keys(libraryFiles).forEach((libPath: string) => {
    if (libPath.indexOf("/") >= 0) return;
    const textPtr = allocString(libraryFiles[libPath]);
    const pathPtr = allocString("~lib/" + libPath + ".ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, false);
  });

  console.log("\nParsing runtime ...");
  {
    const textPtr = allocString(libraryFiles["rt/index-stub"]);
    const pathPtr = allocString("~lib/rt/index-stub");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, true);
  }

  console.log("\nParsing backlog ...");
  var nextFilePtr = asc.nextFile(programPtr);
  while (nextFilePtr) {
    const nextFile = asc.__getString(nextFilePtr);
    if (!nextFile.startsWith("~lib/")) throw Error("unexpected file: " + nextFile);
    const text = libraryFiles[nextFile.substring(5)];
    if (text == null) throw Error("missing file: " + nextFile);
    const textPtr = allocString(libraryFiles[nextFile.substring(5)]);
    const pathPtr = allocString(nextFile + ".ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, false);
    asc.__release(nextFilePtr);
    nextFilePtr = asc.nextFile(programPtr);
  }

  console.log("\nParsing entry file ...");
  {
    const textPtr = allocString("export function add(a: i32, b: i32): i32 { return a + b; }\n");
    const pathPtr = allocString("index.ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, true);
  }

  try {
    console.log("\nInitializing program ...");
    asc.initializeProgram(programPtr, optionsPtr);
    console.log("\nCompiling program ...");
    const modulePtr = asc.compile(programPtr);
    const moduleRef = new Uint32Array(asc.memory.buffer, modulePtr)[0];
    console.log(binaryen.wrapModule(moduleRef).emitText());
    // Wow!
  } catch (e) {
    console.log("\nTODO: " + e.stack);
  }

  cachedStrings.forEach(asc.__release);

  console.log("\nSo far, so good.");
}
test("untouched");
