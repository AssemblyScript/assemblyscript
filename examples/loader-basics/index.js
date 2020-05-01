const fs = require("fs");
const loader = require("@assemblyscript/loader");
const myModule = module.exports = loader.instantiateSync(fs.readFileSync(__dirname + "/build/optimized.wasm"),

  // These are the JavaScript imports to our WebAssembly module, translating
  // from WebAssembly strings, received as a pointer into the module's memory,
  // to JavaScript's console API as JavaScript strings.
  {
    // Example 3: Calling JavaScript imports with WebAssembly strings.
    myConsole: {
      log(messagePtr) { // Called as `console.log` in assembly/index.ts
        console.log(myModule.__getString(messagePtr));
      },
      time(labelPtr) { // Called as `console.time` in assembly/index.ts
        console.time(myModule.__getString(labelPtr));
      },
      timeEnd(labelPtr) { // Called as `console.timeEnd` in assembly/index.ts
        console.timeEnd(myModule.__getString(labelPtr));
      }
    }
  }
);
