var fs = require("fs");
var path = require("path");
var chalk = require("chalk");
var glob = require("glob");
var diff = require("./util/diff");

require("ts-node").register({ project: require("path").join(__dirname, "..", "src") });
require("../src/glue/js");

var Compiler = require("../src/compiler").Compiler;
var Module = require("../src/module").Module;
var Parser = require("../src/parser").Parser;
var ElementKind = require("../src/program").ElementKind;

var isCreate = process.argv[2] === "--create";
var filter = process.argv.length > 2 && !isCreate ? "**/" + process.argv[2] + ".ts" : "**/*.ts";

var stdDir = __dirname + "/../std/assembly";
var stdFiles = glob.sync("*.ts", { cwd: stdDir });

var success = 0;
var failures = 0;

glob.sync(filter, { cwd: __dirname + "/compiler" }).forEach(filename => {
  if (filename.charAt(0) == "_")
    return;

  console.log(chalk.whiteBright("Testing compiler/" + filename));

  var fixture = path.basename(filename, ".ts");
  var startTime = process.hrtime();
  var parser = new Parser();
  if (filename.startsWith("std/")) {
    stdFiles.forEach(file => {
      parser.parseFile(fs.readFileSync(__dirname + "/../std/assembly/" + file, { encoding: "utf8" }), "std:" + path.basename(file), false);
    });
    fixture = "std/" + fixture;
  }

  var sourceText = fs.readFileSync(__dirname + "/compiler/" + filename, { encoding: "utf8" });
  parser.parseFile(sourceText, filename, true);
  var nextFile;
  while ((nextFile = parser.nextFile()) !== null) {
    var nextSourceText;
    try {
      if (nextFile.startsWith("std:"))
        nextSourceText = fs.readFileSync(path.join(stdDir, nextFile.substring(4) + ".ts"), { encoding: "utf8" });
      else
        nextSourceText = fs.readFileSync(path.join(__dirname, "compiler", nextFile + ".ts"), { encoding: "utf8" });
    } catch (e) {
      nextSourceText = fs.readFileSync(path.join(__dirname, "compiler", nextFile, "index.ts"), { encoding: "utf8" });
    }
    parser.parseFile(nextSourceText, nextFile, false);
  }
  var program = parser.finish();
  var parseTime = process.hrtime(startTime);
  startTime = process.hrtime();
  var module;
  try {
    module = Compiler.compile(program);
  } catch (e) {
    failed = true;
    module = Module.create();
    console.log(chalk.red("compile ERROR: ") + e.stack);
  }
  var compileTime = process.hrtime(startTime);
  var actual = module.toText() + "(;\n[program.elements]\n  " + elements(program.elements)
                               +   "\n[program.exports]\n  "  + elements(program.exports)
                               + "\n;)\n";
  var actualOptimized = null;

  console.log("parse incl. I/O: " + ((parseTime[0] * 1e9 + parseTime[1]) / 1e6).toFixed(3) + "ms / compile: " + ((compileTime[0] * 1e9 + compileTime[1]) / 1e6).toFixed(3) + "ms");

  var failed = false;
  if (module.validate()) {
    console.log(chalk.green("validate OK"));
    try {
      // already covered by instantiate below, which is also able to use imports, but doesn't
      // provide as much debugging information. might be necessary to remove this one once imports
      // are tested more.
      // module.interpret();
      // console.log(chalk.green("interpret OK"));
      try {
        var binary = module.toBinary();
        var wasmModule = new WebAssembly.Module(binary);
        var wasmInstance = new WebAssembly.Instance(wasmModule, {
          env: {
            externalFunc: function(arg0, arg1, arg2) {
              console.log("env.externalFunc called with: " + arg0 + ", " + arg1 + ", " + arg2);
            },
            externalConst: 1,
            allocate_memory: function(size) {
              console.log("env.allocate_memory called with: " + size);
              return 0;
            },
            free_memory: function(ptr) {
              console.log("env.free_memory called with: " + ptr);
            }
          },
          external: {
            externalFunc: function(arg0, arg1, arg2) {
              console.log("external.externalFunc called with: " + arg0 + ", " + arg1 + ", " + arg2);
            },
            externalConst: 2
          }
        });
        console.log(chalk.green("instantiate OK"));
      } catch (e) {
        failed = true;
        console.log(chalk.red("instantiate ERROR: ") + e.stack);
      }
    } catch (e) {
      failed = true;
      console.log(chalk.red("interpret ERROR:") + e.stack);
    }
    module.optimize();
    actualOptimized = module.toText();
    if (isCreate)
      fs.writeFileSync(__dirname + "/compiler/" + fixture + ".optimized.wasm", module.toBinary());
  } else {
    failed = true;
    console.log(chalk.red("validate ERROR"));
  }

  if (isCreate) {
    fs.writeFileSync(__dirname + "/compiler/" + fixture + ".wast", actual, { encoding: "utf8" });
    console.log("Created");
    if (actualOptimized != null) {
      fs.writeFileSync(__dirname + "/compiler/" + fixture + ".optimized.wast", actualOptimized, { encoding: "utf8" });
      console.log("Created optimized");
    }
  } else {
    var expected;
    try {
      expected = fs.readFileSync(__dirname + "/compiler/" + fixture + ".wast", { encoding: "utf8" });
    } catch (e) {
      expected = e.message + "\n";
    }
    var diffs = diff(filename + ".wast", expected, actual);
    if (diffs !== null) {
      console.log(diffs);
      console.log(chalk.red("diff ERROR"));
      failed = true;
    } else
      console.log(chalk.green("diff OK"));
  }

  module.dispose();
  console.log();
  if (failed)
    ++failures;
});

function elements(map) {
  var arr = [];
  map.forEach((value, key) => {
    arr.push(ElementKind[value.kind] + ": " + key);
  });
  return arr.join("\n  ");
}

if (failures) {
  process.exitCode = 1;
  console.log(chalk.red("ERROR: ") + failures + " compiler tests failed");
} else
  console.log("[ " + chalk.whiteBright("SUCCESS") + " ]");
