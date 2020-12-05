import * as fs from "fs";
import * as path from "path";
import * as v8 from "v8";
import * as binaryen from "binaryen";
import { instantiate } from "../../lib/loader/umd/index";
import { Rtrace } from "../../lib/rtrace/umd/index";
import * as find from "../../cli/util/find";
import AssemblyScript from "../../out/assemblyscript";

v8.setFlagsFromString("--experimental-wasm-bigint");

const incremental = true; // whether to use incremental GC

// Load stdlib
const libDir = path.join(__dirname, "..", "..", "std", "assembly");
const libraryFiles = {};
find.files(libDir, /^(?!.*\.d\.ts$).*\.ts$/).forEach((file: string) => {
  libraryFiles[file.replace(/\.ts$/, "")] = fs.readFileSync(path.join(libDir, file), "utf8" );
});

async function test(build: string): Promise<void> {
  await binaryen.ready;

  const rtrace: Rtrace = new Rtrace({
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
    rtrace.install({
      binaryen
    })
  );

  if (asc._start) asc._start();
  if (incremental) asc.__collect(true);

  const cachedStrings = new Map<string,number>();
  function cachedString(text: string): number {
    if (cachedStrings.has(text)) return cachedStrings.get(text);
    var ptr = asc.__retain(asc.__newString(text));
    cachedStrings.set(text, ptr);
    return ptr;
  }

  console.log("\nInitializing program ...");
  const optionsPtr = asc.newOptions();
  asc.setNoExportRuntime(optionsPtr, true);
  const programPtr = asc.__retain(asc.newProgram(optionsPtr));
  if (incremental) asc.__collect(true);

  console.log("\nParsing standard library ...");
  Object.keys(libraryFiles).forEach((libPath: string) => {
    if (libPath.indexOf("/") >= 0) return;
    const textPtr = cachedString(libraryFiles[libPath]);
    const pathPtr = cachedString("~lib/" + libPath + ".ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, false);
    if (incremental) asc.__collect(true);
  });

  console.log("\nParsing runtime ...");
  {
    const rt = "rt/index-noexport";
    const textPtr = cachedString(libraryFiles[rt]);
    const pathPtr = cachedString("~lib/" + rt + ".ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, true);
    if (incremental) asc.__collect(true);
  }

  function parseBacklog() {
    console.log("\nParsing backlog ...");
    do {
      var nextFilePtr = asc.nextFile(programPtr);
      if (!nextFilePtr) break;
      let nextFile = asc.__getString(nextFilePtr);
      if (!nextFile.startsWith("~lib/")) { // e.g. "rt/something"
        nextFile = "~lib/" + nextFile;
      }
      let text = libraryFiles[nextFile.substring(5)];
      if (text == null) {
        text = libraryFiles[nextFile.substring(5) + "/index"];
        if (text == null) throw Error("missing file: " + nextFile);
        nextFile += "/index";
      }
      const textPtr = cachedString(libraryFiles[nextFile.substring(5)]);
      const pathPtr = cachedString(nextFile + ".ts");
      console.log("  " + asc.__getString(pathPtr));
      asc.parse(programPtr, textPtr, pathPtr, false);
      if (incremental) asc.__collect(true);
    } while (true);
  }
  parseBacklog();

  console.log("\nParsing entry file ...");
  {
    const textPtr = cachedString(`export function add(a: i32, b: i32): i32 { return a + b; }\n`);
    const pathPtr = cachedString("index.ts");
    console.log("  " + asc.__getString(pathPtr));
    asc.parse(programPtr, textPtr, pathPtr, true);
    if (incremental) asc.__collect(true);
  }

  parseBacklog();

  console.log("\nInitializing program ...");
  {
    asc.initializeProgram(programPtr);
    console.log("\nCompiling program ...");
    const modulePtr = asc.__retain(asc.compile(programPtr));
    const moduleRef = new Uint32Array(asc.memory.buffer, modulePtr)[0];
    console.log(binaryen.wrapModule(moduleRef).emitText());
    asc.__release(modulePtr);
    if (incremental) asc.__collect(true);
  }

  console.log("\nChecking diagnostics ...");
  {
    let diagnosticPtr;
    let numErrors = 0;
    while ((diagnosticPtr = asc.nextDiagnostic(programPtr)) != 0) {
      let textPtr = asc.formatDiagnostic(diagnosticPtr, true, true);
      console.log(" " + asc.__getString(textPtr) + "\n");
      if (asc.isError(diagnosticPtr)) ++numErrors;
    }
    console.log("Errors: " + numErrors);
    if (incremental) asc.__collect(true);
  }
  console.log();

  cachedStrings.forEach(ptr => asc.__release(ptr));
  cachedStrings.clear();
  asc.__release(programPtr);

  let collectStart = Date.now();
  asc.__collect(); // full
  console.log("Collect took " + (Date.now() - collectStart) + " ms\n");

  if (rtrace.active) {
    console.log("\n" +
      asc.memory.buffer.byteLength + "b of memory, " +
      rtrace.allocCount + " allocs, " +
      rtrace.freeCount + " frees, " +
      rtrace.resizeCount + " resizes, " +
      rtrace.moveCount + " moves"
    );
    if (rtrace.allocCount - rtrace.freeCount > 45) {
      // Last manual check had 41 expected live global objects
      rtrace.oninfo = msg => console.log(msg);
      rtrace.check();
    }
  }
}
test("untouched");
// test("optimized");
// test("rtraced");
