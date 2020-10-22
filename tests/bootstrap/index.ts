import * as fs from "fs";
import * as path from "path";
import * as v8 from "v8";
import * as binaryen from "binaryen";
import { instantiate } from "../../lib/loader/umd";
import { Rtrace } from "../../lib/rtrace/umd";
import * as find from "../../cli/util/find";
import AssemblyScript from "../../out/assemblyscript";

v8.setFlagsFromString("--experimental-wasm-bigint");

// Load stdlib
const libDir = path.join(__dirname, "..", "..", "std", "assembly");
const libraryFiles = {};
find.files(libDir, /^(?!.*\.d\.ts$).*\.ts$/).forEach((file: string) => {
  libraryFiles[file.replace(/\.ts$/, "")] = fs.readFileSync(path.join(libDir, file), "utf8" );
});

async function test(build: string): Promise<void> {
  await binaryen.ready;

  const rtrace = new Rtrace({
    onerror(err, info) {
      console.log(err, info);
    },
    oninfo(msg) {
      // console.log(msg);
    },
    getMemory() {
      return asc.memory;
    }
  });

  const { exports: asc } = await instantiate<typeof AssemblyScript>(
    fs.promises.readFile(`${ __dirname }/../../out/assemblyscript.${ build }.wasm`),
    {
      binaryen,
      rtrace,
      env: rtrace.env
    }
  );
  if (asc._start) asc._start();

  const cachedStrings = new Map<string,number>();
  function cachedString(text: string): number {
    if (cachedStrings.has(text)) return cachedStrings.get(text);
    var ptr = asc.__retain(asc.__newString(text));
    cachedStrings.set(text, ptr);
    return ptr;
  }

  const programPtr = ((): number => {
    const optionsPtr = asc.newOptions();
    const ptr = asc.newProgram(optionsPtr);
    asc.__release(optionsPtr);
    return ptr;
  })();

  console.log("\nParsing standard library ...");
  Object.keys(libraryFiles).forEach((libPath: string) => {
    if (libPath.indexOf("/") >= 0) return;
    const textPtr = cachedString(libraryFiles[libPath]);
    const pathPtr = cachedString("~lib/" + libPath + ".ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, false);
  });

  console.log("\nParsing runtime ...");
  {
    const textPtr = cachedString(libraryFiles["rt/index-stub"]);
    const pathPtr = cachedString("~lib/rt/index-stub.ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, true);
  }

  console.log("\nParsing backlog ...");
  var nextFilePtr = asc.nextFile(programPtr);
  while (nextFilePtr) {
    let nextFile = asc.__getString(nextFilePtr);
    if (!nextFile.startsWith("~lib/")) { // e.g. "rt/something"
      nextFile = "~lib/" + nextFile;
    }
    const text = libraryFiles[nextFile.substring(5)];
    if (text == null) throw Error("missing file: " + nextFile);
    const textPtr = cachedString(libraryFiles[nextFile.substring(5)]);
    const pathPtr = cachedString(nextFile + ".ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, false);
    asc.__release(nextFilePtr);
    nextFilePtr = asc.nextFile(programPtr);
  }

  console.log("\nParsing entry file ...");
  {
    const textPtr = cachedString("export function add(a: i32, b: i32): i32 { return a + b; }\n");
    const pathPtr = cachedString("index.ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, true);
  }

  console.log("\nInitializing program ...");
  {
    asc.initializeProgram(programPtr);
    console.log("\nCompiling program ...");
    const modulePtr = asc.compile(programPtr);
    const moduleRef = new Uint32Array(asc.memory.buffer, modulePtr)[0];
    console.log(binaryen.wrapModule(moduleRef).emitText());
    asc.__release(modulePtr);
  }

  asc.__release(programPtr);
  cachedStrings.forEach(asc.__release);

  console.log("\nSo far, so good.");
}
test("untouched");
