// used to check `require`ing distribution files
// - dist/assemblyscript.js
// - dist/assemblyscript.d.ts
import * as as from "../../index.release";
var program: as.Program = as.newProgram(as.newOptions());
as.parse(program, "", "empty");
