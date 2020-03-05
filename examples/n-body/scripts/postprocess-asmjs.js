const fs = require("fs");
const path = require("path");

const filename = path.join(__dirname, "..", "build" , "as_nbody.asm.js");
var source = fs.readFileSync(filename, { encoding: "utf8" });
source = source.replace(/^export var ([^ ]+) =/mg, ($0, $1) => "exports." + $1 + " = ");
fs.writeFileSync(filename, source);
