var binaryen = global.Binaryen = require("binaryen");
let asc = require("../cli/asc");
require("ts-node").register({ project: require("path").join(__dirname, "..", "src", "tsconfig.json") });
require("../src/glue/js");

asc.main([
        "index.ts",
        "--baseDir",`${__dirname}/decompiler`,
        "-b", "untouched.wasm",
        "-t", "untouched.wat",
        "--tsdFile", "index.d.ts",
        "--sourceMap",
        "--validate",
        "--debug",
        "-O0",
        "--shrinkLevel", "0",
        "--optimizeLevel", "0",

      ], () => {

var Decompiler = require("../src/decompiler").Decompiler;
var decompiler = new Decompiler();
let fs = require("fs");
var mod = binaryen.readBinary(fs.readFileSync(`${__dirname}/decompiler/untouched.wasm`));
// console.log(mod.ref);
decompiler.decompileFunction(mod.getFunction("index/Test#_if"));
console.log(decompiler.finish());

});
