// used to check `require`ing distribution files
// - dist/assemblyscript.js
// - dist/assemblyscript.d.ts
import * as as from "../../index.release";
var parser: as.Parser = as.parseFile("", "empty");
parser.finish();
