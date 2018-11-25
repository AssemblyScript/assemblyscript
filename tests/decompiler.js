var binaryen = global.Binaryen = require("binaryen");
let asc = require("../cli/asc");
require("ts-node").register({ project: require("path").join(__dirname, "..", "src", "tsconfig.json") });
require("../src/glue/js");

var mod = new binaryen.Module();
var ftype = mod.addFunctionType("i", binaryen.i32, [ ]);
var fn = mod.addFunction("main", ftype, [],
  mod.block(null, [
    mod.return(
      mod.i32.add(
        mod.i32.const(1),
        mod.i32.const(2)
      )
    )
  ])
);

mod.validate();
mod.emitText();
asc.main([
        "index.ts",
        "--baseDir",`${__dirname}/decompiler`,
        "-b", "untouched.wasm",
        "-t", "untouched.wat",
        "--tsdFile", "index.d.ts",
        "--sourceMap",
        "--validate",
        "--debug",
        "--measure",
        "-O0",
        "--shrinkLevel", "0",
        "--optimizeLevel", "0",

      ], () => {

var Decompiler = require("../src/decompiler").Decompiler;
var decompiler = new Decompiler();
let fs = require("fs");
var mod = binaryen.readBinary(fs.readFileSync(`${__dirname}/decompiler/untouched.wasm`));
// console.log(mod.ref);
decompiler.decompileFunction(mod.getFunction("index/foo"));
console.log(decompiler.finish());

});
