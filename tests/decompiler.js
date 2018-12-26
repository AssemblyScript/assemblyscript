var binaryen = global.Binaryen = require("binaryen");
let asc = require("../cli/asc");
var loader = require("../lib/loader");

require("ts-node").register({ project: require("path").join(__dirname, "..", "src", "tsconfig.json") });
require("../src/glue/js");
var MODULE = require('../src/module');
var Compiler = require('../src/compiler');
let Parser = require("../lib/parse");
var Decompiler = require("../src/decompiler").Decompiler;
let fs = require("fs");

//Compile Test file
asc.main([
        "index.ts",
        "--baseDir",`${__dirname}/decompiler`,
        "-b", "build/untouched.wasm",
        "-t", "build/untouched.wat",
        "--tsdFile", "index.d.ts",
        // "--noTreeShaking",
        "--sourceMap",
        "--validate",
        // "--importMemory",
        "--debug",
        "-O0",
        "--shrinkLevel", "0",
        "--optimizeLevel", "0",
      ], async () => {

  //When finished compiling need to get function names, which the parser can do.
  let funcTypes = [];
  let funcsIndexes = [];
  function onFunction(funIndex, typeIndex) {
    funcTypes.push(typeIndex);
    funcsIndexes.push(`${funIndex}`); //This is incase there is not a name section.
    // console.log("- Function[" + funIndex + "] -> FunctionType[" + typeIndex + "]");
  }
  //Need to include onSection because otherwise nothing else gets parsed.
  var startFuncIndex = 0;
  function onSection(id, offset, length, nameOffset, nameLength) {
    var name = id == 0 ? "'" + Parser.parse.readString(nameOffset, nameLength) + "'" : Parser.SectionId[id];
    console.log(name + " section at " + offset + ".." + (offset + length));
    if (name.toLowerCase() === "start"){
      startFuncIndex =  Parser.parse.readUint32(offset);
    }
    return true;
  }

  let funcs = [];
  function onFunctionName(index, offset, length) {
    var name = Parser.parse.readString(offset, length);
    funcs.push(name)
    // console.log(" - Function[" + index + "] name: " + name);
  }

  let binary = fs.readFileSync(`${__dirname}/decompiler/build/untouched.wasm`);
  Parser.parse(binary, {
    onSection,
    // onType,
    // onTypeParam,
    // onTypeReturn,
    // onImport,
    // onFunctionImport,
    // onTableImport,
    // onMemoryImport,
    // onGlobalImport,
    // onMemory,
    onFunction,
    // onTable,
    // onGlobal,
    // onStart,
    // onExport,
    // onSourceMappingURL,
    // onModuleName,
    onFunctionName,
  });

  var decompiler = new Decompiler();
  var mod = binaryen.readBinary(binary);
  //Uncomment the boolean below to also decompile internal functions.
  funcs.filter((x)=> /* true || */!x.startsWith('~')).forEach((name) => {
    try {
    // console.log("decompiling "+name)
    let func = mod.getFunction(name);
    decompiler.decompileFunction(func);
    decompiler.push("\n");
    } catch (e){
      console.log(e);
    }
  });
  console.log(decompiler.finish());
  let Mod;
  mod.setStart(mod.getFunction("null")); //Set start function to null function.
  mod.addFunctionExport("start", "start");
  debugger;
  Mod = loader.instantiateBuffer(mod.emitBinary(), {index:
    {println:console.log,
      asyncfn: (self, cb) => {
        Mod.getFunction(cb)(self, 42)
      }
      //self is an object & cb is an anonymous function in the module's table.
    }});

  Mod.start();
});
